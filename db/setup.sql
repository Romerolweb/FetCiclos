-- FetCiclos Database Setup Script
-- Sistema de Gestión de Ciclos Propedéuticos

-- Create database
CREATE DATABASE IF NOT EXISTS ciclos_propedeuticos_fet;
USE ciclos_propedeuticos_fet;

-- Create cycles table
CREATE TABLE IF NOT EXISTS cycles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  duration INT NOT NULL COMMENT 'Duration in weeks',
  start_date DATE NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_start_date (start_date),
  INDEX idx_name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert sample data (optional)
INSERT INTO cycles (name, description, duration, start_date) VALUES
('Ciclo Propedéutico I', 'Primer ciclo de formación básica en ciencias fundamentales', 16, '2025-01-15'),
('Ciclo Propedéutico II', 'Segundo ciclo de formación en áreas específicas', 16, '2025-05-01'),
('Ciclo de Nivelación', 'Ciclo de nivelación para estudiantes nuevos', 8, '2025-01-08');

-- Display created tables
SHOW TABLES;

-- Display sample data
SELECT * FROM cycles;
