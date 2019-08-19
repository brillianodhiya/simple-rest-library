const avail = require('../models/availability')

module.exports = {
  getAvailable: (req, res) => {
    let choice = req.query.choice

    if (choice == '') {
      status = ''
    } else {
      status = 'NOT'
    }

    avail.availables(status)
      .then(result => res.json(result))
      .catch(err => console.log(err))
  },
}
