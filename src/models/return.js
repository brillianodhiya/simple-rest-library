const conn = require('../configs/')

module.exports = {
    rentBook: (id, rent) => {
        let output = ""
        return new Promise((resolve, reject) => {
            conn.query('SELECT * FROM books WHERE ?', id, (err, result) => {
                if (!err) {
                    Object.keys(result).forEach(function (key) {
                        let row = result[key]

                        if (row.available != 1) {
                            conn.query('UPDATE books SET available = 1 WHERE ?', id, (err, result) => {
                                if (!err) {
                                    conn.query('UPDATE rents SET ? WHERE ?', [rent, id], (err, result) => {
                                        if (!err) {
                                            console.log('suksess')
                                            output = ('Suksess')
                                        } else {
                                            console.log('error')
                                        }
                                    })
                                    output = ('Thank You! For Return The Book')
                                } else {
                                    console.log('error')
                                }
                            })
                        } else {
                            console.log('kosong')
                            output = ('The book has already return')
                        }
                    })
                    resolve(output)
                } else {
                    reject(err)
                }
            })
        })
    }
}