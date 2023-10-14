// TODO : ADD BG
import "./ExpertProfilePageCSS.css";

import BasicButton from "../components/BasicButton";
import landingLogo from "../assets/appLogo.png";
import InputTextField from "../components/InputTextField";
import PasswordField from "../components/PasswordField";
import LeftNavBar from "../components/LeftNavbar";
import { useParams } from "react-router-dom";

function ExpertProfilePage() {
  let { id } = useParams();
  const name = "Md. Mehrajul Islam";
  const university = "SUST";
  const state = "Sylhet";
  const country = "Bangladesh";
  const expertIn = "UK Visa Expert";
  const details =
    "I am Mehraj, a driven MIT Computer Science student known for my problem-solving abilities and active participation in coding competitions and hackathons. Besides excelling in technical skills, I also have a passion for music and community service. I aim to leverage my expertise for impactful technological innovations in the future.";
  const image =
    "https://scontent-ccu1-1.xx.fbcdn.net/v/t39.30808-6/280253639_3238644329741905_8497351295383880684_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG3J1g8iv5a67OOJqXaRx9lWnFQx4tehPNacVDHi16E82KBKL-pUwMEurOG-b2qsNlqq1eKol2KLmGuLjXIog2o&_nc_ohc=3ObCOy7-7RoAX9gNdVi&_nc_ht=scontent-ccu1-1.xx&oh=00_AfAt4cEzsgn6iBeU8cMgnKH3DaCpsBkTB5a87is44iIMdQ&oe=652F8A3E";
  const background = details;
  const achievements =
    "First Place Winner, MIT Coding Competition: Developed an innovative algorithm for optimizing data processing, leading the team to secure the top position in a prestigious coding competition at MIT. Hackathon Champion, TechFest 2022: Led a team to create a groundbreaking AI-driven chatbot solution, securing the championship at TechFest, the largest tech hackathon in the region.Published Research Paper: Co-authored a research paper on \"Advancements in Neural Networks for Natural Language Processing,\" published in the MIT Journal of Computer Science, demonstrating a profound understanding of complex machine learning concepts. Outstanding Community Service Award: Recognized for organizing a successful digital literacy program for underprivileged youth, fostering computer skills and technology awareness in the local community. Dean's List Honoree: Consistently achieved academic excellence, earning a place on the MIT Dean's List for exceptional performance and dedication to computer science studies.";
  const visa =
    "https://images.moneycontrol.com/static-mcnews/2023/04/Visa_usa-Photo-by-Molinas-Alvaro-via-Wikimedia-Commons-1.jpg?impolicy=website&width=1600&height=900";
  const studentID =
    "https://64.media.tumblr.com/b9363d40d66f3d06df50d926827441ea/tumblr_n82kr6dQLX1teais2o1_1280.jpg";

  return (
    <>
      <div className="mainCanvas">
        <LeftNavBar curPage="expertReq" />
        <div className="rightCanvasProfile">
          <div className="heroSection">
            <div className="dpHolderP">
              <img className="dpInCardP" src={image} alt="mehraj" />
            </div>
            <div className="nameUniRoleP">
              <h2>{name}</h2>
              <i>
                Studying in {university}, {state}, {country}. || {expertIn}
              </i>

              <h3>Details : </h3>
              <p>{details}</p>
            </div>
          </div>
          <div className="background">
            <h2 className="highlight">Background</h2>
            {background}
          </div>
          <div className="achievements">
            <h2 className="highlight">Achievements</h2>
            {achievements}
          </div>
          <div className="VISA">
            <h2 className="highlight">VISA</h2>
            <img src={visa} alt="VISA IMAGE" />
          </div>
          <div className="studentID">
            <h2 className="highlight">Student ID</h2>
            <img src={studentID} alt="Student ID" />
          </div>
          <div className="locationSend">
            <h2 className="highlight">Sending Location Data</h2>
            <center>
            <h3>Latitude : 18.219910</h3>
            <h3>Longitude : 73.648788</h3>
            </center>
          </div>
          <div className="AcptRjct">
              <BasicButton  buttonText = 'Accept' onClick = {() => {}} routePath = "/home" />
              <BasicButton  buttonText = 'Reject' onClick = {() => {}} routePath = "/home" />
          </div>
        </div>
      </div>
    </>
  );
}

export default ExpertProfilePage;
