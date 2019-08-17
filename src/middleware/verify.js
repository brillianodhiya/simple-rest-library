const jwt = require('jsonwebtoken')

module.exports = (req, res, next) => {
    const token = req.header('Authorization')
    if (!token) return res.sendStatus(401)

    try {
        const verifytoken = jwt.verify(token, process.env.SECRET_KEY) 
        req.user = verifytoken 
        next() 
    } catch {
        res.statu(401).send('error')
    }
}