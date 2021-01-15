import React, { useState, useEffect } from "react";

import Table from "react-bootstrap/Table";
import { FcOk, FcCancel, FcExpired } from "react-icons/fc";

const SessionAttendance = ({ classId, objectId, BackToStudentList }) => {
  const [studentSession, setStudentSession] = useState([]);
  useEffect(() => {
    fetch(`${REACT_APP_BACK_END_URL}/class/${classId}/students/${objectId}`)
      .then((res) => res.json())
      .then((data) => {
        setStudentSession(data);
      });
  }, [classId, objectId]);
  console.log(studentSession);
  return (
    <div className="list">
      <div className="back-button">
        <button className="button" onClick={BackToStudentList}>
          Back
        </button>
      </div>

      <div className="session-list">
        <Table className="table">
          <thead>
            <tr>
              <th>Sessions</th>
              <th>Status</th>
              <th>Attendance Time</th>
            </tr>
          </thead>
          <tbody>
            {studentSession.map((item) => (
              <tr>
                <td>{item.name}</td>
                <td>
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
                <td>{item.attendance_date}</td>
              </tr>
            ))}
          </tbody>
        </Table>
      </div>
    </div>
  );
};
export default SessionAttendance;
