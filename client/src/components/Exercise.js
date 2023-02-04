import React from "react";
import ExerciseContainer from "./ExerciseContainer";
import "./Exercise.css";

function Exercise({ exercises, onSearch, user }) {
  return (
    <div>
      <ExerciseContainer
        exercises={exercises}
        onSearch={onSearch}
        user={user}
      />
    </div>
  );
}

export default Exercise;
