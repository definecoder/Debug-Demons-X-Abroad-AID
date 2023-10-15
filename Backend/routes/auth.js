const express = require('express')
const router = express.Router()

const authToken = require('../middlewares/auth')

const { login, adminLogin } = require('../controllers/auth')
const { getUnapprovedExperts, approveExpert } = require('../controllers/experts')

// api/auth/login
// api/auth/register

// router.route('/register').post(createUser)
router.route('/login').post(login)
router.route('/adminLogin').post(adminLogin)
router.route('/getuapprovedUsers').get(getUnapprovedExperts)
router.route('/approveUser').put(approveExpert)


module.exports = router;