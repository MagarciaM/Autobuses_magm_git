-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.21-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para bd_autobuses_magm
DROP DATABASE IF EXISTS `bd_autobuses_magm`;
CREATE DATABASE IF NOT EXISTS `bd_autobuses_magm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bd_autobuses_magm`;

-- Volcando estructura para tabla bd_autobuses_magm.backup_ocupacion
DROP TABLE IF EXISTS `backup_ocupacion`;
CREATE TABLE IF NOT EXISTS `backup_ocupacion` (
  `id_backup_ocupacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_backup_viajero` int(11) NOT NULL DEFAULT '0',
  `num_asiento` int(11) NOT NULL DEFAULT '0',
  `id_backup_reserva` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_backup_ocupacion`),
  KEY `FK_backup_ocupacion_backup_viajero` (`id_backup_viajero`),
  KEY `FK_backup_ocupacion_backup_reserva` (`id_backup_reserva`),
  CONSTRAINT `FK_backup_ocupacion_backup_reserva` FOREIGN KEY (`id_backup_reserva`) REFERENCES `backup_reserva` (`id_backup_reserva`),
  CONSTRAINT `FK_backup_ocupacion_backup_viajero` FOREIGN KEY (`id_backup_viajero`) REFERENCES `backup_viajero` (`id_backup_viajero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.backup_ocupacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `backup_ocupacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup_ocupacion` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.backup_reserva
DROP TABLE IF EXISTS `backup_reserva`;
CREATE TABLE IF NOT EXISTS `backup_reserva` (
  `id_backup_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `id_backup_viaje` int(11) NOT NULL DEFAULT '0',
  `id_tarjeta` int(11) NOT NULL DEFAULT '0',
  `localizador` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_backup_reserva`),
  KEY `id_viaje_r` (`id_backup_viaje`),
  KEY `id_cliente_r` (`id_tarjeta`),
  CONSTRAINT `FK_backup_reserva_backup_viaje` FOREIGN KEY (`id_backup_viaje`) REFERENCES `backup_viaje` (`id_backup_viaje`),
  CONSTRAINT `backup_reserva_ibfk_1` FOREIGN KEY (`id_tarjeta`) REFERENCES `tarjeta` (`id_tarjeta`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla bd_autobuses_magm.backup_reserva: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `backup_reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup_reserva` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.backup_viaje
DROP TABLE IF EXISTS `backup_viaje`;
CREATE TABLE IF NOT EXISTS `backup_viaje` (
  `id_backup_viaje` int(11) NOT NULL AUTO_INCREMENT,
  `id_horario` int(11) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `plazas_ocupadas` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_backup_viaje`),
  KEY `id_horario` (`id_horario`),
  CONSTRAINT `backup_viaje_ibfk_1` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_horario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla bd_autobuses_magm.backup_viaje: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `backup_viaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup_viaje` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.backup_viajero
DROP TABLE IF EXISTS `backup_viajero`;
CREATE TABLE IF NOT EXISTS `backup_viajero` (
  `id_backup_viajero` int(11) NOT NULL AUTO_INCREMENT,
  `nif` varchar(9) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  PRIMARY KEY (`id_backup_viajero`),
  UNIQUE KEY `nif` (`nif`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla bd_autobuses_magm.backup_viajero: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `backup_viajero` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup_viajero` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(9) DEFAULT NULL,
  `pass` varbinary(100) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.cliente: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
REPLACE INTO `cliente` (`id_cliente`, `dni`, `pass`, `nombre`, `apellidos`, `direccion`, `email`, `telefono`, `fecha_nac`) VALUES
	(13, '48259583V', _binary 0x83E1C4DD0D25871634ED887738F044D1, 'Miguel Angel', 'Garcia', 'C/ Doctor Garcia Reyes', 'miguel.angel97@live.com', '676472552', '2018-02-26');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.datos_empresa
DROP TABLE IF EXISTS `datos_empresa`;
CREATE TABLE IF NOT EXISTS `datos_empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `direccion` varchar(50) NOT NULL DEFAULT '0',
  `nif` varchar(9) NOT NULL DEFAULT '0',
  `web` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.datos_empresa: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `datos_empresa` DISABLE KEYS */;
REPLACE INTO `datos_empresa` (`id_empresa`, `nombre`, `direccion`, `nif`, `web`, `email`) VALUES
	(1, 'La Linea', 'C/ Doctor Garcia Nº77', 'A41526384', 'http://www.magarciam.com', 'contacto@magarciam.com');
/*!40000 ALTER TABLE `datos_empresa` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.estacion
DROP TABLE IF EXISTS `estacion`;
CREATE TABLE IF NOT EXISTS `estacion` (
  `id_estacion` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(50) NOT NULL DEFAULT '0',
  `direccion` varchar(100) NOT NULL DEFAULT '0',
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_estacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.estacion: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `estacion` DISABLE KEYS */;
REPLACE INTO `estacion` (`id_estacion`, `localidad`, `direccion`, `nombre`) VALUES
	(1, 'La Roda', 'av.primera', 'rodaestacion'),
	(2, 'Albacete', 'av.estacion', 'albabus'),
	(3, 'Cenizate', 'Plaza Mayor', 'Cenizate');
/*!40000 ALTER TABLE `estacion` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.horario
DROP TABLE IF EXISTS `horario`;
CREATE TABLE IF NOT EXISTS `horario` (
  `id_horario` int(11) NOT NULL AUTO_INCREMENT,
  `id_ruta` int(11) DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `hora_llegada` time DEFAULT NULL,
  `dia` enum('R','E') DEFAULT 'R',
  PRIMARY KEY (`id_horario`),
  KEY `id_ruta` (`id_ruta`),
  CONSTRAINT `id_ruta` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id_ruta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.horario: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
REPLACE INTO `horario` (`id_horario`, `id_ruta`, `hora_salida`, `hora_llegada`, `dia`) VALUES
	(1, 1, '10:47:00', '12:47:00', 'R'),
	(2, 2, '18:34:22', '18:34:26', 'R'),
	(3, 1, '14:36:00', '18:36:00', 'R');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.ocupacion
DROP TABLE IF EXISTS `ocupacion`;
CREATE TABLE IF NOT EXISTS `ocupacion` (
  `id_ocupacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_viajero` int(11) NOT NULL DEFAULT '0',
  `num_asiento` int(11) NOT NULL DEFAULT '0',
  `id_reserva` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ocupacion`),
  UNIQUE KEY `id_viaje_num_asiento` (`id_reserva`,`num_asiento`),
  KEY `id_viajero` (`id_viajero`),
  CONSTRAINT `id_reserva` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`),
  CONSTRAINT `id_viajero` FOREIGN KEY (`id_viajero`) REFERENCES `viajero` (`id_viajero`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.ocupacion: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `ocupacion` DISABLE KEYS */;
REPLACE INTO `ocupacion` (`id_ocupacion`, `id_viajero`, `num_asiento`, `id_reserva`) VALUES
	(26, 33, 1, 18),
	(32, 35, 1, 22),
	(33, 36, 2, 22);
/*!40000 ALTER TABLE `ocupacion` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.reserva
DROP TABLE IF EXISTS `reserva`;
CREATE TABLE IF NOT EXISTS `reserva` (
  `id_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `id_viaje` int(11) NOT NULL DEFAULT '0',
  `id_tarjeta` int(11) NOT NULL DEFAULT '0',
  `localizador` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_reserva`),
  KEY `id_viaje_r` (`id_viaje`),
  KEY `id_cliente_r` (`id_tarjeta`),
  CONSTRAINT `FK_reserva_tarjeta` FOREIGN KEY (`id_tarjeta`) REFERENCES `tarjeta` (`id_tarjeta`),
  CONSTRAINT `id_viaje_r` FOREIGN KEY (`id_viaje`) REFERENCES `viaje` (`id_viaje`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.reserva: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
REPLACE INTO `reserva` (`id_reserva`, `id_viaje`, `id_tarjeta`, `localizador`) VALUES
	(18, 3, 11, 'HEIE'),
	(22, 1, 11, 'FTRW');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.ruta
DROP TABLE IF EXISTS `ruta`;
CREATE TABLE IF NOT EXISTS `ruta` (
  `id_ruta` int(11) NOT NULL AUTO_INCREMENT,
  `id_estacion_origen` int(11) NOT NULL DEFAULT '0',
  `id_estacion_destino` int(11) NOT NULL DEFAULT '0',
  `distancia` int(11) NOT NULL DEFAULT '0',
  `precio` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ruta`),
  KEY `id_estacion_origen` (`id_estacion_origen`),
  KEY `id_estacion_destino` (`id_estacion_destino`),
  CONSTRAINT `id_estacion_destino` FOREIGN KEY (`id_estacion_destino`) REFERENCES `estacion` (`id_estacion`),
  CONSTRAINT `id_estacion_origen` FOREIGN KEY (`id_estacion_origen`) REFERENCES `estacion` (`id_estacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.ruta: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
REPLACE INTO `ruta` (`id_ruta`, `id_estacion_origen`, `id_estacion_destino`, `distancia`, `precio`) VALUES
	(1, 2, 1, 37, 3.7),
	(2, 2, 3, 42, 4),
	(3, 3, 2, 42, 4),
	(4, 1, 2, 37, 3.7);
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.tarjeta
DROP TABLE IF EXISTS `tarjeta`;
CREATE TABLE IF NOT EXISTS `tarjeta` (
  `id_tarjeta` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varbinary(100) NOT NULL DEFAULT '0',
  `fecha_cad` date DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `cvv` varchar(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tarjeta`),
  UNIQUE KEY `numero` (`numero`),
  KEY `id_cliente_c` (`id_cliente`),
  CONSTRAINT `id_cliente_c` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.tarjeta: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
REPLACE INTO `tarjeta` (`id_tarjeta`, `numero`, `fecha_cad`, `id_cliente`, `cvv`) VALUES
	(11, _binary 0xBDF355CA675B768890E5810EAA80F113, '2018-03-07', 13, '125');
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.viaje
DROP TABLE IF EXISTS `viaje`;
CREATE TABLE IF NOT EXISTS `viaje` (
  `id_viaje` int(11) NOT NULL AUTO_INCREMENT,
  `id_horario` int(11) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `plazas_ocupadas` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_viaje`),
  KEY `id_horario` (`id_horario`),
  CONSTRAINT `id_horario` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_horario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.viaje: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `viaje` DISABLE KEYS */;
REPLACE INTO `viaje` (`id_viaje`, `id_horario`, `fecha`, `plazas_ocupadas`) VALUES
	(1, 1, '2018-03-20', 2),
	(2, 1, '2018-03-22', 0),
	(3, 3, '2018-03-20', 1);
/*!40000 ALTER TABLE `viaje` ENABLE KEYS */;

-- Volcando estructura para tabla bd_autobuses_magm.viajero
DROP TABLE IF EXISTS `viajero`;
CREATE TABLE IF NOT EXISTS `viajero` (
  `id_viajero` int(11) NOT NULL AUTO_INCREMENT,
  `nif` varchar(9) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  PRIMARY KEY (`id_viajero`),
  UNIQUE KEY `nif` (`nif`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_autobuses_magm.viajero: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `viajero` DISABLE KEYS */;
REPLACE INTO `viajero` (`id_viajero`, `nif`, `nombre`, `apellidos`, `fecha_nac`) VALUES
	(33, '48259574F', 'AM', 'AM', '2018-03-01'),
	(35, '48259583V', 'Miguel Angel ', 'Garcia', '1997-07-27'),
	(36, '48259584H', 'Montse', 'Garcia Martinez', '2000-01-26');
/*!40000 ALTER TABLE `viajero` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
