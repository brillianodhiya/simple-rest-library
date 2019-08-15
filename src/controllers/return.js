const Rent = require('../models/return')

module.exports = {
    rentBook: (req, res) => {
        let id = {
            idbooks: req.body.idbooks
        }

        let rent = {
            back_at: new Date()
        }

        Rent.rentBook(id, rent)
            .then(result => res.json(result))
            .catch(err => console.log(err))
    }
}