// TODO : ADD BG
import "./ExpertProfilePageCSS.css";

import BasicButton from "../components/BasicButton";
import landingLogo from "../assets/appLogo.png";
import InputTextField from "../components/InputTextField";
import PasswordField from "../components/PasswordField";
import LeftNavBar from "../components/LeftNavbar";
import { useParams } from "react-router-dom";

function RefundInfoPage() {
  let { refundID } = useParams();
  const accuser = "Md. Mehrajul Islam";
  const accusee = "Shawon Majid";
  const reason = "I attended the meeting and the expert was booked for an hour but he left after 15 mins without saying anything";
  const bookingID = "2";
  const accuserEmail = "codermehraj@gmail.com";
  const accuseePhone = "01973102522";
  const accuserPhone = "+8812348012";
  const accuseeEmail = "codermehraj@gmail.com";
  const accuserImage =
    "https://scontent-ccu1-1.xx.fbcdn.net/v/t39.30808-6/280253639_3238644329741905_8497351295383880684_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG3J1g8iv5a67OOJqXaRx9lWnFQx4tehPNacVDHi16E82KBKL-pUwMEurOG-b2qsNlqq1eKol2KLmGuLjXIog2o&_nc_ohc=3ObCOy7-7RoAX9gNdVi&_nc_ht=scontent-ccu1-1.xx&oh=00_AfAt4cEzsgn6iBeU8cMgnKH3DaCpsBkTB5a87is44iIMdQ&oe=652F8A3E";
  const accuseeImage = accuserImage;
  
  return (
    <>
      <div className="mainCanvas">
        <LeftNavBar curPage="refundReq" />
        <div className="rightCanvasProfile">
        <div className="heroSectionRefund greenOK">
            <div className="dpHolderP">
              <img className="dpInCardP" src={accuserImage} alt="accuser" />
            </div>
            <div className="nameUniRoleP">
              <h2>Accuser : {accuser}</h2>
              <i>
                {accuserEmail} || {accuserPhone}
              </i>

              <h3>Reason : </h3>
              <p>{reason}</p>
            </div>
          </div>
          <div className="heroSectionRefund redBad" >            
            <div className="nameUniRoleLeft">
              <h2 className="acuseeName">Accusee : {accusee}</h2>
              <i>
                {accuseeEmail} || {accuseePhone}
              </i>

              <h3>For Reference : </h3>
              <p>Booking ID : {bookingID} & Refund ID : {refundID}</p>
            </div>
            <div className="dpHolderP">
              <img className="dpInCardP" src={accuseeImage} alt="accuser" />
            </div>
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

export default RefundInfoPage;
