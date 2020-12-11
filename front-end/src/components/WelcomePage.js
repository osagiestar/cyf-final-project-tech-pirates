import React from "react";
import { Button, Form, FormGroup, Label, Input } from "reactstrap";

const WelcomePage = () => {
  return (
    <div className="container">
      <div>
        <h1>
          <span className="font-weight-bold">Welcome!</span>
        </h1>

        <p className="first-line">
          This is an attendance register for CYF classes
        </p>
      </div>
      <div>
        <form className="input" action="/login" method="POST">
          <FormGroup>
            <div className="email">
              <label for="email">Email</label>
              <input
                type="email"
                placeholder="user name or email"
                name="email"
                required
              ></input>
            </div>
            <div>
              <label for="password">Password</label>
              <input
                type="Password"
                placeholder="Password"
                name="password"
                required
              ></input>
            </div>
          </FormGroup>
          <button className="button" type="submit" >Login</button>
        </form>
      </div>
    </div>
  );
};

export default WelcomePage;
