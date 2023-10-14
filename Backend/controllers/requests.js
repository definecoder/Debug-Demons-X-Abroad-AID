const { pool } = require('../db/connect')

const createRequest = async (req, res) => {
    try {
        const { expertID, aspirantID } = req.body;

        const sql = `
            INSERT INTO requests(ExpertID, aspirantID)
            VALUES('${expertID}', '${aspirantID}')
        `
        await pool.query(sql)

        res.sendStatus(200);

    } catch (err) {
        console.log(err)
        res.sendStatus(500);
    }
}

const showRequests = async (req, res) => {

    try {

        const { expertID } = req.params

        const sql = `
            SELECT at.name AS aspirant_name
            FROM requests rt
            INNER JOIN aspirant at ON rt.aspirantID = at.id
            WHERE rt.expertID = ${expertID}
        `
        const data = await pool.query(sql)
        return res.status(200).json(data[0])

    } catch (err) {
        console.log(err)
        return res.sendStatus(500)
    }
}

const deleteRequest = async (req, res) => {
    try {

        const { requestID } = req.params

        const sql = `
            DELETE FROM requests
            WHERE id = ${requestID};
        `
        const data = await pool.query(sql)
        return res.status(200).json(data[0])

    } catch (err) {
        console.log(err)
        return res.sendStatus(500)
    }
}


module.exports = {
    createRequest,
    showRequests,
    deleteRequest
}