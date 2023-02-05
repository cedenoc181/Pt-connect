import React from "react";

function Userfavdeletebutton({ exercise, user }) {
  function handleSubmit(e) {
    e.preventDefault();
    fetch(`http://localhost:3000/fav/${exercise.id}`, {
      method: "DELETE",
      headers: {
        Authorization: `Bearer ${localStorage.getItem("jwt")}`,
      },
    })
      .then((response) => {
        console.log(response);
      })
      .catch((error) => {
        console.log(error);
      });
  }
  console.log(user);

  return (
    <div>
      <button className="del-button" onClick={handleSubmit}>
        ✖️
      </button>
    </div>
  );
}

export default Userfavdeletebutton;
