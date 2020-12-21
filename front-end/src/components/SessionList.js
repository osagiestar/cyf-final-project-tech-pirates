import React, { useState, useEffect } from "react";

const SessionList = () => {
  const [sessionList, setSessionList] = useState([]);
  useEffect(() => {
    fetch(`http://localhost:3000/attendance`)
      .then((res) => res.json())
      .then((data) => {
        setSessionList(data);
      });
  }, []);
  console.log(sessionList);
  return (
    <div>
      <h3>Session List</h3>
      {sessionList.map((item) => (
        <>
          {" "}
          <option value={item.id}>{item.name}</option>
          {/* <button onClick={() => setStudentSession(item.name)}>
            Show Attendance
          </button> */}
        </>
      ))}
    </div>
  );
};

export default SessionList;
