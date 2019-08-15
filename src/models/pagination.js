const conn = require('../configs/')

module.exports = {
    getAll: (page, limit) => {
        let offset = (page - 1) * limit

        return new Promise((resolve, reject) => {
            conn.query('SELECT books.title, books.description, books.image, books.date_released, genre.keterangan as genre, availables.keterangan as available FROM books INNER JOIN genre ON genre = codegenre INNER JOIN availables ON available = codeav LIMIT ? OFFSET ?', [limit, offset], (err, result) => {
                !err ? resolve(result) : reject(err)
            })
        })
    }
}