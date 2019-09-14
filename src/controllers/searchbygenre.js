const searchbygenre = require('../models/searchbygenre')

module.exports = {
    searchgenre: (req, res) => {
        const genre = req.query.genre || ''

        searchbygenre.searchbygenre(genre)
            .then(result => res.json(result))
            .catch(err => console.log(err))
    }
}