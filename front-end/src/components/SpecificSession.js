import React, { useState, useEffect } from "react";

const SessionList = ({ sessionId, onGoBackClick, onSessionClick }) => {
  const [sessionList, setSessionList] = useState([]);
  useEffect(() => {
    fetch(
      `${process.env.REACT_APP_BACK_END_URL}/users/class/${sessionId}/students`
    )
      .then((res) => res.json())
      .then((data) => {
        setSessionList(data);
      });
  }, []);
  console.log(sessionList);
  return (
    <div>
      <button onClick={onGoBackClick}>Back</button>
      <h3>Sessions List</h3>

      {sessionList.map((item) => (
        <div onClick={() => onSessionClick(item.id)}>
          <>
            <span value={item.id}>{item.name}</span>
           
          </>
        </div>
      ))}
    </div>
  );
};

export default SessionList;
