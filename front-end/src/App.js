import "./App.css";
import React, { useState } from "react";
import Login from "./components/Login";
import Welcome from "./components/Welcome";
import Header from "./components/Header";


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
    </>
  );
}

export default App;
