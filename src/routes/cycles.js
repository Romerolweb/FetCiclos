const express = require('express');
const router = express.Router();
const CycleController = require('../controllers/CycleController');

// List all cycles
router.get('/', CycleController.index);

// Show form to create new cycle
router.get('/create', CycleController.create);

// Store new cycle
router.post('/', CycleController.store);

// Show single cycle
router.get('/:id', CycleController.show);

// Show form to edit cycle
router.get('/:id/edit', CycleController.edit);

// Update cycle
router.put('/:id', CycleController.update);

// Delete cycle
router.delete('/:id', CycleController.destroy);

module.exports = router;
