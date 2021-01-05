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

 // user: "osagie",
  user: "S225693",
  host: "localhost",
  database: "attendance",
  password: process.env.DB_PASSWORD,
  port: 5432,
});

//All Users Login API
app.post("/login", function (req, res) {
  //console.log(req.body)
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


// Check-Student-List API(StudentList)
app.get("/class/:classId/students", function (req, res) {
  const classId = req.params.classId;
  pool
    
    .query("select users.name,users.id from users where user_type  = 3 and class_id = $1",[classId])
    .then((result) => res.json(result.rows))
    .catch((e) => console.error(e));

});

//checked student session attendance API(SessionAttendance)
app.get("/class/:classId/students/:studentId", function (req, res) {
  const classId = req.params.classId;
  const studentId = req.params.studentId;
  pool
    .query("select session.name, attendance.attendance_date from session left join attendance on attendance.session_id = session.id where session.class_id = $1 and (attendance.user_id = $2 or attendance.user_id is null) ", [
      classId,studentId
    ])
    .then((result) => res.json(result.rows))
    .catch((e) => console.error(e));
 });

// Student Attendance

app.get("/class/:classId/session/:sessionId", function (req, res) {
  const classId = req.params.classId;
  const sessionId = req.params.sessionId;
  pool
    .query(
      "select users.name,session.name, attendance.attendance_date from users inner join attendance on attendance.user_id = users.id inner join session on users.class_id = session.class_id where session.class_id = $1 and session.id =$2 ",
      [classId, sessionId]
    )
    .then((result) => res.json(result.rows))
    .catch((e) => console.error(e));
});



//  check - Session List
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


// API to retrieve session for a specific student (UserCanSelectClass)
app.get("/users/:studentId/class/session", (req, res) => {
   
  const studentId = req.params.studentId;
  console.log(studentId);

  const classQuery = "SELECT session.name,session.id FROM class inner join session on class.id = session.class_id inner join users on users.class_id = class.id where users.id = $1"; 
    
  pool
    .query(classQuery, [studentId])
    .then((result) => res.json(result.rows))
    .catch((e) => console.error(e));
  }); 

  // API and query to record a session attended by a specific student (Attendance Record)
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


 
  // Retrieves all all students who are in attendance for a session 
  app.get("/users/class/:sessionId/students", (req, res) => {
    const sessionId = req.params.sessionId;
    console.log(sessionId);
    const attendanceSessionQuery =
      "SELECT session.name, session.session_date, users.name FROM users INNER JOIN class ON users.class_id = class.id INNER JOIN session ON class.id = session.class_id INNER JOIN attendance ON session.id = attendance.session_id WHERE users.user_type = 3 AND session.id = $1 GROUP BY session.name, session.session_date, users.name HAVING count(*) > 1";
    pool.query(attendanceSessionQuery, [sessionId]);
  });

  // Retrieves all students who are in attendance for a session (StudnetAttendance)

  app.get("/users/:classId/:sessionId", (req, res) => {
    const classId = req.params.classId;
    
    const sessionId = req.params.sessionId;
    console.log(classId, sessionId);

    const attendanceSessionQuery =
      "select users.name, (select attendance_date from attendance where attendance.session_id = $2 and attendance.user_id = users.id) as attendance from users where users.class_id = $1 and users.user_type = 3;";
    pool
      .query(attendanceSessionQuery, [ classId, sessionId])

      .then((result) => res.json(result.rows))
      .catch((e) => console.error(e));
  });

  //Osagie specific session attendance
  app.get("/users/class/:sessionId/students", (req, res) => {
    // const teacherId = req.params.teacherId;	
    const sessionId = req.params.sessionId;	   

    const attendanceSessionQuery = 
      "SELECT session.name, session.session_date, users.name FROM users INNER JOIN class ON users.class_id = class.id INNER JOIN session ON class.id = session.class_id INNER JOIN attendance ON session.id = attendance.session_id WHERE users.user_type = 3 AND session.id = $1 GROUP BY session.name, session.session_date, users.name HAVING count(*) > 1";
     // "SELECT session.name, users.name, session.session_date FROM users INNER JOIN class ON users.class_id = class.id INNER JOIN session ON class.id = session.class_id INNER JOIN attendance ON session.id = attendance.session_id WHERE session.id = $1";	      pool
    pool	
      .query(attendanceSessionQuery, [sessionId])
      .then((result) => res.json(result.rows))
      .catch((e) => console.error(e));	      
     }); 


app.listen(PORT, () => console.log(`App listening on port ${PORT}`));
