import React from "react";
import AccountContainer from "./AccountContainer";
import AppointmentContainer from "./AppointmentContainer";
import "./Account.css";
import "./Appointment.css";
// import UserFavExercises from "./UserFavExercises"

function Account({ user, onPtCreate }) {
  console.log(user, "account");

  let today = new Date();
  let dd = String(today.getDate()).padStart(2, "0");
  let mm = String(today.getMonth() + 1).padStart(2, "0"); //January is 0!
  let yyyy = today.getFullYear();

  today = mm + "/" + dd + "/" + yyyy;

  return (
    <div className="accountBody">
      <div className="greaterSection">
        <div>&nbsp;</div>
        <div className="welcomeGreeting">
          <div>
            <h1>
              Welcome {user.first_name} {user.last_name}
            </h1>
            <h3>Appointments scheduled as of today: {today} </h3>

            <AccountContainer user={user} onPtCreate={onPtCreate} />
          </div>
        </div>
        <AppointmentContainer user={user} />

        {/* <UserFavExercises user={user}/> */}
      </div>
    </div>
  );
}

export default Account;
