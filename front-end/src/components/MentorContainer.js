import React,{useState} from 'react';
import MentorWelcome from './MentorWelcome';
import SessionAttendance from './SessionAttendance';
import StudentList from './StudentList';

const MentorContainer = ({classId})=>{
    const [viewType, setViewType] = useState(0);
    const [studentId,setStudentId]=useState(null);
    const [sessionId, setSessionId] = useState(null);
console.log(studentId)
console.log(sessionId);
    const containerView=()=>{
        if(viewType == 0){
            return (
              <MentorWelcome onCheckStudentClick={() => setViewType(1)} />
            );
        }
        if(viewType ==1 && !studentId){
            return <StudentList onStudentClick={setStudentId} classId={classId} onGoBackClick={()=> setViewType(0)} />
        }

        if(viewType ==1 && studentId){
            return (
              <SessionAttendance
                classId={classId}
                studentId={studentId}
                BackToStudentList={() => setViewType(0)}
              />
            );

        }
        return null;
    }
    
    return containerView();
}
export default MentorContainer;