const combin = require('../models/combine')

module.exports = {
  combinSearch: (req, res) => {
    // page, limit, shortby, search, order
    const page = parseInt(req.query.page) || 1
    const limit = parseInt(req.query.limit) || 10
    const shortby = req.query.shortby || 'add_at'
    //const search = req.query.search || ''
    const order = req.query.search || 'ASC'

    combin.combineSearch(page, limit, shortby, search, order)
      .then(result => res.json(result))
      .catch(err => console.log(err))
  }
}
