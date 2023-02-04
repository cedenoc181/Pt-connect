import React from "react";
import "./Appointment.css";
function AppointmentCard({ appointment, user }) {
  // const [home, setHome] = useState(null)
  console.log(appointment);
  console.log(user);
  console.log(user.physical_therapists);
  // console.log(therapist)
  console.log(appointment.physical_therapists);
  // create a delete request to delete appointments !!!!!!
  return (
    // physical therapist that have been reviewed by user is the only pts popping up on this appointment card, either get rid of the extra pt fancy stufff
    // and just only render the appointment or i will have to fix the backend relationships
    <div className="appointmentCard">
      <p>
        Patient: {user.first_name} {user.last_name}
      </p>
      <p>DOB: {user.DOB}</p>
      <p>Insurer: {user.insurer}</p>
      {/* {appointment.physical_therapist.map((myPt) => ( 
<div key={myPt.id}>
  <p>Physical Therapist: Dr.{myPt.first_name} {myPt.last_name} {myPt.title}</p>
  <p>Specialties: {myPt.specialization}</p>
  <img src={myPt.profile_picture} alt={myPt.last_name}/>
  {appointment.home_visit ? <p>Home Visit: {user.state}, {user.city}</p> : <p>In Clinic: {myPt.clinic_address}</p>}
</div>
))} */}

      <p>Reason for visit: {appointment.claim}</p>
      <p>Appointment scheduled for : {appointment.scheduled}</p>
      {/* {appointment.home_visit ? <p>Home Visit</p> : <p>In Clinic</p>} */}
      <div className="line"></div>
    </div>
  );
}

export default AppointmentCard;
