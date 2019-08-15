const conn = require('../configs/')

module.exports = {
    searchBook: (keyword) => {
        let search = keyword.search
        return new Promise((resolve, reject) => {
            conn.query('ALTER TABLE books ADD FULLTEXT(title, description)')
            conn.query('SELECT title, description, image FROM books WHERE MATCH (title, description) AGAINST( ? )', search, (err, result) => {
                !err ? resolve(result) : reject(err);
            })
        });
    }
}