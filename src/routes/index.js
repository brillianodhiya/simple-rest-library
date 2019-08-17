const express = require('express')

const Route = express.Router()
const libraryController = require('../controllers/crud')
const searchController = require('../controllers/search')
const rentController = require('../controllers/rent')
const returnController = require('../controllers/return')
const shortController = require('../controllers/short')
const availController = require('../controllers/availability')
const getAllController = require('../controllers/pagination')
const combineController = require('../controllers/combine')
const userController = require('../controllers/user')
const verify = require('../middleware/verify')

Route
  .post('/', verify,libraryController.insertBook)
  .patch('/', verify,libraryController.updateBook)
  .post('/genre', verify,libraryController.insertGenre)
  .get('/genre', verify,libraryController.getGenre)
  .delete('/', verify,libraryController.deleteBook)
  .delete('/genre', verify,verify,libraryController.deleteGenre)
  .get('/search', verify,searchController.searchBook)
  .post('/rent', verify,rentController.rentBook)
  .post('/return', verify,returnController.returnBook)
  // .get('/shortbytitle', shortController.getShortTitle)
  // .get('/shortbydate', shortController.getShortDate)
  // .get('/shortbygenres', shortController.getShortGenre)
  .get('/available', availController.getAvailable)
  .get('/notavailable', availController.getNotAvailable)
  .get('/rent', verify,rentController.getRent)
  .get('/', verify,getAllController.getAll)
  .get('/combine', verify,combineController.combinSearch)
  .post('/register', userController.regiset)
  .post('/login', userController.loginset)

module.exports = Route
