const conn = require('../configs')

module.exports = {
  availables: () => new Promise((resolve, reject) => {
    conn.query('SELECT books.title, books.description, books.image, books.date_released, genre.keterangan as genre, availables.keterangan as available FROM books INNER JOIN genre ON genre = codegenre AND books.available = 1 INNER JOIN availables ON available = codeav ORDER BY genre', (err, result) => {
      !err ? resolve(result) : reject(err)
    })
  }),
  notAvailables: () => new Promise((resolve, reject) => {
    conn.query('SELECT books.title, books.description, books.image, books.date_released, genre.keterangan as genre, availables.keterangan as available FROM books INNER JOIN genre ON genre = codegenre AND books.available = 2 INNER JOIN availables ON available = codeav ORDER BY genre', (err, result) => {
      !err ? resolve(result) : reject(err)
    })
  })
}
