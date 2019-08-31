const jwt = require('jsonwebtoken')
require('dotenv').config()

module.exports = (req, res, next) => {
    const token = req.headers['x_token']
    if (!token) return res.sendStatus(401)

    try {
        const verifytoken = jwt.verify(token, process.env.SECRET_KEY) 
        req.user = verifytoken 
        next() 
    } catch {
        res.status(401).send({
            status: 401,
            message: 'You Should Register or Login First'
        })
    }
}