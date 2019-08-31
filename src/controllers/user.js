require('dotenv').config()

const Users = require('../models/user')
const jwt = require('jsonwebtoken')
const bcrypt = require('bcryptjs')

module.exports = {
  regiset: (req, res) => {
    const username = req.body.username
    const name = req.body.name
    const email = req.body.email
    const password = bcrypt.hashSync(req.body.password) 

    Users.createUser([username, name, email, password])
      .then(result => {
        Users.findUserByEmail(email)
          .then(row => {
            Object.keys(row).forEach((key) => {
              const user = row[key] 
              const accessToken = jwt.sign({
                id: user.id,
                username: user.username,
                level: user.level
              }, process.env.SECRET_KEY)
              res.status(200).send({
                status: 200,
                message: 'Register Success',
                name: user.name,
              })
            })
          })
          .catch(err => res.send({
            status: 401,
            message: 'Something Went Wrong',
            err
          }))
      })
      .catch(err => res.send({
        status: 401,
        message: 'Email or Username Already Taken',
        err
      }))
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
            id: user.id,
            username: user.username,
            level: user.level
          }, process.env.SECRET_KEY)
          res.status(200).send({
            status: 200,
            message: 'Login Success',
            acces_token: accessToken,
            name: user.name,
            level: user.level,
          })
        })
      })
      .catch(err => console.log(err))
  }
}