-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS ejemplo_graficos;

-- Usar la base de datos
USE ejemplo_graficos;

-- Crear la tabla para gráfico de línea, barra y circular
CREATE TABLE IF NOT EXISTS tu_tabla (
    categoria VARCHAR(50),
    valor INT
);

-- Insertar datos de prueba en la tabla
INSERT INTO tu_tabla (categoria, valor) VALUES
('Categoría A', 10),
('Categoría B', 20),
('Categoría C', 30),
('Categoría D', 40),
('Categoría E', 50);

-- Crear la tabla para gráfico de dispersión
CREATE TABLE IF NOT EXISTS tu_tabla_dispersión (
    x FLOAT,
    y FLOAT
);

-- Insertar datos de prueba en la tabla de dispersión
INSERT INTO tu_tabla_dispersión (x, y) VALUES
(1.0, 2.0),
(2.0, 4.0),
(3.0, 6.0),
(4.0, 8.0),
(5.0, 10.0);

-- Crear la tabla para gráfico de dispersión múltiple
CREATE TABLE IF NOT EXISTS tu_tabla_multiple (
    x FLOAT,
    y1 FLOAT,
    y2 FLOAT
);

-- Insertar datos de prueba en la tabla de dispersión múltiple
INSERT INTO tu_tabla_multiple (x, y1, y2) VALUES
(1.0, 2.0, 1.5),
(2.0, 4.0, 3.5),
(3.0, 6.0, 5.5),
(4.0, 8.0, 7.5),
(5.0, 10.0, 9.5);