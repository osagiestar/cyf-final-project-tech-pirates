import React, { useState, useEffect } from "react";
import Table from "react-bootstrap/Table";
import { FcRight } from "react-icons/fc";

const SessionList = ({ classId, onGoBackClick, onSessionClick }) => {
  const [sessionList, setSessionList] = useState([]);
  useEffect(() => {
    fetch(`${process.env.REACT_APP_BACK_END_URL}/class/${classId}/session`)
      .then((res) => res.json())
      .then((data) => {
        setSessionList(data);
      });
  },[classId]);
  console.log(sessionList);
  return (
    <div className="student-list">
      <div>
        <button className="button" onClick={onGoBackClick}>
          BackToWelcome
        </button>
      </div>
      <div>
        <h3>Session List</h3>
      </div>
      <div>
        {sessionList.map((item) => (
          <Table className="table">
            <tr onClick={() => onSessionClick(item.id)}>
              <td>{item.id}</td>
              <td>{item.name}</td>
              <td>
                {" "}
                <FcRight />
              </td>
            </tr>
          </Table>
        ))}
        {/* {sessionList.map((item) => (
          <div onClick={() => onSessionClick(item.id)}>
            <span value={item.id}>{item.name}</span>
          </div>
        ))} */}
      </div>
    </div>
  );
};

export default SessionList;
