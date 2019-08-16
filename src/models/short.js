const conn = require('../configs')

module.exports = {
  shortTitle: () => new Promise((resolve, reject) => {
    conn.query('SELECT ' +
            'books.title, books.description, books.image, books.date_released, genre.keterangan as genre, availables.keterangan as available ' +
            'FROM books INNER JOIN genre ON genre = codegenre INNER JOIN availables ON available = codeav ORDER BY title', (err, result) => {
      !err ? resolve(result) : reject(err)
    })
  }),
  shortDate: () => new Promise((resolve, reject) => {
    conn.query('SELECT ' +
            'books.date_released, books.title, books.description, books.image, genre.keterangan as genre, availables.keterangan as available ' +
            'FROM books INNER JOIN genre ON genre = codegenre INNER JOIN availables ON available = codeav ORDER BY date_released', (err, result) => {
      !err ? resolve(result) : reject(err)
    })
  }),
  shortGenre: () => new Promise((resolve, reject) => {
    conn.query('SELECT ' +
            'genre.keterangan as genre, books.title, books.description, books.image, books.date_released, availables.keterangan as available ' +
            'FROM books INNER JOIN genre ON genre = codegenre INNER JOIN availables ON available = codeav ORDER BY genre', (err, result) => {
      !err ? resolve(result) : reject(err)
    })
  })
}
