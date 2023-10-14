const { pool } = require('../db/connect')


const createExpert = async (req, res) => {

    // id	name	email	phone	gender	photoLink	originCountry	originCollage	country	university	fieldOfStudy	program	session	language	expertise	bio	background	achievements	socialMedia	hourlyCharge	visaPhotoLink	studentIDPhotoLink	locationLink	noOfServiceProvided	totalIncome	isApproved

    try {
        let { name, email, phone, gender, photoLink, originCountry, originCollage, country, university, fieldOfStudy, program, session, language, expertise, bio, background, achievements, socialMedia, hourlyCharge, visaPhotoLink, studentIDPhotoLink, locationX, locationY } = req.body;

        email = 'ex1@gmail.com'

        if (!gender) {
            gender = 0
        }
        if (!hourlyCharge) {
            hourlyCharge = 0
        }
        if (!locationX) {
            locationX = 0
        }
        if (!locationY) {
            locationY = 0
        }

        noOfServiceProvided = 0
        totalIncome = 0
        isApproved = 0


        const sql = `
            INSERT INTO expert(name, email, phone, gender, photoLink, originCountry, originCollage, country, university, fieldOfStudy, program, session, language, expertise, bio, background, achievements, socialMedia, hourlyCharge, visaPhotoLink, studentIDPhotoLink, locationX, locationY, noOfServiceProvided, totalIncome, isApproved)
            VALUES('${name}', '${email}', '${phone}', '${gender}', '${photoLink}', '${originCountry}', '${originCollage}', '${country}', '${university}' ,'${fieldOfStudy}', '${program}', '${session}', '${language}' ,'${expertise}', '${bio}', '${background}', '${achievements}', '${socialMedia}', '${hourlyCharge}', '${visaPhotoLink}', '${studentIDPhotoLink}', '${locationX}', '${locationY}', '${noOfServiceProvided}', '${totalIncome}', '${isApproved}')
        `
        await pool.query(sql)

        res.send('done')
    } catch (err) {
        console.log(err)
    }

}

// const getExpert()


module.exports = {
    createExpert
}



