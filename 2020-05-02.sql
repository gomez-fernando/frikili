-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-05-2020 a las 17:50:11
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `frikili`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_publicacion` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F54B3FC0A76ED395` (`user_id`),
  KEY `IDX_F54B3FC04B89032C` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_publicacion` datetime NOT NULL,
  `contenido` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_885DBAFAA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `titulo`, `likes`, `foto`, `fecha_publicacion`, `contenido`, `user_id`) VALUES
(4, 'Breve historia de Linux', '', 'historialinux-5ead6cc7d0d2f.png', '2020-05-02 14:51:13', 'En 1991, con 23 años, un estudiante de informática de la Universidad de Helsinki (Finlandia) llamado Linus Torvalds se propone como entretenimiento hacer un sistema operativo que se comporte exactamente igual al sistema operativo UNIX, pero que funcione sobre cualquier ordenador compatible PC. Posteriormente Linus tuvo que poner como requisito mínimo que el ordenador tuviese un procesador i386, ya que los ordenadores con CPU más antiguas no facilitaban el desarrollo de un sistema operativo compatible con UNIX.\r\n\r\nUn factor decisivo para el desarrollo y aceptación de Linux va a ser la gran expansión de Internet. Internet facilitó el trabajo en equipo de todos los que quisieron colaborar con Linus y fueron aportando todos los programas que vienen con UNIX. Linus no pretendía crear todos los programas que vienen con UNIX. Su objetivo fundamental era crear un núcleo del S.O. que fuera totalmente compatible con el de UNIX y que permitiera ejecutar todos los programas gratuitos compatibles UNIX desarrollados por la Free Software Foundation (fundada por Richard Stallman) que vienen con licencia GNUF.1. Esta licencia impide poner precio a los programas donados a la comunidad científica por sus propietarios (programas libres) y obliga a que si se escriben nuevos programas utilizando código de programas libres, estos sean también libres.\r\n\r\nPara crear su núcleo, Linus se inspiró en Minix, una versión reducida de UNIX desarrollada por el profesor Andy Tanenbaum para que sus alumnos pudieran conocer y experimentar con el código de un sistema operativo real.\r\n\r\nLinus escribió un pequeño núcleo que tenía lo necesario para leer y escribir ficheros en un disquette. Estamos a finales de Agosto de 1991 y Linus ya tiene la versión $0.01$. Como no era muy agradable de usar y no hacia gran cosa, no lo anunció. Le puso como nombre Linux, que es un acrónimo en inglés de ``Linus UNIX\'\' (el UNIX de Linus).\r\n\r\nEl 5 de octubre de 1991, Linus anuncia la primera versión ``oficial\'\' de Linux, la $0.02$. Esta versión ya podía ejecutar dos herramientas básicas de GNU: el intérprete de órdenes (bash) y el compilador de C (gcc). Linux no tenía aún nada sobre soporte a usuarios, distribuciones, documentación ni nada parecido (aún hoy la comunidad de Linux trata estos asuntos de forma secundaria; lo primero sigue siendo el desarrollo del kernel).\r\n\r\nLinus siguió trabajando hasta que Linux llegó a ser un producto realmente útil. Dió los fuentes de Linux para que cualquiera pudiese leerlo, modificarlo y mejorarlo. Seguía siendo la versión $0.02$ pero ya ejecutaba muchas aplicaciones GNU (bash, gcc, gnu-make, gnu-sed, compress, etc.)\r\n\r\nTras la versión $0.03$, Linus salto a la versión $0.10$, al tiempo que más gente empezaba a participar en su desarrollo. Después de numerosas revisiones, alcanzó la versión $0.95$, reflejando la esperanza de tener lista muy pronto una versión estable (generalmente, la versión $1.0$ de los programas es la primera teóricamente completa y sin errores). Esto sucedía en marzo de 1992. Año y medio después, en diciembre del 93, nacía Linux 1.0.\r\n\r\nHoy Linux es ya un clónico de UNIX completo y hay muchas personas escribiendo programas para Linux. Incluso las empresas están empezando a escribir programas para Linux ya que el nivel de aceptación que ha tenido es enorme. ¿Quién iba a imaginar que este ``pequeño\'\' clónico de UNIX creado por un estudiante iba a convertirse en un estándar mundial para los ordenadores personales?.', 1),
(5, '22 trucos para ser un Ubuntu ninja', '1,', 'ninjalinux-5ead6f768b0de.png', '2020-05-02 15:02:46', 'Todos los sistemas operativos tienen dos tipos de usuarios, los que se conforman con con un uso básico del sistema y todos aquellos que quieren sacarle el máximo partido posible. La diferencia entre ambos es un poco más grande en Ubuntu y las distribuciones GNU/Linux en general, ya que tenemos por una parte a los usuarios que vienen de Windows y por otras los que llevan años apostándolo todo por el software libre.\r\n\r\nPor eso, el hacer una lista de trucos como ya la hicimos con Windows es complejo, ya que hasta lo más básico puede ser desconocido para algunos, mientras que los más avanzados puede ser el pan de cada día de otros. En cualquier caso hoy vamos a intentar descubriros unos cuantos trucos de Ubuntu que van desde los más sencillos y esenciales para los usuarios básicos hasta otros pequeños hacks algo más avanzados que pueden hacerle la vida un poco más fácil a los expertos.', 2),
(6, 'Curiosidades y diversión en tu terminal', '', 'matrixlinux-5ead7068a2d2d.png', '2020-05-02 15:06:48', 'Este post lo pensé porque un día hablando con mis amigos Geeks, comentábamos de diferentes curiosidades que había en la terminal de GNU/Linux y lo divertidas que eran. Entonces me puse a buscar más curiosidades y aqui les traigo las que a mi parecer son las mejores.\r\nCOMANDOS CURIOSO.\r\n\r\n# apt-get moo\r\n\r\nUna Vaca? WTF.\r\n\r\n# sudo apt-get install cowsay Instala la vaca\r\n\r\n# cowsay loquequieras Haz que la vaca hable.\r\n\r\n#sudo apt-get install oneko\r\n\r\n#oneko\r\n\r\nUn gato persigue mi ratón. LOL\r\n\r\n# oneko -sakura Una chica ‘Manga’.\r\n\r\n#oneko -tomoyo Otra.\r\n\r\n# oneko -dog Para el que prefiere un perro.\r\n\r\n# pom Que tan llena está la luna?\r\n\r\n#morse palabra Traduce la palabra a morse\r\n\r\n# rain Algo extraño\r\n\r\n# worms Algo mas extraño.\r\nJUEGOS DE CONSOLA\r\n\r\n# sudo apt-get install bsdgames\r\n\r\n# tetris-bsd No hace falta explicación.\r\n\r\n# snake El juego de la serpiente.\r\n\r\n# hangman El ahorcado.\r\n\r\n# atc Quieres ser controlador aéreo?\r\n\r\n# robots Te persiguen.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesion`
--

DROP TABLE IF EXISTS `profesion`;
CREATE TABLE IF NOT EXISTS `profesion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7CBDAD0AA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baneado` tinyint(1) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `baneado`, `nombre`) VALUES
(1, 'uno@uno.com', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$ZHhjd2k0MFZGRmZZYUd5aA$PoTluVlulwpM6CvDfaUU+f6QjNeOI8ClclqBLNyicjI', 0, 'Diego Torres'),
(2, 'dos@dos.com', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$ZHhjd2k0MFZGRmZZYUd5aA$PoTluVlulwpM6CvDfaUU+f6QjNeOI8ClclqBLNyicjI', 0, 'Luis Martínez'),
(3, 'tres@tres.com', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$RHBRV01VOEdTMW01WEVmVg$x4hTdGnXN2EDisIviWGs/khm26BbBN1u3Wv+TcdIRTM', 0, 'Ana Saavedra');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `FK_F54B3FC04B89032C` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `FK_F54B3FC0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_885DBAFAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `profesion`
--
ALTER TABLE `profesion`
  ADD CONSTRAINT `FK_7CBDAD0AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
