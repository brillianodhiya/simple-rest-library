const conn = require('../configs/')

module.exports = {
  rentBook: (id, rent) => {
    return new Promise((resolve, reject) => {
      conn.query('SELECT * FROM books WHERE ?', id, (err, result) => {
        if (result != '') {
          Object.keys(result).forEach((key) => { //manipulatin array of object
            const row = result[key]

            if (row.available == 1) { //if not available
              conn.query('UPDATE books SET available = "0" WHERE ?', id, (err, result) => { //change available into not available
                if (!err) {
                  conn.query('INSERT INTO rents SET ? , ?', [id, rent], (err, result) => { //insert in rental table
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
              console.log('kosong')
            }
          })
          resolve(result)
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
