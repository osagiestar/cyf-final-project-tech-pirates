import React, { useState, useEffect } from "react";
import Table from "react-bootstrap/Table";
import { FcRight } from "react-icons/fc";

const StudentList = ({ classId, onGoBackClick, onStudentClick }) => {
  const [list, setList] = useState([]);
  useEffect(() => {
    fetch(`http://localhost:3000/class/${classId}/students`)
      .then((res) => res.json())
      .then((data) => {
        setList(data);
      });
  }, [classId]);
  console.log(list);
  return (
    <>
      <div className="back-to">
        <button className="button" onClick={onGoBackClick}>
          Back
        </button>
      </div>
      <div className="list">
        <div className="session-list">
          <Table className="table">
            <thead>
              <tr>
                <th className="list-table-head">Students</th>
                <th className="list-table-head">Go to Session</th>
              </tr>
            </thead>
            <tbody>
              {list.map((item) => (
                <tr onClick={() => onStudentClick(item.id)}>
                  <td className="list-style">{item.name}</td>
                  <td>
                    {" "}
                    <FcRight />
                  </td>
                </tr>
              ))}
            </tbody>
          </Table>
        </div>
      </div>
    </>
  );
};

export default StudentList;