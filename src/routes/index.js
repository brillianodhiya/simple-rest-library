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
const searchbygenre = require('../controllers/searchbygenre')

Route
  .post('/', libraryController.insertBook)
  .patch('/', libraryController.updateBook)
  .delete('/', libraryController.deleteBook)
  .get('/', combineController.combinSearch)
  .get('/show', searchController.searchById)
  .get('/all', libraryController.getBooks)
  .get('/all/genre', searchbygenre.searchgenre)

  .post('/genre', libraryController.insertGenre)
  .get('/genre', libraryController.getGenre)
  .delete('/genre', libraryController.deleteGenre)
  .patch('/genre', libraryController.updateGenre)

  .post('/rent', verify,rentController.rentBook)
  .get('/rent', verify,rentController.getRent)

  .post('/return', returnController.returnBook)

  .get('/available', availController.getAvailable)
  
  .post('/register', validation,userController.regiset)
  .post('/login', validationlogin,userController.loginset)

module.exports = Route
