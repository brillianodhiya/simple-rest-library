require('dotenv').config()
const jwtDecode = require('jwt-decode')
const Rent = require('../models/rent')

module.exports = {
  rentBook: (req, res) => {
    const id = {
      idbooks: req.body.idbooks
    }

    let token = req.header('Authorization')

    let decoded = jwtDecode(token) 

    const rent = {
      iduser: decoded.id,
      rent_at: new Date()
    }

    Rent.rentBook(id, rent)
      .then(result => {
        Object.keys(result).forEach((key) => {
          const row = result[key]
          if (row.available == 0) {
            res.send({
              status: 401,
              message: 'The book has already rentaled',
              result
            })
          } else {
            res.send({
              status: 200,
              message: 'Thakyou for rental the book, dont forget to return'
            })
          }
        })
      })
      .catch(err => res.send({
        status: 500,
        message: 'Something went wrong',
        err
      }))
  },
  getRent: (req, res) => {
    let tokens = req.header('Authorization')

    let decode = jwtDecode(tokens) 

    let id = decode.id

    Rent.getRent(id)
      .then(result => res.send({
        status: 200,
        message: 'This is list book you have been rental before',
        result
      }))
      .catch(err => console.log(err))
  }
}
