import React, { useState } from "react";

export default function ExerciseCard({ exercise, user }) {
  const [heart, setHeart] = useState(true);

  function handleSubmit() {
    fetch(`http://localhost:3000/favorites`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        exercise_id: exercise.id,
        user_id: user.id,
      }),
    })
      .then((res) => res.json())
      .then((res) => {
        console.log(res);
        alert("exercise has been added to your favorite list");
      });
    setHeart(!heart);
  }

  return (
    <div className="column">
      <img src={exercise.gifUrl} alt="gif" />
      <div>
        <div className="exercise-card-info">
          <h2 className="favE">
            {exercise.name} - {exercise.target}
          </h2>
          <p className="favE"> Equipment: {exercise.equipment}</p>
        </div>
        <button className="fav-button" onClick={handleSubmit}>
          {heart ? "🤍" : "❤️"}
        </button>
      </div>
    </div>
  );
}
