-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.41 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para control_horario
CREATE DATABASE IF NOT EXISTS `control_horario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `control_horario`;

-- Volcando estructura para tabla control_horario.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int NOT NULL,
  `personas_id` int DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_persona` (`personas_id`) USING BTREE,
  CONSTRAINT `fk_persona` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla control_horario.empleados: ~3 rows (aproximadamente)
INSERT INTO `empleados` (`id`, `personas_id`, `cargo`) VALUES
	(2501, 1, 'Jefe de turno'),
	(2502, 2, 'Analista de ventas'),
	(2503, 3, 'Jefa RRHH');

-- Volcando estructura para tabla control_horario.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla control_horario.personas: ~3 rows (aproximadamente)
INSERT INTO `personas` (`id`, `nombre`, `edad`, `genero`) VALUES
	(1, 'Leyser Ariel Pena Orellana', 22, 'Masculino'),
	(2, 'Jose Alfredo Rodriguez Hernandez', 38, 'Masculino'),
	(3, 'Rosaura Asucena del Carmen Vasquez', 54, 'Femenino');

-- Volcando estructura para tabla control_horario.registros
CREATE TABLE IF NOT EXISTS `registros` (
  `id` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_registro` (`empleado_id`),
  CONSTRAINT `fk_registro` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla control_horario.registros: ~3 rows (aproximadamente)
INSERT INTO `registros` (`id`, `empleado_id`, `hora_entrada`, `hora_salida`, `fecha`) VALUES
	(1, 2502, '07:55:00', '16:01:00', '2025-04-09'),
	(2, 2501, '07:58:00', '16:20:00', '2025-04-09'),
	(3, 2503, '09:00:00', '16:59:00', '2025-04-09');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
