const Cycle = require('../models/Cycle');

class CycleController {
  // Display list of all cycles
  static async index(req, res) {
    try {
      const cycles = await Cycle.findAll();
      res.render('cycles/index', { 
        title: 'Ciclos Propedéuticos', 
        cycles: cycles 
      });
    } catch (error) {
      console.error('Error fetching cycles:', error);
      res.status(500).render('error', { 
        title: 'Error', 
        message: 'Error fetching cycles' 
      });
    }
  }

  // Display form to create new cycle
  static async create(req, res) {
    res.render('cycles/create', { 
      title: 'Crear Nuevo Ciclo' 
    });
  }

  // Store new cycle
  static async store(req, res) {
    try {
      await Cycle.create(req.body);
      res.redirect('/cycles');
    } catch (error) {
      console.error('Error creating cycle:', error);
      res.status(500).render('error', { 
        title: 'Error', 
        message: 'Error creating cycle' 
      });
    }
  }

  // Display single cycle
  static async show(req, res) {
    try {
      const cycle = await Cycle.findById(req.params.id);
      if (!cycle) {
        return res.status(404).render('404', { 
          title: 'Cycle Not Found' 
        });
      }
      res.render('cycles/show', { 
        title: 'Detalle del Ciclo', 
        cycle: cycle 
      });
    } catch (error) {
      console.error('Error fetching cycle:', error);
      res.status(500).render('error', { 
        title: 'Error', 
        message: 'Error fetching cycle' 
      });
    }
  }

  // Display form to edit cycle
  static async edit(req, res) {
    try {
      const cycle = await Cycle.findById(req.params.id);
      if (!cycle) {
        return res.status(404).render('404', { 
          title: 'Cycle Not Found' 
        });
      }
      res.render('cycles/edit', { 
        title: 'Editar Ciclo', 
        cycle: cycle 
      });
    } catch (error) {
      console.error('Error fetching cycle:', error);
      res.status(500).render('error', { 
        title: 'Error', 
        message: 'Error fetching cycle' 
      });
    }
  }

  // Update cycle
  static async update(req, res) {
    try {
      await Cycle.update(req.params.id, req.body);
      res.redirect('/cycles/' + req.params.id);
    } catch (error) {
      console.error('Error updating cycle:', error);
      res.status(500).render('error', { 
        title: 'Error', 
        message: 'Error updating cycle' 
      });
    }
  }

  // Delete cycle
  static async destroy(req, res) {
    try {
      await Cycle.delete(req.params.id);
      res.redirect('/cycles');
    } catch (error) {
      console.error('Error deleting cycle:', error);
      res.status(500).render('error', { 
        title: 'Error', 
        message: 'Error deleting cycle' 
      });
    }
  }
}

module.exports = CycleController;
