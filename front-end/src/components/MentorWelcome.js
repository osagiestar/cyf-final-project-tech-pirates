import React from "react";


const MentorWelcome = ({ onCheckStudentClick }) => {
  return (
    <div className="App">
      <h2>Welcome to the class</h2>
      <p>You are now logged in as a Mentor </p>
      <button className="Star" onClick={onCheckStudentClick}>
        Check students
      </button>
      <button className="Star">Check sessions</button>
    </div>
  );
};

export default MentorWelcome;
