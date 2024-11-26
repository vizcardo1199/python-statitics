-- plant , area , sistema
-- 1.consultas Basicas 
-- 1.1SELECCIONAR TODAS LAS PLANTAS, TODAS LAS AREAS Y LOS SISTEMAS
-- SELECT * FROM plant

-- 1.2 TRAER TODAS LAS AREAS PERO SOLO EL AREA_NAME , plant_id (de la tabla plant) , sistema_name area_id (de la tabla sistema)
-- SELECT area_name FROM area

-- 1.3 RENOMBRAR LA COLUMNA 
SELECT area_name AS name FROM area

-- plant , area , sistema
-- 2.consultas con condiciones

-- 2.1 Filtrar areas de una planta
-- SELECT * FROM area WHERE plant_id=3; -- mostrar todas las areas de la planta 3

-- 2.2 FILTRAR SISTEMAS CON UN NOMBRE QUE CONTENGA CNC , TRAIGAN LOS SISTEMAS QUE CONTENGA EN SU NAME 'Sistema'
-- SELECT * FROM sistema WHERE sistema_name LIKE '%CNC%';

-- 2.3 Filtrar sistemas con un ID mayor que 4 , traigan las plantas_id menores que 3
SELECT * FROM sistema WHERE sistema_id >4;


-- plant , area , sistema
-- 3.Uso de operadores logicos(and , or , in)
-- and , traigan el sistema 25
-- SELECT * FROM sistema WHERE area_id = 2 AND sistema_id >4 ;

-- vamos a traer los sistemas que en su nombre contenga 'cnc' o 'ensamble'
-- or , traigan los sistem name que contenga 'camara , 'banco'
-- SELECT * FROM sistema WHERE sistema_name LIKE '%CNC%' OR sistema_name LIKE '%Ensamble%';

-- IN , TRAIGAN LA PLANTA 3
SELECT * FROM area WHERE area_id IN (4,5,9);

-- 4.ordenamientos y limites 
-- SELECT * FROM area ORDER BY area_name ASC; -- ORDENAR POR LETRA DEL ABECEDARIO

-- ORDENAR POR NUMERO , TRAER LOS SISTEMAS EN ORDEN DESCENDENTE
-- LIMITADO A 4 
-- SELECT * FROM sistema ORDER BY sistema_id DESC LIMIT 4;

-- contador , contar los sistemas que contenga en su nombre 'CNC'
-- SELECT COUNT(*) AS TotalDeAreas FROM area;

-- Contar las areas de la planta 1
SELECT COUNT(*) AS TotalDeAreasDeLaPlanta1 FROM area WHERE plant_id=1;

-- Agrupaciones con condicion , contadores 

-- CONTAR SISTEMAS POR AREA , contar areas por planta
SELECT area_id , COUNT(*) AS TotalDeSistemas FROM sistema GROUP BY area_id;

#ACTUALIZAR EL NOMBRE DE UN SISTEMA 
-- UPDATE sistema SET sistema_name = 'Sistema de vibracion mecanica' WHERE sistema_id=17; 

# elimino un sistema especifico 
DELETE FROM sistema WHERE sistema_id = 25