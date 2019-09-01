require('dotenv').config()

const cors = require('cors')
const express = require('express')
const logger = require('morgan')
const bodyParser = require('body-parser')

const Route = require('./src/routes/')

const app = express()

const PORT = process.env.SERVER_PORT

app.use(cors())

app.listen(PORT, () => {
  console.log('Server is running on Port ' + PORT)
})

app.use(logger('dev'))
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
  extended: false
}))

app.use('/books', Route)
