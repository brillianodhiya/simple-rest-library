const modelBook = require('../models//cru')
const deleteBG = require('../models/delete')

module.exports = {
  insertBook: (req, res) => {
    const data = {
      title: req.body.title,
      description: req.body.description,
      image: req.body.image,
      date_released: req.body.date_released,
      genre: req.body.genre,
      available: req.body.available,
      add_at: new Date(),
      update_at: new Date()
    } // add data for table database

    modelBook.insertBook(data)
      .then(result => res.json(result))
      .catch(err => console.log(err)) // execute
  },
  getBooks: (req, res) => {
    modelBook.getBookData()
      .then(result => res.json(result))
      .catch(err => console.log(err))
  },
  updateBook: (req, res) => {
    const id = {
      idbooks: req.body.idbooks
    }

    const data = {
      title: req.body.title,
      description: req.body.description,
      image: req.body.image,
      date_released: req.body.date_released,
      genre: req.body.genre,
      available: req.body.available,
      update_at: new Date()
    }

    modelBook.updateBook(id, data)
      .then(result => res.json(result))
      .catch(err => console.log(err))
  },
  insertGenre: (req, res) => {
    const data = {
      codegenre: req.body.codegenre,
      keterangan: req.body.keterangan
    }

    modelBook.insertGenre(data)
      .then(result => res.json(result))
      .catch(err => console.log(err))
  },
  getGenre: (req, res) => {
    modelBook.getGenre()
      .then(result => res.json(result))
      .catch(err => console.log(err))
  },
  deleteBook: (req, res) => {
    const id = {
      idbooks: req.body.idbooks
    }

    deleteBG.deleteBook(id)
      .then(result => res.send(result))
      .catch(err => console.log(err))
  },
  deleteGenre: (req, res) => {
    const id = {
      codegenre: req.body.codegenre
    }

    deleteBG.deleteGenre(id)
      .then(result => res.send(result))
      .catch(err => console.log(err))
  }
}
