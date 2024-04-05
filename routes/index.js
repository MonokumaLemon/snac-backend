var express = require('express');
var router = express.Router();

const {get,getscore,login,upload} = require('../db/dbInterface');

// Route to get all players
router.get('/getplayer', async (req, res) => {
  res.send(await get());
});

// Route to get top 10 scores
router.get('/getscore', async (req, res) => {
  res.send(await getscore());
});

// Route for user login
router.post('/login', async (req, res) => {
  res.send(await login(req.body.vorname, req.body.nachname,req.body.profil));
});

// Route to upload player score
router.put('/upload', async (req, res) => {
  res.send(await upload(req.body.nachname, req.body.score));
});

module.exports = router;
