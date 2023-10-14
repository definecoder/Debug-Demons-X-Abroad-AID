import './App.css'
import './pages/landingPage'
import LandingPage from './pages/landingPage'
import {BrowserRouter, Routes, Route} from 'react-router-dom'
import LoginPage from './pages/loginPage'
import SignUpPage from './pages/signupPage'
import HomePage from './pages/HomePage'
import ProfilePage from './pages/ExpartReqest'
import RefundReq from './pages/RefundReq'
import ExpertProfilePage from './pages/ExpertProfilePage'
import RefundInfoPage from './pages/RefundInfoPage'
import TestAPI from './pages/TestAPI'
import ExpartReqest from './pages/ExpartReqest'

function App() {
  /* create homepage */
  return (
    <>
      <BrowserRouter>
        <Routes>
          <Route path="/" element = {<LandingPage />} />
          <Route path="/login" element = {<LoginPage />} />
          <Route path="/signup" element = {<SignUpPage />} />
          <Route path="/home" element = {<HomePage />} />
          <Route path="/expertReq" element = {<ExpartReqest />} />
          <Route path="/refundReq" element = {<RefundReq />} />
          <Route path="/profile/:id" element = {<ExpertProfilePage />} />
          <Route path="/refund/:refundID" element = {<RefundInfoPage />} />
        </Routes>
      </BrowserRouter>
    </>
  )
}

export default App
