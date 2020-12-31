import React, { useState, useEffect } from "react";

const SessionList = ({ classId, onGoBackClick, onSessionClick }) => {
  const [sessionList, setSessionList] = useState([]);
  useEffect(() => {
    fetch(`http://localhost:3000/class/${classId}/session`)
      .then((res) => res.json())
      .then((data) => {
        setSessionList(data);
      });
  });
  console.log(sessionList);
  return (
    <div className="student-list">
      <div>
        <button className="button" onClick={onGoBackClick}>
          BackToWelcome
        </button>
      </div>
      <div>
        <h3>Session List</h3>
      </div>
      <div>
        {sessionList.map((item) => (
          <div onClick={() => onSessionClick(item.id)}>
            <span value={item.id}>{item.name}</span>
          </div>
        ))}
      </div>
    </div>
  );
};

export default SessionList;
