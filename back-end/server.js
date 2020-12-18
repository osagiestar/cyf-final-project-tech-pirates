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
  user: "S225693",
  host: "localhost",
  database: "attendance",
  password: process.env.DB_PASSWORD,
  port: 5432,
});

app.post("/login", function (req, res) {
  //console.log(req.body)
  const email = req.body.email;
  const password = req.body.password;
  if (!req.body.email || !req.body.password) {
    return res.status(404).send("email and password required");
  }

  pool
    .query(
      "SELECT users.id, users.email, users.name, user_type.type FROM users INNER JOIN user_type ON users.user_type = user_type.id WHERE email = $1 AND password = $2 ",
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


// API to allow a student choose a session to attend
app.get("/class/session", function (req, res) {
  pool.query("SELECT * FROM class", (error, result) => {
    res.json(result.rows);
  });
});

app.get("users/location/class/session", function (req, res) {
  pool.query(
    "select users.name, user_type.type, location.name, class.name, session.name from users, user_type, location, class,session where user_type.id=users.user_type and location.id = class.location_id and class.id = session.class_id and users.id = 3",
    (error, result) => {
      res.json(result.rows);
    }
  );
});

// API to allow a student choose a session to attend
app.get("/users/:studentId/class/session", (req, res) => {
   
  const studentId = req.params.studentId;
  console.log(studentId);

  const classQuery = "SELECT session.name,session.id FROM class inner join session on class.id = session.class_id inner join users on users.class_id = class.id where users.id = $1"; 
    // "session.name FROM class, users, session WHERE users.class_id = class.id and session.class_id = class.id and users.id = $1";
    //"SELECT session.name,session.id FROM class, users, session WHERE users.class_id = class.id and session.class_id = class.id and users.id = $1";
  pool
    .query(classQuery, [studentId])
    .then((result) => res.json(result.rows))
    .catch((e) => console.error(e));
  }); 
  app.post("/users/:studentId/class/session", (req, res) => {
    const studentId = req.params.studentId;
    const sessionId = req.body.sessionId;
    console.log(studentId,sessionId);

    const classQuery ="insert into attendance (user_id,session_id) values ($1,$2)"
  
    pool
      .query(classQuery, [studentId,sessionId])
      .then((result) => res.json(result.rows))
      .catch((e) => console.error(e));
  }); 


app.listen(PORT, () => console.log(`App listening on port ${PORT}`));
