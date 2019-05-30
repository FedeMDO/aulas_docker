-- --------------------------------------------------------
-- Host:                         aulasinstance.chu699oskawz.sa-east-1.rds.amazonaws.com
-- Versión del servidor:         10.1.34-MariaDB - MariaDB Server
-- SO del servidor:              Linux
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para aulas_db
-- DROP DATABASE IF EXISTS `aulas_db`;
CREATE DATABASE IF NOT EXISTS `aulas_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `aulas_db`;

-- Volcando estructura para tabla aulas_db.aula
DROP TABLE IF EXISTS `aula`;
CREATE TABLE IF NOT EXISTS `aula` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(40) NOT NULL,
  `ID_EDIFICIO` int(11) NOT NULL,
  `PISO` int(11) DEFAULT NULL,
  `CAPACIDAD` int(11) DEFAULT NULL,
  `OBS` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_EDIFICIO` (`ID_EDIFICIO`),
  CONSTRAINT `aula_ibfk_1` FOREIGN KEY (`ID_EDIFICIO`) REFERENCES `edificio` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.aula: ~115 rows (aproximadamente)
DELETE FROM `aula`;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
INSERT INTO `aula` (`ID`, `NOMBRE`, `ID_EDIFICIO`, `PISO`, `CAPACIDAD`, `OBS`) VALUES
	(1, 'UNI9', 1, 0, 23, 'una observacion'),
	(2, 'UNI21', 1, 0, 0, NULL),
	(3, 'UNI2', 1, 1, 34, NULL),
	(4, '20', 2, NULL, 35, NULL),
	(5, 'SS1', 3, NULL, 35, NULL),
	(6, '21', 2, NULL, 35, NULL),
	(8, 'UNI8', 1, 2, 12, NULL),
	(11, 'UNI6', 1, 1, 34, NULL),
	(12, 'SS2', 3, NULL, 35, NULL),
	(14, '22', 2, NULL, 35, NULL),
	(16, 'UNI15', 1, 1, 23, NULL),
	(17, '23', 2, NULL, 23, NULL),
	(18, '24', 2, NULL, 12, NULL),
	(20, 'SS3', 3, NULL, 35, NULL),
	(21, 'UNI3', 1, 2, 12, NULL),
	(25, 'SS4', 3, NULL, 35, NULL),
	(26, 'SS5', 3, NULL, 40, NULL),
	(27, 'SS6', 3, NULL, 35, NULL),
	(28, 'SS7', 3, NULL, 40, NULL),
	(29, 'ING-16', 3, NULL, NULL, NULL),
	(30, 'ING-17', 3, NULL, NULL, NULL),
	(31, '52', 3, NULL, 35, NULL),
	(32, '53', 3, NULL, 45, 'Exclusivo lab LKF'),
	(33, '55', 3, NULL, 45, NULL),
	(34, '120', 3, NULL, 45, NULL),
	(35, '129', 3, NULL, 35, NULL),
	(36, '130', 3, NULL, 45, 'Grande'),
	(37, '131', 3, NULL, 19, 'Chica'),
	(38, '132', 3, NULL, 35, 'Mediana'),
	(39, '134', 3, NULL, 45, 'Grande'),
	(40, '136', 3, NULL, 35, 'Mediana'),
	(41, '139', 3, NULL, 12, 'Chica'),
	(42, '140', 3, NULL, 45, 'Grande-Exclusivo LEN'),
	(43, '141', 3, NULL, NULL, NULL),
	(44, '205', 3, NULL, 30, 'Mediana'),
	(45, '206', 3, NULL, 30, 'Mediana'),
	(46, '212', 3, NULL, 45, 'Grande'),
	(47, '214', 3, NULL, 45, 'Grande'),
	(48, '305', 3, NULL, 35, 'Mediana'),
	(49, '306', 3, NULL, 45, 'Grande'),
	(50, '307', 3, NULL, 45, 'Grande'),
	(51, '308', 3, NULL, 45, 'Grande'),
	(52, '309', 3, NULL, 45, 'Grande'),
	(53, '310', 3, NULL, 35, 'Mediana'),
	(54, '311', 3, NULL, 35, 'Mediana'),
	(55, '407', 3, NULL, 35, 'Mediana'),
	(56, '408', 3, NULL, 35, 'Mediana'),
	(57, '409', 3, NULL, 45, 'Grande'),
	(58, '410', 3, NULL, 45, 'Grande'),
	(59, '412', 3, NULL, 45, 'Grande'),
	(60, '414', 3, NULL, 45, 'Grande'),
	(61, '416', 3, NULL, 45, 'Grande'),
	(62, '418', 3, NULL, 45, 'Grande'),
	(63, '25', 2, 0, 28, 'Mediana-Informatica'),
	(64, '26', 2, 0, 28, 'Mediana-Informatica'),
	(65, '27', 2, 0, 28, 'Mediana-Informatica'),
	(66, '28', 2, NULL, 30, 'Mediana'),
	(67, '29', 2, NULL, 30, 'Mediana'),
	(68, '30', 2, NULL, 30, 'Mediana'),
	(69, '31', 2, NULL, 30, 'Mediana'),
	(70, '32', 2, NULL, 30, 'Mediana'),
	(71, '33', 2, NULL, 45, 'Reasignar espacio - aula cerrada  '),
	(72, '34', 2, NULL, 28, 'Mediana-Informatica'),
	(73, '35', 2, NULL, 28, 'Mediana-Informatcia'),
	(74, '36', 2, NULL, 45, 'Grande'),
	(75, '61', 8, NULL, 40, 'Mediana'),
	(76, '62', 8, NULL, 40, 'Mediana'),
	(77, '63', 8, NULL, 40, 'Mediana'),
	(78, '64', 8, NULL, 40, 'Mediana'),
	(79, '65', 8, NULL, 40, 'Mediana'),
	(80, '66', 8, NULL, 40, 'Mediana'),
	(81, '67', 8, NULL, 40, 'Mediana'),
	(82, '68', 8, NULL, 40, 'Mediana'),
	(83, '69', 8, NULL, 40, 'Mediana'),
	(84, '70', 8, NULL, 40, 'Mediana'),
	(85, '18', 9, 0, 40, 'Grande'),
	(86, '19', 9, 0, 20, 'Mediana'),
	(87, '1', 10, NULL, 30, 'Mediana'),
	(88, '2', 10, NULL, 30, 'Mediana'),
	(89, '3', 10, NULL, 30, 'Mediana'),
	(90, '4', 10, NULL, 30, 'Mediana'),
	(91, '5', 10, NULL, 25, 'Mediana'),
	(92, '6', 10, NULL, 20, 'Chica'),
	(93, '7', 10, NULL, 35, 'Mediana'),
	(94, '8', 10, NULL, 45, 'Grande'),
	(95, '9', 10, NULL, 40, 'Grande'),
	(96, '10', 10, NULL, 40, 'Grande'),
	(97, '11', 10, NULL, 45, 'Grande'),
	(98, '12', 10, NULL, 45, 'Grande'),
	(99, '39', 11, NULL, 45, 'Grande'),
	(100, '43', 11, NULL, 45, 'Grande'),
	(101, '44', 11, NULL, 45, 'Grande'),
	(102, '45', 11, NULL, 10, 'Chica'),
	(103, '46', 11, NULL, 13, 'Chica'),
	(104, '48', 11, NULL, 20, 'Chica'),
	(105, '49', 11, NULL, 20, 'Chica'),
	(106, '50', 11, NULL, 20, 'Chica'),
	(107, 'Abrales1', 13, NULL, 35, 'Mediana'),
	(108, 'Aula Taller 1', 13, NULL, 25, NULL),
	(109, 'Electronica y Electricidad', 13, NULL, 20, NULL),
	(110, 'Energias Alternativas', 13, NULL, 20, NULL),
	(111, 'Hidraulica y neumatica', 13, NULL, 20, NULL),
	(112, 'Maquinas e inst', 13, NULL, 20, NULL),
	(113, 'Materiales', 13, NULL, 20, NULL),
	(114, 'Termodinamica', 13, NULL, 20, NULL),
	(115, 'Ensayo de motores', 13, NULL, NULL, NULL),
	(116, 'Laboratorio Microbiologia', 14, NULL, NULL, NULL),
	(117, 'Biologia 1', 14, NULL, NULL, NULL),
	(118, 'Biologia 2', 14, NULL, NULL, NULL),
	(119, 'BE1', 15, NULL, NULL, NULL),
	(120, 'BE2', 15, NULL, NULL, NULL),
	(121, 'BE3', 15, NULL, NULL, NULL),
	(122, 'BE4', 15, NULL, NULL, NULL),
	(123, 'BE5', 15, NULL, NULL, NULL),
	(124, 'BE6', 15, NULL, NULL, NULL);
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.aula_recurso
DROP TABLE IF EXISTS `aula_recurso`;
CREATE TABLE IF NOT EXISTS `aula_recurso` (
  `ID_RECURSO` int(11) NOT NULL,
  `ID_AULA` int(11) NOT NULL,
  PRIMARY KEY (`ID_RECURSO`,`ID_AULA`),
  KEY `ID_AULA` (`ID_AULA`),
  CONSTRAINT `aula_recurso_ibfk_1` FOREIGN KEY (`ID_RECURSO`) REFERENCES `recurso` (`ID`),
  CONSTRAINT `aula_recurso_ibfk_2` FOREIGN KEY (`ID_AULA`) REFERENCES `aula` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.aula_recurso: ~34 rows (aproximadamente)
DELETE FROM `aula_recurso`;
/*!40000 ALTER TABLE `aula_recurso` DISABLE KEYS */;
INSERT INTO `aula_recurso` (`ID_RECURSO`, `ID_AULA`) VALUES
	(1, 1),
	(1, 2),
	(1, 6),
	(1, 16),
	(1, 25),
	(1, 63),
	(1, 64),
	(1, 65),
	(1, 73),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(2, 8),
	(2, 12),
	(2, 14),
	(2, 17),
	(2, 18),
	(2, 20),
	(3, 3),
	(3, 5),
	(3, 11),
	(3, 21),
	(4, 1),
	(4, 3),
	(4, 4),
	(4, 11),
	(4, 12),
	(4, 14),
	(4, 21),
	(5, 32),
	(6, 43);
/*!40000 ALTER TABLE `aula_recurso` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.carrera
DROP TABLE IF EXISTS `carrera`;
CREATE TABLE IF NOT EXISTS `carrera` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_INSTITUTO` int(11) NOT NULL,
  `NOMBRE` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_INSTITUTO` (`ID_INSTITUTO`),
  CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`ID_INSTITUTO`) REFERENCES `instituto` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.carrera: ~9 rows (aproximadamente)
DELETE FROM `carrera`;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` (`ID`, `ID_INSTITUTO`, `NOMBRE`) VALUES
	(1, 1, 'Ing. Informatica'),
	(2, 1, 'Ing. Electromecanica'),
	(3, 1, 'Ing. Industrial'),
	(4, 1, 'Ing en Petroleo'),
	(5, 4, 'MATERIAS COMUNES'),
	(6, 1, 'Materias Compartidas ING'),
	(7, 3, 'LIC. EN ENFERMERIA'),
	(8, 2, 'LIC. TRABAJO SOCIAL'),
	(9, 2, 'LIC. RELACIONES DE TRABAJO');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.ciclo_lectivo
DROP TABLE IF EXISTS `ciclo_lectivo`;
CREATE TABLE IF NOT EXISTS `ciclo_lectivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.ciclo_lectivo: ~3 rows (aproximadamente)
DELETE FROM `ciclo_lectivo`;
/*!40000 ALTER TABLE `ciclo_lectivo` DISABLE KEYS */;
INSERT INTO `ciclo_lectivo` (`id`, `nombre`, `fecha_inicio`, `fecha_fin`, `estado`) VALUES
	(1, '2018-1C', '2018-08-01', '2019-01-01', 'Abierto'),
	(2, 'CPU 2019', '2019-01-03', '2019-04-30', 'Abierto'),
	(3, '2019-1C', '2019-03-01', '2019-07-31', 'Abierto');
/*!40000 ALTER TABLE `ciclo_lectivo` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.comision
DROP TABLE IF EXISTS `comision`;
CREATE TABLE IF NOT EXISTS `comision` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUMERO` int(10) unsigned DEFAULT NULL,
  `ID_MATERIA` int(11) DEFAULT NULL,
  `CARGA_HORARIA_SEMANAL` int(11) DEFAULT NULL,
  `ID_Ciclo` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_MATERIA` (`ID_MATERIA`),
  KEY `comision_ibfk_2` (`ID_Ciclo`),
  CONSTRAINT `comision_ibfk_1` FOREIGN KEY (`ID_MATERIA`) REFERENCES `materia` (`ID`),
  CONSTRAINT `comision_ibfk_2` FOREIGN KEY (`ID_Ciclo`) REFERENCES `ciclo_lectivo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.comision: ~20 rows (aproximadamente)
DELETE FROM `comision`;
/*!40000 ALTER TABLE `comision` DISABLE KEYS */;
INSERT INTO `comision` (`ID`, `NUMERO`, `ID_MATERIA`, `CARGA_HORARIA_SEMANAL`, `ID_Ciclo`) VALUES
	(1, 11, 1, 9, 1),
	(2, 7, 2, 9, 1),
	(3, 2, 3, 6, 1),
	(4, 19, 4, 6, 1),
	(5, 27, 7, 4, 1),
	(6, 19, 8, 9, 1),
	(7, 12, 9, 8, 1),
	(8, 5, 10, 9, 1),
	(9, 18, 11, 4, 1),
	(10, 15, 12, 5, 1),
	(11, 19, 13, 9, 1),
	(12, 22, 14, 6, 1),
	(13, 1, 11, 6, 1),
	(14, 2, 11, 6, 1),
	(21, 1, 1, 6, 1),
	(22, 2, 1, 6, 1),
	(23, 3, 1, 6, 1),
	(24, 4, 1, 6, 1),
	(25, 7, 1, 6, 1),
	(26, 1, 8, NULL, 3);
/*!40000 ALTER TABLE `comision` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.edificio
DROP TABLE IF EXISTS `edificio`;
CREATE TABLE IF NOT EXISTS `edificio` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SEDE` int(11) NOT NULL,
  `NOMBRE` varchar(40) NOT NULL,
  `CANTIDAD_AULAS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_SEDE` (`ID_SEDE`),
  CONSTRAINT `edificio_ibfk_1` FOREIGN KEY (`ID_SEDE`) REFERENCES `sede` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.edificio: ~12 rows (aproximadamente)
DELETE FROM `edificio`;
/*!40000 ALTER TABLE `edificio` DISABLE KEYS */;
INSERT INTO `edificio` (`ID`, `ID_SEDE`, `NOMBRE`, `CANTIDAD_AULAS`) VALUES
	(1, 1, 'Unico', 3),
	(2, 2, 'Manuel Savio', 16),
	(3, 2, 'Enrique Mosconi', 41),
	(7, 1, 'Ramón Carrillo', 15),
	(8, 2, ' Juan Pistarini', 10),
	(9, 2, 'Homero Manzi', 2),
	(10, 2, 'Julieta Lanteri', 12),
	(11, 2, 'Manuel Ugarte', 8),
	(12, 2, 'Guillermo Hudson', NULL),
	(13, 2, 'Ing. Héctor Abrales', 9),
	(14, 2, 'Silvio Dessy', 3),
	(15, 5, 'Berazategui', 6);
/*!40000 ALTER TABLE `edificio` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.especial_calendar
DROP TABLE IF EXISTS `especial_calendar`;
CREATE TABLE IF NOT EXISTS `especial_calendar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Aula` int(11) DEFAULT NULL,
  `inicio` varchar(30) DEFAULT NULL,
  `fin` varchar(30) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(180) DEFAULT NULL,
  `momento` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_UCrea` int(11) DEFAULT NULL,
  `ID_UModifica` int(11) DEFAULT NULL,
  `ID_Carrera` int(11) DEFAULT NULL,
  `EXAMEN_FINAL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ID_UCrea` (`ID_UCrea`),
  KEY `fk_ID_UModifica` (`ID_UModifica`),
  KEY `fk_IDAula` (`ID_Aula`),
  KEY `fk_IDCarrera` (`ID_Carrera`),
  CONSTRAINT `fk_IDAula` FOREIGN KEY (`ID_Aula`) REFERENCES `aula` (`ID`),
  CONSTRAINT `fk_IDCarrera` FOREIGN KEY (`ID_Carrera`) REFERENCES `carrera` (`ID`),
  CONSTRAINT `fk_ID_UCrea` FOREIGN KEY (`ID_UCrea`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_ID_UModifica` FOREIGN KEY (`ID_UModifica`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COMMENT='Tabla para evento especial de calendario (no periodico)';

-- Volcando datos para la tabla aulas_db.especial_calendar: ~7 rows (aproximadamente)
DELETE FROM `especial_calendar`;
/*!40000 ALTER TABLE `especial_calendar` DISABLE KEYS */;
INSERT INTO `especial_calendar` (`id`, `ID_Aula`, `inicio`, `fin`, `nombre`, `descripcion`, `momento`, `ID_UCrea`, `ID_UModifica`, `ID_Carrera`, `EXAMEN_FINAL`) VALUES
	(19, 1, '2018-12-13T16:00:00', '2018-12-13T21:00:00', 'Hola soy un evento unico', 'Evento unico con su debida descripcion jeje', '2019-04-28 13:45:20', 2, 2, 3, 0),
	(21, 1, '2018-12-14T16:00:00', '2018-12-14T20:00:00', 'Ser un evento unico y sin carrera me encanta', 'Hola', '2019-04-28 13:45:20', 2, 2, NULL, 0),
	(22, 1, '2018-12-15T15:00:00', '2018-12-15T20:00:00', 'Evento sin carrera y sin descri', '', '2019-04-28 13:45:20', 2, 2, NULL, 0),
	(24, 1, '2018-12-13T15:00:00', '2018-12-13T19:00:00', 'PPS de Lucas Granata', 'Practica profesional supervisada para recibirse', '2019-04-28 13:45:20', 2, 2, 1, 0),
	(27, 1, '2019-04-29T12:00:00', '2019-04-29T14:00:00', 'Test Examen final', 'asd', '2019-05-11 04:41:34', 2, 2, 1, 1),
	(28, 1, '2019-05-09T13:00:00', '2019-05-09T15:00:00', 'Test NO examen final', 'dsfd', '2019-05-11 04:41:07', 2, 2, NULL, 0),
	(29, 1, '2019-05-03T10:00:00', '2019-05-03T13:00:00', 'Final de Una Materia', '', '2019-04-28 19:11:40', 2, 2, 2, 1);
/*!40000 ALTER TABLE `especial_calendar` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.evento_calendar
DROP TABLE IF EXISTS `evento_calendar`;
CREATE TABLE IF NOT EXISTS `evento_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Aula` int(11) DEFAULT NULL,
  `ID_Comision` int(11) DEFAULT NULL,
  `ID_User_Asigna` int(11) DEFAULT NULL,
  `ID_UModifica` int(11) DEFAULT NULL,
  `Hora_ini` time DEFAULT NULL,
  `Hora_fin` time DEFAULT NULL,
  `dow` varchar(20) DEFAULT NULL,
  `ID_Instituto` int(11) DEFAULT NULL,
  `ID_Ciclo` int(11) DEFAULT NULL,
  `momento` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_ID_Aula` (`ID_Aula`),
  KEY `fk_ID_Comision` (`ID_Comision`),
  KEY `fk_ID_Instituto` (`ID_Instituto`),
  KEY `fk_ID_User_Asigna` (`ID_User_Asigna`),
  KEY `fk_ID_Ciclo` (`ID_Ciclo`),
  KEY `fk_ID_User_Crea` (`ID_UModifica`),
  KEY `ID_Aula_index_e` (`ID_Aula`),
  CONSTRAINT `fk_ID_Aula` FOREIGN KEY (`ID_Aula`) REFERENCES `aula` (`ID`),
  CONSTRAINT `fk_ID_Ciclo` FOREIGN KEY (`ID_Ciclo`) REFERENCES `ciclo_lectivo` (`id`),
  CONSTRAINT `fk_ID_Comision` FOREIGN KEY (`ID_Comision`) REFERENCES `comision` (`ID`),
  CONSTRAINT `fk_ID_Instituto` FOREIGN KEY (`ID_Instituto`) REFERENCES `instituto` (`ID`),
  CONSTRAINT `fk_ID_User_Asigna` FOREIGN KEY (`ID_User_Asigna`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_ID_User_Crea` FOREIGN KEY (`ID_UModifica`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.evento_calendar: ~11 rows (aproximadamente)
DELETE FROM `evento_calendar`;
/*!40000 ALTER TABLE `evento_calendar` DISABLE KEYS */;
INSERT INTO `evento_calendar` (`id`, `ID_Aula`, `ID_Comision`, `ID_User_Asigna`, `ID_UModifica`, `Hora_ini`, `Hora_fin`, `dow`, `ID_Instituto`, `ID_Ciclo`, `momento`) VALUES
	(1, 1, 1, 2, 2, '09:00:00', '11:00:00', '4', 1, 1, '2018-10-26 03:48:43'),
	(4, 1, 3, 10, 2, '08:00:00', '10:00:00', '4', 1, 1, '2018-11-03 21:40:57'),
	(12, 1, 1, 2, 8, '13:00:00', '20:00:00', '1', 1, 1, '2018-11-24 03:35:38'),
	(13, 8, 5, 9, 2, '10:00:00', '13:00:00', '4', 1, 1, '2018-11-24 22:16:46'),
	(23, 1, 6, 8, NULL, '09:00:00', '12:00:00', '6', 3, 1, '2018-11-26 02:04:34'),
	(24, 2, 26, 8, 7, '09:00:00', '12:00:00', '1', 3, 1, '2018-11-28 18:51:17'),
	(25, 1, 2, 2, 8, '09:00:00', '15:00:00', '3', 1, 1, '2018-12-25 19:43:51'),
	(26, 2, 26, 2, NULL, '10:00:00', '13:00:00', '1', 1, 1, '2019-04-27 01:52:57'),
	(27, 1, 2, 2, 8, '16:00:00', '20:00:00', '1', 1, 1, '2019-04-27 02:00:20'),
	(28, 1, 26, 8, 2, '09:00:00', '11:00:00', '4', 1, 3, '2019-04-28 05:10:20'),
	(29, 1, 21, 8, NULL, '17:00:00', '22:00:00', '3', 1, 1, '2019-05-08 22:28:54');
/*!40000 ALTER TABLE `evento_calendar` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.institucion_educativa
DROP TABLE IF EXISTS `institucion_educativa`;
CREATE TABLE IF NOT EXISTS `institucion_educativa` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.institucion_educativa: ~2 rows (aproximadamente)
DELETE FROM `institucion_educativa`;
/*!40000 ALTER TABLE `institucion_educativa` DISABLE KEYS */;
INSERT INTO `institucion_educativa` (`ID`, `NOMBRE`) VALUES
	(1, 'UNAJ'),
	(2, 'Unqui');
/*!40000 ALTER TABLE `institucion_educativa` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.instituto
DROP TABLE IF EXISTS `instituto`;
CREATE TABLE IF NOT EXISTS `instituto` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_INSTITUCION` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `COLOR_HEXA` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_INSTITUCION` (`ID_INSTITUCION`),
  CONSTRAINT `instituto_ibfk_1` FOREIGN KEY (`ID_INSTITUCION`) REFERENCES `institucion_educativa` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.instituto: ~4 rows (aproximadamente)
DELETE FROM `instituto`;
/*!40000 ALTER TABLE `instituto` DISABLE KEYS */;
INSERT INTO `instituto` (`ID`, `ID_INSTITUCION`, `NOMBRE`, `COLOR_HEXA`) VALUES
	(1, 1, 'INGENIERIA', '#A63322'),
	(2, 1, 'SOCIALES', '#283A8A'),
	(3, 2, 'SALUD', '#8ab03f'),
	(4, 1, 'ESTUDIOS INICIALES', '#FFA500');
/*!40000 ALTER TABLE `instituto` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.materia
DROP TABLE IF EXISTS `materia`;
CREATE TABLE IF NOT EXISTS `materia` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(40) NOT NULL,
  `DESC_CORTA` varchar(20) NOT NULL,
  `ID_Carrera` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `COD_MATERIA` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_ID_Carrera` (`ID_Carrera`),
  CONSTRAINT `fk_ID_Carrera` FOREIGN KEY (`ID_Carrera`) REFERENCES `carrera` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.materia: ~53 rows (aproximadamente)
DELETE FROM `materia`;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` (`ID`, `NOMBRE`, `DESC_CORTA`, `ID_Carrera`, `anio`, `COD_MATERIA`) VALUES
	(1, 'Algoritmos y Programacion', 'AyP', 1, 2, 'I3001'),
	(2, 'Organizacion y Arquitectura de Computado', 'OyADC', 1, 2, 'I3002'),
	(3, 'Sistemas Operativos 1', 'SO1', 1, 2, 'I3003'),
	(4, 'Complejidad Temporal,Estructuras de Dato', 'CTEDDYA', 1, 2, 'I3004'),
	(5, 'Base de Datos 1', 'BD1', 1, 2, 'I3005'),
	(7, 'Redes de Computadoras 1', 'REDES1', 1, 3, 'I3006'),
	(8, 'Metodologias de Programacion I', 'METO1', 1, 3, 'I3007'),
	(9, 'Informacion y comunicaciones', 'IyC', 1, 3, 'I3008'),
	(10, 'Ingenieria de Software I', 'IDS1', 1, 3, 'I3009'),
	(11, 'Redes de Computadoras II', 'REDES2', 1, 3, 'I3010'),
	(12, 'Proyecto de Software', 'PROYECTO', 1, 3, 'I3011'),
	(13, 'Metodologias de Programacion II', 'METO2', 1, 3, 'I3012'),
	(14, 'Seguridad de la Informacion', 'SEGURIDAD', 1, 3, 'I3013'),
	(15, 'Base de Datos II', 'BD2', 1, 4, 'I3014'),
	(16, 'Ingenieria de Software II', 'IDS2', 1, 3, 'I3015'),
	(17, 'Sistemas Operativos II', 'SO2', 1, 4, 'I3016'),
	(18, 'Seguridad en Aplicaciones', 'SEA', 1, 4, 'I3017'),
	(19, 'Aplicaciones Moviles', 'AM', 1, 4, 'I3018'),
	(20, 'Administracion de Proyectos', 'AdP', 1, 4, 'I3019'),
	(21, 'Lenguajes Formales y Automatas', 'LFyA', 1, 4, 'I3020'),
	(22, 'Programacion en tiempo real', 'PETR', 1, 4, 'I3021'),
	(23, 'Sistemas y Organizaciones', 'SyO', 1, 5, 'I3023'),
	(24, 'Datawarehouse y Business Intelligence (O', 'DyBI', 1, 5, 'OI008'),
	(25, 'Sistemas Distribuidos(Optativa)', 'SD', 1, 5, 'OI038'),
	(26, 'Aplicacion java sobre Web(Optativa)', 'AJSW', 1, 5, 'OI037'),
	(27, 'Bioinformatica (Optativa)', 'BIO', 1, 5, 'OI009'),
	(28, 'Gobierno IT y Auditoria de SI (Optativa)', 'GOBIT', 1, 5, 'OI001'),
	(29, 'Practica Profesional Supervisada', 'PPS', 1, 5, 'I3029'),
	(30, 'Legislacion y ejercicio profesional de l', 'LyEPI', 1, 5, 'I3027'),
	(31, 'Gestion de la Produccion', 'GDLP', 2, 2, 'CI032'),
	(32, 'Elementos de Economia', 'EDE', 2, 2, 'CI044'),
	(33, 'Electrotecnia', 'ELECTRO', 2, 3, 'I4020'),
	(34, 'Estatica y Resistencia de Materiales II', 'EyRDM', 2, 4, 'I4019'),
	(37, 'Mecanica Racional', 'MR', 2, 4, 'I4027'),
	(38, 'Tecnologia Mecanica', 'TM', 2, 5, 'I4008'),
	(39, 'Procesos de Fabricacion', 'PDF', 2, 5, 'I4009'),
	(40, 'Generacion, Transporte y Distribucion de', 'GTyDE', 2, 5, 'I4011'),
	(41, 'Proyecto de Maquinas', 'PDM', 2, 5, 'I4012'),
	(42, 'Practica Profesional Supervisada', 'PPS', 2, 5, 'I4018'),
	(43, 'Electronica Industrial (Optativa)', 'EI', 2, 5, 'OI016'),
	(44, 'Desarrollo Emprendedor', 'DE', 3, 2, 'I5001'),
	(45, 'Termodinamica B', 'TERMOB', 3, 3, 'I5019'),
	(46, 'Gestion de la Produccion II', 'GDLPII', 3, 4, 'CIO41'),
	(47, 'Administracion General', 'AG', 3, 4, 'I5008'),
	(48, 'Mecanica y Mecanismos', 'MyM', 3, 4, 'CI020'),
	(49, 'Sistemas Integrados de Manufacturas', 'SIDM', 3, 5, 'I5012'),
	(50, 'Practicas Profesionales Supervisadas', 'PPS', 3, 5, 'I5018'),
	(51, 'Instalaciones Industriales', 'II', 3, 5, 'I5013'),
	(52, 'Creatividad e Innovacion Tecnologica (Op', 'CeIT', 3, 5, 'OI019'),
	(53, 'Gestion de la Produccion I', 'GdlPI', 3, 3, 'I5022'),
	(54, 'Quimica General', 'QG', 3, 2, 'CI011'),
	(55, 'Probabilidad y Estadistica', 'PyE', 3, 2, 'CI029'),
	(56, 'Introduccion a la Quimica', 'IALQ', 4, 2, 'I7012');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.notificacion
DROP TABLE IF EXISTS `notificacion`;
CREATE TABLE IF NOT EXISTS `notificacion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_USER_EMISOR` int(11) NOT NULL,
  `ID_USER_RECEPTOR` int(11) NOT NULL,
  `NOTIFICACION` varchar(300) DEFAULT NULL,
  `FECHA` datetime NOT NULL,
  `BORRA_R` bit(1) DEFAULT b'0',
  `BORRA_E` bit(1) DEFAULT b'0',
  `visto` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `ID_USER_EMISOR` (`ID_USER_EMISOR`),
  KEY `ID_USER_RECEPTOR` (`ID_USER_RECEPTOR`),
  CONSTRAINT `notificacion_ibfk_1` FOREIGN KEY (`ID_USER_EMISOR`) REFERENCES `users` (`id`),
  CONSTRAINT `notificacion_ibfk_2` FOREIGN KEY (`ID_USER_RECEPTOR`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.notificacion: ~22 rows (aproximadamente)
DELETE FROM `notificacion`;
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
INSERT INTO `notificacion` (`ID`, `ID_USER_EMISOR`, `ID_USER_RECEPTOR`, `NOTIFICACION`, `FECHA`, `BORRA_R`, `BORRA_E`, `visto`) VALUES
	(2, 2, 1, '<p>hola<strong>asdasd<em>sadfsadf</em><u>fghfdghf<s>hgjfghj<sub>fgvcx<sup>gfgdf</sup></sub></s></u></strong></p>\r\n', '2018-10-07 23:52:18', b'0', b'0', b'0'),
	(21, 10, 8, '<p>AVISO!!</p>\r\n', '2018-11-09 00:46:14', b'0', b'0', b'1'),
	(23, 8, 10, '<p>testing varias notis</p>\r\n', '2018-11-11 18:47:29', b'0', b'1', b'0'),
	(24, 8, 9, '<p><strong>buenas!</strong></p>\r\n', '2018-11-17 21:16:24', b'1', b'1', b'1'),
	(26, 8, 10, '<p><strong>probando dos msj</strong></p>\r\n', '2018-11-17 21:25:45', b'0', b'1', b'0'),
	(27, 9, 8, '<p>estoy probando</p>\r\n', '2018-11-25 19:23:37', b'0', b'1', b'1'),
	(28, 2, 9, 'dVhMZFBMUG5TVzA1YldjZGh6OTZrQT09', '2018-12-22 14:23:37', b'0', b'0', b'1'),
	(29, 2, 1, 'ZmtPbUovS0kyM1JGMk5Za1R1Z2g4djE5cWswTjMrdmtnaUQ3TmJkSkJtYz0=', '2018-12-25 16:19:41', b'0', b'0', b'0'),
	(30, 2, 7, 'ZmtPbUovS0kyM1JGMk5Za1R1Z2g4djE5cWswTjMrdmtnaUQ3TmJkSkJtYz0=', '2018-12-25 16:19:45', b'0', b'0', b'0'),
	(31, 2, 8, 'ZmtPbUovS0kyM1JGMk5Za1R1Z2g4djE5cWswTjMrdmtnaUQ3TmJkSkJtYz0=', '2018-12-25 16:19:46', b'1', b'0', b'1'),
	(32, 2, 9, 'ZmtPbUovS0kyM1JGMk5Za1R1Z2g4djE5cWswTjMrdmtnaUQ3TmJkSkJtYz0=', '2018-12-25 16:19:48', b'0', b'0', b'1'),
	(33, 2, 10, 'ZmtPbUovS0kyM1JGMk5Za1R1Z2g4djE5cWswTjMrdmtnaUQ3TmJkSkJtYz0=', '2018-12-25 16:19:49', b'0', b'0', b'0'),
	(34, 2, 1, 'OFBzeUwrUGkwS2dVZ2pDaUFjWFg3UVFZTUJyNndKd2QzS3NENVdDdzl5Tmg2ZUpLdndXT0tIaVJNVW9RdmxzQWovYmU4STIvZ1VCMTVJOXYzWVFVbHc9PQ==', '2019-04-13 00:05:38', b'0', b'0', b'0'),
	(35, 2, 7, 'OFBzeUwrUGkwS2dVZ2pDaUFjWFg3UVFZTUJyNndKd2QzS3NENVdDdzl5Tmg2ZUpLdndXT0tIaVJNVW9RdmxzQWovYmU4STIvZ1VCMTVJOXYzWVFVbHc9PQ==', '2019-04-13 00:05:44', b'0', b'0', b'0'),
	(36, 2, 8, 'OFBzeUwrUGkwS2dVZ2pDaUFjWFg3UVFZTUJyNndKd2QzS3NENVdDdzl5Tmg2ZUpLdndXT0tIaVJNVW9RdmxzQWovYmU4STIvZ1VCMTVJOXYzWVFVbHc9PQ==', '2019-04-13 00:05:46', b'0', b'0', b'1'),
	(37, 2, 9, 'OFBzeUwrUGkwS2dVZ2pDaUFjWFg3UVFZTUJyNndKd2QzS3NENVdDdzl5Tmg2ZUpLdndXT0tIaVJNVW9RdmxzQWovYmU4STIvZ1VCMTVJOXYzWVFVbHc9PQ==', '2019-04-13 00:05:48', b'0', b'0', b'1'),
	(38, 2, 10, 'OFBzeUwrUGkwS2dVZ2pDaUFjWFg3UVFZTUJyNndKd2QzS3NENVdDdzl5Tmg2ZUpLdndXT0tIaVJNVW9RdmxzQWovYmU4STIvZ1VCMTVJOXYzWVFVbHc9PQ==', '2019-04-13 00:05:50', b'0', b'0', b'0'),
	(40, 8, 2, 'ZWdNNERLdzNzRjJYNThFSGZxRFEzRC9vYTJkUndST0NnZDlUaFNvenR4S1ZMZGM4am01di83T082azM5U202cm9PRlZRbytTOVNadVNhUTFjV3ZCN3c9PQ==', '2019-04-27 20:06:02', b'0', b'1', b'1'),
	(41, 8, 9, 'TkhZZy83SnZ2RGVDSUluNHNpTS9EbW9xWERXYWNxNXBoYlR0d3h0bW9OUT0=', '2019-05-09 16:46:26', b'0', b'1', b'1'),
	(42, 8, 9, 'UGlwbmdvc0xZNnMzTGlVMUpnSWh2Q01aQ0M4bnhBVkFEdHFEY1k4cmpoZz0=', '2019-05-09 16:47:31', b'0', b'0', b'1'),
	(43, 8, 9, 'a3F0ZEwxbWc5L2NyMVl4NXJBbEZub3F1b2Q4Mm1hZmRlMHVOQi9ndHpDQnJGQ1hPWWtHQmlVZU9oM1hRK1VmOA==', '2019-05-09 17:12:24', b'0', b'0', b'1'),
	(44, 8, 14, 'a3F0ZEwxbWc5L2NyMVl4NXJBbEZubitLWi9iZG55VmpaTGs0ZEZMaWdZUT0=', '2019-05-09 19:16:55', b'0', b'0', b'0');
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;

-- Volcando estructura para vista aulas_db.oferta_academica
DROP VIEW IF EXISTS `oferta_academica`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `oferta_academica` (
	`id` INT(11) NOT NULL,
	`Carrera` VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	`Anio` INT(11) NULL,
	`Materia` VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	`Comision` INT(10) UNSIGNED NULL,
	`Dia` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`HoraInicio` VARCHAR(7) NULL COLLATE 'utf8mb4_general_ci',
	`HoraFin` VARCHAR(7) NULL COLLATE 'utf8mb4_general_ci',
	`Edificio` VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	`Sede` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`Aula` VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	`Ciclo` INT(11) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista aulas_db.oferta_academica_finales
DROP VIEW IF EXISTS `oferta_academica_finales`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `oferta_academica_finales` (
	`ID` INT(11) UNSIGNED NOT NULL,
	`Carrera` VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	`Final` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`Descripcion` VARCHAR(180) NULL COLLATE 'latin1_swedish_ci',
	`Fecha` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`Inicio` VARCHAR(7) NULL COLLATE 'latin1_swedish_ci',
	`Fin` VARCHAR(7) NULL COLLATE 'latin1_swedish_ci',
	`Aula` VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	`Edificio` VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	`Sede` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Volcando estructura para tabla aulas_db.recurso
DROP TABLE IF EXISTS `recurso`;
CREATE TABLE IF NOT EXISTS `recurso` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  `DESCRIPCION` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.recurso: ~6 rows (aproximadamente)
DELETE FROM `recurso`;
/*!40000 ALTER TABLE `recurso` DISABLE KEYS */;
INSERT INTO `recurso` (`ID`, `NOMBRE`, `DESCRIPCION`) VALUES
	(1, 'Computarizada', 'Aula informatizada'),
	(2, 'Aire acondicionado', 'Recurso de aire acondicionado'),
	(3, 'Laboratorio quimico', 'Laboratorio quimico para las carreras que lo necesiten'),
	(4, 'Proyector', 'Recurso de proyector en las aulas'),
	(5, 'Laboratorio kinesiologia', 'Uso exclusivo LKF'),
	(6, 'Simulador quirofano', '');
/*!40000 ALTER TABLE `recurso` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.restri_calendar
DROP TABLE IF EXISTS `restri_calendar`;
CREATE TABLE IF NOT EXISTS `restri_calendar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Aula` int(11) DEFAULT NULL,
  `ID_User_Asigna` int(11) DEFAULT NULL,
  `Hora_ini` time DEFAULT NULL,
  `Hora_fin` time DEFAULT NULL,
  `dow` varchar(20) DEFAULT NULL,
  `ID_Instituto` int(11) DEFAULT NULL,
  `ID_Ciclo` int(11) DEFAULT NULL,
  `momento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_UModifica` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_Aula` (`ID_Aula`),
  KEY `ID_User_Asigna` (`ID_User_Asigna`),
  KEY `ID_Instituto` (`ID_Instituto`),
  KEY `ID_Ciclo` (`ID_Ciclo`),
  KEY `ID_Aula_index_r` (`ID_Aula`),
  KEY `ID_UModifica` (`ID_UModifica`),
  CONSTRAINT `restri_calendar_ibfk_1` FOREIGN KEY (`ID_Aula`) REFERENCES `aula` (`ID`),
  CONSTRAINT `restri_calendar_ibfk_2` FOREIGN KEY (`ID_User_Asigna`) REFERENCES `users` (`id`),
  CONSTRAINT `restri_calendar_ibfk_3` FOREIGN KEY (`ID_Instituto`) REFERENCES `instituto` (`ID`),
  CONSTRAINT `restri_calendar_ibfk_4` FOREIGN KEY (`ID_Ciclo`) REFERENCES `ciclo_lectivo` (`id`),
  CONSTRAINT `restri_calendar_ibfk_5` FOREIGN KEY (`ID_UModifica`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.restri_calendar: ~16 rows (aproximadamente)
DELETE FROM `restri_calendar`;
/*!40000 ALTER TABLE `restri_calendar` DISABLE KEYS */;
INSERT INTO `restri_calendar` (`id`, `ID_Aula`, `ID_User_Asigna`, `Hora_ini`, `Hora_fin`, `dow`, `ID_Instituto`, `ID_Ciclo`, `momento`, `ID_UModifica`) VALUES
	(1, 1, 2, '11:00:00', '22:00:00', '1', 1, 1, '2019-04-28 15:44:56', 2),
	(2, 1, 2, '08:00:00', '13:00:00', '4', 1, 1, '2019-04-28 15:44:56', 2),
	(3, 3, 7, '09:00:00', '15:00:00', '1', 3, 1, '2019-04-28 15:44:56', 7),
	(159, 1, 2, '09:00:00', '20:00:00', '1', 1, 2, '2019-04-28 15:44:56', 2),
	(160, 1, 2, '08:00:00', '13:00:00', '4', 1, 2, '2019-04-28 15:44:56', 2),
	(161, 2, 2, '08:00:00', '14:00:00', '1', 3, 2, '2019-04-28 15:44:56', 2),
	(162, 16, 2, '10:00:00', '13:00:00', '1', 2, 1, '2019-04-28 15:44:56', 2),
	(163, 2, 2, '11:00:00', '13:00:00', '1', 1, 2, '2019-04-28 15:44:56', 2),
	(164, 1, 8, '08:00:00', '12:00:00', '1', 1, 2, '2019-04-28 15:44:56', 8),
	(165, 1, 8, '10:00:00', '18:00:00', '1', NULL, 2, '2019-04-28 15:44:56', 8),
	(166, 1, 2, '11:00:00', '22:00:00', '1', 1, 3, '2019-04-28 15:44:56', 2),
	(167, 1, 2, '08:00:00', '13:00:00', '4', 1, 3, '2019-04-28 15:44:56', 2),
	(168, 3, 2, '09:00:00', '15:00:00', '1', 3, 3, '2019-04-28 15:44:56', 2),
	(169, 16, 2, '10:00:00', '13:00:00', '1', 2, 3, '2019-04-28 15:44:56', 2),
	(170, 1, 2, '09:00:00', '17:00:00', '3', 2, 3, '2019-04-28 15:54:34', 2),
	(171, 1, 8, '10:00:00', '19:00:00', '2', 4, 3, '2019-05-13 19:49:08', 8);
/*!40000 ALTER TABLE `restri_calendar` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.sede
DROP TABLE IF EXISTS `sede`;
CREATE TABLE IF NOT EXISTS `sede` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_INSTITUCION` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `CALLEYNUM` varchar(100) NOT NULL,
  `LOCALIDAD` varchar(50) NOT NULL,
  `DISPONIBLE_DESDE` time NOT NULL,
  `DISPONIBLE_HASTA` time NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_INSTITUCION` (`ID_INSTITUCION`),
  CONSTRAINT `sede_ibfk_1` FOREIGN KEY (`ID_INSTITUCION`) REFERENCES `institucion_educativa` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.sede: ~3 rows (aproximadamente)
DELETE FROM `sede`;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` (`ID`, `ID_INSTITUCION`, `NOMBRE`, `CALLEYNUM`, `LOCALIDAD`, `DISPONIBLE_DESDE`, `DISPONIBLE_HASTA`) VALUES
	(1, 1, 'HEC', 'Félix Lope De Vega y Calle 141', 'Florencio Varela', '08:00:00', '22:00:00'),
	(2, 1, 'Sede central (YPF)', 'Av. Calchaquí 6200', 'Florencio Varela', '08:00:00', '22:00:00'),
	(5, 1, 'Berazategui', 'calle 334 num 345', 'Berazategui', '08:00:00', '22:00:00');
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.turno
DROP TABLE IF EXISTS `turno`;
CREATE TABLE IF NOT EXISTS `turno` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HORA_DESDE` time NOT NULL,
  `HORA_HASTA` time NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.turno: ~3 rows (aproximadamente)
DELETE FROM `turno`;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` (`ID`, `HORA_DESDE`, `HORA_HASTA`) VALUES
	(1, '08:00:00', '12:00:00'),
	(2, '12:00:00', '18:00:00'),
	(3, '18:00:00', '22:00:00');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;

-- Volcando estructura para tabla aulas_db.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(250) NOT NULL,
  `profile_picture` varchar(200) DEFAULT NULL,
  `authKey` varchar(250) NOT NULL,
  `accessToken` varchar(250) NOT NULL,
  `activate` tinyint(1) NOT NULL DEFAULT '0',
  `idInstituto` int(11) DEFAULT NULL,
  `rol` int(11) NOT NULL DEFAULT '10',
  `verification_code` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idInstituto` (`idInstituto`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idInstituto`) REFERENCES `instituto` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla aulas_db.users: ~8 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `email`, `password`, `profile_picture`, `authKey`, `accessToken`, `activate`, `idInstituto`, `rol`, `verification_code`) VALUES
	(1, 'lucas3', 'eagleheartangel4@gmail.com', 'cXBUOHhVT2Z5RGxVSk1JbHo2a0RNQT09', NULL, 'e13546ecdec43081ce24611a3484bb3261934af29fd3682c3a3d199c770cb31d331d12a5b855072070c5c0cdeead8d5743646897e3f5c4b67b69541a2361e2e98f954baddc4b4bc4ffa850cf933801151d051d585093176792115c51cebf6fc99b67bffa', 'add229a41cbfac096ea5def29b1018f51a7ceb2317deaccb41cb66b67c57e7cec2261296691eeb6d0878101931c2a7db5a68bb5588fe844a619efdcc951c169eb369de1100f4e48fab7348e05a053f73a5d4a235a4b0b78cf028a4150aff700aa10f2966', 1, 1, 10, 'c870ab6c'),
	(2, 'fede123', 'federicomdo97@gmail.com', 'cXBUOHhVT2Z5RGxVSk1JbHo2a0RNQT09', '../uploads/fede123.jpg', 'fde72a912e12f021560eac94bd31e01c1b403b92c860f7aa83c76b890138dcf542e42f96b238fd2157b90d9418ccfdad19f7f6829688b7786f937e6c15a54cc5d36b8e07b2d0a86ab6344937222e988c58c100f4ccf26cea317d9a140ee67d4690dcf0f1', '951983cbf1a60c19ba45203d5eebcd0a3b2e198640ba5ee38c6d63744d5a407a86424b10913786efeb682c9d82944772ece96b490159805839640bbf547b268853d33c1e7c16669f26cf55ace17e4ac62cbbca88e6b9ebcdeebb5dcf7ffb324b6a54a311', 1, 1, 20, ''),
	(7, 'fede321', 'fedee.piola@gmail.com', 'cXBUOHhVT2Z5RGxVSk1JbHo2a0RNQT09', NULL, 'aff7e74d4636ffda705f9fbb228de9cab991527648de5a1b5f8a07b3f395b069e78b2821f6f1efb660fd1811fa8a3a70a4ee4cffcda2a44070bcef11f88cefef309c83d87d9050bd4f04da21688c4f4747dfe1ffb2186576b56f94e24af0f66f61ec21b0', 'd5660d0def8f876a34252eaa08efe4ce051c2a4ca2c7b92ccb46cb04e9a5cb2e0d8bd4803122d2dbc766e4224237f589506e0973c3aea11e0890bf9cc14cd11da06f464ddc0492cb578c2ee2713bcc9781ef4cde477dc08de88dbb2eea61a1e7510d74eb', 1, 2, 10, '43c6be32'),
	(8, 'Lucas', 'lucas.motodefy@gmail.com', 'cXBUOHhVT2Z5RGxVSk1JbHo2a0RNQT09', NULL, 'ad96c760698f691a4bc2d0314b1f0747eebbd4476d1b2f0cd065125a34dac6ea61014389b5aef988be7a987d67a2fab28204a3b9516ff5e88dab12bdd0aa46947fb2c7f999a616215ff3932a53f7cc5f71853074cdada4155052926656056397cc4c8596', '2f462c57534b5683a4e7fa3d8213240ab8cda6edd47560ab38d39a5c6d735a415957ede9cd6f44f5098e618370d062f38f09967e68aa896a3e8fd9fee30f7497422ff46e24ce9e8196a991911900863040584bfe074da1a2370accc39a159f2140854fbc', 1, NULL, 20, ''),
	(9, 'lucas1', 'lucasarielgranata@gmail.com', 'cXBUOHhVT2Z5RGxVSk1JbHo2a0RNQT09', NULL, 'adbcccd44420389c64274c03fb6c2075a91f80af183fecedc4c63251eef3861e3c13dd9e9f0c72841aec740e6c33e78aa218e1529328f44b18534b6422472387350dfbd1fb6c71d85ad031e1a050342ca9ba6e12a97490d1006a40b824b80c3464362bb4', '86bfe91d84eea4e2b6b95286fa0cc48df849c75ba458f6f240287f24de87ea31988fe4cdae5e655bc2c9ee82203715f2beffb635bfdd0c4c87da7a83761bf642a0552bbacf5ec7ee3e6c9a6b480277a1ec58bcfde07945422cd9f661ca0c006f2d205c4c', 1, 1, 10, '78a4f868'),
	(10, 'lucas2', 'lukitas1997@gmail.com', 'cXBUOHhVT2Z5RGxVSk1JbHo2a0RNQT09', NULL, 'a2623ba46adc40377e8ef0c4b622085ad51aba3c29b85d805d11c6b1031ebd9d18d39d447f81fdb708d5da3a6379d000af641f3433db46de975c252b1062dd83d0d7de8e293073a978e4897017bb9d1d57c020806b405a5c9089a0325fd5f1227ae6e284', 'da45ba35ce375535356b84f705c7249ce8994b55d1cb91effe6d5c3e3b2ff3f022d033f22a11bfa354966e18953bcdd42acb63a9e27315a0ba68fb89d0ad3efbe0d49a83858be66ede129aab08195a26b133a70071fc5d61a1e12cdff8d7d16d443c7ef1', 1, NULL, 30, ''),
	(12, 'braianpezet', 'braianpezet@gmail.com', 'UWNrOXVFQmZFejlHOUVDTUlNVHpmQT09', NULL, '1001496926e4129966f369bf26017f20cd73c79330227c020663eec3e198b334e25d4a71af75ce8fbe24b305c1393929d0e97f66213298dea7c132a96aeb6e26f1198b8a2945503564ac16d80226ac46a73ec2a2f2ade2ae89d8a9fd61f3516aee4dab4f', '60944c11821466d408479612c9c52ce1b8093da07900ca0058804b173273fb9e65c9625585eba7b41afcbd6bc887391fc8415d590d515c9125342a5e5006764480216f53b985fcf8bc49e6764140a2b1b03cd85c6c5aacff99e026622f574e10506d9cad', 1, 1, 20, ''),
	(14, 'ivan', 'ivanzapata.f@gmail.com', 'cXBUOHhVT2Z5RGxVSk1JbHo2a0RNQT09', NULL, '3b6af6e3ccdfe844e3206af78d53faf4ad887e1cd6173667372ebf4f30b9ee146d8fe2f8d3e7e4155253b439eae0dd4d9e0f6e116863b2b84cf9950306a88c7050ad86877644f85966c38a2f4cc7613ba958c354a5f921c6d7f434fb9c189607b9702e87', '101883f75cdc59524f13c3e9c33ad8c56984ee31cc45fbf61c7575e8008854fb471cb6080b67e7a84a44325d0794a007560d69ea3302b812ff1e2e9af449a66e799dd00cb117335fa2f9d1fd42fc56211c2325ae6f6c84492b583c1a7c5217da6c51bd26', 1, 4, 20, '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para vista aulas_db.oferta_academica
DROP VIEW IF EXISTS `oferta_academica`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `oferta_academica`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `oferta_academica` AS select `evento_calendar`.`id` AS `id`,`carrera`.`NOMBRE` AS `Carrera`,`materia`.`anio` AS `Anio`,`materia`.`NOMBRE` AS `Materia`,`comision`.`NUMERO` AS `Comision`,`evento_calendar`.`dow` AS `Dia`,concat(left(`evento_calendar`.`Hora_ini`,5),'hs') AS `HoraInicio`,concat(left(`evento_calendar`.`Hora_fin`,5),'hs') AS `HoraFin`,`edificio`.`NOMBRE` AS `Edificio`,`sede`.`NOMBRE` AS `Sede`,`aula`.`NOMBRE` AS `Aula`,`evento_calendar`.`ID_Ciclo` AS `Ciclo` from ((((((`carrera` join `materia` on((`materia`.`ID_Carrera` = `carrera`.`ID`))) join `comision` on((`materia`.`ID` = `comision`.`ID_MATERIA`))) join `evento_calendar` on((`comision`.`ID` = `evento_calendar`.`ID_Comision`))) join `sede` on((`sede`.`ID_INSTITUCION` = 1))) join `edificio` on((`edificio`.`ID_SEDE` = `sede`.`ID`))) join `aula` on((`aula`.`ID_EDIFICIO` = `edificio`.`ID`))) where (`aula`.`ID` = `evento_calendar`.`ID_Aula`) order by `carrera`.`NOMBRE` desc,`materia`.`anio`,`evento_calendar`.`dow`;

-- Volcando estructura para vista aulas_db.oferta_academica_finales
DROP VIEW IF EXISTS `oferta_academica_finales`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `oferta_academica_finales`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `oferta_academica_finales` AS select `ec`.`id` AS `ID`,`carrera`.`NOMBRE` AS `Carrera`,`ec`.`nombre` AS `Final`,`ec`.`descripcion` AS `Descripcion`,left(`ec`.`inicio`,10) AS `Fecha`,concat(substr(`ec`.`inicio`,12,5),'hs') AS `Inicio`,concat(substr(`ec`.`fin`,12,5),'hs') AS `Fin`,`aula`.`NOMBRE` AS `Aula`,`edificio`.`NOMBRE` AS `Edificio`,`sede`.`NOMBRE` AS `Sede` from ((((`especial_calendar` `ec` join `aula` on((`ec`.`ID_Aula` = `aula`.`ID`))) join `carrera` on((`ec`.`ID_Carrera` = `carrera`.`ID`))) join `edificio` on((`aula`.`ID` = `edificio`.`ID`))) join `sede` on((`edificio`.`ID` = `sede`.`ID`))) where (`ec`.`EXAMEN_FINAL` = 1) order by `carrera`.`NOMBRE`,`ec`.`inicio`,`ec`.`nombre`;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
