import React from "react";
import { FaRegUser } from "react-icons/fa";

const Header = ({ onLogout, user }) => {
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
          width="150px"
          height="50px"
        />
      </div>
      <div>
        {" "}
        <button onClick={onLogout} className="Star-logout">
          Logout
        </button>
      </div>
    </div>
  );
};

export default Header;
