const { pool } = require('../db/connect')

const createBooking = async (req, res) => {

    try {
        const { aspirantID, ExpertID, time } = req.body;
        if (!time) {
            const currentDate = new Date();
            const options = {
                year: 'numeric',
                month: '2-digit',
                day: '2-digit',
                hour: '2-digit',
                minute: '2-digit',
                second: '2-digit',
            };
            const formattedDate = new Intl.DateTimeFormat('en-US', options).format(currentDate);
            time = formattedDate
        }

        const status = 0 // applied
        const review = "not given"
        const rating = 0

        const sql = `
        INSERT INTO booking(aspirantID, ExpertID, time, status, review, rating)
        VALUES('${aspirantID}', '${ExpertID}', '${time}' , '${status}', '${review}', '${rating}')
        `
        await pool.query(sql)

        res.sendStatus(200);
    } catch (err) {
        console.log(err)
        res.sendStatus(500);
    }

}


