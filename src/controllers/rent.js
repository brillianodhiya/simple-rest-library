const Rent = require('../models/rent')

module.exports = {
    rentBook: (req, res) => {
        let id = {
            idbooks: req.body.idbooks
        }

        let rent = {
            rent_at: new Date()
        }

        Rent.rentBook(id, rent)
            .then(result => res.json(result))
            .catch(err => console.log(err))
    },
    getRent: (req, res) => {
        Rent.getRent()
            .then(result => res.json(result))
            .catch(err => console.log(err))
    }
}