import * as React from "react";
import { useState } from "react";
// import {useNavigate} from 'react-router-dom';
import dayjs from "dayjs";
import TextField from "@mui/material/TextField";
import { AdapterDayjs } from "@mui/x-date-pickers/AdapterDayjs";
import { LocalizationProvider } from "@mui/x-date-pickers/LocalizationProvider";
import { DateTimePicker } from "@mui/x-date-pickers/DateTimePicker";
// import { StaticDateTimePicker } from '@mui/x-date-pickers/StaticDateTimePicker';

export default function CreateAppointment({ therapist, user }) {
  const [dataValue, setDataValue] = React.useState(dayjs(new Date()));
  // const navigate = useNavigate();
  const [claim, setClaim] = useState("");
  const [homeVisit, setHomeVisit] = useState(false);
  const [appointment, setAppointment] = useState({});
  const [isPending, setIsPending] = useState(false);

  console.log("current user signed in", user);
  console.log("therapist selected", therapist);

  console.log(dataValue);
  let scheduled = dataValue.$d;
  // console.log below gets hours in military time
  // console.log(scheduled.getHours())
  // console.log(scheduled.getMinutes())
  // this function converts military time to regular
  function hours12(date) {
    return (date.getHours() + 24) % 12 || 12;
  }
  let hours = scheduled.getHours();
  let month = scheduled.getMonth() + 1;
  let months = month < 10 ? "0" + month : month;
  let day = scheduled.getDate();
  let days = day < 10 ? "0" + day : day;
  let year = scheduled.getFullYear();
  let ampm = hours >= 12 ? "PM" : "AM";
  let hour = hours12(scheduled);
  let minute = scheduled.getMinutes();
  let minutes = minute < 10 ? "0" + minute : minute;
  let strTime =
    months + "/" + days + "/" + year + " " + hour + ":" + minutes + " " + ampm;

  function handleClick() {
    setHomeVisit(!homeVisit);
  }

  // let bookedTime = scheduled.toString()
  // let data = value.getDate()
  console.log(therapist);
  console.log(months, "month selected");
  console.log(days, "day selected");
  console.log(year, "year selected");
  console.log(hour, "hour selected");
  console.log(minutes, "minute selected");
  console.log(ampm);
  console.log(strTime, "string of date selected");
  console.log("home visit is", homeVisit);

  // Post request to appointments for specific user, make sure to use variables above in post request, if doesnt work make a state for each variable
  function handleSubmit(e) {
    e.preventDefault();

    setIsPending(true);
    fetch("http://localhost:3000/appointments", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify({
        user_id: user.id,
        physical_therapist_id: therapist.id,
        claim: claim,
        home_visit: homeVisit,
        scheduled: strTime,
      }),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
        if (data.success) {
          console.log(data.success, "data from post request");
          setAppointment(data);
        } else {
          console.log(data.error, "data error catcher");
        }
        setIsPending(false);
        setHomeVisit(false);
        setClaim("");
        setDataValue(dayjs(new Date()));
        alert("Appointment successflly created, We will see you soon!");
        // navigate("/Account")
      });
  }
  console.log(appointment, "appointment created");
  console.log(claim, "claim created");
  return (
    <div className="Ca">
      <br />
      <h3 className="appBelow">Schedule your appointment below!</h3>
      <form onSubmit={handleSubmit}>
        <div className="box">
          <LocalizationProvider dateAdapter={AdapterDayjs}>
            <DateTimePicker
              renderInput={(props) => <TextField {...props} />}
              label="Input date or use Calendar Icon*"
              // minTime={new Date(0, 0, 0, 8)}
              // maxTime={new Date(0, 0, 0, 18, 45)}
              // disableOpenPicker={true}
              openTo="year"
              minDate={new Date()}
              maxDate={"2025/01/01"}
              onChange={(newValue) => {
                // console.log(newValue);
                setDataValue(newValue);
              }}
              className="datePicker"
            />
          </LocalizationProvider>
        </div>
        <br />
        {dataValue !== new Date() ? (
          <h3 className="dateSelected">Appointment Scheduled for: {strTime}</h3>
        ) : null}
        <br />
        <label className="claimLabel">Brief description detailing visit:</label>
        <br />
        <div className="box">
          <input
            type="text"
            value={claim}
            onChange={(e) => setClaim(e.target.value)}
            placeholder="Pain, Injury, Discomfort..."
            className="claimInput"
          />
        </div>
        <div>&nbsp;</div>
        <label className="inqHome">Check for Home Visit Inquiry: </label>
        <div className="box">
          <input
            className="inqHomeInput"
            type="checkbox"
            value={homeVisit}
            onClick={handleClick}
          />
        </div>
        <br />
        <div className="box">
          {!isPending && (
            <button className="appbutton" onClick={handleSubmit}>
              {" "}
              Create Appointment!
            </button>
          )}
          {isPending && (
            <button className="appbutton" disabled>
              {" "}
              Creating...
            </button>
          )}
        </div>
      </form>
    </div>
  );
}
