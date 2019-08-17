require('dotenv').config()

const express = require('express')
const logger = require('morgan')
const bodyParser = require('body-parser')

const Route = require('./src/routes/')

const app = express()

const port = process.env.SERVER_PORT || 8888

app.listen(port, () => {
  console.log('Server is running on Port ' + port)
})

app.use(logger('dev'))
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
  extended: false
}))

app.use('/books', Route)
