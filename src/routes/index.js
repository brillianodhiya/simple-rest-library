const express = require('express')

const Route = express.Router()
const libraryController = require('../controllers/crud')
const searchController = require('../controllers/search')
const rentController = require('../controllers/rent')
const returnController = require('../controllers/return')
//  const shortController = require('../controllers/short')
const availController = require('../controllers/availability')
const combineController = require('../controllers/combine')
const userController = require('../controllers/user')
const verify = require('../middleware/verify')
const validation = require('../middleware/validation')
const validationlogin = require('../middleware/validationlogin')

Route
  .post('/', verify,libraryController.insertBook)
  .patch('/', verify,libraryController.updateBook)
  .delete('/', verify,libraryController.deleteBook)
  .get('/', verify,combineController.combinSearch)

  .post('/genre', verify,libraryController.insertGenre)
  .get('/genre', verify,libraryController.getGenre)
  .delete('/genre', verify,verify,libraryController.deleteGenre)
  .patch('/genre', verify,libraryController.updateGenre)

  .post('/rent', verify,rentController.rentBook)
  .get('/rent', verify,rentController.getRent)

  .post('/return', verify,returnController.returnBook)

  .get('/available', verify,availController.getAvailable)
  
  .post('/register', validation,userController.regiset)
  .post('/login', validationlogin,userController.loginset)

module.exports = Route
