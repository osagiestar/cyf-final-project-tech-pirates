import React from "react";


const MentorWelcome = ({ onCheckStudentClick, onCheckSessionClick }) => {
  return (
    <div className="App-mentor">
      <div>
        <h2 className="welcome-header">Welcome to the class</h2>
      </div>
      <div>
        <p className="textColor-mentor">You are now logged in as a Mentor </p>
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
