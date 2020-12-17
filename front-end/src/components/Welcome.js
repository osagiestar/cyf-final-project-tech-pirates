import React from "react";
import { FaRegUser } from "react-icons/fa";
import { Link } from "react-router-dom";
import Class_select from "./Class_select";

const Welcome = ({onLogout}) => {
  return (
    <div className="App">
      <h2>Welcome to the class</h2>
      <p>You are now logged in as a Student </p>
      <button className="Star"> More ahead </button>
      <Class_select />
    </div>
  );
}

export default Welcome;
