const conn = require('../configs/')

module.exports = {
    rentBook: (id, rent) => {
        let output = ""
        return new Promise((resolve, reject) => {
            conn.query('SELECT * FROM books WHERE ?', id, (err, result) => {
                if (!err) {
                    Object.keys(result).forEach(function (key) {
                        let row = result[key]

                        if (row.available != 2) {
                            conn.query('UPDATE books SET available = 2 WHERE ?', id, (err, result) => {
                                if (!err) {
                                    conn.query('INSERT INTO rents SET ? , ?', [id, rent], (err, result) => {
                                        if (!err) {
                                            console.log('suksess')
                                            output = ('Suksess')
                                        } else {
                                            console.log('error')
                                        }
                                    })
                                    output = ('Thank You! Dont forger to return')
                                } else {
                                    console.log('error')
                                }
                            })
                        } else {
                            console.log('kosong')
                            output = ('Sorry, the book has already rentaled')
                        }
                    })
                    resolve(output)
                } else {
                    reject(err)
                }
            })
        })
    },
    getRent: () => new Promise((resolve, reject) => {
        conn.query('SELECT books.title, books.description, books.image, rents.rent_at, rents.back_at FROM books INNER JOIN rents ON books.idbooks = rents .idbooks', (err, result) => {
            !err ? resolve(result) : reject(err)
        })
    })
}