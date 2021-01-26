import React, { useState, useEffect } from "react";
import Table from "react-bootstrap/Table";
import { FcOk, FcCancel, FcExpired } from "react-icons/fc";
const SessionAttendance = ({ classId, objectId, BackToStudentList }) => {
  const [studentSession, setStudentSession] = useState([]);
  useEffect(() => {
    fetch(`${process.env.REACT_APP_BACK_END_URL}/class/${classId}/students/${objectId}`)
      .then((res) => res.json())
      .then((data) => {
        setStudentSession(data);
      });
  }, [classId, objectId]);
  console.log(studentSession);
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
                <th className="list-table-attend">Sessions</th>
                <th className="status-column">Status</th>
                <th className="list-table-attend">Attendance Date/Time</th>
                <th className="list-table-attend">Session Date/Time</th>
              </tr>
            </thead>
            <tbody>
              {studentSession.map((item) => (
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
                  <td className="list-style-attend">{item.session_date}</td>
                </tr>
              ))}
            </tbody>
          </Table>
        </div>
      </div>
    </>
  );
};
export default SessionAttendance;
