const express = require('express')
const router = express.Router()

const authToken = require('../middlewares/auth')

const { createRequest, showRequests, deleteRequest } = require('../controllers/requests')

router.route('/create').post(authToken, createRequest)
router.route('/:id').get(authToken, showRequests)
router.route('/:id').delete(authToken, deleteRequest)

module.exports = router;