import React, { useState, useEffect } from "react";

const StudentAttendance = ({ objectId,sessionId, BackToStudentList }) => {
  const [studentAttendance, setStudentAttendance] = useState([]);
  useEffect(() => {
    fetch(`http://localhost:3000//users/${objectId}/${sessionId}`)
      .then((res) => res.json())
      .then((data) => {
        setStudentAttendance(data);
      });
  });
  console.log(studentAttendance);
  return (
    <div className="session-list">
      <button className="button" onClick={BackToStudentList}>
        BackToStudentList
      </button>

      {studentAttendance.map((item) => (
        <div>
          {item.name} - {item.attendance_date}
        </div>
      ))}
    </div>
  );
};
export default StudentAttendance;
