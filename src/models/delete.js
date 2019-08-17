const conn = require('../configs/')

module.exports = {
  deleteBook: (id) => {
    return new Promise((resolve, reject) => {
      conn.query('DELETE FROM books WHERE ?', id, (err, result) => {
        !err ? resolve(result) : reject(err)
      })
    })
  },
  deleteGenre: (id) => {
    return new Promise((resolve, reject) => {
      conn.query('DELETE FROM genre WHERE ?', id, (err, result) => {
        !err ? resolve(result) : reject(err)
      })
    })
  }
}
