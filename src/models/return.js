const conn = require('../configs/')

module.exports = {
  rentBook: (id, rent) => {
    let output = '' //add output
    return new Promise((resolve, reject) => {
      conn.query('SELECT * FROM books WHERE ?', id, (err, result) => { //search book
        if (!err) {
          Object.keys(result).forEach((key) => { //manipulating array of object
            const row = result[key]

            if (row.available !== 1) { // if book not already return
              conn.query('UPDATE books SET available = 1 WHERE ?', id, (err, result) => { //set not available into available
                if (!err) {
                  conn.query('UPDATE rents SET ? WHERE ?', [rent, id], (err, result) => { // update rental table
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
