import React from "react";

import UserCanSelectClass from "./UserCanSelectClass"

const Welcome = ({ userId }) => {
  return (
    <div className="App">
      <div>
        <h2>Welcome to the class</h2>
      </div>
      <div>
        <p>You are now logged in as a Student </p>
      </div>
      <div>
        <UserCanSelectClass id={userId}/>
      </div>
    </div>
  );
};

export default Welcome;
