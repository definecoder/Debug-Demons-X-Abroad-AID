import './App.css'
import './pages/landingPage'
import LandingPage from './pages/landingPage'
import {BrowserRouter, Routes, Route} from 'react-router-dom'
import LoginPage from './pages/loginPage'
import SignUpPage from './pages/signupPage'
import HomePage from './pages/HomePage'
import ProfilePage from './pages/ExpartReqest'
import MyFirmsPage from './pages/MyFirmsPage'
import FirmsProfilePage from './pages/FirmsProfilePage'
import AddNewFirmPage from './pages/AddNewFirm'
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
          <Route path="/firms" element = {<MyFirmsPage />} />
          <Route path="/firmName" element = {<FirmsProfilePage />} />
          <Route path="/addFirm" element = {<AddNewFirmPage />} />
        </Routes>
      </BrowserRouter>
    </>
  )
}

export default App
