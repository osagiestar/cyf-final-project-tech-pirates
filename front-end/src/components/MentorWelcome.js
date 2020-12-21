import React from "react";


const MentorWelcome = ({ onCheckStudentClick,onCheckSessionClick }) => {
  return (
    <div className="App">
      <h2>Welcome to the class</h2>
      <p>You are now logged in as a Mentor </p>
      <button className="button" onClick={onCheckStudentClick}>
        Check students
      </button>
      <button className="button" onClick={onCheckSessionClick}>
        {" "}
        Check sessions
      </button>
    </div>
  );
};

export default MentorWelcome;
