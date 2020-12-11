const express = require("express");
const app = express();

const { Pool } = require("pg");
require("dotenv").config();

const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: false })); 

// const pool = new Pool({
//   user: "S225693",
//   host: "localhost",
//   database: "attendance",
//   password: "lucianome1",
//   port: 5432,
// });

const loginProfile = require("./front-end/src/components/WelcomePage"); // API routes for Student Profiles Screen
app.use(loginProfile);
app.get("/login", function(req,res){
    if(req.body.email || req.body.password){
        res.status(200)
    }
});


app.listen(PORT, () => console.log(`App listening on port ${PORT || 3001}`));

