const Return = require('../models/return')

module.exports = {
  returnBook: (req, res) => {
    const id = {
      idbooks: req.query.idbooks
    }

    const rent = {
      back_at: new Date()
    }

    Return.returnBook(id, rent)
      .then(result => {
        Object.keys(result).forEach((key) => {
          const row = result[key]
          if (row.available == 1) {
            res.send({
              status: 401,
              message: 'Book Already Returned',
              result
            })
          } else if (row.available == 0) {
            res.send({
              status: 200,
              message: 'Thank You For Returned The Book',
              result
            })
          } else {
            res.send({
              status: 400,
              message: 'Book not found',
              result
            })
          }
        })
      })
      .catch(err => res.send({
        status: 500,
        message: 'Something Went Wrong',
        err
      }))
  }
}
