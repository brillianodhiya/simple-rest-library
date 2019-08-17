const conn = require('../configs/')

module.exports = {
  returnBook: (id, rent) => {
    return new Promise((resolve, reject) => {
      conn.query('SELECT * FROM books WHERE ?', id, (err, result) => { //search book
        if (result != '') {
          Object.keys(result).forEach((key) => { //manipulating array of object
            const row = result[key]

            if (row.available == 0) { // if book not already return
              conn.query('UPDATE books SET available = 1 WHERE ?', id, (err, result) => { //set not available into available
                if (!err) {
                  conn.query('UPDATE rents SET ? WHERE ?', [rent, id], (err, result) => { // update rental table
                    if (!err) {
                      console.log('suksess')
                    } else {
                      console.log('error')
                    }
                  })
                } else {
                  console.log('error')
                }
              })
            } else {
              console.log('the book has already returned')
            }
          })
          resolve(result)
        } else {
          reject(err)
        }
      })
    })
  }
}
