const conn = require('../configs/')

module.exports = {
  searchBook: (keyword) => {
    const search = keyword.search
    return new Promise((resolve, reject) => {
      conn.query('ALTER TABLE books ADD FULLTEXT(title, description)') 
      conn.query('SELECT title, description, image FROM books WHERE MATCH (title, description) AGAINST( ? )', search, (err, result) => {
        !err ? resolve(result) : reject(err)
      })
    })
  },
  searchById: (keyword) => {
    return new Promise((resolve, reject) => {
      conn.query(`SELECT books.title, books.description, books.image, books.date_released, genre.keterangan as genre, availables.keterangan as available FROM books INNER JOIN genre ON genre = codegenre INNER JOIN availables ON available = codeav WHERE books.idbooks = ${keyword}`, (err, result) => {
        !err ? resolve(result) : reject(err)
      })
    })
  }
}
