-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for empresa
CREATE DATABASE IF NOT EXISTS `empresa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `empresa`;

-- Dumping structure for table empresa.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_de_empresa` varchar(40) DEFAULT NULL,
  `encargado_de_empresa` varchar(40) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `numero` int(9) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `ultimo_contacto` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table empresa.clientes: ~0 rows (approximately)
DELETE FROM `clientes`;

-- Dumping structure for table empresa.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `puesto` varchar(30) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table empresa.empleados: ~3 rows (approximately)
DELETE FROM `empleados`;
INSERT INTO `empleados` (`id`, `nombre`, `puesto`, `salario`, `fecha_ingreso`) VALUES
	(1, 'Ana Ramirez', 'Gerente General', 9900.00, '2022-03-01'),
	(2, 'Oscar Lopez', 'Analista', 6050.00, '2021-03-11'),
	(4, 'Adriano Arimana', 'Desarrollador', 6500.00, '2023-03-01');

-- Dumping structure for table empresa.inventario
CREATE TABLE IF NOT EXISTS `inventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(24) NOT NULL,
  `items` int(10) DEFAULT NULL,
  `nombre_del_producto` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table empresa.inventario: ~0 rows (approximately)
DELETE FROM `inventario`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
