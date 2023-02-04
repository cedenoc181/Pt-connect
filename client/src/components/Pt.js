import React from "react";
import PtContainer from "./PtContainer";
import "./Pt.css";

function Pt({ therapist, user, searchPt }) {
  console.log(therapist, "PT data");
  console.log(user);
  return (
    <div>
      <PtContainer therapist={therapist} searchPt={searchPt} user={user} />
    </div>
  );
}

export default Pt;
