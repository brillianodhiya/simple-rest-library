const conn = require('../configs/')

module.exports = {
    getBookData: () => { //tampil buku
        return new Promise((resolve, reject) => {
            conn.query('SELECT books.title, books.description, books.image, books.date_released, genre.keterangan as genre, availables.keterangan as available FROM books INNER JOIN genre ON genre = codegenre INNER JOIN availables ON available = codeav ', (err, result) => {
                !err ? resolve(result) : reject(err);
            })
        });
    },
    insertBook: (data) => { //tambah buku
        return new Promise((resolve, reject) => {
            conn.query('INSERT books SET ?', data, (err, result) => {
                !err ? resolve(result) : reject(err);
            })
        });
    },
    updateBook: (id, data) => {
        return new Promise((resolve, reject) => {
            conn.query('UPDATE books SET ? WHERE ?', [data, id], (err, result) => {
                !err ? resolve(result) : reject(err);
            })
        });
    },
    insertGenre: (data) => {
        return new Promise((resolve, reject) => {
            conn.query('INSERT genre SET ?', data, (err, result) => {
                !err ? resolve(result) : reject(err);
            })
        });
    },
    getGenre: () => {
        return new Promise((resolve, reject) => {
            conn.query('SELECT codegenre, keterangan FROM genre', (err, result) => {
                !err ? resolve(result) : reject(err);
            })
        });
    }
}