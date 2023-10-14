const express = require('express')
const router = express.Router()

const authToken = require('../middlewares/auth')

const { createExpert, getExpert, getAllExperts } = require('../controllers/experts')


router.route('/create').post(createExpert)
router.route('/').get(getAllExperts)
router.route('/:id').get(getExpert)

module.exports = router;


