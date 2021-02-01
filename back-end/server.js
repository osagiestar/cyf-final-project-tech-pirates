const express = require("express");
const app = express();
const cors = require("cors");

const { Pool } = require("pg");
require("dotenv").config();

const PORT = process.env.PORT || 3000;
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

const pool = new Pool({
  // connectionString: process.env.DATABASE_URL,
  // sslmode: require,
  // ssl: {
  //   rejectUnauthorized: false,
  // },
  user: "S225693",

  host: "localhost",
  database: "attendance",
  password: process.env.DB_PASSWORD,
  port: 5432,
});

/* All Users Login API */
app.post("/login", function (req, res) {

  const email = req.body.email;
  const password = req.body.password;

  if (!req.body.email || !req.body.password) {
    return res.status(404).send("email and password required");
  }

  pool
    .query(
      "SELECT users.class_id,users.id, users.email, users.name, user_type.type FROM users INNER JOIN user_type ON users.user_type = user_type.id WHERE email = $1 AND password = $2 ",
      [email, password]
    )
    .then((result) => {
      if (result.rows.length > 0) {
        return res.json(result.rows[0]);
      } else {
        return res.status(404).send("user not available");
      }
    });
});

/* Retrieve session for a specific student (UserCanSelectClass)-API */
app.get("/users/:studentId/class/session", (req, res) => {
   
  const studentId = req.params.studentId;
  console.log(studentId);

  const classQuery = "SELECT session.name,session.id FROM class inner join session on class.id = session.class_id inner join users on users.class_id = class.id where users.id = $1"; 
    
  pool
    .query(classQuery, [studentId])
    .then((result) => res.json(result.rows))
    .catch((e) => console.error(e));
  }); 
  
  /* API and query to record a session attended by a specific student (Attendance Record) */
  app.post("/users/:studentId/class/session", (req, res) => {
    const studentId = req.params.studentId;
    const sessionId = req.body.sessionId;
    console.log(studentId,sessionId);

    const classQuery ="insert into attendance (user_id,session_id,attendance_date) values ($1,$2,CURRENT_TIMESTAMP)"
  
    pool
      .query(classQuery, [studentId,sessionId])
      .then((result) => res.json(result.rows))
      .catch((e) => console.error(e));
  }); 

/* Check-Student-List (StudentList)-API */
app.get("/class/:classId/students", function (req, res) {
  const classId = req.params.classId;
  pool
    
    .query("select users.name,users.id from users where user_type  = 3 and class_id = $1",[classId])
    .then((result) => res.json(result.rows))
    .catch((e) => console.error(e));

});

/* checked student session attendance (SessionAttendance)-API */
app.get("/class/:classId/students/:studentId", function (req, res) {
  const classId = req.params.classId;
  const studentId = req.params.studentId;
  pool
    .query(
      "select session.name,(select to_char(session_date, 'yyyy-mm-dd hh:mi:ss') from session limit 1) as session_date,(select to_char(attendance_date, 'yyyy-mm-dd hh:mi:ss') from attendance where attendance.user_id = $2 and attendance.session_id = session.id limit 1) as attendance_date, (select attendance_date>session.session_date  from attendance where attendance.user_id = $2 and attendance.session_id = session.id limit 1) as late from session where session.class_id=$1",
      [classId, studentId]
    )
    .then((result) => res.json(result.rows))
    .catch((e) => console.error(e));
 });

/*  check - Session List (SessionList)-API */
app.get("/class/:classId/session", function (req, res) {
  const classId = req.params.classId;
  pool

    .query(
      " select session.name,session.id from session  where class_id  = $1",
      [classId]
    )
    .then((result) => res.json(result.rows))
    .catch((e) => console.error(e));
});

  /* Retrieves all students who are in attendance for a session (StudnetAttendance)-API*/
  app.get("/users/:classId/:sessionId", (req, res) => {
    const classId = req.params.classId;
    
    const sessionId = req.params.sessionId;
    console.log(classId, sessionId);

    const attendanceSessionQuery =
      "select distinct users.name,(select to_char(session_date, 'yyyy-mm-dd hh:mi:ss') from session where  session.id =$2) as session_date,(select to_char(attendance_date, 'yyyy-mm-dd hh:mi:ss') from attendance where attendance.user_id = users.id and attendance.session_id = $2 limit 1) as attendance_date, (select attendance_date>session.session_date  from attendance where attendance.user_id = users.id and attendance.session_id = $2 limit 1) as late from users,session where users.class_id=$1 and user_type = 3;";
    pool
      .query(attendanceSessionQuery, [ classId, sessionId])

      .then((result) => res.json(result.rows))
      .catch((e) => console.error(e));
  });
  
app.listen(PORT, () => console.log(`App listening on port ${PORT}`));
