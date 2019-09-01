require('dotenv').config()

const mysql = require('mysql')

const conn = mysql.createConnection({
  host: process.env.DB_HOST_DEPLOY,
  user: process.env.DB_USER_DEPLOY,
  password: process.env.DB_PASSWORD_DEPLOY,
  database: process.env.DB_NAME_DEPLOY
})

module.exports = conn
