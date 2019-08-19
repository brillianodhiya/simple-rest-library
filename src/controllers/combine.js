const combin = require('../models/combine')

module.exports = {
  combinSearch: (req, res) => {
    // page, limit, shortby, search, order
    const page = parseInt(req.query.page) || 1
    const limit = parseInt(req.query.limit) || 10
    const shortby = req.query.shortby || 'add_at'
    const search = req.query.search || ''
    const order = req.query.order || 'DESC'

    combin.combineSearch(page, search, limit, shortby, order)
      .then(result => {
        combin.countRecords(search)
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
