import React, { useState, useEffect } from "react";
import Userfavdeletebutton from "./Userfavdeletebutton";

function UserFavExercises({ user }) {
  const [fav, setFav] = useState([]);

  console.log(user);

  useEffect(() => {
    fetch("http://localhost:3000/fav", {
      headers: {
        Authorization: `Bearer ${localStorage.getItem("jwt")}`,
      },
    })
      .then((res) => res.json())
      .then((data) => {
        setFav(data);
        console.log(data, "faved exercises from fetch in userfavEx component");
      });
  }, []);
  console.log(fav);

  // function handleSubmit(e) {
  //   e.preventDefault();
  //   fetch(`http://localhost:3000/fav/${exercise.id}`, {
  //     method: 'DELETE',
  //     headers: {
  //       Authorization: `Bearer ${localStorage.getItem('jwt')}`,
  //     },
  //   })
  //     .then(response => {
  //    console.log(response)
  //     })
  //     .catch(error => {
  //       console.log(error)
  //     });
  //   }

  return (
    <div className="fav-exercises">
      <h3 className="favoritredTitle">Favorited Exercises</h3>
      {fav.map((exercise) => (
        <div classname="column">
          <img src={exercise.gifUrl} alt={exercise.name} />
          <div className="fav-info">
            <h2 className="favE">
              {exercise.name} - {exercise.target}
            </h2>
            <p className="favE"> Equipment: {exercise.equipment}</p>
          </div>
          {/* <button className="del-button" onClick={handleSubmit}>✖️</button> */}
          <Userfavdeletebutton
            key={exercise.id}
            exercise={exercise}
            user={user}
          />
        </div>
      ))}
    </div>
  );
}

export default UserFavExercises;
