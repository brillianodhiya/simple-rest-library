require('dotenv').config()
const jwtDecode = require('jwt-decode')
const Rent = require('../models/rent')

module.exports = {
  rentBook: (req, res) => {
    const id = {
      idbooks: req.query.idbooks
    }

    let token = req.headers['x_token']

    let decoded = jwtDecode(token) 

    let expire = new Date();
    expire.setDate(expire.getDate() + 14);

    const rent = {
      iduser: decoded.id,
      rent_at: new Date().toDateString(),
      expire_at: expire.toDateString(),
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
    let tokens = req.headers['x_token']

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
