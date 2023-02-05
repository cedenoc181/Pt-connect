import "./App.css";
import React from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./components/Home";
import Header from "./components/Header";
import Pt from "./components/Pt";
import Login from "./components/Login";
import Exercise from "./components/Exercise";
import Account from "./components/Account";
import PtDetails from "./components/PtDetails";
import axios from "axios";
import { useState, useEffect } from "react";
import "./index.css";

function App() {
  //  var jwt_token = localStorage.getItem("jwt");
  //   console.log(jwt_token, "users token");

  const [user, setUser] = useState(null);
  const [searchKey, setSearchKey] = useState("");
  const [searchPt, setSearchPt] = useState("");
  const [exercises, setExercises] = useState([]);
  const [therapist, setTherapist] = useState([]);
  const [ptCreate, setPtCreate] = useState(therapist);

  useEffect(() => {
    axios.get("http://localhost:3000/exercises").then((response) => {
      console.log(response.data, "exercise data from fetch");
      setExercises(response.data);
    });
  }, []);

  useEffect(() => {
    axios.get("http://localhost:3000/physical_therapists").then((response) => {
      setTherapist(response.data);
    });
  }, []);

  useEffect(() => {
    fetch("http://localhost:3000/me", {
      headers: {
        Authorization: `Bearer ${localStorage.getItem("jwt")}`,
      },
    }).then((response) => {
      if (response.ok) {
        response.json().then((data) => setUser(data.user));
      }
    });
  }, []);
  console.log(user);
  if (!user)
    return (
      <div className="login">
        <Login onLogin={setUser} />
      </div>
    );

  function onSearch(searchKey) {
    setSearchKey(searchKey);
  }

  function onPtCreate(ptCreate) {
    setPtCreate([...therapist, ptCreate]);
  }
  console.log(ptCreate);

  const filteredExerciseFromSearch = exercises.filter((exercise) => {
    return (
      exercise.bodyPart.toLowerCase().includes(searchKey.toLowerCase()) +
      exercise.equipment.toLowerCase().includes(searchKey.toLowerCase()) +
      exercise.target.toLowerCase().includes(searchKey.toLowerCase()) +
      exercise.name.toLowerCase().includes(searchKey.toLowerCase())
    );
  });

  function ptSearch(searchPt) {
    setSearchPt(searchPt);
  }
  const filteredPtFromSearch = therapist.filter((pt) => {
    return (
      pt.first_name.toLowerCase().includes(searchPt.toLowerCase()) +
      pt.clinic_address.toLowerCase().includes(searchPt.toLowerCase()) +
      pt.specialization.toLowerCase().includes(searchPt.toLowerCase()) +
      pt.last_name.toLowerCase().includes(searchPt.toLowerCase())
    );
  });

  return (
    <div>
      <Header user={user} logOut={setUser} />
      <Routes>
        <Route
          path="/Account"
          element={
            <Account user={user} logOut={setUser} onPtCreate={onPtCreate} />
          }
        />
        <Route path="*" element={<h1>404 Not Found</h1>} />
        <Route
          path="/home"
          element={
            <Home exercises={exercises} user={user} therapist={therapist} />
          }
        />
        <Route
          path="/Pt"
          element={
            <Pt
              therapist={filteredPtFromSearch}
              searchPt={ptSearch}
              user={user}
            />
          }
        />
        <Route path="/Login" element={<Login />} />
        <Route
          path="/Exercise"
          element={
            <Exercise
              onSearch={onSearch}
              exercises={filteredExerciseFromSearch}
              user={user}
            />
          }
        />
        <Route
          path="/physical_therapists/:id"
          element={<PtDetails user={user}></PtDetails>}
        />
      </Routes>
    </div>
  );
}

export default App;
