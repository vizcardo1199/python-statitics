CREATE DATABASE IF NOT EXISTS ejemplo_python;

USE ejemplo_python;

CREATE TABLE IF NOT EXISTS estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    curso VARCHAR(50)
);

INSERT INTO estudiantes (nombre, edad, curso)
VALUES ('Luis Vizcardo', 30, 'Python Avanzado'),
       ('Allyson Neira', 22, 'Estadística Básica'),
       ('Carlos Gómez', 30, 'Inteligencia Artificial');