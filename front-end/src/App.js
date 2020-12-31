import "./App.css";
import React, { useState } from "react";
import Login from "./components/Login";
import Welcome from "./components/Welcome";
//import MentorWelcome from "./components/MentorWelcome";
import Header from "./components/Header";
import MentorContainer from "./components/MentorContainer";


function App() {
  const [user,setUser] = useState()
  const logout = () => {
    setUser(null);
  }

  if(!user) {
      return <Login onLogin={setUser} />;
  }
console.log(user)
   return (
    <> 
    <Header onLogout = {logout} user= {user} />
    {
      user && user.type === "Student" && <Welcome userId={user.id}/>   }
      {
      user && user.type === "Teacher" && <MentorContainer classId={user.class_id}/>   }
    </>
  );
}

export default App;
