-- como crear una tabla de la base de datos

CREATE TABLE Usuarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(30) ,
	correo VARCHAR(50)
	);

-- Como elimino una tabla de la base de datos

DROP TABLE Usuarios;

# plant ---> area 
# Este es un ejemplo de como crear una tabla si no existe esa tabla
CREATE TABLE if NOT EXISTS Plant (
PlantID INT AUTO_INCREMENT PRIMARY KEY ,
PlantName VARCHAR(100) NOT NULL 
);

CREATE TABLE AREA (
AreaID INT AUTO_INCREMENT PRIMARY KEY , 
AreaName VARCHAR(100) NOT NULL,
PlantID INT ,
FOREIGN KEY (PlantID) REFERENCES Plant(PlantID) ON DELETE CASCADE 
);
# QUE CUANDO BORREMOS EL PAPA SE ELIMINA EN CASCADA LOS HIJOS




#CREAMOS UN PROCEDIMIENTO PARA INSERTAR PLANTAS 
DELIMITER //
CREATE PROCEDURE InsertadorDePlantas(IN p_PlantName VARCHAR(100))
BEGIN
	INSERT INTO plant(PlantName) VALUES (p_PlantName);
END //

DELIMITER ;

-- LLAMAR AL PROCEDIMIENTO 
CALL InsertadorDePlantas('PESQUERA DIAMANTE')