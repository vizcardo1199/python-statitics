
-- CREANDO LA ESTRUCTURA DE LA BASE DE DATOS 'empresa'

-- ELIMINAR TABLA 
DROP TABLE clientes ;
DROP TABLE empleados ;
DROP TABLE inventario;



-- tabla empleados 
CREATE TABLE empleados(
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
puesto VARCHAR(30),
salario DECIMAL(10,2), -- DECIMAL(TOTAL,#DECIMALES)
fecha_ingreso DATE
);

-- TABLA INVENTARIO
CREATE TABLE inventario(
id INT AUTO_INCREMENT PRIMARY KEY,
codigo INT(24) NOT NULL,
items INT(10),
nombre_del_producto VARCHAR(50),
descripcion VARCHAR(100),
fecha DATE
);

-- TABLA CLIENTES
CREATE TABLE clientes(
id INT AUTO_INCREMENT PRIMARY KEY,
nombre_de_empresa VARCHAR(40),
encargado_de_empresa VARCHAR(40),
correo VARCHAR(50),
numero INT(9),
tipo VARCHAR(10),
state BOOLEAN NOT NULL DEFAULT 1, -- pusimos el estado en 1 por defecto cada vez que creamos
ultimo_contacto DATE 

);
