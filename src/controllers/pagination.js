const pagin = require('../models/pagination')

module.exports = {
  getAll: (req, res) => {
    let page = parseInt(req.query.page)
    if (isNaN(page) || page < 1) {
      page = 1
    }

    let limit = parseInt(req.query.limit)
    if (isNaN(limit)) {
      limit = 10
    } else if (limit > 50) {
      limit = 50
    } else if (limit < 1) {
      limit = 1
    }

    pagin.getAll(page, limit)
      .then(result => res.json(result))
      .catch(err => console.log(err))
  }
}
