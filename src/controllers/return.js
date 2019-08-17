const Return = require('../models/return')

module.exports = {
  returnBook: (req, res) => {
    const id = {
      idbooks: req.body.idbooks
    }

    const rent = {
      back_at: new Date()
    }

    Return.returnBook(id, rent)
      .then(result => {
        Object.keys(result).forEach((key) => {
          const row = result[key]
          if (row.available == 1) {
            res.send('Book already returned')
          } else if (row.available == 0) {
            res.send('Thank you for returned the book')
          } else {
            res.send('Book not found')
          }
        })
      })
      .catch(err => res.send('Book not found'))
  }
}
