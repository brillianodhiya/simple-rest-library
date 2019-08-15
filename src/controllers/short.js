const short = require('../models/short')

module.exports = {
    getShortTitle: (req, res) => {
        short.shortTitle()
            .then(result => res.json(result))
            .catch(err => console.log(err))
    },
    getShortDate: (req, res) => {
        short.shortDate()
            .then(result => res.json(result))
            .catch(err => console.log(err))
    },
    getShortGenre: (req, res) => {
        short.shortGenre()
            .then(result => res.json(result))
            .catch(err => console.log(err))
    }
}