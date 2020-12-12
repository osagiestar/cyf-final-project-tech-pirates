import React from "react";
import { Button, Form, FormGroup, Label, Input } from "reactstrap";
import { Link } from "react-router-dom";

const WelcomePage = () => {
  return (
    <div className="container">
      <header>
        <img
          className="App-logo"
          src="https://syllabus.codeyourfuture.io/img/logo.png"
          alt="cyf_logo"
        />
      </header>

      <div>
        <h1>
          <span className="font-weight-bold">Welcome!</span>
        </h1>

        <p className="first-line">
          This is an attendance register for CYF classes
        </p>
      </div>
      <div>
        <form className="input">
          <FormGroup>
            <div className="email">
              <input type="email" placeholder="Email/User name"></input>

              <input type="Password" placeholder="Password"></input>
            </div>
          </FormGroup>
          <Link to={"/welcome"} className="button">
            {" "}
            Sign in{" "}
          </Link>{" "}
        </form>
      </div>
    </div>
  );
};

export default WelcomePage;
