import React, {useState,useEffect} from "react";

const StudentList = ({ classId,onGoBackClick,onStudentClick }) => {
  const [list, setList] = useState([]);
  useEffect(() => {
    fetch(`http://localhost:3000/class/${classId}/students`)
      .then((res) => res.json())
      .then((data) => {
        setList(data);
      });
  });
  console.log(list);
  return (
    <div className="student-list">
      <div>
        <button className="button" onClick={onGoBackClick}>
          BackToWelcome
        </button>
      </div>
      <div>
        <h3>Student List</h3>
      </div>

      <div>
        {list.map((item) => (
          <div onClick={() => onStudentClick(item.id)}>
            <span value={item.id}>{item.name}</span>
          </div>
        ))}
      </div>
    </div>
  );
};

export default StudentList;
