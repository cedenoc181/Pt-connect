import React, { useState } from "react";
import ExerciseCard from "./ExerciseCard";
import UserFavExercises from "./UserFavExercises";

function ExerciseContainer({ exercises, onSearch, user }) {
  const [search, setSearch] = useState("");

  // const buttonArr = ["Abs", "Back", "Legs", "Arms", "Shoulders", "Cardio"];

  // console.log(exercise, "exercise state from exerciseCard");
  onSearch(search);

  return (
    <div>
      <h1 className="exercise-title">Exercises glossary</h1>
      <div className="search-container">
        <form>
          <input
            className="search-bar"
            type="text"
            placeholder="search exercises by name, equipment, target, etc"
            value={search}
            onChange={(e) => {
              console.log(e.target.value);
              setSearch(e.target.value);
            }}
          />
        </form>
      </div>
      <br />
      <div className="row">
        <div classname="column">
          <UserFavExercises user={user} exercise={exercises} />
        </div>

        <br />

        <div className="Exercise-con">
          {exercises.map((exercise) => (
            <ExerciseCard key={exercise.id} exercise={exercise} user={user} />
          ))}
        </div>
      </div>
    </div>
  );
}

export default ExerciseContainer;
