-- PLANT , AREA , SISTEMA

CREATE TABLE PLANT (
plant_id INT PRIMARY KEY AUTO_INCREMENT,
plant_name VARCHAR(100) NOT NULL
);

CREATE TABLE AREA (
area_id INT PRIMARY KEY AUTO_INCREMENT,
area_name VARCHAR(100) NOT NULL,
plant_id INT,
FOREIGN KEY (plant_id) REFERENCES PLANT(plant_id)
-- como hacemos una variable de una tabla foranea de otra
-- FOREIGN KEY (NOMBRE DE LA VARIABLE QUE SERA REFERENCIADA) REFERENCE PLANT(LA VARIABLE PADRE)
);


CREATE TABLE SISTEMA (
sistema_id INT PRIMARY KEY AUTO_INCREMENT , 
sistema_name VARCHAR(100) NOT NULL,
area_id INT,
FOREIGN KEY (area_id) REFERENCES AREA(area_id)
);




INSERT INTO PLANT (plant_name) VALUES
('Planta de Producción Norte'),
('Planta de Ensamble Central'),
('Planta de Almacenamiento Sur');


-- Áreas de Planta de Producción Norte
INSERT INTO AREA (area_name, plant_id) VALUES
('Área de Mecanizado', 1),
('Área de Soldadura', 1),
('Área de Inspección', 1);

-- Áreas de Planta de Ensamble Central
INSERT INTO AREA (area_name, plant_id) VALUES
('Área de Ensamble 1', 2),
('Área de Ensamble 2', 2),
('Área de Pruebas', 2);

-- Áreas de Planta de Almacenamiento Sur
INSERT INTO AREA (area_name, plant_id) VALUES
('Área de Recepción', 3),
('Área de Almacenamiento Crítico', 3),
('Área de Despacho', 3);




-- Sistemas de Área de Mecanizado
INSERT INTO SISTEMA (sistema_name, area_id) VALUES
('Sistema CNC 1', 1),
('Sistema CNC 2', 1),
('Sistema de Torno', 1);

-- Sistemas de Área de Soldadura
INSERT INTO SISTEMA (sistema_name, area_id) VALUES
('Robot de Soldadura A', 2),
('Robot de Soldadura B', 2),
('Sistema de Extracción de Humos', 2);

-- Sistemas de Área de Inspección
INSERT INTO SISTEMA (sistema_name, area_id) VALUES
('Sistema de Ultrasonido', 3),
('Sistema de Rayos X', 3),
('Sistema de Medición Óptica', 3);

-- Sistemas de Área de Ensamble 1
INSERT INTO SISTEMA (sistema_name, area_id) VALUES
('Línea de Ensamble A', 4),
('Línea de Ensamble B', 4),
('Transportador Principal', 4);

-- Sistemas de Área de Ensamble 2
INSERT INTO SISTEMA (sistema_name, area_id) VALUES
('Banco de Pruebas Hidráulicas', 5),
('Banco de Pruebas Eléctricas', 5),
('Sistema de Seguridad', 5);

-- Sistemas de Área de Pruebas
INSERT INTO SISTEMA (sistema_name, area_id) VALUES
('Cámara de Clima Controlado', 6),
('Sistema de Vibración', 6),
('Cámara de Ruido Acústico', 6);

-- Sistemas de Área de Recepción
INSERT INTO SISTEMA (sistema_name, area_id) VALUES
('Báscula de Entrada', 7),
('Sistema de Codificación', 7),
('Transportador de Entrada', 7);

-- Sistemas de Área de Almacenamiento Crítico
INSERT INTO SISTEMA (sistema_name, area_id) VALUES
('Sistema de Control de Temperatura', 8),
('Sistema de Inventario Automatizado', 8),
('Sistema de Seguridad Perimetral', 8);

-- Sistemas de Área de Despacho
INSERT INTO SISTEMA (sistema_name, area_id) VALUES
('Báscula de Salida', 9),
('Sistema de Carga Automatizada', 9),
('Transportador de Salida', 9);