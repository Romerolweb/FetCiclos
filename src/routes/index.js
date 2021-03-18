const express = require('express');
const router = express.Router();

router.get('/',(req,res) => {
    res.redirect('/signup');
});

// router.get('/signup',(req,res) => {
//     res.redirect('/signup');
// });


module.exports = router;