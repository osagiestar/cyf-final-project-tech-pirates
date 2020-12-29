import React, { useState, useEffect } from "react";

const SessionList = ({ sessionId, onGoBackClick, onSessionClick }) => {
  const [sessionList, setSessionList] = useState([]);
  useEffect(() => {
    fetch(`http://localhost:3000/users/class/${sessionId}/students`)
      .then((res) => res.json())
      .then((data) => {
        setSessionList(data);
      });
  }, []);
  console.log(sessionList);
  return (
    <div>
      <button onClick={onGoBackClick}>BackToWelcome</button>
      <h3>Sessions List</h3>

      {sessionList.map((item) => (
        <div onClick={() => onSessionClick(item.id)}>
          <>
            <span value={item.id}>{item.name}</span>
            {/* <button onClick={() => setStudentSession(item.name)}>
            Show Attendance
          </button> */}
          </>
        </div>
      ))}
    </div>
  );
};

export default SessionList;
