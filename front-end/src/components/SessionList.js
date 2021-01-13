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
    <div className="session-list">
      <div className="back-to">
        <button className="button" onClick={onGoBackClick}>
          BackToWelcome
        </button>
      </div>
      <div className="list">
        <h3 className="add-color">Session List</h3>
      </div>
      <div className="list">
        {sessionList.map((item) => (
          <Table className="table">
            <tr onClick={() => onSessionClick(item.id)}>
              {/* <td>{item.id}</td> */}
              <td className="list-style">{item.name}</td>
              <td>
                {" "}
                <FcRight />
              </td>
            </tr>
          </Table>
        ))}
      </div>
    </div>
  );
};

export default SessionList;
