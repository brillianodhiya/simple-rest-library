const search = require('../models/search')

module.exports = {

  searchBook: (req, res) => {
    const keyword = {
      search: req.query.search
    }

    search.searchBook(keyword)
      .then(result => res.send(result))
      .catch(err => console.log(err))
  }
}
