const { pool } = require('../db/connect')


// 

const createAspirant = async (req, res) => {

    try {
        let { name, email, phone, gender, photoLink, currentInstitution, originCountry, destinations, intentedStudyFields, goals, questions, language, intendedSession, scolarshipNeed } = req.body;

        // console.log(name, email, phone, gender, photoLink, currentInstitution, originCountry, destinations, intentedStudyFields, goals, questions, language, intendedSession, scolarshipNeed);

        // id	name	email	phone	gender	photoLink	currentInstitution	originCountry	destinations	intentedStudyFields	goals	questions	language	intendedSession	scolarshipNeed

        if (!gender) {
            gender = 0
        }
        if (!scolarshipNeed) {
            scolarshipNeed = 0
        }

        const sql = `
            INSERT INTO aspirant(name, email, phone, gender, photoLink, currentInstitution, originCountry, destinations, intentedStudyFields, goals, questions, language, intendedSession, scolarshipNeed)
            VALUES('${name}', '${email}', '${phone}', '${gender}', '${photoLink}', '${currentInstitution}', '${originCountry}', '${destinations}', '${intentedStudyFields}' ,'${goals}', '${questions}', '${language}' ,'${intendedSession}', '${scolarshipNeed}')
        `
        await pool.query(sql)

        res.sendStatus(200);
    } catch (err) {
        console.log(err)
        res.sendStatus(500);
    }

}
// const deleteAspirant

const getAllAspirant = async (req, res) => {
    try {
        const sql = `
            SELECT * FROM aspirant
        `
        const data = await pool.query(sql)

        return res.status(200).json(data[0])

    } catch (err) {
        console.log(err)
    }
}

const getAspirant = async (req, res) => {

    const { id } = req.body

    try {
        const sql = `
            SELECT * FROM aspirant
            WHERE id = ${id}
        `

        const data = await pool.query(sql)

        return res.status(200).json(data[0])
    } catch (err) {
        console.log(err)
        res.sendStatus(500);
    }


}



module.exports = {
    createAspirant,
    getAllAspirant,
    getAspirant
}



