require('dotenv').config()

const Users = require('../models/user')
const jwt = require('jsonwebtoken')
const bcrypt = require('bcryptjs')

module.exports = {
  regiset: (req, res) => {
    const name = req.body.name
    const email = req.body.email
    const password = bcrypt.hashSync(req.body.password) 

    Users.createUser([name, email, password])
      .then(result => {
        Users.findUserByEmail(email)
          .then(row => {
            Object.keys(row).forEach((key) => {
              const user = row[key] 
              const accessToken = jwt.sign({
                id: user.id
              }, process.env.SECRET_KEY)
              res.status(200).header('Authorization', accessToken).send({
                access_token: accessToken
              })
            })
          })
          .catch(err => console.log(err))
      })
      .catch(err => res.send('Email already taken'))
  },
  loginset: (req, res) => {
    const email = req.body.email
    const password = req.body.password

    Users.findUserByEmail(email)
      .then(row => {
        Object.keys(row).forEach((key) => {
          const user = row[key]

          const result = bcrypt.compareSync(password, user.password) 
          if (!result) return res.status(401).send('User not Found')
          const accessToken = jwt.sign({
            id: user.id
          }, process.env.SECRET_KEY)
          res.status(200).header('Authorization', accessToken).send({
            acces_token: accessToken
          })
        })
      })
      .catch(err => console.log(err))
  }
}