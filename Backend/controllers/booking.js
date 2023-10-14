const { pool } = require('../db/connect')

const createBooking = async (req, res) => {

    try {
        let { aspirantID, ExpertID } = req.body;

        const status = 0 // applied
        const review = "not given"
        const rating = 0

        const sql = `
        INSERT INTO booking(aspirantID, ExpertID, status, review, rating)
        VALUES('${aspirantID}', '${ExpertID}', '${status}', '${review}', '${rating}')
        `
        await pool.query(sql)

        res.sendStatus(200);
    } catch (err) {
        console.log(err)
        res.sendStatus(500);
    }

}


const updateSchedule = async (req, res) => {
    try {
        const { bookingID, time } = req.body;
        const sql = `
            UPDATE booking
            SET time = ${time}
            WHERE id = ${bookingID}
        `
        await pool.query(sql)
        res.sendStatus(200)

    } catch (err) {
        console.log(err)
        res.sendStatus(500)
    }
}

const changeStatus = async (req, res) => {

    try {
        const { bookingID, status } = req.body;

        const sql = `
            UPDATE booking
            SET status = ${status}
            WHERE id = ${bookingID}
        `
        await pool.query(sql)
        res.sendStatus(200)

    } catch (err) {
        console.log(err);
        res.sendStatus(500);
    }
}

const changeReview = async (req, res) => {

    try {
        const { bookingID, review } = req.body
        const sql = `
            UPDATE booking
            SET review = '${review}'
            WHERE id = ${bookingID}
        `
        await pool.query(sql)
        res.sendStatus(200)

    } catch (err) {
        console.log(err);
        res.sendStatus(500);
    }
}


const changeRating = async (req, res) => {

    try {
        const { bookingID, rating } = req.body
        const sql = `
            UPDATE booking
            SET rating = ${rating}
            WHERE id = ${bookingID}
        `
        await pool.query(sql)
        res.sendStatus(200)

    } catch (err) {
        console.log(err);
        res.sendStatus(500);
    }
}

// const getBookingByExperts;
// const getBookingByAspirants;


module.exports = {
    createBooking,
    updateSchedule,
    changeStatus,
    changeReview,
    changeRating
}