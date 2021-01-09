import React, {useState,useEffect} from "react";
import Table from "react-bootstrap/Table";
import { FcRight } from "react-icons/fc";

const StudentList = ({ classId,onGoBackClick,onStudentClick }) => {
  const [list, setList] = useState([]);
  useEffect(() => {
    fetch(`${process.env.REACT_APP_BACK_END_URL}/class/${classId}/students`)
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
          <Table className="table">
            <tr onClick={() => onStudentClick(item.id)}>
              <td>{item.id}</td>
              <td>{item.name}         
              </td>
              <td>
                {" "}
                <FcRight />
              </td>
            </tr>
          </Table>
        ))}
        {/* {list.map((item) => (
          <div onClick={() => onStudentClick(item.id)}>
            <span value={item.id}>{item.name}</span>
            <ArrowRight />
          </div>
        ))} */}
      </div>
    </div>
  );
};

export default StudentList;
