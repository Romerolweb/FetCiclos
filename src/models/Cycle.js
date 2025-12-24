const db = require('../config/database');

class Cycle {
  // Get all cycles
  static async findAll() {
    try {
      const [rows] = await db.query('SELECT * FROM cycles ORDER BY created_at DESC');
      return rows;
    } catch (error) {
      console.error('Error in Cycle.findAll:', error);
      throw error;
    }
  }

  // Get cycle by ID
  static async findById(id) {
    try {
      const [rows] = await db.query('SELECT * FROM cycles WHERE id = ?', [id]);
      return rows[0];
    } catch (error) {
      console.error('Error in Cycle.findById:', error);
      throw error;
    }
  }

  // Create new cycle
  static async create(cycleData) {
    try {
      const { name, description, duration, start_date } = cycleData;
      const [result] = await db.query(
        'INSERT INTO cycles (name, description, duration, start_date) VALUES (?, ?, ?, ?)',
        [name, description, duration, start_date]
      );
      return result.insertId;
    } catch (error) {
      console.error('Error in Cycle.create:', error);
      throw error;
    }
  }

  // Update cycle
  static async update(id, cycleData) {
    try {
      const { name, description, duration, start_date } = cycleData;
      const [result] = await db.query(
        'UPDATE cycles SET name = ?, description = ?, duration = ?, start_date = ? WHERE id = ?',
        [name, description, duration, start_date, id]
      );
      return result.affectedRows;
    } catch (error) {
      console.error('Error in Cycle.update:', error);
      throw error;
    }
  }

  // Delete cycle
  static async delete(id) {
    try {
      const [result] = await db.query('DELETE FROM cycles WHERE id = ?', [id]);
      return result.affectedRows;
    } catch (error) {
      console.error('Error in Cycle.delete:', error);
      throw error;
    }
  }
}

module.exports = Cycle;
