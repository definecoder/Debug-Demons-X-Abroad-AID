const express = require('express')
const router = express.Router()

const authToken = require('../middlewares/auth')

const { createAspirant, getAllAspirant, getAspirant } = require('../controllers/aspirant')

// router.post('/create', createAspirant)
// router.

router.route('/create').post(createAspirant)
router.route('/').get(getAllAspirant)
router.route('/:id').get(getAspirant)

module.exports = router;


