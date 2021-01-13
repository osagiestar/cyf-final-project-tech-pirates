import React, { useState, useEffect } from "react";

import Table from "react-bootstrap/Table";
import { FcOk, FcCancel } from "react-icons/fc";

const SessionAttendance = ({
  classId,
  objectId,
  BackToStudentList

}) => {
  const [studentSession, setStudentSession] = useState([]);
  useEffect(() => {
    fetch(`${process.env.REACT_APP_BACK_END_URL}/class/${classId}/students/${objectId}`)
      .then((res) => res.json())
      .then((data) => {
        setStudentSession(data);
      });
  });
  console.log(studentSession);
  return (
    <div className="session-list">
      <div className="back-to">
        <button className="button" onClick={BackToStudentList}>
          BackToStudentList
        </button>
      </div>
      <div className="list">
        {studentSession.map((item) => (
          <Table className="table">
            <tr>
              <td className="list-style">{item.name}</td>
              <td>{item.attendance_date ? <FcOk /> : <FcCancel />}</td>
            </tr>
          </Table>
        ))}
      </div>
    </div>
  );
};
export default SessionAttendance;
