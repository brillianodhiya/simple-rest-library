const conn = require('../configs')

module.exports = {
  combineSearch: (page, search, limit, shortby, order) => {
    const offset = (page - 1) * limit 
    return new Promise((resolve, reject) => {
      conn.query(`SELECT books.idbooks, books.title, books.description, books.image, books.date_released, genre.keterangan as genre, availables.keterangan as available ` +
            `FROM books INNER JOIN genre ON genre = codegenre INNER JOIN availables ON available = codeav ` +
            `WHERE books.title LIKE '%${search}%' ORDER BY ${shortby} ${order} LIMIT ${limit} OFFSET ${offset}`, (err, result) => {
        !err ? resolve(result) : reject(err)
      })
    })
  },
  countRecords: (search) => {
    return new Promise((resolve, reject) => {
      conn.query(`SELECT COUNT(title) AS record FROM books WHERE title LIKE '%${search}%'`, (err, record) => {
        !err ? resolve(record) : reject(err)
      })
    })
  }
}
