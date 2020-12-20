import React,{useState} from 'react';
import MentorWelcome from './MentorWelcome';
import StudentList from './StudentList';

const MentorContainer = ()=>{
    const [viewType, setViewType] = useState(0);

    const containerView=()=>{
        if(viewType == 0){
            return (
              <MentorWelcome onCheckStudentClick={() => setViewType(1)} />
            );
        }
        if(viewType ==1){
            return <StudentList onGoBackClick={()=> setViewType(0)} />
        }
        return null;
    }
    
    return containerView();
}
export default MentorContainer;