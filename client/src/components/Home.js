import React from "react";
import { useLocation, useNavigate } from "react-router-dom";
import "./Home.css";

function Home({ therapist, exercises, user }) {
  const location = useLocation();
  const state = location.state;

  const navigate = useNavigate();

  console.log(state);
  console.log(therapist, "PT data in Home.js");
  console.log(exercises, "exercise data in home.js");
  console.log(user);

  function handleStepOne() {
    navigate("/pt");
  }

  function handleStepTwo() {
    navigate("/pt");
  }

  function handleStepThree() {
    navigate("/Account");
  }

  function handleClick() {
    navigate("/Account");
  }

  return (
    <div>
      <div className="banner">
        <img
          className="homeImg"
          src="https://i.ibb.co/Sv6t6hf/tryagain.png"
          alt="banner"
        />
      </div>
      <div className="homeHeaderCon">
        <h2 className="homeHeader">Let us put you in the right hands!</h2>
      </div>
      <div className="conOne">
        <div className="step">
          <h3 className="stepTitle" onClick={handleStepOne}>
            {" "}
            Step 1:
          </h3>
          <p className="stepDetail" onClick={handleStepOne}>
            Find your preferred provider from our list of top-physical
            therapist.
          </p>
        </div>

        <div className="step">
          <h3 className="stepTitle" onClick={handleStepTwo}>
            Step 2:
          </h3>
          <p className="stepDetail" onClick={handleStepTwo}>
            Book an appointment at a time and location that is best for you
            (take advantage of our "in home" visits).{" "}
          </p>
        </div>

        <div className="step">
          <h3 className="stepTitle" onClick={handleStepThree}>
            Step 3:
          </h3>
          <p className="stepDetail" onClick={handleStepThree}>
            Attend your appointment, browse through your progress and keep up
            with your plan of care.
          </p>
        </div>
      </div>

      <div className="midHeaderCon">
        <h2 className="midHeader">What to do after your appointment</h2>
      </div>

      <div className="midBodyConOuter">
        <div className="midBodyCon">
          <p className="midBody">
            Your healing journey does not have to stop when you leave our
            office. in fact, we encourage all of our patients to live active
            lives! in order to boost your recovery, look through our list of
            exerices that help patients of all kinds build workouts that are
            tailored to them.
          </p>
          <p className="midBody">
            Add your preferred exericses to your favorite list. Feeling unsure?
            not sure if these movements will help your recovery? click our
            "review" button at the end of your list to ask your PT to review and
            clear your workout.
          </p>
        </div>
      </div>

      <div className="midBodyImgConOuter">
        <div className="midBodyImgCon">
          <img
            className="midBodyImg"
            src="https://i.ibb.co/3cq7D12/download-1.jpg"
            alt="download-1"
          />
        </div>
        <div className="homeTextCon">
          <p className="midBodyImgText">
            Discover the power of expanding your client base and enhancing your
            reputation as a Physical Therapist with PT Connect. Join our
            platform today and elevate your practice to new heights. Click the
            button below to learn more about the benefits of becoming a part of
            the PT Connect community.
          </p>
        </div>
      </div>
      <div className="homeButtonCon">
        <button className="midBodyImgBtn" onClick={handleClick}>
          Join PT Connect
        </button>
      </div>
    </div>
  );
}

export default Home;
