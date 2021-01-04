import React, {useState} from "react";

const AdminWelcome = ({ userId }) => {
  const [classes, setClasses] = useState(false);
  return (
    <div className="App">
      <div>
        <h2>Admins' student attendance Welcome page</h2>
      </div>
      <div>
        <h3>You are now logged in as an Admin </h3>
      </div>
      
    </div>
  );
};
export default AdminWelcome;