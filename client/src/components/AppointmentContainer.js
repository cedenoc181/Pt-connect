import React from "react";
import AppointmentCard from "./AppointmentCard";
import "./Appointment.css";
function AppointmentContainer({ user }) {
  console.log(user.appointments);
  return (
    <div className="appointmentContainer">
      {user.appointments.map((u) => (
        <AppointmentCard key={u.id} appointment={u} user={user} />
      ))}
      {/* {user.physical_therapists.map((pts)=>(
      <AppointmentCard key={pts.id} therapist={pts}/>
    ))} */}
    </div>
  );
}

export default AppointmentContainer;
