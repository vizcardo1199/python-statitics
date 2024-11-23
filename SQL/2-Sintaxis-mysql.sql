
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

-- INSERTAR DATOS DE EJEMPLO A LA TABLA empleados 
-- INSERT INTO NombreDeLaTabla (columna1 , columna2 , ..) values (valor_columna1,valor_columna2,...)
INSERT INTO empleados (nombre,puesto,salario,fecha_ingreso) 
VALUES 
('Ana Ramirez','Gerente General' ,7500.00 ,'2022-03-01'),
('Oscar Lopez','Analista' ,5500.00 ,'2021-03-11'),
('Adriano Arimana','Desarrollador' ,6500.00 ,'2023-03-01');


-- COMANDO PARA TRAER INFORMACION DE UNA TABLA 
-- SELECT * FROM NombreDeLaTabla ;

-- TRAER TODOS LOS DATOS DE LA TABLA
-- SELECT * FROM empleados;

-- TRAER CIERTAS COLUMNAS
-- SELECT nombre,salario FROM empleados;

-- filtrar datos numericos
-- SELECT * FROM empleados WHERE salario < 6000;

-- filtrar datos comparando cadenas de texto
SELECT * FROM empleados WHERE nombre = 'Ana Ramirez'

#COMO ACTUALIZO TODOS LOS REGISTROS
#UPDATE empleados SET salario = salario*1.1;

#COMO ACTUALIZO LOS REGISTROS CON CIERTA CONDICION
#ACA ESTAMOS HACIENDO UN AUMENTO SOLO AL GERENTE
UPDATE empleados SET salario = salario*1.2 WHERE puesto = 'Gerente General'