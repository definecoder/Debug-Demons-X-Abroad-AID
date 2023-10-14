const { pool } = require('../db/connect')
const { getAspirantFromEmail } = require('../controllers/aspirant')
const jwt = require('jsonwebtoken')
const { escape } = require('mysql2')


const login = async (req, res) => {
    const { email } = req.body


    if (!email) {
        res.json({ msg: 'Please provide email and password' })
    }

    //just for demo, normally provided by DB!!!!
    const id = await getAspirantFromEmail(email)

    if (id == -1) {
        throw new Error('Invalid email or password')
    }
    // get user id from the data base using email and password

    // try to keep payload small, better experience for user
    // just for demo, in production use long, complex and unguessable string value!!!!!!!!!
    const token = jwt.sign({ id, email }, process.env.JWT_SECRET, {
        expiresIn: '30d',
    })

    res.status(200).json({ msg: 'user logged in', token })
}


const adminLogin = async (req, res) => {

    const { email, password } = req.body

    const sql = `
        SELECT * FROM admin
        WHERE email = '${email}' AND password = '${password}';
    `
    const data = await pool.query(sql)

    // console.log(data)

    if (Object.keys(data[0]).length === 0) {
        res.sendStatus(500);
    }
    else {
        res.sendStatus(200);
    }
}


module.exports = {
    adminLogin,
    login
}




