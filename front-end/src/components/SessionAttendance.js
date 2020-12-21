import React, {useState,useEffect} from "react";


const SessionAttendance = ({classId,studentId}) => {
    const [studentSession, setStudentSession] = useState([]);
    useEffect(() => {
      fetch(`http://localhost:3000/class/${classId}/students/${studentId}`)
        .then((res) => res.json())
        .then((data) => {
          setStudentSession(data);
        });
    }, []);
    console.log(studentSession)
    return (<div>
      {studentSession.map((item) => (<div>{item.name} - {item.attendance_date}</div>))}
    </div>
  )};
  export default SessionAttendance;