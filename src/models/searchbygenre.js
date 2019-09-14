const conn = require('../configs')

module.exports = {
    searchbygenre: (genre) => {
        return new Promise((resolve, reject) => {
            conn.query(`SELECT books.idbooks, books.title, books.description, books.image, books.date_released, genre.keterangan as genre, availables.keterangan as available FROM books INNER JOIN genre ON genre = codegenre INNER JOIN availables ON available = codeav WHERE genre.keterangan LIKE '%${genre}%' ORDER BY books.idbooks DESC`, (err, result) => {
                !err ? resolve(result) : reject(err)
            })
        })
    }
}