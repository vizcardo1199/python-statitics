CREATE TABLE IF NOT EXISTS alumno (
  `nombre` VARCHAR(255),
  `edad ` INT,
  `correo` VARCHAR(255),
  `estatura ` FLOAT
);

INSERT INTO alumno (nombre, edad , correo, estatura ) VALUES ('luis', 18, 'luis@hotmail.com', 1.75);
INSERT INTO alumno (nombre, edad , correo, estatura ) VALUES ('juana', 17, 'juana@hotmail.com', 1.72);
