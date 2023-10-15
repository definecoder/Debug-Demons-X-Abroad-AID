// TODO : ADD BG
import './HomePageCSS.css';

import BasicButton from "../components/BasicButton"
import landingLogo from "../assets/appLogo.png"
import InputTextField from '../components/InputTextField';
import PasswordField from '../components/PasswordField';
import LeftNavBar from '../components/LeftNavbar';

function HomePage() {        

    return (
      <>
        <div className='homepageCanvas'>
            <LeftNavBar curPage = "home" />
            <div className='rightCanvas'>
              <div className='welcomeUser'>
                  <h2 style={{color : '#1D1596',}}>WELCOME</h2>
                  <span style={{fontSize : '1.2em', fontWeight: '500'}}>Nafi Ullah Shafin</span>
              </div>
              <div>
                  <h2 style={{color : 'black',}}>TOTAL VISITORS TODAY</h2>
                  <span style={{fontSize : '2em', fontWeight: '700', color : '#1D1596'}}>104</span>
              </div>
              <div>
                  <h2 style={{color : 'black',}}>TOTAL EXPERTS</h2>
                  <span style={{fontSize : '2em', fontWeight: '700', color : '#1D1596'}}>53</span>
              </div>
              <div>
                  <h2 style={{color : 'black',}}>SESSIONS BOOKED</h2>
                  <span style={{fontSize : '2em', fontWeight: '700', color : '#1D1596'}}>23</span>
              </div>
            </div>
        </div>    
      </>
    )
  }

  export default HomePage