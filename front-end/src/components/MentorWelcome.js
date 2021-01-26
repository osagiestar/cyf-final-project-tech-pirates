import React from "react";
const MentorWelcome = ({ onCheckStudentClick, onCheckSessionClick }) => {
  return (
    <div className="App">
      <div>
        <h2>Welcome to the class</h2>
      </div>
      <div>
        <p>You are now logged in as a Mentor </p>
      </div>
      <div>
        <button className="mentor-button" onClick={onCheckStudentClick}>
          Check students
        </button>
      </div>
      <div>
        <button className="mentor-button" onClick={onCheckSessionClick}>
          {" "}
          Check sessions
        </button>
      </div>
    </div>
  );
};

export default MentorWelcome;
