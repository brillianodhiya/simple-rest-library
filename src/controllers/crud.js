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

    console.log(data)
    modelBook.insertBook(data)
      .then(result => res.send({
        status: 200,
        message: 'Success Insert Book',
        result
      }))
      .catch(err => res.send({
        status: 500,
        message: 'Something went wrong',
        err        
      })) // execute
  },
  getBooks: (req, res) => {
    modelBook.getBookData()
      .then(result => res.json(result))
      .catch(err => console.log(err))
  },
  updateBook: (req, res) => {
    const id = {
      idbooks: req.query.idbooks
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
          res.send({
            status: 400,
            message: 'Update Failed',
            result
          })
        } else {
          res.send({
            status: 200,
            message: 'The book information successfully update',
            result
          })
        }
      })
      .catch(err => {
        res.send({
          status: 500,
          message: 'Something Went Wrong',
          err
        })
      })
  },
  insertGenre: (req, res) => {
    const data = {
      codegenre: req.body.codegenre,
      keterangan: req.body.keterangan
    }

    modelBook.insertGenre(data)
      .then(result => res.send({
        status: 200,
        message: 'Successfully add genre',
        result
      }))
      .catch(err => res.send({
        status: 400,
        message: 'Code genre has been taken before',
        err
      }))
  },
  getGenre: (req, res) => {
    modelBook.getGenre()
      .then(result => res.json(result))
      .catch(err => console.log(err))
  },
  deleteBook: (req, res) => {
    const id = {
      idbooks: req.query.idbooks
    }

    deleteBG.deleteBook(id)
      .then(result => {
        if (result.affectedRows == 0 ) {
          res.send({
            status: 401,
            message: 'Failed Deleting Book',
            result
          })
        } else {
          res.send({
            status: 200,
            message: 'Success Deleting Book',
            result
          })
        }
      })
      .catch(err => res.send({
        status: 500,
        message: 'Something Went Wrong',
        err
      }))
  },
  deleteGenre: (req, res) => {
    const id = {
      codegenre: req.body.codegenre
    }

    deleteBG.deleteGenre(id)
      .then(result => {
        if (result.affectedRows == 0) {
          res.send({
            status: 401,
            message: 'Failed Deleting Book',
            result
          })
        } else {
          res.send({
            status: 200,
            message: 'Success Deleting Genre'
          })
        }
      })
      .catch(err => res.send({
        status: 500,
        message: 'Something Went Wrong',
        err
      }))
  },
  updateGenre: (req, res) => {
    const code = {
      codegenre: req.query.codegenre
    }

    const data = {
      keterangan: req.body.keterangan
    }
    modelBook.updateGenre(data, code)
      .then(result => {
        if (result.affectedRows == 0) {
          res.send({
            status: 400,
            message: 'Update Failed',
            result
          })
        } else {
          res.send({
            status: 200,
            message: 'The Genre Information Successfully Changed',
            result
          })
        }
      })
      .catch(err => {
        res.send({
          status: 500,
          message: 'Something Went Wrong',
          err
        })
      })
  }
}
