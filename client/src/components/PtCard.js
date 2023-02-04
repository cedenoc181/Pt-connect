import React from "react";
import { useLocation, useNavigate } from "react-router-dom";

function PtCard({ pt, user }) {
  const location = useLocation();
  const state = location.state;

  const navigate = useNavigate();

  console.log(state);
  console.log(user);

  return (
    <div className="outterDiv">
      <div className="ptcard">
        <div className="textSection">
          <div className="pt-img-con">
            <img
              className="ptimages"
              src={pt.profile_picture}
              alt={pt.last_name}
            />
          </div>
          <section className="ptInfo">
            <div className="ptFirst-Last-Name">
              Dr. {pt.first_name} {pt.last_name}, {pt.title}
            </div>
            <div className="ptSpec">{pt.specialization}</div>
            <div className="pt-rating">⭐ {pt.rating}</div>
            <div className="ptClinic">🏥: {pt.clinic_address}</div>
            <div>
              <span className="ptNetwork">Network:</span> {pt.insurances}.
            </div>{" "}
            {/* <div className="ptAbout">{pt.about_me}</div> */}
          </section>
        </div>
        <h5
          className="book-furtherout"
          onClick={() => {
            navigate(
              `/physical_therapists/${pt.id}`,
              { state: { pt } },
              { state: { user } }
            );
          }}
        >
          Schedule a visit with Dr.{pt.first_name} {pt.last_name} here!
        </h5>
        <div className="card-seperator"></div>
      </div>
    </div>
  );
}

export default PtCard;
