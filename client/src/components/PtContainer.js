import React, { useState } from "react";
import PtCard from "./PtCard";

function PtContainer({ therapist, searchPt, user }) {
  const [search, setSearch] = useState("");

  searchPt(search);

  let today = new Date();
  let dd = String(today.getDate()).padStart(2, "0");
  let mm = String(today.getMonth() + 1).padStart(2, "0"); //January is 0!
  let yyyy = today.getFullYear();

  today = mm + "/" + dd + "/" + yyyy;

  return (
    <div className="out">
      {/* <div>&nbsp;</div> */}
      {/* <div>&nbsp;</div>
<div>&nbsp;</div> */}
      <div className="localPtCon">
        <div className="localPt">
          <h3>Find the right Physical Therapist for you!</h3>
        </div>
        {/* <div>&nbsp;</div> */}
        <form className="localPtSearch">
          <input
            type="text"
            className="writing"
            placeholder="Search providers by ZipCode"
            value={search}
            onChange={(e) => {
              console.log(e.target.value);
              setSearch(e.target.value);
            }}
          />
        </form>

        {/* <h3 className="localPt">Physical Therapist available for today: {today} </h3> */}
      </div>
      {/* <div>&nbsp;</div> */}
      {/* <div>&nbsp;</div> */}
      <div>&nbsp;</div>

      <div className="ptContainer">
        <h3 className="localPt">
          Physical Therapist available for today: {today}{" "}
        </h3>
        <div className="localPt">
          <div className="providers"> {therapist.length} Providers </div>
        </div>
        <div>&nbsp;</div>
        {therapist.map((pt) => (
          <PtCard key={pt.id} pt={pt} user={user} />
        ))}
      </div>
    </div>
  );
}

export default PtContainer;
