const Joi = require('joi')

module.exports = (req, res, next) => {
    const data = req.body

    const schema = {

        email: Joi.string().email().required(),

        password: Joi.string().regex(/^[a-zA-Z0-9]{3,16}$/)
    }

    Joi.validate(data, schema, (err, value) => {
        if (err) {
            res.status(422).send({
                status: 'error',
                message: 'Invalid Request Data',
                data: data
            })
        } else {
            next()
        }
    })
}