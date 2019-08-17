const Rent = require('../models/rent')

module.exports = {
  rentBook: (req, res) => {
    const id = {
      idbooks: req.body.idbooks
    }

    const rent = {
      rent_at: new Date()
    }

    Rent.rentBook(id, rent)
      .then(result => {
        Object.keys(result).forEach((key) => {
          const row = result[key]
          if (row.available == 0) {
            res.send('The book not found')
          } else {
            res.send('Thank you for borrowing dont forget to return')
          }
        })
      })
      .catch(err => res.send('Book not found'))
  },
  getRent: (req, res) => {
    Rent.getRent()
      .then(result => res.json(result))
      .catch(err => console.log(err))
  }
}
