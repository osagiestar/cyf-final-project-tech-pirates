import React, { useState } from "react";
import { FaRegUser } from "react-icons/fa";
import { Link } from "react-router-dom";

import UserCanSelectClass from "./UserCanSelectClass"

const Welcome = ({ userId }) => {
  const [sessions, setSessions] = useState(false);
  return (
    <div className="App">
      <h2>Welcome to the class</h2>
      <p>You are now logged in as a Student </p>
      <UserCanSelectClass id={userId} setSessions={setSessions} />
    </div>
  );
};

export default Welcome;
