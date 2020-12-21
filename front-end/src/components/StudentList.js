import React, {useState,useEffect} from "react";
 


const StudentList = ({ classId,onGoBackClick, setStudentSession,onStudentClick }) => {
  const [list, setList] = useState([]);
  useEffect(() => {
    fetch(`http://localhost:3000/class/${classId}/students`)
      .then((res) => res.json())
      .then((data) => {
        setList(data);
      });
  }, []);
  console.log(list);
  return (
    <div>
      <button onClick={onGoBackClick}>BackToWelcome</button>
      <h3>Students List</h3>

      {list.map((item) => (
        <div onClick={() => onStudentClick(item.id)}>
          
          <span value={item.id}>{item.name}</span>
          {/* <button onClick={() => onStudentClick(item.id)}> */}
            {/* Show Attendance */}
          {/* </button> */}
        </div>
      ))}
    </div>
  );
};

export default StudentList;
