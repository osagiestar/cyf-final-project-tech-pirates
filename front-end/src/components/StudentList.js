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
      <div className="back-to-welcome">
        <button className="button" onClick={onGoBackClick}>
          BackToWelcome
        </button>
      </div>
      <div className="list">
        <h3 className="add-color">Student List</h3>
      </div>

      <div className="list">
        {list.map((item) => (
          <Table className="table">
            <tr onClick={() => onStudentClick(item.id)}>
              {/* <td>{item.id}</td> */}
              <td className="list-style">{item.name}</td>
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
