import React, { useState, useEffect } from "react";
import moment from "moment";
import "moment-timezone";

const UserCanSelectClass = ({ onLogout, id, setSessions }) => {
  const [session, setSession] = useState([]);
  const [sessionSelect, setSessionSelect] = useState(-1);
  const [clicked, setClicked] = useState(false);
  console.log(sessionSelect);

  const onclick = () => {
    fetch(`${process.env.REACT_APP_BACK_END_URL}/users/${id}/class/session`, {
      method: "POST",
      body: JSON.stringify({
        sessionId: sessionSelect,
      }),
      headers: { "Content-Type": "application/json" },
    }).then((res) => setClicked(true));
  };

  useEffect(() => {
    fetch(`${process.env.REACT_APP_BACK_END_URL}/users/${id}/class/session`)
      .then((res) => res.json())
      .then((data) => {
        setSession(data);
      });
  }, [id]);
  console.log(session);
  return (
    <>
      <div className="App">
        <h2>Please sign into the session you want to attend</h2>
        <h3>choose a session:</h3>
        <div>
          <select
            value={sessionSelect}
            onChange={(event) => setSessionSelect(event.target.value)}
            disabled={clicked}
          >
            <option className="option" value={-1} disabled>
              Please select session
            </option>
            {session.map((item) => (
              <option value={item.id}>{item.name}</option>
            ))}
          </select>
        </div>
        <div className="Space">
          <button
            className={clicked ? "Star-clicked" : "Star"}
            onClick={onclick}
          >
            {clicked ? "Attending" : "Log into this class"}{" "}
            {clicked
              ? "Attending"
                ? moment().format("DD-MM-YYYY hh:mm:ssa")
                : moment().format("DD-MM-YYYY hh:mm:ssa")
              : ""}
          </button>
        </div>
      </div>
    </>
  );
};
export default UserCanSelectClass;
