const jwt = require('jsonwebtoken')

module.exports = (req, res, next) => {
    const token = req.header('Authorization')
    if (!token) return res.sendStatus(401)

    try {
        const expireIn = 24 * 60 * 60
        const verifytoken = jwt.verify(token, process.env.SECRET_KEY, {expireIn: expireIn} )
        req.user = verifytoken
        next()
    } catch {
        res.statu(401).send('error')
    }
}