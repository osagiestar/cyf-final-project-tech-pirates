const express = require("express");
const app = express();

const { Pool } = require("pg");
require("dotenv").config();

const PORT = process.env.PORT || 3000;

app.use(express.json());

app.get("/", function(req,res){
    res.send("Welcome")
})

app.get("/users", function (req, res) {
  res.send("Welcome");
});

app.listen(PORT, () => console.log(`App listening on port ${PORT || 3000}`));

