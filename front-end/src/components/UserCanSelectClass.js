import React from "react";
import { FaRegUser } from "react-icons/fa";
import { Link } from "react-router-dom";
import Header from "./Header"

const UserCanSelectClass = ({onLogout}) => {

        return (
            <div className="App">
                <Header />
              <h2>Please choose the class that you want to log into from the list below</h2>
              <p>choose a class:</p>
              <div>
                  <select>
                      <option>
                         React
                      </option>
                      <option>
                          javascript
                      </option>
                      <option>
                          node
                      </option>
                      <option>
                          SQL
                      </option>
                  </select>
              </div>
              <div className="Space">
              <button className="Star">Log into this class</button>
              </div>
            </div>
          )
}
export default UserCanSelectClass