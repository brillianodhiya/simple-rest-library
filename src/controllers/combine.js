const  combin = require('../models/combine')

module.exports = {
    combinSearch: (req, res) => {
        //page, limit, shortby, search, order
        let page = parseInt(req.query.page) || 1
        let limit = parseInt(req.query.limit) || 10
        let shortby = req.query.shortby || 'add_at'
        let search = req.query.search || ''
        let order = req.query.search || 'ASC'

        combin.combineSearch(page,limit,shortby,search,order)
            .then(result => res.json(result))
            .catch(err => console.log(err))
        
    }
}