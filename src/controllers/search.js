const search = require('../models/search')

module.exports = {

    searchBook: (req, res) => {
        let keyword = {
            search: req.body.search
        }

        search.searchBook(keyword)
            .then(result => res.send(result))
            .catch(err => console.log(err))
    }
}