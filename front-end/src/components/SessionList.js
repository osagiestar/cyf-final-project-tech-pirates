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
  }, [classId]);
  console.log(sessionList);
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
                <th className="list-table-head">Sessions</th>
                <th className="list-table-head">Go to Student</th>
              </tr>
            </thead>
            <tbody>
              {sessionList.map((item) => (
                <tr onClick={() => onSessionClick(item.id)}>
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

export default SessionList;