import React, { useState } from "react";
import { FaRegUser } from "react-icons/fa";

const Header = ({ onLogout, user }) => {
  const [name, setName] = useState("");
  const username = () => {
    setName(name);
  };
  return (
    <div className="nav">
      <div>
        {" "}
        <FaRegUser size={25} />
        {user.name}
      </div>
      <div className="img">
        {" "}
        <img
          src="https://syllabus.codeyourfuture.io/img/logo.png"
          alt="cyf logo"
          width="200px"
          height="60px"
        />
      </div>
      <div>
        {" "}
        <button onClick={onLogout} className="Star">
          Logout
        </button>
      </div>
    </div>
  );
};

export default Header;
