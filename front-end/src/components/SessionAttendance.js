import React, {useState,useEffect} from "react";

import Table from "react-bootstrap/Table";
import { FcOk, FcCancel } from "react-icons/fc";


const SessionAttendance = ({classId, objectId, BackToStudentList}) => {
  const [studentSession, setStudentSession] = useState([]);
  useEffect(() => {
    fetch(`http://localhost:3000/class/${classId}/students/${objectId}`)
      .then((res) => res.json())
      .then((data) => {
        setStudentSession(data);
      });
  });
  console.log(studentSession);
  return (
    <div className="session-list">
      <button className="button" onClick={BackToStudentList}>
        BackToStudentList
      </button>
      <div>
        {studentSession.map((item) => (
          <Table className="table">
            <tr>
              <td>{item.name}</td>
              <td>{item.attendance_date ? <FcOk /> : <FcCancel />}</td>
            </tr>
          </Table>
        ))}
      </div>
      {/* {studentSession.map((item) => (
        <div>
          {item.name} - {item.attendance_date}
        </div>
      ))} */}
    </div>
  );
};
  export default SessionAttendance;