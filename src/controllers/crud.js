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
      available: 1,
      add_at: new Date(),
      update_at: new Date()
    } // add data for table database

    modelBook.insertBook(data)
      .then(result => res.send('Succesfully Add'))
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
      update_at: new Date()
    }

    modelBook.updateBook(id, data)
      .then(result => {
        if (result.affectedRows == 0) {
          res.send('Id book not found')
        } else {
          res.send('Success Changed Update')
        }
      })
      .catch(err => console.log(err))
  },
  insertGenre: (req, res) => {
    const data = {
      codegenre: req.body.codegenre,
      keterangan: req.body.keterangan
    }

    modelBook.insertGenre(data)
      .then(result => res.send('Succesfully add genre'))
      .catch(err => res.send('code genre has been taken before'))
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
      .then(result => {
        if (result.affectedRows == 0 ) {
          res.send('Id book not found')
        } else {
          res.send('success deleting')
        }
      })
      .catch(err => console.log(err))
  },
  deleteGenre: (req, res) => {
    const id = {
      codegenre: req.body.codegenre
    }

    deleteBG.deleteGenre(id)
      .then(result => {
        if (result.affectedRows == 0) {
          res.send('id genre not found')
        } else {
          res.send('success deleting')
        }
      })
      .catch(err => console.log(err))
  }
}
