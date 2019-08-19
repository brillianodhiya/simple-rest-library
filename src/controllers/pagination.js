const pagin = require('../models/pagination')
const recordd = require('../models/combine')

module.exports = {
  getAll: (req, res) => {
    let page = parseInt(req.query.page)
    if (isNaN(page) || page < 1) {
      page = 1
    }

    let limit = parseInt(req.query.limit)
    if (isNaN(limit)) { //if limit is not integer
      limit = 10
    } else if (limit > 50) { 
      limit = 50
    } else if (limit < 1) {
      limit = 1
    }

    pagin.getAll(page, limit)
      .then(result => {
        recordd.countRecords()
        .then(records => {
          Object.keys(records).forEach((key) => {
            let row = records[key]
            let pages = row.record / limit
            let listPage = Math.ceil(pages)
            res.status(200).send({
              "pages": listPage,
              result
            })
          })
        })
        .catch(err => {
          res.send({
            status: 401,
            message: 'Something Went Wrong',
            err
          })
        })
      })
      .catch(err => {
        res.send({
          status: 500,
          message: 'Something Went Wrong',
          err
        })
      })
  }
}
