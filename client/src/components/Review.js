import React, { useState } from "react";

export default function Reviews({ therapist, user }) {
  // render a fetch request to render pt reviews
  // therapist is passed down just need to access reviews table
  // state for data
  console.log(user);
  console.log(therapist.users);
  const [feedback, setFeedback] = useState({});
  const [caption, setCaption] = useState("");
  const [pic, setPic] = useState("");
  const [text, setText] = useState("");
  const [newReview, setNewReview] = useState(therapist.reviews);

  console.log(newReview);
  function handleSubmit(e) {
    e.preventDefault();
    fetch(`http://localhost:3000/reviews`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify({
        user_id: user.id,
        physical_therapist_id: therapist.id,
        review_header: caption,
        users_review: text,
        photo: pic,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        console.log(data);
        setNewReview([...newReview, data]);
        setFeedback(data);
        setCaption("");
        setPic("");
        setText("");
        alert("Your Review has posted!");
      });
  }
  console.log(feedback);
  console.log(caption);
  console.log(pic);
  console.log(text);

  return (
    <div className="testDiv">
      <h1 className="testi">
        {" "}
        Dr. {therapist.last_name} would love to hear feedback!
      </h1>
      <div className="box">
        <form onSubmit={handleSubmit}>
          <br />
          <label className="Rlabel">Review Caption:</label>
          <br />
          <input
            className="RcapInput"
            type="text"
            value={caption}
            onChange={(e) => setCaption(e.target.value)}
            placeholder="Review Caption"
          />
          <br />
          <label className="Rlabel">Share a Photo:</label>
          <br />
          <input
            className="RcapInput"
            type="text"
            value={pic}
            onChange={(e) => setPic(e.target.value)}
            placeholder="Share a Photo"
          />
          <br />
          <label className="Rlabel">Leave a Review:</label>
          <br />
          <input
            className="RcapInput"
            type="text"
            value={text}
            onChange={(e) => setText(e.target.value)}
            placeholder="Leave a Review"
          />
          <br />
          <input className="RcapSub" type="submit" value="Submit" />
        </form>
        <h1 className="testimonies">Testimonies</h1>
        {newReview.map((review) => (
          <div className="testPost" key={review.id}>
            <h3 className="Rhead">{review.review_header}</h3>
            <p className="Rrev">{review.users_review}</p>
            {/* <div>&nbsp;</div> */}
            <img className="Rpic" src={review.photo} alt={review.user_id} />
          </div>
        ))}
      </div>
    </div>
  );
}
