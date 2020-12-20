import React, { useState } from "react";
import { FaRegUser } from "react-icons/fa";
import { Link } from "react-router-dom";
import Class_select from "./Class_select";
import UserCanSelectClass from "./UserCanSelectClass"

const Welcome = ({ userId }) => {
  const [sessions, setSessions] = useState(false);
    function sessionHandler(e) {
    // setSessions(!sessions);
    // let editId = e.target.parentNode.parentNode.id;
    // setStudentId(editId);
  }
  return (
    <div className="App">
      <h2>Welcome to the class</h2>
      <p>You are now logged in as a Student </p>
      {/* <button className="Star"> More ahead </button> */}
      {/* <Class_select /> */}
      <UserCanSelectClass id={userId} setSessions={setSessions} />
    </div>
  );
};

export default Welcome;
