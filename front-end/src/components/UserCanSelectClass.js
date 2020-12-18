import React, {useState, useEffect} from "react";
import { FaRegUser } from "react-icons/fa";
import { Link } from "react-router-dom";



const UserCanSelectClass = ({onLogout,id, setSessions}) => {
     const [session,setSession] = useState([]);
     const [sessionSelect,setSessionSelect] = useState(-1);
     const [clicked,setClicked] = useState(false)
console.log(sessionSelect)
     const onclick=()=>{
         fetch(`http://localhost:3000/users/${id}/class/session`, {
           method: "POST",
           body: JSON.stringify({
             sessionId: sessionSelect
           }),
           headers: { "Content-Type": "application/json" },
         }).then((res) => setClicked(true))
     }


     useEffect(()=>{
        fetch(`http://localhost:3000/users/${id}/class/session`)
    .then((res)=>res.json())
    .then((data)=> {setSession(data)});
    },[id])
    console.log(session)
        return (<>
            <div className="App">
               
              <h2>Please choose the class that you want to log into from the list below</h2>
              <p>choose a class:</p>
              <div>
                  <select value={sessionSelect} onChange={(event)=>setSessionSelect(event.target.value)} disabled={clicked} >
                      <option value = {-1} disabled>Please select session</option>
                      {session.map((item)=><option value = {item.id}>{item.name}</option>)}
                  </select>
                  
              </div>
              <div className="Space">
              <button className={clicked?"Star-clicked":"Star"} onClick={onclick} >{clicked?"Attending":"Log into this class"}</button>
              </div>
            </div>
            </>
          )
          
}
export default UserCanSelectClass;