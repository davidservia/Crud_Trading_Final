

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `trading`
--
CREATE DATABASE IF NOT EXISTS `trading` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `trading`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posiciones`
--

CREATE TABLE IF NOT EXISTS `posiciones` (
  `posicionID` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `entrada` int(11) DEFAULT NULL,
  `liquidacion` int(11) DEFAULT NULL,
  `mercados` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`posicionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


CREATE TABLE `usuario` (
  `codUsuario` int(11) NOT NULL,
  `nomUsuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codUsuario`, `nomUsuario`, `contrasena`) VALUES
(1, 'Admin', 'contraseña'),
(2, 'usuario2', 'contraseña'),
(3, 'NuevoUsuario', 'contraseña'),
(4, 'NuevoUsuario2', 'NuevoUsuario2');



--
-- Volcado de datos para la tabla `posiciones`
--

INSERT INTO `posiciones` (`posicionID`, `nombre`, `entrada`, `liquidacion`, `mercados`) VALUES
(1,'paypal',97,150,'nasdaq'),
(2,'aurora',4,25,'nasdaq'),
(3,'ethereum',70,4000,'cryptomonedas'),
(4,'gazprom',4,9,'Moex'),
(5,'softbank',1,5,'Jpx');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;