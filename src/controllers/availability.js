const avail = require('../models/availability')

module.exports = {
  getAvailable: (req, res) => {
    avail.availables()
      .then(result => res.json(result))
      .catch(err => console.log(err))
  },
  getNotAvailable: (req, res) => {
    avail.notAvailables()
      .then(result => res.json(result))
      .catch(err => console.log(err))
  }
}
