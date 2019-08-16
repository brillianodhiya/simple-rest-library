const jwt = require('jsonwebtoken')

module.exports = (req, res, next) => {
    const token = req.header('Authorization') //check header found Authorization or not
    if (!token) return res.sendStatus(401)

    try {
        const expireIn = 24 * 60 * 60 //add expeire
        const verifytoken = jwt.verify(token, process.env.SECRET_KEY, {expireIn: expireIn} ) //verify jwt
        req.user = verifytoken //execute verify
        next() 
    } catch {
        res.statu(401).send('error')
    }
}