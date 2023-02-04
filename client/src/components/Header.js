import React from "react";
import { Link } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import "./Header.css";

function Header({ user, logOut }) {
  // const [nav, setNav] = useState(true)
  const navigate = useNavigate();
  function handleClick() {
    localStorage.removeItem("jwt");
    logOut(null);
    navigate("/Login");
  }

  return (
    <div className="header">
      <img
        src="https://i.ibb.co/6wdzbWt/logo.png"
        alt="logo"
        className="logo"
      />
      <p className="title"> PT Connect</p>
      {/* <div className="slogan"> Connect with our healing hands</div> */}
      <nav class="navBar">
        <Link className="link" to="/home">
          Home
        </Link>
        <Link className="link" to="/Pt">
          Providers
        </Link>
        <Link className="link" to="/Exercise">
          Exercise
        </Link>
        {user.empty ? (
          <Link className="link" to="/Login">
            Login
          </Link>
        ) : (
          <Link className="link" to="/Account">
            Account
          </Link>
        )}
        <Link className="link" onClick={handleClick}>
          {" "}
          Logout
        </Link>
      </nav>
    </div>
  );
}

export default Header;
