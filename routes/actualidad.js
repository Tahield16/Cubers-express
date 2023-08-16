var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/actualidad', function(req, res, next) {
  res.render('actualidad');
});

module.exports = router;