-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.21 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.1.0.4903
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla colegio.alumnos
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL DEFAULT '0',
  `Apellido` varchar(50) NOT NULL DEFAULT '0',
  `Sexo` tinyint(4) NOT NULL DEFAULT '0',
  `FechaNacimiento` varchar(20) DEFAULT NULL,
  `FechaRegistro` varchar(20) DEFAULT NULL,
  `Foto` varchar(200) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla colegio.alumnos: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` (`id`, `Nombre`, `Apellido`, `Sexo`, `FechaNacimiento`, `FechaRegistro`, `Foto`, `Correo`) VALUES
	(3, 'Eduardo', 'Rodriguez PatiÃ±o', 1, '1989-02-11', '2014-05-26', '150211034428-logo.png', 'hitogoroshi@outlook.com'),
	(4, 'pedro', 'Suarez PatiÃ±o', 1, '1991-08-17', '2014-05-26', '150211035226-bryan-cranston-walter-white[1].jpg', 'esuarez@anexsoft.com'),
	(5, 'Raul', 'Perez', 1, '1989-03-15', '2014-05-26', '150211035306-richie-kotzen.jpg', 'rperez@hotmail.com'),
	(6, 'Alberto', 'DÃ­az Villanueva', 1, '2015-02-12', NULL, '150211045806-0c2a341559c2e1e0dabceeb1b760740d.jpg', 'adiaz@hotmail.com'),
	(7, 'Teresa', 'Rodriguez Sanchez', 2, '2012-02-12', NULL, '150211050101-a.jpg', 'jrodriguez@hotmail.com'),
	(8, 'Ana', 'Ramirez DÃ­as', 2, '1988-04-14', NULL, '', ''),
	(9, 'Carlos', 'Díaz Perez', 1, '1988-04-14', NULL, '', ''),
	(10, 'Raul', 'Gonzales', 1, '2015-02-05', NULL, '', ''),
	(25, 'Jose', 'Mochizuki Maiden', 1, '1956-07-04', NULL, '150707052003-jose_jose_2915.jpg', 'josejose@yosoy.com');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;


-- Volcando estructura para tabla colegio.alumno_curso
CREATE TABLE IF NOT EXISTS `alumno_curso` (
  `Curso_id` int(11) NOT NULL,
  `Alumno_id` int(11) NOT NULL,
  PRIMARY KEY (`Curso_id`,`Alumno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla colegio.alumno_curso: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `alumno_curso` DISABLE KEYS */;
INSERT INTO `alumno_curso` (`Curso_id`, `Alumno_id`) VALUES
	(1, 3),
	(1, 4),
	(1, 6),
	(1, 7),
	(2, 3),
	(2, 5),
	(2, 6),
	(3, 4),
	(3, 5),
	(3, 7);
/*!40000 ALTER TABLE `alumno_curso` ENABLE KEYS */;


-- Volcando estructura para tabla colegio.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(500) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla colegio.cursos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`id`, `Nombre`) VALUES
	(1, 'Programacion orientada a objetos'),
	(2, 'MCST I'),
	(3, 'Adminstracion de servidores');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
