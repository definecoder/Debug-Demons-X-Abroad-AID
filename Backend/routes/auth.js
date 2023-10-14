const express = require('express')
const router = express.Router()

const authToken = require('../middlewares/auth')

const { login, adminLogin } = require('../controllers/auth')

// api/auth/login
// api/auth/register

// router.route('/register').post(createUser)
router.route('/login').post(login)
router.route('/adminLogin').post(adminLogin)


module.exports = router;