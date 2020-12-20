import React, {useState,useEffect} from "react";


const StudentList = ({ onGoBackClick }) => {
    const [list, setList] = useState([]);
    useEffect(() => {
      fetch(`http://localhost:3000/attendance`)
        .then((res) => res.json())
        .then((data) => {
          setList(data);
        });
    }, []);
    console.log(list)
  return (
    <div>
      <button onClick={onGoBackClick}>BackToWelcome</button>
      <h3>Students List</h3>
      {list.map((item) => (
        <option value={item.id}>{item.name}</option>
      ))}
    </div>
  );
};

export default StudentList;
