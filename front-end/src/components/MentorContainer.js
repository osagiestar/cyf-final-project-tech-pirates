import React, { useState } from "react";
import MentorWelcome from "./MentorWelcome";
import SessionAttendance from "./SessionAttendance";
import StudentList from "./StudentList";
import SessionList from "./SessionList";
import StudentAttendance from "./StudentAttendance";


const MentorContainer = ({ classId }) => {
  const [viewType, setViewType] = useState(0);
  // const [sessionViewType, setSessionViewType] = useState(0);
  const [objectId, setObjectId] = useState(0);
  console.log(objectId);
  const containerView = () => {
    if (viewType === 0) {
      return (
        <MentorWelcome
          onCheckStudentClick={() => setViewType(1)}
          onCheckSessionClick={() => setViewType(2)}
        />
      );
    }

    if (viewType === 1 && !objectId) {
      return (
        <StudentList
          onStudentClick={setObjectId}
          classId={classId}
          onGoBackClick={() => setViewType(0)}
        />
      );
    }
    if (viewType === 1 && objectId) {
      return (
        <SessionAttendance
          classId={classId}
          objectId={objectId}
          BackToStudentList={() => setObjectId(0)}
        />
      );
    }
    if (viewType === 2 && !objectId) {
      return (
        <SessionList
           onSessionClick={setObjectId}
          classId={classId}
          onGoBackClick={() => setViewType(0)}
        />
      );
    }
    if (viewType === 2 && objectId) {
      return (
        <StudentAttendance
          classId={classId}
          sessionId={objectId}
          BackToStudentList={() => setObjectId(0)}
        />
      );
    }
    return null;
  };

  return containerView();
};
export default MentorContainer;
