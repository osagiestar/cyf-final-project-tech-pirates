import React, { useState } from "react";
// import { FormGroup } from "reactstrap";

const Login = ({ onLogin }) => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const onLogIn = () => {
    fetch(`${process.env.REACT_APP_BACK_END_URL}/login`, {
      method: "POST",
      body: JSON.stringify({
        email: email,
        password: password,
      }),
      headers: { "Content-Type": "application/json" },
    })
      .then((res) => res.json())
      .then((data) => {
        onLogin(data);
      });
  };
  return (
    <div className="body">
      <div className="login-form">
        <div>
          <img
            className="App-logo"
            src="https://syllabus.codeyourfuture.io/img/logo.png"
            alt="cyf_logo"
          />
        </div>
        <div>
          <h3>
            <span className="font-weight-bold">Welcome to CYF Classes!</span>
          </h3>
        </div>
        <div>
          <h3 className="first-line">Attendance Register</h3>
        </div>
        <div>
          <div className="email">
            <input
              type="email"
              placeholder="user name or email"
              value={email}
              name="email"
              onChange={(event) => setEmail(event.target.value)}
              required
            ></input>
          </div>
          <div className="email">
            <input
              type="Password"
              placeholder="Password"
              value={password}
              name="password"
              onChange={(event) => setPassword(event.target.value)}
              required
            ></input>
          </div>
          <button className="button" onClick={onLogIn}>
            Login
          </button>
        </div>
      </div>
    </div>
  );
};

export default Login;

