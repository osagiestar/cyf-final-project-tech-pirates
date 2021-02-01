import React, { useState, useEffect } from "react";
import Table from "react-bootstrap/Table";
import { FcOk, FcCancel, FcExpired } from "react-icons/fc";

const StudentAttendance = ({ classId, sessionId, BackToStudentList }) => {
  const [studentAttendance, setStudentAttendance] = useState([]);
  useEffect(() => {
    fetch(`http://localhost:3000/users/${classId}/${sessionId}`)
      .then((res) => res.json())
      .then((data) => {
        setStudentAttendance(data);
      });
  }, [classId, sessionId]);
  console.log(studentAttendance);
  return (
    <>
      <div className="back-to">
        <button className="button" onClick={BackToStudentList}>
          Back
        </button>
      </div>
      <div className="list">
        <div className="session-list">
          <Table className="table">
            <thead>
              <tr>
                <th className="list-table-attend">Students</th>
                <th className="status-column">Status</th>
                <th className="list-table-attend">Attendance Date Time</th>
                <th className="list-table-attend">Session Date Time</th>
              </tr>
            </thead>
            <tbody>
              {studentAttendance.map((item) => (
                <tr>
                  <td className="list-style-attend">{item.name}</td>
                  <td className="status-column-arrow">
                    {item.attendance_date ? (
                      item.late ? (
                        <FcExpired />
                      ) : (
                        <FcOk />
                      )
                    ) : (
                      <FcCancel />
                    )}
                  </td>
                  <td className="list-style-attend">{item.attendance_date}</td>
                  <td className="list-style-attend"> {item.session_date}</td>
                </tr>
              ))}
            </tbody>
          </Table>
        </div>
      </div>
    </>
  );
};
export default StudentAttendance;