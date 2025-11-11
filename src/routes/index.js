const express = require('express');
const router = express.Router();

// Home page route
router.get('/', (req, res) => {
  res.render('index', { 
    title: 'FetCiclos - Sistema de Gestión de Ciclos Propedéuticos' 
  });
});

module.exports = router;
