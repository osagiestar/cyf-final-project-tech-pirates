import React, { useState, useEffect } from "react";
import Table from "react-bootstrap/Table";
import { FcRight } from "react-icons/fc";

const StudentList = ({ classId, onGoBackClick, onStudentClick }) => {
  const [list, setList] = useState([]);
  useEffect(() => {
    fetch(`${REACT_APP_BACK_END_URL}/class/${classId}/students`)
      .then((res) => res.json())
      .then((data) => {
        setList(data);
      });
  },[classId]);
  console.log(list);
  return (
    <div className="student-list">
      <div className="back-to">
        <button className="button-back" onClick={onGoBackClick}>
          Back
        </button>
      </div>

      <div>
        <Table className="table">
          <thead>
            <tr>
              <th>Students</th>
              <th>Go to Session</th>
      </tr>
          </thead>
          <tbody>
          
            {list.map((item) => (
              <tr onClick={() => onStudentClick(item.id)}>
                <td>{item.name}</td>
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
  );
};

export default StudentList;
