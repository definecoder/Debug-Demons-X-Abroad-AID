import { Link } from 'react-router-dom';
import './componentStyle.css'

function RefundCard(props) {    
    const { expertName, aspirantName, bookingID, reason, refundID, aspirantImg } = props;

    return (
      <>
        <a href={"refund/" + refundID}>
        <div className='ExpertReqCard'>
            
            <div className="dpHolder">
                <img className="dpInCard" src={aspirantImg} alt="mehraj" />
            </div>
            <div className="nameUniRole">
                <h3><span className="accuse">{expertName}</span> is Accused by <span className="accuser">{aspirantName}</span></h3>
                <i>Booking id : {bookingID} & Refund id: {refundID}</i>
                <span>{reason}</span>
            </div>
            
        </div>        
        </a>
      </>
    )
  }

  export default RefundCard