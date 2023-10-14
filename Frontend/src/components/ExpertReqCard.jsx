import { Link } from 'react-router-dom';
import './componentStyle.css'

function ExpertReqCard(props) {    
    const { name, image, university, country, expertIn, details, id } = props;

    return (
      <>
        <a href={"profile/" + id}>
        <div className='ExpertReqCard'>
            
            <div className="dpHolder">
                <img className="dpInCard" src={image} alt="mehraj" />
            </div>
            <div className="nameUniRole">
                <h3>{name}</h3>
                <i>Studying in {university} , {country} || {expertIn}</i>
                <span>{details}</span>
            </div>
            
        </div>        
        </a>
      </>
    )
  }

  export default ExpertReqCard