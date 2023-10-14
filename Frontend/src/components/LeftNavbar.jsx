import { Link } from 'react-router-dom';
import './LeftNavBarCSS.css'
import landingLogo from "../assets/appLogo.png";

function BasicButton(props) {    
    const { curPage } = props;

    return (
      <>
        <div className='dummyNev'></div>
        <div className='leftNavbar'>
                <div className='navLogo'>
                    <img src={landingLogo} alt="logo" />
                </div>
                <div className='navItems'>                
                    <div className={curPage == 'home' ? 'activeNavItem' : 'nullll'}>
                        <Link to="/home"> DASHBOARD </Link>
                    </div>                    
                    <div className={curPage == 'expertReq' ? 'activeNavItem' : 'nullll'}>                    
                        <Link to="/expertReq"> EXPERT REQUESTS </Link>
                    </div>
                    
                    <div className={curPage == 'refundReq' ? 'activeNavItem' : 'nullll'}>
                        <Link to="/refundReq"> REFUND REQUESTS </Link>
                    </div>
                    <div className={curPage == 'logout' ? 'activeNavItem' : 'nullll'}>
                        <Link to="/"> LOG OUT </Link>
                    </div>
                </div>
            </div>
      </>
    )
  }

  export default BasicButton