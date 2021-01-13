import React, { useState, useEffect } from "react";
import Table from "react-bootstrap/Table";
import { FcOk, FcCancel } from "react-icons/fc";

const StudentAttendance = ({ classId, sessionId, BackToStudentList }) => {
  const [studentAttendance, setStudentAttendance] = useState([]);
  useEffect(() => {
    fetch(`${process.env.REACT_APP_BACK_END_URL}/users/${classId}/${sessionId}`)
      .then((res) => res.json())
      .then((data) => {
        setStudentAttendance(data);
      });
  }, [classId, sessionId]);
  console.log(studentAttendance);
  return (
    <div className="session-list">
      <div className="back-to">
        <button className="button" onClick={BackToStudentList}>
          Back
        </button>
      </div>
      <div className="list">
        {studentAttendance.map((item) => (
          <Table className="table">
            <tr>
              <td className="list-style">{item.name}</td>
              <td>{item.attendance ? <FcOk /> : <FcCancel />}</td>
            </tr>
          </Table>
        ))}
      </div>
    </div>
  );
};
export default StudentAttendance;
