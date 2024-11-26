CREATE DATABASE CompanyDB;

USE CompanyDB;

-- Tabla de empleados
CREATE TABLE Empleados (
    empleado_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    departamento_id INT
);

-- Tabla de departamentos
CREATE TABLE Departamentos (
    departamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(50)
);

-- Tabla de proyectos
CREATE TABLE Proyectos (
    proyecto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proyecto VARCHAR(100)
);

-- Tabla de participaciones (Muchos a Muchos)
CREATE TABLE Participaciones (
    participacion_id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    proyecto_id INT,
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id),
    FOREIGN KEY (proyecto_id) REFERENCES Proyectos(proyecto_id)
);

-- Insertar datos en departamentos
INSERT INTO Departamentos (nombre_departamento)
VALUES ('Recursos Humanos'), ('IT'), ('Ventas'), ('Marketing');

-- Insertar datos en empleados
INSERT INTO Empleados (nombre, apellido, email, departamento_id)
VALUES 
('Luis', 'Vizcardo', 'luis.vizcardo@example.com', 2),
('Ana', 'Perez', 'ana.perez@example.com', 1),
('Carlos', 'Ramirez', 'carlos.ramirez@example.com', 3);

-- Insertar datos en proyectos
INSERT INTO Proyectos (nombre_proyecto)
VALUES 
('Sistema IoT'), 
('Campaña de Marketing 2024'), 
('Nueva Estrategia de Ventas');

-- Insertar datos en participaciones (Muchos a Muchos)
INSERT INTO Participaciones (empleado_id, proyecto_id)
VALUES 
(1, 1), -- Luis trabaja en Sistema IoT
(2, 2), -- Ana trabaja en Campaña de Marketing 2024
(1, 3), -- Luis también trabaja en Nueva Estrategia de Ventas
(3, 3); -- Carlos trabaja en Nueva Estrategia de Ventas