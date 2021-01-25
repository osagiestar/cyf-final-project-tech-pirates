import React from "react";

import UserCanSelectClass from "./UserCanSelectClass"

const Welcome = ({ userId }) => {
  return (
    <div>
      <div>
        <h2 className="welcome-header">Welcome to the class</h2>
      </div>
      <div>
        <p className="login-header">You are now logged in as a Student </p>
      </div>
      <div>
        <UserCanSelectClass id={userId}/>
      </div>
    </div>
  );
};

export default Welcome;
