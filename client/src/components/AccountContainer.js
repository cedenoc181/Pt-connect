import React, { useState } from "react";

function AccountContainer({ user, onPtCreate }) {
  const [update, setUpdate] = useState(true);
  const [displayA, setDisplayA] = useState(true);
  const [firstName, setFirstName] = useState(user.first_name);
  const [lastName, setLastName] = useState(user.last_name);
  // const [email, setEmail] = useState('');
  const [insurance, setInsurance] = useState(user.insurer);
  const [state, setState] = useState(user.state);
  const [city, setCity] = useState(user.city);
  const [DOB, setDOB] = useState(user.DOB);
  const [number, setNumber] = useState(user.phone_number);
  const [address, setAddress] = useState(user.address);
  const [ptFirstName, setPtFirstName] = useState("");
  const [ptLastName, setPtLastName] = useState("");
  const [ptAddress, setPtAddress] = useState("");
  const [ptNumber, setPtNumber] = useState("");
  const [ptSpecialization, setPtSpecialization] = useState("");
  const [displayB, setDisplayB] = useState(true);

  function handleClick() {
    setUpdate(!update);
  }
  function handlePtClick() {
    setDisplayB(!displayB);
  }

  function handleDisplay() {
    setDisplayA(!displayA);
  }
  // add current data to this page !!!!!!!!!

  // request to make a update to account
  function handlePtCreate(e) {
    console.log(
      ptFirstName,
      ptLastName,
      // email,
      ptAddress,
      // ptTitle,
      ptSpecialization
    );
    e.preventDefault();
    fetch(`http://localhost:3000/physical_therapists`, {
      method: "POST",
      headers: {
        "Content-type": "application/json",
      },
      body: JSON.stringify({
        // email: user.email,
        first_name: ptFirstName,
        last_name: ptLastName,
        phone_number: ptNumber,
        clinic_address: ptAddress,
        specialization: ptSpecialization,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        console.log(data, "you just updated your account!");
        onPtCreate(data);
        alert("Account updated");
      });
  }
  // setFirstName("");
  // setLastName("");
  // setNumber("");
  // // setEmail("");
  // setInsurance("");
  // setState("");
  // setCity("");
  // setAddress("");
  // setDOB("");

  function handleSubmit(e) {
    console.log(
      firstName,
      lastName,
      insurance,
      state,
      city,
      address,
      number
      // email
    );
    e.preventDefault();
    fetch(`http://localhost:3000/users/${user.id}`, {
      method: "PATCH",
      headers: {
        "Content-type": "application/json",
      },
      body: JSON.stringify({
        first_name: firstName,
        last_name: lastName,
        // email: email,
        phone_number: number,
        insurer: insurance,
        state: state,
        city: city,
        address: address,
        DOB: DOB,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        console.log(data, "you just updated your account!");
        alert("Account updated");
      });
  }

  return (
    <div>
      {displayA ? (
        <p> </p>
      ) : (
        <div>
          <p>First Name: {firstName}</p>
          <p>Last Name: {lastName}</p>
          <p>Email: {user.email}</p>
          <p>Phone Number: {number}</p>
          <p>Insurer: {insurance}</p>
          <p>State: {state}</p>
          <p>City: {city}</p>
          <p>Address: {address}</p>
          <p>DOB: {DOB}</p>
        </div>
      )}
      <h3 className="displayButton" onClick={handleDisplay}>
        {displayA ? "Account Information" : "Hide Account Information"}
      </h3>
      {/* update account form */}
      {update ? (
        <p> </p>
      ) : (
        <form className="update-Account" onSubmit={handleSubmit}>
          <label>First Name: </label>
          <input
            className="accountInput"
            type="text"
            value={firstName}
            onChange={(e) => setFirstName(e.target.value)}
          />
          <br />
          <label>Last Name: </label>
          <input
            className="accountInput"
            type="text"
            value={lastName}
            onChange={(e) => setLastName(e.target.value)}
          />
          <br />
          <label>Phone Number: </label>
          <input
            className="accountInput"
            type="text"
            value={number}
            onChange={(e) => setNumber(e.target.value)}
          />
          <br />
          {/* <label>Email: </label>
        <input type="text" value={email} onChange={(e) => setEmail(e.target.value)} />
        <br /> */}
          <label>insurance: </label>
          <input
            className="accountInput"
            type="text"
            value={insurance}
            onChange={(e) => setInsurance(e.target.value)}
          />
          <br />
          <label>State: </label>
          <input
            className="accountInput"
            type="text"
            value={state}
            onChange={(e) => setState(e.target.value)}
          />
          <br />
          <label>City: </label>
          <input
            className="accountInput"
            type="text"
            value={city}
            onChange={(e) => setCity(e.target.value)}
          />
          <br />
          <label>Address: </label>
          <input
            className="accountInput"
            type="text"
            value={address}
            onChange={(e) => setAddress(e.target.value)}
          />
          <br />
          <label>DOB: </label>
          <input
            className="accountInput"
            type="text"
            value={DOB}
            onChange={(e) => setDOB(e.target.value)}
          />
          <br />

          <input
            className="accountButton"
            type="Submit"
            value="Update Account"
          />
        </form>
      )}
      <h3 className="updateButton" onClick={handleClick}>
        {update ? "Update Account" : "Account up-to date"}
      </h3>

      {displayB ? (
        <p> </p>
      ) : (
        <form className="update-Account" onSubmit={handlePtCreate}>
          <label>First Name: </label>
          <input
            type="text"
            value={ptFirstName}
            onChange={(e) => setPtFirstName(e.target.value)}
          />
          <br />
          <label>Last Name: </label>
          <input
            type="text"
            value={ptLastName}
            onChange={(e) => setPtLastName(e.target.value)}
          />
          <br />
          <label>Phone Number: </label>
          <input
            type="text"
            value={ptNumber}
            onChange={(e) => setPtNumber(e.target.value)}
          />
          <br />
          <label>Clinic Address: </label>
          <input
            type="text"
            value={ptAddress}
            onChange={(e) => setPtAddress(e.target.value)}
          />
          <br />
          <label>Specializations: </label>
          <input
            type="text"
            value={ptSpecialization}
            onChange={(e) => setPtSpecialization(e.target.value)}
          />
          <br />
          <input type="Submit" value="Join PT Connect!" />
        </form>
      )}
      <h3 className="updateButton" onClick={handlePtClick}>
        {displayB ? "Become a Physical Therapist" : "Account up-to date"}
      </h3>
    </div>
  );
}

export default AccountContainer;
