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

        res.send('done')
    } catch (err) {
        console.log(err)
    }

}


module.exports = {
    createAspirant
}

