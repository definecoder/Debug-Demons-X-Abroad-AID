import React, { useState, useEffect } from "react";
import ExpertReqCard from "../components/ExpertReqCard";
import BasicButton from "../components/BasicButton";
import landingLogo from "../assets/appLogo.png";
import InputTextField from "../components/InputTextField";
import PasswordField from "../components/PasswordField";
import LeftNavBar from "../components/LeftNavbar";
import { useParams } from "react-router-dom";

import "./ExpertProfilePageCSS.css";

const ProfileFetcher = () => {
  const [data, setData] = useState([]);
  const {id} = useParams();

  useEffect(async () => {
    const fetchData2 = async () => {
      try {
        const requestOptions = {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
          },
        };
        console.log("hi");
        const response = await fetch(
          ("http://192.168.1.100:8282/api/experts/" + id),
          requestOptions
        );
        const jsonData = await response.json();
        console.log(jsonData);
        setData(jsonData); // Assuming jsonData is in the format { data: [...] }
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    };

    await fetchData2();
  }, [data]);

  return (
    <div> 
        <div className="mainCanvas">
        <LeftNavBar curPage="expertReq" />
        <div className="rightCanvasProfile">
          <div className="heroSection">
            <div className="dpHolderP">
              <img className="dpInCardP" src={data[0].photoLink} alt="mehraj" />
            </div>
            <div className="nameUniRoleP">
              <h2>{data[0].name}</h2>
              <i>
                Studying in {data[0].university}, {data[0].state}, {data[0].country}. || {data[0].expertise}
              </i>

              <h3>Details : </h3>
              <p>{data[0].bio}</p>
            </div>
          </div>
          <div className="background">
            <h2 className="highlight">Background</h2>
            {data[0].background}
          </div>
          <div className="achievements">
            <h2 className="highlight">Achievements</h2>
            {data[0].achievements}
          </div>
          <div className="VISA">
            <h2 className="highlight">VISA</h2>
            <img src={data[0].visaPhotoLink} alt="VISA IMAGE" />
          </div>
          <div className="studentID">
            <h2 className="highlight">Student ID</h2>
            <img src={data[0].studentIDPhotoLink} alt="Student ID" />
          </div>
          <div className="locationSend">
            <h2 className="highlight">Sending Location Data</h2>
            <center>
            <h3>Latitude : {data[0].locationX}</h3>
            <h3>Longitude : {data[0].locationY}</h3>
            </center>
          </div>
          <div className="AcptRjct">
              <BasicButton  buttonText = 'Accept' onClick = {() => {}} routePath = "/home" />
              <BasicButton  buttonText = 'Reject' onClick = {() => {}} routePath = "/home" />
          </div>
        </div>
      </div>
    </div>
  );
};

export default ProfileFetcher;
