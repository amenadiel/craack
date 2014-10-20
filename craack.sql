-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Servidor: mysql.instagis.com
-- Tiempo de generaci√≥n: 20-10-2014 a las 20:00:55
-- Versi√≥n del servidor: 5.5.38-0ubuntu0.14.04.1
-- Versi√≥n de PHP: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `craack`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE IF NOT EXISTS `clase` (
`id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `id_establecimiento` int(11) DEFAULT NULL,
  `nombre` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'nombre de la clase',
  `lugar` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_comuna` int(6) DEFAULT NULL,
  `location` point DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3046 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`id`, `fecha`, `id_profesor`, `id_especialidad`, `id_establecimiento`, `nombre`, `lugar`, `id_comuna`, `location`) VALUES
(255, '2014-10-24 10:30:00', 2, 11, 11, 'Clase avanzada de handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(256, '2014-10-30 12:00:00', 3, 12, 12, 'Introducci√≥n al bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(257, '2014-10-10 20:00:00', 4, 13, 13, 'Lecciones pr√°cticas de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(258, '2014-10-25 14:00:00', 5, 14, 14, 'Clase avanzada de b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(424, '2014-10-12 16:00:00', 2, 11, 11, 'Introducci√≥n al handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(425, '2014-10-28 18:00:00', 3, 12, 12, 'Lecciones pr√°cticas de bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(426, '2014-11-10 20:00:00', 4, 13, 13, 'Clase avanzada de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(427, '2014-10-29 10:30:00', 5, 14, 14, 'Lecciones pr√°cticas de b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(593, '2014-10-24 10:30:00', 7, 16, 16, 'Lecciones pr√°cticas de ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(594, '2014-10-12 16:00:00', 8, 17, 17, 'Clase avanzada de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(595, '2014-10-14 16:00:00', 9, 18, 18, 'Lecciones pr√°cticas de cr√≥quet', 'Carlos Pe√±a Otaegui 12501, Las Condes', 13114, '\0\0\0\0\0\0\0H%Èß>†Q¿#Àÿú¥@¿'),
(596, '2014-11-05 10:30:00', 10, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(597, '2014-10-23 16:00:00', 11, 20, 20, 'Clase avanzada de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(598, '2014-10-12 14:00:00', 12, 21, 21, 'Introducci√≥n al f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(599, '2014-10-15 20:00:00', 13, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(600, '2014-10-13 16:00:00', 14, 23, 23, 'Clase avanzada de golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(601, '2014-10-11 10:30:00', 15, 24, 24, 'Lecciones pr√°cticas de gimnasia', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(602, '2014-10-22 09:00:00', 16, 25, 25, 'Introducci√≥n al gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(603, '2014-10-12 16:00:00', 17, 26, 26, 'Clase avanzada de halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(604, '2014-11-03 14:00:00', 18, 27, 27, 'Introducci√≥n al h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(605, '2014-11-01 16:00:00', 19, 28, 28, 'Lecciones pr√°cticas de h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(606, '2014-10-17 20:00:00', 20, 29, 29, 'Clase avanzada de h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(607, '2014-10-14 20:00:00', 21, 30, 30, 'Lecciones pr√°cticas de h√≥ckey sobre hielo', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(608, '2014-10-12 16:00:00', 22, 31, 31, 'Introducci√≥n al h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(609, '2014-10-31 20:00:00', 23, 32, 32, 'Clase avanzada de judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(610, '2014-10-18 18:00:00', 24, 33, 33, 'Introducci√≥n al karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(611, '2014-11-04 10:30:00', 25, 34, 34, 'Lecciones pr√°cticas de kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(612, '2014-10-28 22:00:00', 26, 35, 35, 'Clase avanzada de kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(613, '2014-10-27 18:00:00', 27, 36, 36, 'Lecciones pr√°cticas de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(614, '2014-10-25 09:00:00', 28, 37, 37, 'Introducci√≥n al kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(615, '2014-10-13 16:00:00', 29, 38, 38, 'Clase avanzada de lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(616, '2014-11-05 22:00:00', 30, 39, 39, 'Introducci√≥n al lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(617, '2014-10-15 20:00:00', 31, 40, 40, 'Lecciones pr√°cticas de motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(618, '2014-10-17 22:00:00', 32, 41, 41, 'Clase avanzada de moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(619, '2014-10-27 10:30:00', 33, 42, 42, 'Lecciones pr√°cticas de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(620, '2014-10-25 14:00:00', 34, 43, 43, 'Introducci√≥n al nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(621, '2014-10-15 14:00:00', 35, 44, 44, 'Clase avanzada de paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(622, '2014-10-31 18:00:00', 36, 45, 45, 'Introducci√≥n al parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(623, '2014-10-27 16:00:00', 37, 46, 46, 'Lecciones pr√°cticas de parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(624, '2014-10-19 16:00:00', 38, 47, 47, 'Clase avanzada de patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(625, '2014-11-06 20:00:00', 39, 48, 48, 'Lecciones pr√°cticas de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(626, '2014-11-07 18:00:00', 40, 49, 49, 'Introducci√≥n al pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(627, '2014-11-10 20:00:00', 41, 50, 50, 'Clase avanzada de polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(628, '2014-11-08 10:30:00', 42, 51, 51, 'Introducci√≥n al remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(629, '2014-10-25 09:00:00', 43, 52, 52, 'Lecciones pr√°cticas de rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(630, '2014-10-27 10:30:00', 44, 53, 53, 'Clase avanzada de sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(631, '2014-10-22 12:00:00', 45, 54, 54, 'Lecciones pr√°cticas de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(632, '2014-10-15 10:30:00', 46, 55, 55, 'Introducci√≥n al skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(633, '2014-10-10 09:00:00', 47, 56, 56, 'Clase avanzada de snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(634, '2014-10-17 12:00:00', 48, 57, 57, 'Introducci√≥n al speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(635, '2014-11-08 20:00:00', 49, 58, 58, 'Lecciones pr√°cticas de squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(636, '2014-10-11 12:00:00', 50, 59, 59, 'Clase avanzada de sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(637, '2014-10-18 14:00:00', 51, 60, 60, 'Lecciones pr√°cticas de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(638, '2014-10-15 12:00:00', 52, 61, 61, 'Introducci√≥n al surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(639, '2014-10-26 22:00:00', 53, 62, 62, 'Clase avanzada de tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(640, '2014-10-14 20:00:00', 54, 63, 63, 'Introducci√≥n al tenis de mesa', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(641, '2014-11-08 16:00:00', 55, 64, 64, 'Lecciones pr√°cticas de tiro', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(757, '2014-11-10 10:30:00', 57, 66, 66, 'Lecciones pr√°cticas de triatl√≥n', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(758, '2014-10-12 14:00:00', 58, 67, 67, 'Introducci√≥n al taekwondo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(759, '2014-10-21 14:00:00', 59, 68, 68, 'Clase avanzada de vela', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(760, '2014-10-27 14:00:00', 60, 69, 69, 'Introducci√≥n al voleibol', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(761, '2014-11-08 18:00:00', 61, 70, 70, 'Lecciones pr√°cticas de volei playa', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(762, '2014-11-11 12:00:00', 62, 71, 71, 'Clase avanzada de waterpolo', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(763, '2014-11-01 18:00:00', 63, 72, 72, 'Lecciones pr√°cticas de windsurf', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(764, '2014-10-23 10:30:00', 64, 73, 73, 'Introducci√≥n al wushu', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(765, '2014-10-27 12:00:00', 65, 74, 74, 'Clase avanzada de win tsun', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(766, '2014-11-09 20:00:00', 66, 75, 75, 'Introducci√≥n al gimnasia', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(767, '2014-11-10 22:00:00', 67, 76, 76, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(768, '2014-10-24 22:00:00', 68, 77, 77, 'Clase avanzada de esgrima', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(769, '2014-10-18 20:00:00', 69, 78, 78, 'Lecciones pr√°cticas de esqu√≠', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(770, '2014-10-12 10:30:00', 70, 79, 79, 'Introducci√≥n al equitaci√≥n', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(771, '2014-11-01 10:30:00', 71, 80, 80, 'Clase avanzada de Acorde√≥n ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(772, '2014-10-21 10:30:00', 72, 81, 81, 'Introducci√≥n al Ajedrez ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(773, '2014-10-10 09:00:00', 73, 82, 82, 'Lecciones pr√°cticas de Alfombras ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(774, '2014-10-23 12:00:00', 74, 83, 83, 'Clase avanzada de Algebra', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(775, '2014-11-09 16:00:00', 75, 84, 84, 'Lecciones pr√°cticas de Anatom√≠a ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(776, '2014-10-29 22:00:00', 76, 85, 85, 'Introducci√≥n al ArcGIS ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(777, '2014-10-20 10:30:00', 77, 86, 86, 'Clase avanzada de Armonica ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(778, '2014-11-08 18:00:00', 78, 87, 87, 'Introducci√≥n al Arte ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(779, '2014-11-02 10:30:00', 79, 88, 88, 'Lecciones pr√°cticas de Astronom√≠a ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(780, '2014-11-03 18:00:00', 80, 89, 89, 'Clase avanzada de Autoayuda ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(781, '2014-10-29 12:00:00', 81, 90, 90, 'Lecciones pr√°cticas de Autodefensa ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(782, '2014-10-24 20:00:00', 82, 91, 91, 'Introducci√≥n al Bachillerato Internacional ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(783, '2014-11-04 14:00:00', 83, 92, 92, 'Clase avanzada de Baile ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(784, '2014-10-24 20:00:00', 84, 93, 93, 'Introducci√≥n al Bajo ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(785, '2014-11-12 20:00:00', 85, 94, 94, 'Lecciones pr√°cticas de Ballet ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(786, '2014-10-29 09:00:00', 86, 95, 95, 'Clase avanzada de Bateria ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(787, '2014-10-14 14:00:00', 87, 96, 96, 'Lecciones pr√°cticas de Biolog√≠a ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(788, '2014-10-18 22:00:00', 88, 97, 97, 'Introducci√≥n al Bioqu√≠mica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(789, '2014-10-13 10:30:00', 89, 98, 98, 'Clase avanzada de Bowling ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(790, '2014-10-10 09:00:00', 90, 99, 99, 'Introducci√≥n al Calculo ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(791, '2014-10-28 12:00:00', 91, 100, 100, 'Lecciones pr√°cticas de Caligrafia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(792, '2014-11-07 12:00:00', 92, 101, 101, 'Clase avanzada de Canto ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(793, '2014-11-06 10:30:00', 93, 102, 102, 'Lecciones pr√°cticas de Canto ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(794, '2014-11-09 10:30:00', 94, 103, 103, 'Introducci√≥n al Capoeira ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(795, '2014-10-20 14:00:00', 95, 104, 104, 'Clase avanzada de Ceramica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(796, '2014-11-02 09:00:00', 96, 105, 105, 'Introducci√≥n al Chello ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0\\:Ê<c†Q¿ä?ä:sØ@¿'),
(797, '2014-10-25 18:00:00', 97, 106, 106, 'Lecciones pr√°cticas de Ciencias ', 'los trapenses 3515', 13115, '\0\0\0\0\0\0\0JÒÒ	Ÿ¢Q¿Òˆ ‰´@¿'),
(798, '2014-11-01 22:00:00', 98, 107, 107, 'Clase avanzada de Ciencias Sociales ', 'pdte kennedy 6630', 13132, '\0\0\0\0\0\0\06Êuƒ!§Q¿ÑÛ©cï≤@¿'),
(799, '2014-10-13 14:00:00', 99, 108, 108, 'Lecciones pr√°cticas de Comedia ', 'isidora goyenechea 3000', 13114, '\0\0\0\0\0\0\0ÿ∂(≥A¶Q¿ª’s“˚¥@¿'),
(800, '2014-10-25 18:00:00', 100, 109, 109, 'Introducci√≥n al Community Manager ', 'isabel la catolica 3740', 13114, '\0\0\0\0\0\0\0p''·_•Q¿&©L1∑@¿'),
(801, '2014-10-11 12:00:00', 101, 110, 110, 'Clase avanzada de Composicion Musical ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0B%Æc\\†Q¿˝NìoØ@¿'),
(802, '2014-10-30 14:00:00', 102, 111, 111, 'Introducci√≥n al Comprensi√≥n de Lectura ', 'paseo colina sur 14500', 13301, '\0\0\0\0\0\0\0∏v¢$$®Q¿“‰b¨£@¿'),
(803, '2014-11-06 14:00:00', 103, 112, 112, 'Lecciones pr√°cticas de Computacion ', 'apoquindo 4501', 13114, '\0\0\0\0\0\0\0∆ÌÒB•Q¿Æ’ˆ¥@¿'),
(804, '2014-11-10 12:00:00', 104, 113, 113, 'Clase avanzada de Comunicacion y Lingu√≠stica ', '11 de septiembre 2192', 13123, '\0\0\0\0\0\0\0ÕZ\nH˚¶Q¿ÑÄ|	∂@¿'),
(805, '2014-11-08 09:00:00', 105, 114, 114, 'Lecciones pr√°cticas de Construccion de Sitios Web ', 'echenique 8490', 13113, '\0\0\0\0\0\0\0é\\7•º¢Q¿EÉ<Ö∏@¿'),
(806, '2014-10-15 16:00:00', 106, 115, 115, 'Introducci√≥n al Coser ', 'camino el alba 11969', 13114, '\0\0\0\0\0\0\0µç?QŸ†Q¿∆Nx	N≥@¿'),
(871, '2014-11-03 22:00:00', 108, 1, 1, 'Lecciones pr√°cticas de crossfit', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(872, '2014-11-07 16:00:00', 109, 2, 2, 'Introducci√≥n al ala delta', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(873, '2014-10-18 12:00:00', 110, 3, 3, 'Clase avanzada de aer√≥bica', 'Jorge VI 110', 13114, '\0\0\0\0\0\0\0yMr}∏§Q¿Av#¥¥@¿'),
(874, '2014-10-24 14:00:00', 111, 4, 4, 'Introducci√≥n al aikido', 'Av Cristobal Colon 7000', 13114, '\0\0\0\0\0\0\0\0\0@¶£Q¿–ˇˇø^µ@¿'),
(875, '2014-11-09 20:00:00', 112, 5, 5, 'Lecciones pr√°cticas de ajedrez', 'Robinson Crusoe 1150', 13114, '\0\0\0\0\0\0\0Ùˇˇì£Q¿≈Ÿ9ìµµ@¿'),
(876, '2014-10-22 20:00:00', 113, 6, 6, 'Clase avanzada de monta√±ismo', 'Rosario Norte 555', 13114, '\0\0\0\0\0\0\0^_Í≤ñ§Q¿™äG}Ì≥@¿'),
(877, '2014-10-30 10:30:00', 114, 7, 7, 'Lecciones pr√°cticas de artes marciales', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(878, '2014-10-23 20:00:00', 115, 8, 8, 'Introducci√≥n al atletismo', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(879, '2014-10-30 14:00:00', 116, 9, 9, 'Clase avanzada de baloncesto', 'Av. Apoquindo 6445', 13114, '\0\0\0\0\0\0\0Ë‹˙§Q¿P[é\0H¥@¿'),
(880, '2014-10-27 12:00:00', 117, 10, 10, 'Introducci√≥n al b√°sketball', 'Escandinavia 177', 13114, '\0\0\0\0\0\0\04°ºÔ>§Q¿,09Â¥@¿'),
(881, '2014-10-31 10:30:00', 118, 11, 11, 'Lecciones pr√°cticas de handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(882, '2014-10-19 18:00:00', 119, 12, 12, 'Clase avanzada de bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(883, '2014-10-18 18:00:00', 120, 13, 13, 'Lecciones pr√°cticas de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(884, '2014-10-19 18:00:00', 121, 14, 14, 'Introducci√≥n al b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(885, '2014-11-01 14:00:00', 122, 15, 15, 'Clase avanzada de b√©isbol', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(886, '2014-10-18 18:00:00', 123, 16, 16, 'Introducci√≥n al ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(887, '2014-10-15 10:30:00', 124, 17, 17, 'Lecciones pr√°cticas de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(934, '2014-10-15 10:30:00', 1, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(935, '2014-11-02 18:00:00', 2, 20, 20, 'Lecciones pr√°cticas de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(936, '2014-10-17 12:00:00', 3, 21, 21, 'Clase avanzada de f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(937, '2014-10-13 20:00:00', 4, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(938, '2014-10-27 22:00:00', 5, 23, 23, 'Introducci√≥n al golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(979, '2014-10-22 10:30:00', 7, 25, 25, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(980, '2014-11-07 18:00:00', 8, 26, 26, 'Introducci√≥n al halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(981, '2014-11-09 09:00:00', 9, 27, 27, 'Clase avanzada de h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(982, '2014-10-19 20:00:00', 10, 28, 28, 'Introducci√≥n al h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(983, '2014-11-10 12:00:00', 11, 29, 29, 'Lecciones pr√°cticas de h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(984, '2014-10-28 20:00:00', 12, 30, 30, 'Clase avanzada de h√≥ckey sobre hielo', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(985, '2014-10-22 10:30:00', 13, 31, 31, 'Lecciones pr√°cticas de h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(986, '2014-10-28 20:00:00', 14, 32, 32, 'Introducci√≥n al judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(987, '2014-11-02 18:00:00', 15, 33, 33, 'Clase avanzada de karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(988, '2014-10-11 10:30:00', 16, 34, 34, 'Introducci√≥n al kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(989, '2014-11-08 20:00:00', 17, 35, 35, 'Lecciones pr√°cticas de kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(990, '2014-10-21 12:00:00', 18, 36, 36, 'Clase avanzada de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(991, '2014-11-07 14:00:00', 19, 37, 37, 'Lecciones pr√°cticas de kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(992, '2014-10-12 18:00:00', 20, 38, 38, 'Introducci√≥n al lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(993, '2014-10-29 14:00:00', 21, 39, 39, 'Clase avanzada de lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(994, '2014-11-12 14:00:00', 22, 40, 40, 'Introducci√≥n al motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(995, '2014-11-05 20:00:00', 23, 41, 41, 'Lecciones pr√°cticas de moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(996, '2014-10-12 12:00:00', 24, 42, 42, 'Clase avanzada de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(997, '2014-10-18 20:00:00', 25, 43, 43, 'Lecciones pr√°cticas de nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(998, '2014-10-20 10:30:00', 26, 44, 44, 'Introducci√≥n al paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(999, '2014-11-02 18:00:00', 27, 45, 45, 'Clase avanzada de parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1000, '2014-10-12 22:00:00', 28, 46, 46, 'Introducci√≥n al parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(1001, '2014-10-14 09:00:00', 29, 47, 47, 'Lecciones pr√°cticas de patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1002, '2014-10-30 10:30:00', 30, 48, 48, 'Clase avanzada de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1003, '2014-10-22 16:00:00', 31, 49, 49, 'Lecciones pr√°cticas de pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1004, '2014-10-15 22:00:00', 32, 50, 50, 'Introducci√≥n al polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1005, '2014-10-13 09:00:00', 33, 51, 51, 'Clase avanzada de remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1006, '2014-10-16 16:00:00', 34, 52, 52, 'Introducci√≥n al rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1007, '2014-11-04 22:00:00', 35, 53, 53, 'Lecciones pr√°cticas de sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1008, '2014-11-09 18:00:00', 36, 54, 54, 'Clase avanzada de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1009, '2014-10-13 12:00:00', 37, 55, 55, 'Lecciones pr√°cticas de skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1010, '2014-10-31 09:00:00', 38, 56, 56, 'Introducci√≥n al snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1011, '2014-10-26 16:00:00', 39, 57, 57, 'Clase avanzada de speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1012, '2014-10-22 12:00:00', 40, 58, 58, 'Introducci√≥n al squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1013, '2014-10-19 10:30:00', 41, 59, 59, 'Lecciones pr√°cticas de sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1014, '2014-10-12 12:00:00', 42, 60, 60, 'Clase avanzada de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1015, '2014-10-30 12:00:00', 43, 61, 61, 'Lecciones pr√°cticas de surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1016, '2014-10-28 18:00:00', 44, 62, 62, 'Introducci√≥n al tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1017, '2014-10-15 16:00:00', 1, 13, 13, 'Clase avanzada de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(1018, '2014-11-02 10:30:00', 2, 14, 14, 'Introducci√≥n al b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(1019, '2014-10-10 18:00:00', 3, 15, 15, 'Lecciones pr√°cticas de b√©isbol', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1020, '2014-10-27 10:30:00', 4, 16, 16, 'Clase avanzada de ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1021, '2014-10-23 10:30:00', 5, 17, 17, 'Lecciones pr√°cticas de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(1204, '2014-10-13 14:00:00', 7, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(1205, '2014-11-04 12:00:00', 8, 20, 20, 'Lecciones pr√°cticas de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1206, '2014-11-06 20:00:00', 9, 21, 21, 'Clase avanzada de f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1207, '2014-10-24 20:00:00', 10, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(1208, '2014-11-10 18:00:00', 11, 23, 23, 'Introducci√≥n al golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(1209, '2014-10-31 18:00:00', 12, 24, 24, 'Clase avanzada de gimnasia', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1210, '2014-11-02 14:00:00', 13, 25, 25, 'Introducci√≥n al gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1211, '2014-11-09 22:00:00', 14, 26, 26, 'Lecciones pr√°cticas de halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(1212, '2014-10-21 22:00:00', 15, 27, 27, 'Clase avanzada de h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(1213, '2014-10-30 10:30:00', 16, 28, 28, 'Lecciones pr√°cticas de h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(1214, '2014-11-10 14:00:00', 17, 29, 29, 'Introducci√≥n al h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(1215, '2014-11-04 14:00:00', 18, 112, 30, 'Clase avanzada de Computacion ', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(1216, '2014-11-08 09:00:00', 19, 31, 31, 'Introducci√≥n al h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1217, '2014-11-01 20:00:00', 20, 32, 32, 'Lecciones pr√°cticas de judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(1218, '2014-10-29 14:00:00', 21, 33, 33, 'Clase avanzada de karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(1219, '2014-11-09 12:00:00', 22, 34, 34, 'Lecciones pr√°cticas de kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(1220, '2014-11-01 10:30:00', 23, 35, 35, 'Introducci√≥n al kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1221, '2014-11-02 09:00:00', 24, 36, 36, 'Clase avanzada de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1222, '2014-11-03 20:00:00', 25, 37, 37, 'Introducci√≥n al kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1223, '2014-10-27 22:00:00', 26, 38, 38, 'Lecciones pr√°cticas de lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1224, '2014-11-01 18:00:00', 27, 39, 39, 'Clase avanzada de lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(1225, '2014-11-11 10:30:00', 28, 40, 40, 'Lecciones pr√°cticas de motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(1226, '2014-11-07 09:00:00', 29, 41, 41, 'Introducci√≥n al moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(1227, '2014-10-30 22:00:00', 30, 42, 42, 'Clase avanzada de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1228, '2014-11-09 14:00:00', 31, 43, 43, 'Introducci√≥n al nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1229, '2014-10-15 12:00:00', 32, 44, 44, 'Lecciones pr√°cticas de paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1230, '2014-10-20 12:00:00', 33, 45, 45, 'Clase avanzada de parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1231, '2014-11-02 10:30:00', 34, 46, 46, 'Lecciones pr√°cticas de parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(1232, '2014-10-25 10:30:00', 35, 47, 47, 'Introducci√≥n al patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1233, '2014-10-28 10:30:00', 36, 48, 48, 'Clase avanzada de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1234, '2014-10-15 09:00:00', 37, 49, 49, 'Introducci√≥n al pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1235, '2014-11-08 12:00:00', 38, 50, 50, 'Lecciones pr√°cticas de polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1236, '2014-10-11 14:00:00', 39, 51, 51, 'Clase avanzada de remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1237, '2014-11-06 14:00:00', 40, 52, 52, 'Lecciones pr√°cticas de rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1238, '2014-10-22 10:30:00', 41, 53, 53, 'Introducci√≥n al sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1239, '2014-11-12 22:00:00', 42, 54, 54, 'Clase avanzada de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1240, '2014-10-24 10:30:00', 43, 55, 55, 'Introducci√≥n al skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1241, '2014-11-08 09:00:00', 44, 56, 56, 'Lecciones pr√°cticas de snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1242, '2014-11-06 10:30:00', 45, 57, 57, 'Clase avanzada de speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1243, '2014-10-15 14:00:00', 46, 58, 58, 'Lecciones pr√°cticas de squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1244, '2014-11-11 16:00:00', 47, 59, 59, 'Introducci√≥n al sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1245, '2014-10-24 14:00:00', 48, 60, 60, 'Clase avanzada de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1246, '2014-11-06 20:00:00', 49, 61, 61, 'Introducci√≥n al surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1247, '2014-10-17 10:30:00', 50, 62, 62, 'Lecciones pr√°cticas de tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1248, '2014-11-09 12:00:00', 51, 63, 63, 'Clase avanzada de tenis de mesa', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1249, '2014-10-16 10:30:00', 52, 64, 64, 'Lecciones pr√°cticas de tiro', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1250, '2014-10-15 20:00:00', 53, 65, 65, 'Introducci√≥n al tiro con arco', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1251, '2014-10-30 10:30:00', 54, 66, 66, 'Clase avanzada de triatl√≥n', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1252, '2014-11-03 16:00:00', 55, 67, 67, 'Introducci√≥n al taekwondo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1384, '2014-11-04 18:00:00', 57, 69, 69, 'Introducci√≥n al voleibol', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1385, '2014-10-25 12:00:00', 58, 70, 70, 'Lecciones pr√°cticas de volei playa', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1386, '2014-10-18 16:00:00', 59, 71, 71, 'Clase avanzada de waterpolo', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1387, '2014-11-09 20:00:00', 60, 72, 72, 'Lecciones pr√°cticas de windsurf', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1388, '2014-10-14 16:00:00', 61, 73, 73, 'Introducci√≥n al wushu', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1389, '2014-10-16 14:00:00', 62, 74, 74, 'Clase avanzada de win tsun', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1390, '2014-10-11 20:00:00', 63, 75, 75, 'Introducci√≥n al gimnasia', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1391, '2014-11-10 14:00:00', 64, 76, 76, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1392, '2014-10-28 18:00:00', 65, 77, 77, 'Clase avanzada de esgrima', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1393, '2014-10-21 18:00:00', 66, 78, 78, 'Lecciones pr√°cticas de esqu√≠', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1394, '2014-11-02 14:00:00', 67, 79, 79, 'Introducci√≥n al equitaci√≥n', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1395, '2014-10-14 10:30:00', 68, 162, 80, 'Clase avanzada de Natacion ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1396, '2014-10-16 14:00:00', 69, 81, 81, 'Introducci√≥n al Ajedrez ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1397, '2014-11-03 18:00:00', 70, 82, 82, 'Lecciones pr√°cticas de Alfombras ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1398, '2014-10-22 20:00:00', 71, 83, 83, 'Clase avanzada de Algebra', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1399, '2014-10-21 20:00:00', 72, 166, 84, 'Lecciones pr√°cticas de pilates ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1400, '2014-10-14 14:00:00', 73, 167, 85, 'Introducci√≥n al Pintura ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1401, '2014-10-28 12:00:00', 74, 168, 86, 'Clase avanzada de Pitch para emprendedores ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1402, '2014-10-27 10:30:00', 75, 169, 87, 'Introducci√≥n al Poesia ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1403, '2014-10-12 16:00:00', 76, 170, 88, 'Lecciones pr√°cticas de Pole Dance ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1404, '2014-10-20 20:00:00', 77, 171, 89, 'Clase avanzada de Powerpoint ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1405, '2014-11-06 09:00:00', 78, 172, 90, 'Lecciones pr√°cticas de primeros auxilios ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1406, '2014-10-28 12:00:00', 79, 173, 91, 'Introducci√≥n al Programacion ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1407, '2014-11-06 10:30:00', 80, 174, 92, 'Clase avanzada de PSU Ciencias ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1408, '2014-11-11 14:00:00', 81, 175, 93, 'Introducci√≥n al PSU Historia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1409, '2014-10-15 20:00:00', 82, 176, 94, 'Lecciones pr√°cticas de PSU Leguaje ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1410, '2014-10-17 10:30:00', 83, 177, 95, 'Clase avanzada de PSU Matematicas ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1411, '2014-10-10 14:00:00', 84, 178, 96, 'Lecciones pr√°cticas de Quimica ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1412, '2014-10-17 18:00:00', 85, 179, 97, 'Introducci√≥n al Revelado Fotografico ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1413, '2014-10-31 12:00:00', 86, 180, 98, 'Clase avanzada de Salsa ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1414, '2014-10-19 12:00:00', 87, 181, 99, 'Introducci√≥n al Saxo ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1415, '2014-11-02 09:00:00', 88, 182, 100, 'Lecciones pr√°cticas de Sicologia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1416, '2014-10-31 14:00:00', 89, 183, 101, 'Clase avanzada de sobrevivencia ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1417, '2014-10-19 22:00:00', 90, 184, 102, 'Lecciones pr√°cticas de Sociologia ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1418, '2014-11-08 22:00:00', 91, 185, 103, 'Introducci√≥n al Tai Chi ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1419, '2014-10-18 18:00:00', 92, 186, 104, 'Clase avanzada de tallado ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1420, '2014-10-24 10:30:00', 93, 187, 105, 'Introducci√≥n al Tambor ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0\\:Ê<c†Q¿ä?ä:sØ@¿'),
(1421, '2014-10-10 18:00:00', 94, 188, 106, 'Lecciones pr√°cticas de Tango ', 'los trapenses 3515', 13115, '\0\0\0\0\0\0\0JÒÒ	Ÿ¢Q¿Òˆ ‰´@¿'),
(1422, '2014-10-29 18:00:00', 95, 189, 107, 'Clase avanzada de Teatro ', 'pdte kennedy 6630', 13132, '\0\0\0\0\0\0\06Êuƒ!§Q¿ÑÛ©cï≤@¿'),
(1423, '2014-10-14 18:00:00', 96, 190, 108, 'Lecciones pr√°cticas de Tecnicas Manuales ', 'isidora goyenechea 3000', 13114, '\0\0\0\0\0\0\0ÿ∂(≥A¶Q¿ª’s“˚¥@¿'),
(1424, '2014-10-20 20:00:00', 97, 191, 109, 'Introducci√≥n al Tejer ', 'isabel la catolica 3740', 13114, '\0\0\0\0\0\0\0p''·_•Q¿&©L1∑@¿'),
(1425, '2014-11-07 12:00:00', 98, 192, 110, 'Clase avanzada de TOEFL', 'las condes 13451', 13114, '\0\0\0\0\0\0\0B%Æc\\†Q¿˝NìoØ@¿'),
(1426, '2014-11-11 10:30:00', 99, 193, 111, 'Introducci√≥n al Trabajo en greda ', 'paseo colina sur 14500', 13301, '\0\0\0\0\0\0\0∏v¢$$®Q¿“‰b¨£@¿'),
(1427, '2014-10-28 12:00:00', 100, 194, 112, 'Lecciones pr√°cticas de trabajo en madera ', 'apoquindo 4501', 13114, '\0\0\0\0\0\0\0∆ÌÒB•Q¿Æ’ˆ¥@¿'),
(1428, '2014-10-14 18:00:00', 101, 195, 113, 'Clase avanzada de Trabajo en Metales ', '11 de septiembre 2192', 13123, '\0\0\0\0\0\0\0ÕZ\nH˚¶Q¿ÑÄ|	∂@¿'),
(1429, '2014-10-27 10:30:00', 102, 196, 114, 'Lecciones pr√°cticas de Trigonometria ', 'echenique 8490', 13113, '\0\0\0\0\0\0\0é\\7•º¢Q¿EÉ<Ö∏@¿'),
(1430, '2014-11-04 18:00:00', 103, 197, 115, 'Introducci√≥n al Trompeta ', 'camino el alba 11969', 13114, '\0\0\0\0\0\0\0µç?QŸ†Q¿∆Nx	N≥@¿'),
(1431, '2014-10-14 14:00:00', 104, 83, 1, 'Clase avanzada de Algebra', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(1432, '2014-10-25 14:00:00', 105, 84, 2, 'Introducci√≥n al Anatom√≠a ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(1433, '2014-10-28 14:00:00', 106, 85, 3, 'Lecciones pr√°cticas de ArcGIS ', 'Jorge VI 110', 13114, '\0\0\0\0\0\0\0yMr}∏§Q¿Av#¥¥@¿'),
(1434, '2014-10-16 20:00:00', 107, 86, 4, 'Clase avanzada de Armonica ', 'Av Cristobal Colon 7000', 13114, '\0\0\0\0\0\0\0\0\0@¶£Q¿–ˇˇø^µ@¿'),
(1435, '2014-10-11 22:00:00', 108, 87, 5, 'Lecciones pr√°cticas de Arte ', 'Robinson Crusoe 1150', 13114, '\0\0\0\0\0\0\0Ùˇˇì£Q¿≈Ÿ9ìµµ@¿'),
(1436, '2014-10-31 16:00:00', 109, 88, 6, 'Introducci√≥n al Astronom√≠a ', 'Rosario Norte 555', 13114, '\0\0\0\0\0\0\0^_Í≤ñ§Q¿™äG}Ì≥@¿'),
(1437, '2014-10-24 22:00:00', 110, 89, 7, 'Clase avanzada de Autoayuda ', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(1438, '2014-10-24 14:00:00', 111, 90, 8, 'Introducci√≥n al Autodefensa ', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(1439, '2014-11-03 18:00:00', 112, 91, 9, 'Lecciones pr√°cticas de Bachillerato Internacional ', 'Av. Apoquindo 6445', 13114, '\0\0\0\0\0\0\0Ë‹˙§Q¿P[é\0H¥@¿'),
(1440, '2014-10-29 09:00:00', 113, 92, 10, 'Clase avanzada de Baile ', 'Escandinavia 177', 13114, '\0\0\0\0\0\0\04°ºÔ>§Q¿,09Â¥@¿'),
(1441, '2014-10-17 18:00:00', 114, 93, 11, 'Lecciones pr√°cticas de Bajo ', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(1442, '2014-10-13 18:00:00', 115, 94, 12, 'Introducci√≥n al Ballet ', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1443, '2014-10-21 16:00:00', 116, 95, 13, 'Clase avanzada de Bateria ', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(1444, '2014-10-31 14:00:00', 117, 96, 14, 'Introducci√≥n al Biolog√≠a ', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(1445, '2014-10-24 16:00:00', 118, 97, 15, 'Lecciones pr√°cticas de Bioqu√≠mica ', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1446, '2014-10-12 10:30:00', 119, 98, 16, 'Clase avanzada de Bowling ', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1447, '2014-10-29 16:00:00', 120, 99, 17, 'Lecciones pr√°cticas de Calculo ', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(1448, '2014-11-01 18:00:00', 121, 100, 18, 'Introducci√≥n al Caligrafia ', 'Carlos Pe√±a Otaegui 12501, Las Condes', 13114, '\0\0\0\0\0\0\0H%Èß>†Q¿#Àÿú¥@¿'),
(1449, '2014-10-15 14:00:00', 122, 101, 19, 'Clase avanzada de Canto ', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(1450, '2014-10-30 14:00:00', 123, 102, 20, 'Introducci√≥n al Canto ', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1451, '2014-10-17 20:00:00', 124, 103, 21, 'Lecciones pr√°cticas de Capoeira ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1452, '2014-11-05 09:00:00', 125, 104, 22, 'Clase avanzada de Ceramica ', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(1453, '2014-10-27 10:30:00', 126, 105, 23, 'Lecciones pr√°cticas de Chello ', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(1454, '2014-11-04 18:00:00', 127, 106, 24, 'Introducci√≥n al Ciencias ', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1455, '2014-10-20 18:00:00', 1, 107, 25, 'Clase avanzada de Ciencias Sociales ', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1456, '2014-11-09 14:00:00', 2, 108, 26, 'Introducci√≥n al Comedia ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(1457, '2014-10-19 18:00:00', 3, 109, 27, 'Lecciones pr√°cticas de Community Manager ', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(1458, '2014-10-30 10:30:00', 4, 110, 28, 'Clase avanzada de Composicion Musical ', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(1459, '2014-10-23 18:00:00', 5, 111, 29, 'Lecciones pr√°cticas de Comprensi√≥n de Lectura ', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(1460, '2014-11-04 22:00:00', 7, 113, 31, 'Introducci√≥n al Comunicacion y Lingu√≠stica ', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1461, '2014-10-19 20:00:00', 8, 114, 32, 'Clase avanzada de Construccion de Sitios Web ', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(1462, '2014-11-11 20:00:00', 9, 115, 33, 'Introducci√≥n al Coser ', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(1463, '2014-10-11 16:00:00', 10, 116, 34, 'Lecciones pr√°cticas de Cosmetologia ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(1464, '2014-10-30 20:00:00', 11, 117, 35, 'Clase avanzada de CPR ', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1465, '2014-10-27 10:30:00', 12, 118, 36, 'Lecciones pr√°cticas de Cueca ', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1466, '2014-10-27 12:00:00', 13, 119, 37, 'Introducci√≥n al Dibujo ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1467, '2014-10-24 10:30:00', 14, 120, 38, 'Clase avanzada de Dise√±o de Interiores ', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1468, '2014-10-18 12:00:00', 15, 121, 39, 'Introducci√≥n al Diseno de Vestuario ', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(1469, '2014-10-21 22:00:00', 16, 122, 40, 'Lecciones pr√°cticas de Diseno Grafico ', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(1470, '2014-11-10 10:30:00', 17, 123, 41, 'Clase avanzada de Diseno Industrial ', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(1471, '2014-10-25 20:00:00', 18, 124, 42, 'Lecciones pr√°cticas de Economia ', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1472, '2014-11-09 09:00:00', 19, 125, 43, 'Introducci√≥n al Edicion de Videos ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1473, '2014-11-06 20:00:00', 20, 126, 44, 'Clase avanzada de Escalada ', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1474, '2014-11-08 10:30:00', 21, 127, 45, 'Introducci√≥n al Escultura ', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1475, '2014-11-01 10:30:00', 22, 128, 46, 'Lecciones pr√°cticas de Estadisticas ', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(1476, '2014-10-24 09:00:00', 23, 129, 47, 'Clase avanzada de Excel ', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1477, '2014-11-11 10:30:00', 24, 130, 48, 'Lecciones pr√°cticas de Filosof√≠a ', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1478, '2014-10-23 20:00:00', 25, 131, 49, 'Introducci√≥n al Finanzas Personales ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1479, '2014-10-15 12:00:00', 26, 132, 50, 'Clase avanzada de Fisica ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1480, '2014-11-01 14:00:00', 27, 133, 51, 'Introducci√≥n al Flauta ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1481, '2014-10-29 20:00:00', 28, 134, 52, 'Lecciones pr√°cticas de Floreria ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1482, '2014-11-11 10:30:00', 29, 135, 53, 'Clase avanzada de Flores de Bach ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1483, '2014-10-31 09:00:00', 30, 136, 54, 'Lecciones pr√°cticas de Fotografia ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1484, '2014-10-23 10:30:00', 31, 137, 55, 'Introducci√≥n al Geografia ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1485, '2014-11-07 18:00:00', 32, 138, 56, 'Clase avanzada de Geometria ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1486, '2014-11-04 10:30:00', 33, 139, 57, 'Introducci√≥n al GMAT', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1487, '2014-10-15 14:00:00', 34, 140, 58, 'Lecciones pr√°cticas de Grabados y Litografia ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1488, '2014-10-23 12:00:00', 35, 141, 59, 'Clase avanzada de Gram√°tica ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1489, '2014-10-31 10:30:00', 36, 142, 60, 'Lecciones pr√°cticas de Guitarra ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1490, '2014-11-02 12:00:00', 37, 143, 61, 'Introducci√≥n al Historia ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1491, '2014-10-25 20:00:00', 38, 144, 62, 'Clase avanzada de Historia de la Musica ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1492, '2014-10-11 22:00:00', 39, 145, 63, 'Introducci√≥n al Illustrator ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1493, '2014-10-12 09:00:00', 40, 146, 64, 'Lecciones pr√°cticas de Ingenier√≠a Electrica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1494, '2014-10-16 09:00:00', 41, 147, 65, 'Clase avanzada de Ingenier√≠a Industrial ', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1495, '2014-10-30 14:00:00', 42, 148, 66, 'Lecciones pr√°cticas de Ingenier√≠a Mecanica ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1496, '2014-11-06 10:30:00', 43, 149, 67, 'Introducci√≥n al InstaGIS ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1497, '2014-10-31 20:00:00', 44, 150, 68, 'Clase avanzada de Introducci√≥n a c√°lculo ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1498, '2014-11-05 18:00:00', 45, 151, 69, 'Introducci√≥n al Jardineria ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1499, '2014-11-11 16:00:00', 46, 152, 70, 'Lecciones pr√°cticas de Joyeria y Olfebrer√≠a ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1500, '2014-10-15 14:00:00', 47, 153, 71, 'Clase avanzada de Keynote', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1501, '2014-10-29 16:00:00', 48, 154, 72, 'Lecciones pr√°cticas de Maquillaje ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1502, '2014-10-26 20:00:00', 49, 155, 73, 'Introducci√≥n al Marketing Digital ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1503, '2014-10-11 20:00:00', 50, 156, 74, 'Clase avanzada de Masaje ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1504, '2014-11-04 12:00:00', 51, 157, 75, 'Introducci√≥n al Matamatica Basica ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1505, '2014-10-13 18:00:00', 52, 158, 76, 'Lecciones pr√°cticas de Matem√°ticas ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1506, '2014-10-13 16:00:00', 53, 159, 77, 'Clase avanzada de Medio Ambiente ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1507, '2014-10-29 12:00:00', 54, 160, 78, 'Lecciones pr√°cticas de Moda ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1508, '2014-11-10 10:30:00', 55, 161, 79, 'Introducci√≥n al Modelaje ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1509, '2014-11-01 14:00:00', 57, 163, 81, 'Clase avanzada de Optimizacion de Sitios Web ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1510, '2014-10-26 20:00:00', 58, 164, 82, 'Introducci√≥n al Photoshop ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1511, '2014-10-28 10:30:00', 59, 165, 83, 'Lecciones pr√°cticas de Piano ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1512, '2014-11-11 18:00:00', 103, 197, 115, 'Introducci√≥n al Trompeta ', 'camino el alba 11969', 13114, '\0\0\0\0\0\0\0µç?QŸ†Q¿∆Nx	N≥@¿'),
(1513, '2014-11-03 10:30:00', 102, 196, 114, 'Lecciones pr√°cticas de Trigonometria ', 'echenique 8490', 13113, '\0\0\0\0\0\0\0é\\7•º¢Q¿EÉ<Ö∏@¿'),
(1514, '2014-10-21 18:00:00', 101, 195, 113, 'Clase avanzada de Trabajo en Metales ', '11 de septiembre 2192', 13123, '\0\0\0\0\0\0\0ÕZ\nH˚¶Q¿ÑÄ|	∂@¿'),
(1515, '2014-11-04 12:00:00', 100, 194, 112, 'Lecciones pr√°cticas de trabajo en madera ', 'apoquindo 4501', 13114, '\0\0\0\0\0\0\0∆ÌÒB•Q¿Æ’ˆ¥@¿'),
(1516, '2014-11-18 10:30:00', 99, 193, 111, 'Introducci√≥n al Trabajo en greda ', 'paseo colina sur 14500', 13301, '\0\0\0\0\0\0\0∏v¢$$®Q¿“‰b¨£@¿'),
(1517, '2014-11-14 12:00:00', 98, 192, 110, 'Clase avanzada de TOEFL', 'las condes 13451', 13114, '\0\0\0\0\0\0\0B%Æc\\†Q¿˝NìoØ@¿'),
(1518, '2014-10-27 20:00:00', 97, 191, 109, 'Introducci√≥n al Tejer ', 'isabel la catolica 3740', 13114, '\0\0\0\0\0\0\0p''·_•Q¿&©L1∑@¿'),
(1519, '2014-10-21 18:00:00', 96, 190, 108, 'Lecciones pr√°cticas de Tecnicas Manuales ', 'isidora goyenechea 3000', 13114, '\0\0\0\0\0\0\0ÿ∂(≥A¶Q¿ª’s“˚¥@¿');
INSERT INTO `clase` (`id`, `fecha`, `id_profesor`, `id_especialidad`, `id_establecimiento`, `nombre`, `lugar`, `id_comuna`, `location`) VALUES
(1520, '2014-11-05 18:00:00', 95, 189, 107, 'Clase avanzada de Teatro ', 'pdte kennedy 6630', 13132, '\0\0\0\0\0\0\06Êuƒ!§Q¿ÑÛ©cï≤@¿'),
(1521, '2014-10-17 18:00:00', 94, 188, 106, 'Lecciones pr√°cticas de Tango ', 'los trapenses 3515', 13115, '\0\0\0\0\0\0\0JÒÒ	Ÿ¢Q¿Òˆ ‰´@¿'),
(1522, '2014-10-31 10:30:00', 93, 187, 105, 'Introducci√≥n al Tambor ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0\\:Ê<c†Q¿ä?ä:sØ@¿'),
(1523, '2014-10-25 18:00:00', 92, 186, 104, 'Clase avanzada de tallado ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1524, '2014-11-15 22:00:00', 91, 185, 103, 'Introducci√≥n al Tai Chi ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1525, '2014-10-26 22:00:00', 90, 184, 102, 'Lecciones pr√°cticas de Sociologia ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1526, '2014-11-07 14:00:00', 89, 183, 101, 'Clase avanzada de sobrevivencia ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1527, '2014-11-09 09:00:00', 88, 182, 100, 'Lecciones pr√°cticas de Sicologia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1528, '2014-10-26 12:00:00', 87, 181, 99, 'Introducci√≥n al Saxo ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1529, '2014-11-07 12:00:00', 86, 180, 98, 'Clase avanzada de Salsa ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1530, '2014-10-24 18:00:00', 85, 179, 97, 'Introducci√≥n al Revelado Fotografico ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1531, '2014-10-17 14:00:00', 84, 178, 96, 'Lecciones pr√°cticas de Quimica ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1532, '2014-10-24 10:30:00', 83, 177, 95, 'Clase avanzada de PSU Matematicas ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1533, '2014-10-22 20:00:00', 82, 176, 94, 'Lecciones pr√°cticas de PSU Leguaje ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1534, '2014-11-18 14:00:00', 81, 175, 93, 'Introducci√≥n al PSU Historia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1535, '2014-11-13 10:30:00', 80, 174, 92, 'Clase avanzada de PSU Ciencias ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1536, '2014-11-04 12:00:00', 79, 173, 91, 'Introducci√≥n al Programacion ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1537, '2014-11-13 09:00:00', 78, 172, 90, 'Lecciones pr√°cticas de primeros auxilios ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1538, '2014-10-27 20:00:00', 77, 171, 89, 'Clase avanzada de Powerpoint ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1539, '2014-10-19 16:00:00', 76, 170, 88, 'Lecciones pr√°cticas de Pole Dance ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1540, '2014-11-03 10:30:00', 75, 169, 87, 'Introducci√≥n al Poesia ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1541, '2014-11-04 12:00:00', 74, 168, 86, 'Clase avanzada de Pitch para emprendedores ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1542, '2014-10-21 14:00:00', 73, 167, 85, 'Introducci√≥n al Pintura ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1543, '2014-10-28 20:00:00', 72, 166, 84, 'Lecciones pr√°cticas de pilates ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1544, '2014-11-04 10:30:00', 59, 165, 83, 'Lecciones pr√°cticas de Piano ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1545, '2014-11-02 20:00:00', 58, 164, 82, 'Introducci√≥n al Photoshop ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1546, '2014-11-08 14:00:00', 57, 163, 81, 'Clase avanzada de Optimizacion de Sitios Web ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1547, '2014-10-21 10:30:00', 68, 162, 80, 'Clase avanzada de Natacion ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1548, '2014-11-17 10:30:00', 55, 161, 79, 'Introducci√≥n al Modelaje ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1549, '2014-11-05 12:00:00', 54, 160, 78, 'Lecciones pr√°cticas de Moda ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1550, '2014-10-20 16:00:00', 53, 159, 77, 'Clase avanzada de Medio Ambiente ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1551, '2014-10-20 18:00:00', 52, 158, 76, 'Lecciones pr√°cticas de Matem√°ticas ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1552, '2014-11-11 12:00:00', 51, 157, 75, 'Introducci√≥n al Matamatica Basica ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1553, '2014-10-18 20:00:00', 50, 156, 74, 'Clase avanzada de Masaje ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1554, '2014-11-02 20:00:00', 49, 155, 73, 'Introducci√≥n al Marketing Digital ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1555, '2014-11-05 16:00:00', 48, 154, 72, 'Lecciones pr√°cticas de Maquillaje ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1556, '2014-10-22 14:00:00', 47, 153, 71, 'Clase avanzada de Keynote', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1557, '2014-11-18 16:00:00', 46, 152, 70, 'Lecciones pr√°cticas de Joyeria y Olfebrer√≠a ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1558, '2014-11-12 18:00:00', 45, 151, 69, 'Introducci√≥n al Jardineria ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1559, '2014-11-07 20:00:00', 44, 150, 68, 'Clase avanzada de Introducci√≥n a c√°lculo ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1560, '2014-11-13 10:30:00', 43, 149, 67, 'Introducci√≥n al InstaGIS ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1561, '2014-11-06 14:00:00', 42, 148, 66, 'Lecciones pr√°cticas de Ingenier√≠a Mecanica ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1562, '2014-10-23 09:00:00', 41, 147, 65, 'Clase avanzada de Ingenier√≠a Industrial ', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1563, '2014-10-19 09:00:00', 40, 146, 64, 'Lecciones pr√°cticas de Ingenier√≠a Electrica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1564, '2014-10-18 22:00:00', 39, 145, 63, 'Introducci√≥n al Illustrator ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1565, '2014-11-01 20:00:00', 38, 144, 62, 'Clase avanzada de Historia de la Musica ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1566, '2014-11-09 12:00:00', 37, 143, 61, 'Introducci√≥n al Historia ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1567, '2014-11-07 10:30:00', 36, 142, 60, 'Lecciones pr√°cticas de Guitarra ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1568, '2014-10-30 12:00:00', 35, 141, 59, 'Clase avanzada de Gram√°tica ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1569, '2014-10-22 14:00:00', 34, 140, 58, 'Lecciones pr√°cticas de Grabados y Litografia ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1570, '2014-11-11 10:30:00', 33, 139, 57, 'Introducci√≥n al GMAT', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1571, '2014-11-14 18:00:00', 32, 138, 56, 'Clase avanzada de Geometria ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1572, '2014-10-30 10:30:00', 31, 137, 55, 'Introducci√≥n al Geografia ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1573, '2014-11-07 09:00:00', 30, 136, 54, 'Lecciones pr√°cticas de Fotografia ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1574, '2014-11-18 10:30:00', 29, 135, 53, 'Clase avanzada de Flores de Bach ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1575, '2014-11-05 20:00:00', 28, 134, 52, 'Lecciones pr√°cticas de Floreria ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1576, '2014-11-08 14:00:00', 27, 133, 51, 'Introducci√≥n al Flauta ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1577, '2014-10-22 12:00:00', 26, 132, 50, 'Clase avanzada de Fisica ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1578, '2014-10-30 20:00:00', 25, 131, 49, 'Introducci√≥n al Finanzas Personales ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1579, '2014-11-18 10:30:00', 24, 130, 48, 'Lecciones pr√°cticas de Filosof√≠a ', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1580, '2014-10-31 09:00:00', 23, 129, 47, 'Clase avanzada de Excel ', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1581, '2014-11-08 10:30:00', 22, 128, 46, 'Lecciones pr√°cticas de Estadisticas ', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(1582, '2014-11-15 10:30:00', 21, 127, 45, 'Introducci√≥n al Escultura ', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1583, '2014-11-13 20:00:00', 20, 126, 44, 'Clase avanzada de Escalada ', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1584, '2014-11-16 09:00:00', 19, 125, 43, 'Introducci√≥n al Edicion de Videos ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1585, '2014-11-01 20:00:00', 18, 124, 42, 'Lecciones pr√°cticas de Economia ', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1586, '2014-11-17 10:30:00', 17, 123, 41, 'Clase avanzada de Diseno Industrial ', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(1587, '2014-10-28 22:00:00', 16, 122, 40, 'Lecciones pr√°cticas de Diseno Grafico ', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(1588, '2014-10-25 12:00:00', 15, 121, 39, 'Introducci√≥n al Diseno de Vestuario ', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(1589, '2014-10-31 10:30:00', 14, 120, 38, 'Clase avanzada de Dise√±o de Interiores ', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1590, '2014-11-03 12:00:00', 13, 119, 37, 'Introducci√≥n al Dibujo ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1591, '2014-11-03 10:30:00', 12, 118, 36, 'Lecciones pr√°cticas de Cueca ', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1592, '2014-11-06 20:00:00', 11, 117, 35, 'Clase avanzada de CPR ', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1593, '2014-10-18 16:00:00', 10, 116, 34, 'Lecciones pr√°cticas de Cosmetologia ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(1594, '2014-10-22 16:00:00', 106, 115, 115, 'Introducci√≥n al Coser ', 'camino el alba 11969', 13114, '\0\0\0\0\0\0\0µç?QŸ†Q¿∆Nx	N≥@¿'),
(1595, '2014-11-18 20:00:00', 9, 115, 33, 'Introducci√≥n al Coser ', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(1596, '2014-11-15 09:00:00', 105, 114, 114, 'Lecciones pr√°cticas de Construccion de Sitios Web ', 'echenique 8490', 13113, '\0\0\0\0\0\0\0é\\7•º¢Q¿EÉ<Ö∏@¿'),
(1597, '2014-10-26 20:00:00', 8, 114, 32, 'Clase avanzada de Construccion de Sitios Web ', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(1598, '2014-11-17 12:00:00', 104, 113, 113, 'Clase avanzada de Comunicacion y Lingu√≠stica ', '11 de septiembre 2192', 13123, '\0\0\0\0\0\0\0ÕZ\nH˚¶Q¿ÑÄ|	∂@¿'),
(1599, '2014-11-11 22:00:00', 7, 113, 31, 'Introducci√≥n al Comunicacion y Lingu√≠stica ', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1600, '2014-11-13 14:00:00', 103, 112, 112, 'Lecciones pr√°cticas de Computacion ', 'apoquindo 4501', 13114, '\0\0\0\0\0\0\0∆ÌÒB•Q¿Æ’ˆ¥@¿'),
(1601, '2014-11-11 14:00:00', 18, 112, 30, 'Clase avanzada de Computacion ', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(1602, '2014-11-06 14:00:00', 102, 111, 111, 'Introducci√≥n al Comprensi√≥n de Lectura ', 'paseo colina sur 14500', 13301, '\0\0\0\0\0\0\0∏v¢$$®Q¿“‰b¨£@¿'),
(1603, '2014-10-30 18:00:00', 5, 111, 29, 'Lecciones pr√°cticas de Comprensi√≥n de Lectura ', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(1604, '2014-10-18 12:00:00', 101, 110, 110, 'Clase avanzada de Composicion Musical ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0B%Æc\\†Q¿˝NìoØ@¿'),
(1605, '2014-11-06 10:30:00', 4, 110, 28, 'Clase avanzada de Composicion Musical ', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(1606, '2014-11-01 18:00:00', 100, 109, 109, 'Introducci√≥n al Community Manager ', 'isabel la catolica 3740', 13114, '\0\0\0\0\0\0\0p''·_•Q¿&©L1∑@¿'),
(1607, '2014-10-26 18:00:00', 3, 109, 27, 'Lecciones pr√°cticas de Community Manager ', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(1608, '2014-10-20 14:00:00', 99, 108, 108, 'Lecciones pr√°cticas de Comedia ', 'isidora goyenechea 3000', 13114, '\0\0\0\0\0\0\0ÿ∂(≥A¶Q¿ª’s“˚¥@¿'),
(1609, '2014-11-16 14:00:00', 2, 108, 26, 'Introducci√≥n al Comedia ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(1610, '2014-11-08 22:00:00', 98, 107, 107, 'Clase avanzada de Ciencias Sociales ', 'pdte kennedy 6630', 13132, '\0\0\0\0\0\0\06Êuƒ!§Q¿ÑÛ©cï≤@¿'),
(1611, '2014-10-27 18:00:00', 1, 107, 25, 'Clase avanzada de Ciencias Sociales ', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1612, '2014-11-01 18:00:00', 97, 106, 106, 'Lecciones pr√°cticas de Ciencias ', 'los trapenses 3515', 13115, '\0\0\0\0\0\0\0JÒÒ	Ÿ¢Q¿Òˆ ‰´@¿'),
(1613, '2014-11-11 18:00:00', 127, 106, 24, 'Introducci√≥n al Ciencias ', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1614, '2014-11-09 09:00:00', 96, 105, 105, 'Introducci√≥n al Chello ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0\\:Ê<c†Q¿ä?ä:sØ@¿'),
(1615, '2014-11-03 10:30:00', 126, 105, 23, 'Lecciones pr√°cticas de Chello ', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(1616, '2014-10-27 14:00:00', 95, 104, 104, 'Clase avanzada de Ceramica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1617, '2014-11-12 09:00:00', 125, 104, 22, 'Clase avanzada de Ceramica ', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(1618, '2014-11-16 10:30:00', 94, 103, 103, 'Introducci√≥n al Capoeira ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1619, '2014-10-24 20:00:00', 124, 103, 21, 'Lecciones pr√°cticas de Capoeira ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1620, '2014-11-13 10:30:00', 93, 102, 102, 'Lecciones pr√°cticas de Canto ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1621, '2014-11-06 14:00:00', 123, 102, 20, 'Introducci√≥n al Canto ', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1622, '2014-11-14 12:00:00', 92, 101, 101, 'Clase avanzada de Canto ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1623, '2014-10-22 14:00:00', 122, 101, 19, 'Clase avanzada de Canto ', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(1624, '2014-11-04 12:00:00', 91, 100, 100, 'Lecciones pr√°cticas de Caligrafia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1625, '2014-11-08 18:00:00', 121, 100, 18, 'Introducci√≥n al Caligrafia ', 'Carlos Pe√±a Otaegui 12501, Las Condes', 13114, '\0\0\0\0\0\0\0H%Èß>†Q¿#Àÿú¥@¿'),
(1626, '2014-10-17 09:00:00', 90, 99, 99, 'Introducci√≥n al Calculo ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1627, '2014-11-05 16:00:00', 120, 99, 17, 'Lecciones pr√°cticas de Calculo ', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(1628, '2014-10-20 10:30:00', 89, 98, 98, 'Clase avanzada de Bowling ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1629, '2014-10-19 10:30:00', 119, 98, 16, 'Clase avanzada de Bowling ', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1630, '2014-10-25 22:00:00', 88, 97, 97, 'Introducci√≥n al Bioqu√≠mica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1631, '2014-10-31 16:00:00', 118, 97, 15, 'Lecciones pr√°cticas de Bioqu√≠mica ', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1632, '2014-10-21 14:00:00', 87, 96, 96, 'Lecciones pr√°cticas de Biolog√≠a ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1633, '2014-11-07 14:00:00', 117, 96, 14, 'Introducci√≥n al Biolog√≠a ', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(1634, '2014-11-05 09:00:00', 86, 95, 95, 'Clase avanzada de Bateria ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1635, '2014-10-28 16:00:00', 116, 95, 13, 'Clase avanzada de Bateria ', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(1636, '2014-11-19 20:00:00', 85, 94, 94, 'Lecciones pr√°cticas de Ballet ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1637, '2014-10-20 18:00:00', 115, 94, 12, 'Introducci√≥n al Ballet ', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1638, '2014-10-31 20:00:00', 84, 93, 93, 'Introducci√≥n al Bajo ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1639, '2014-10-24 18:00:00', 114, 93, 11, 'Lecciones pr√°cticas de Bajo ', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(1640, '2014-11-11 14:00:00', 83, 92, 92, 'Clase avanzada de Baile ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1641, '2014-11-05 09:00:00', 113, 92, 10, 'Clase avanzada de Baile ', 'Escandinavia 177', 13114, '\0\0\0\0\0\0\04°ºÔ>§Q¿,09Â¥@¿'),
(1642, '2014-10-31 20:00:00', 82, 91, 91, 'Introducci√≥n al Bachillerato Internacional ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1643, '2014-11-10 18:00:00', 112, 91, 9, 'Lecciones pr√°cticas de Bachillerato Internacional ', 'Av. Apoquindo 6445', 13114, '\0\0\0\0\0\0\0Ë‹˙§Q¿P[é\0H¥@¿'),
(1644, '2014-11-05 12:00:00', 81, 90, 90, 'Lecciones pr√°cticas de Autodefensa ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1645, '2014-10-31 14:00:00', 111, 90, 8, 'Introducci√≥n al Autodefensa ', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(1646, '2014-11-10 18:00:00', 80, 89, 89, 'Clase avanzada de Autoayuda ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1647, '2014-10-31 22:00:00', 110, 89, 7, 'Clase avanzada de Autoayuda ', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(1648, '2014-11-09 10:30:00', 79, 88, 88, 'Lecciones pr√°cticas de Astronom√≠a ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1649, '2014-11-07 16:00:00', 109, 88, 6, 'Introducci√≥n al Astronom√≠a ', 'Rosario Norte 555', 13114, '\0\0\0\0\0\0\0^_Í≤ñ§Q¿™äG}Ì≥@¿'),
(1650, '2014-11-15 18:00:00', 78, 87, 87, 'Introducci√≥n al Arte ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1651, '2014-10-18 22:00:00', 108, 87, 5, 'Lecciones pr√°cticas de Arte ', 'Robinson Crusoe 1150', 13114, '\0\0\0\0\0\0\0Ùˇˇì£Q¿≈Ÿ9ìµµ@¿'),
(1652, '2014-10-27 10:30:00', 77, 86, 86, 'Clase avanzada de Armonica ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1653, '2014-10-23 20:00:00', 107, 86, 4, 'Clase avanzada de Armonica ', 'Av Cristobal Colon 7000', 13114, '\0\0\0\0\0\0\0\0\0@¶£Q¿–ˇˇø^µ@¿'),
(1654, '2014-11-05 22:00:00', 76, 85, 85, 'Introducci√≥n al ArcGIS ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1655, '2014-11-04 14:00:00', 106, 85, 3, 'Lecciones pr√°cticas de ArcGIS ', 'Jorge VI 110', 13114, '\0\0\0\0\0\0\0yMr}∏§Q¿Av#¥¥@¿'),
(1656, '2014-11-16 16:00:00', 75, 84, 84, 'Lecciones pr√°cticas de Anatom√≠a ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1657, '2014-11-01 14:00:00', 105, 84, 2, 'Introducci√≥n al Anatom√≠a ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(1658, '2014-10-30 12:00:00', 74, 83, 83, 'Clase avanzada de Algebra', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1659, '2014-10-29 20:00:00', 71, 83, 83, 'Clase avanzada de Algebra', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1660, '2014-10-21 14:00:00', 104, 83, 1, 'Clase avanzada de Algebra', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(1661, '2014-10-17 09:00:00', 73, 82, 82, 'Lecciones pr√°cticas de Alfombras ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1662, '2014-11-10 18:00:00', 70, 82, 82, 'Lecciones pr√°cticas de Alfombras ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1663, '2014-10-28 10:30:00', 72, 81, 81, 'Introducci√≥n al Ajedrez ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1664, '2014-10-23 14:00:00', 69, 81, 81, 'Introducci√≥n al Ajedrez ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1665, '2014-11-08 10:30:00', 71, 80, 80, 'Clase avanzada de Acorde√≥n ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1666, '2014-10-19 10:30:00', 70, 79, 79, 'Introducci√≥n al equitaci√≥n', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1667, '2014-11-09 14:00:00', 67, 79, 79, 'Introducci√≥n al equitaci√≥n', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1668, '2014-10-25 20:00:00', 69, 78, 78, 'Lecciones pr√°cticas de esqu√≠', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1669, '2014-10-28 18:00:00', 66, 78, 78, 'Lecciones pr√°cticas de esqu√≠', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1670, '2014-10-31 22:00:00', 68, 77, 77, 'Clase avanzada de esgrima', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1671, '2014-11-04 18:00:00', 65, 77, 77, 'Clase avanzada de esgrima', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1672, '2014-11-17 14:00:00', 64, 76, 76, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1673, '2014-11-17 22:00:00', 67, 76, 76, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1674, '2014-10-18 20:00:00', 63, 75, 75, 'Introducci√≥n al gimnasia', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1675, '2014-11-16 20:00:00', 66, 75, 75, 'Introducci√≥n al gimnasia', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1676, '2014-10-23 14:00:00', 62, 74, 74, 'Clase avanzada de win tsun', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1677, '2014-11-03 12:00:00', 65, 74, 74, 'Clase avanzada de win tsun', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1678, '2014-10-21 16:00:00', 61, 73, 73, 'Introducci√≥n al wushu', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1679, '2014-10-30 10:30:00', 64, 73, 73, 'Introducci√≥n al wushu', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1680, '2014-11-16 20:00:00', 60, 72, 72, 'Lecciones pr√°cticas de windsurf', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1681, '2014-11-08 18:00:00', 63, 72, 72, 'Lecciones pr√°cticas de windsurf', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1682, '2014-10-25 16:00:00', 59, 71, 71, 'Clase avanzada de waterpolo', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1683, '2014-11-18 12:00:00', 62, 71, 71, 'Clase avanzada de waterpolo', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1684, '2014-11-01 12:00:00', 58, 70, 70, 'Lecciones pr√°cticas de volei playa', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1685, '2014-11-15 18:00:00', 61, 70, 70, 'Lecciones pr√°cticas de volei playa', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1686, '2014-11-11 18:00:00', 57, 69, 69, 'Introducci√≥n al voleibol', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1687, '2014-11-03 14:00:00', 60, 69, 69, 'Introducci√≥n al voleibol', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1688, '2014-10-28 14:00:00', 59, 68, 68, 'Clase avanzada de vela', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1689, '2014-11-10 16:00:00', 55, 67, 67, 'Introducci√≥n al taekwondo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1690, '2014-10-19 14:00:00', 58, 67, 67, 'Introducci√≥n al taekwondo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1691, '2014-11-06 10:30:00', 54, 66, 66, 'Clase avanzada de triatl√≥n', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1692, '2014-11-17 10:30:00', 57, 66, 66, 'Lecciones pr√°cticas de triatl√≥n', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1693, '2014-10-22 20:00:00', 53, 65, 65, 'Introducci√≥n al tiro con arco', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1694, '2014-11-15 16:00:00', 55, 64, 64, 'Lecciones pr√°cticas de tiro', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1695, '2014-10-23 10:30:00', 52, 64, 64, 'Lecciones pr√°cticas de tiro', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(1696, '2014-10-21 20:00:00', 54, 63, 63, 'Introducci√≥n al tenis de mesa', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1697, '2014-11-16 12:00:00', 51, 63, 63, 'Clase avanzada de tenis de mesa', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(1698, '2014-11-02 22:00:00', 53, 62, 62, 'Clase avanzada de tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1699, '2014-10-24 10:30:00', 50, 62, 62, 'Lecciones pr√°cticas de tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1700, '2014-11-04 18:00:00', 44, 62, 62, 'Introducci√≥n al tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(1701, '2014-10-22 12:00:00', 52, 61, 61, 'Introducci√≥n al surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1702, '2014-11-13 20:00:00', 49, 61, 61, 'Introducci√≥n al surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1703, '2014-11-06 12:00:00', 43, 61, 61, 'Lecciones pr√°cticas de surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(1704, '2014-10-25 14:00:00', 51, 60, 60, 'Lecciones pr√°cticas de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1705, '2014-10-31 14:00:00', 48, 60, 60, 'Clase avanzada de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1706, '2014-10-19 12:00:00', 42, 60, 60, 'Clase avanzada de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(1707, '2014-10-18 12:00:00', 50, 59, 59, 'Clase avanzada de sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1708, '2014-11-18 16:00:00', 47, 59, 59, 'Introducci√≥n al sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1709, '2014-10-26 10:30:00', 41, 59, 59, 'Lecciones pr√°cticas de sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(1710, '2014-11-15 20:00:00', 49, 58, 58, 'Lecciones pr√°cticas de squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1711, '2014-10-22 14:00:00', 46, 58, 58, 'Lecciones pr√°cticas de squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1712, '2014-10-29 12:00:00', 40, 58, 58, 'Introducci√≥n al squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(1713, '2014-10-24 12:00:00', 48, 57, 57, 'Introducci√≥n al speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1714, '2014-11-13 10:30:00', 45, 57, 57, 'Clase avanzada de speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1715, '2014-11-02 16:00:00', 39, 57, 57, 'Clase avanzada de speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(1716, '2014-10-17 09:00:00', 47, 56, 56, 'Clase avanzada de snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1717, '2014-11-15 09:00:00', 44, 56, 56, 'Lecciones pr√°cticas de snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1718, '2014-11-07 09:00:00', 38, 56, 56, 'Introducci√≥n al snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(1719, '2014-10-22 10:30:00', 46, 55, 55, 'Introducci√≥n al skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1720, '2014-10-31 10:30:00', 43, 55, 55, 'Introducci√≥n al skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1721, '2014-10-20 12:00:00', 37, 55, 55, 'Lecciones pr√°cticas de skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(1722, '2014-10-29 12:00:00', 45, 54, 54, 'Lecciones pr√°cticas de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1723, '2014-11-19 22:00:00', 42, 54, 54, 'Clase avanzada de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1724, '2014-11-16 18:00:00', 36, 54, 54, 'Clase avanzada de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(1725, '2014-11-03 10:30:00', 44, 53, 53, 'Clase avanzada de sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1726, '2014-10-29 10:30:00', 41, 53, 53, 'Introducci√≥n al sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1727, '2014-11-11 22:00:00', 35, 53, 53, 'Lecciones pr√°cticas de sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(1728, '2014-11-01 09:00:00', 43, 52, 52, 'Lecciones pr√°cticas de rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1729, '2014-11-13 14:00:00', 40, 52, 52, 'Lecciones pr√°cticas de rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1730, '2014-10-23 16:00:00', 34, 52, 52, 'Introducci√≥n al rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(1731, '2014-11-15 10:30:00', 42, 51, 51, 'Introducci√≥n al remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1732, '2014-10-18 14:00:00', 39, 51, 51, 'Clase avanzada de remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1733, '2014-10-20 09:00:00', 33, 51, 51, 'Clase avanzada de remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(1734, '2014-11-17 20:00:00', 41, 50, 50, 'Clase avanzada de polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1735, '2014-11-15 12:00:00', 38, 50, 50, 'Lecciones pr√°cticas de polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1736, '2014-10-22 22:00:00', 32, 50, 50, 'Introducci√≥n al polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(1737, '2014-11-14 18:00:00', 40, 49, 49, 'Introducci√≥n al pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1738, '2014-10-22 09:00:00', 37, 49, 49, 'Introducci√≥n al pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1739, '2014-10-29 16:00:00', 31, 49, 49, 'Lecciones pr√°cticas de pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(1740, '2014-11-13 20:00:00', 39, 48, 48, 'Lecciones pr√°cticas de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1741, '2014-11-04 10:30:00', 36, 48, 48, 'Clase avanzada de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1742, '2014-11-06 10:30:00', 30, 48, 48, 'Clase avanzada de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(1743, '2014-10-26 16:00:00', 38, 47, 47, 'Clase avanzada de patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1744, '2014-11-01 10:30:00', 35, 47, 47, 'Introducci√≥n al patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1745, '2014-10-21 09:00:00', 29, 47, 47, 'Lecciones pr√°cticas de patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1746, '2014-11-03 16:00:00', 37, 46, 46, 'Lecciones pr√°cticas de parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(1747, '2014-11-09 10:30:00', 34, 46, 46, 'Lecciones pr√°cticas de parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(1748, '2014-10-19 22:00:00', 28, 46, 46, 'Introducci√≥n al parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(1749, '2014-11-07 18:00:00', 36, 45, 45, 'Introducci√≥n al parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1750, '2014-10-27 12:00:00', 33, 45, 45, 'Clase avanzada de parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1751, '2014-11-09 18:00:00', 27, 45, 45, 'Clase avanzada de parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1752, '2014-10-22 14:00:00', 35, 44, 44, 'Clase avanzada de paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1753, '2014-10-22 12:00:00', 32, 44, 44, 'Lecciones pr√°cticas de paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1754, '2014-10-27 10:30:00', 26, 44, 44, 'Introducci√≥n al paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1755, '2014-11-01 14:00:00', 34, 43, 43, 'Introducci√≥n al nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1756, '2014-11-16 14:00:00', 31, 43, 43, 'Introducci√≥n al nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1757, '2014-10-25 20:00:00', 25, 43, 43, 'Lecciones pr√°cticas de nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1758, '2014-11-03 10:30:00', 33, 42, 42, 'Lecciones pr√°cticas de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1759, '2014-11-06 22:00:00', 30, 42, 42, 'Clase avanzada de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1760, '2014-10-19 12:00:00', 24, 42, 42, 'Clase avanzada de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1761, '2014-10-24 22:00:00', 32, 41, 41, 'Clase avanzada de moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(1762, '2014-11-14 09:00:00', 29, 41, 41, 'Introducci√≥n al moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(1763, '2014-11-12 20:00:00', 23, 41, 41, 'Lecciones pr√°cticas de moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(1764, '2014-10-22 20:00:00', 31, 40, 40, 'Lecciones pr√°cticas de motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(1765, '2014-11-18 10:30:00', 28, 40, 40, 'Lecciones pr√°cticas de motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(1766, '2014-11-19 14:00:00', 22, 40, 40, 'Introducci√≥n al motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(1767, '2014-11-12 22:00:00', 30, 39, 39, 'Introducci√≥n al lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(1768, '2014-11-08 18:00:00', 27, 39, 39, 'Clase avanzada de lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(1769, '2014-11-05 14:00:00', 21, 39, 39, 'Clase avanzada de lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(1770, '2014-10-20 16:00:00', 29, 38, 38, 'Clase avanzada de lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1771, '2014-11-03 22:00:00', 26, 38, 38, 'Lecciones pr√°cticas de lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1772, '2014-10-19 18:00:00', 20, 38, 38, 'Introducci√≥n al lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1773, '2014-11-01 09:00:00', 28, 37, 37, 'Introducci√≥n al kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1774, '2014-11-10 20:00:00', 25, 37, 37, 'Introducci√≥n al kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1775, '2014-11-14 14:00:00', 19, 37, 37, 'Lecciones pr√°cticas de kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1776, '2014-11-03 18:00:00', 27, 36, 36, 'Lecciones pr√°cticas de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1777, '2014-11-09 09:00:00', 24, 36, 36, 'Clase avanzada de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1778, '2014-10-28 12:00:00', 18, 36, 36, 'Clase avanzada de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1779, '2014-11-04 22:00:00', 26, 35, 35, 'Clase avanzada de kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1780, '2014-11-08 10:30:00', 23, 35, 35, 'Introducci√≥n al kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1781, '2014-11-15 20:00:00', 17, 35, 35, 'Lecciones pr√°cticas de kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(1782, '2014-11-11 10:30:00', 25, 34, 34, 'Lecciones pr√°cticas de kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(1783, '2014-11-16 12:00:00', 22, 34, 34, 'Lecciones pr√°cticas de kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(1784, '2014-10-18 10:30:00', 16, 34, 34, 'Introducci√≥n al kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(1785, '2014-10-25 18:00:00', 24, 33, 33, 'Introducci√≥n al karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(1786, '2014-11-05 14:00:00', 21, 33, 33, 'Clase avanzada de karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(1787, '2014-11-09 18:00:00', 15, 33, 33, 'Clase avanzada de karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(1788, '2014-11-07 20:00:00', 23, 32, 32, 'Clase avanzada de judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(1789, '2014-11-08 20:00:00', 20, 32, 32, 'Lecciones pr√°cticas de judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(1790, '2014-11-04 20:00:00', 14, 32, 32, 'Introducci√≥n al judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(1791, '2014-10-19 16:00:00', 22, 31, 31, 'Introducci√≥n al h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1792, '2014-11-15 09:00:00', 19, 31, 31, 'Introducci√≥n al h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1793, '2014-10-29 10:30:00', 13, 31, 31, 'Lecciones pr√°cticas de h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1794, '2014-10-21 20:00:00', 21, 30, 30, 'Lecciones pr√°cticas de h√≥ckey sobre hielo', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(1795, '2014-11-04 20:00:00', 12, 30, 30, 'Clase avanzada de h√≥ckey sobre hielo', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(1796, '2014-10-24 20:00:00', 20, 29, 29, 'Clase avanzada de h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(1797, '2014-11-17 14:00:00', 17, 29, 29, 'Introducci√≥n al h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(1798, '2014-11-17 12:00:00', 11, 29, 29, 'Lecciones pr√°cticas de h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(1799, '2014-11-08 16:00:00', 19, 28, 28, 'Lecciones pr√°cticas de h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(1800, '2014-11-06 10:30:00', 16, 28, 28, 'Lecciones pr√°cticas de h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(1801, '2014-10-26 20:00:00', 10, 28, 28, 'Introducci√≥n al h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(1802, '2014-11-10 14:00:00', 18, 27, 27, 'Introducci√≥n al h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(1803, '2014-10-28 22:00:00', 15, 27, 27, 'Clase avanzada de h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(1804, '2014-11-16 09:00:00', 9, 27, 27, 'Clase avanzada de h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(1805, '2014-10-19 16:00:00', 17, 26, 26, 'Clase avanzada de halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(1806, '2014-11-16 22:00:00', 14, 26, 26, 'Lecciones pr√°cticas de halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(1807, '2014-11-14 18:00:00', 8, 26, 26, 'Introducci√≥n al halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(1808, '2014-10-29 09:00:00', 16, 25, 25, 'Introducci√≥n al gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1809, '2014-11-09 14:00:00', 13, 25, 25, 'Introducci√≥n al gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1810, '2014-10-29 10:30:00', 7, 25, 25, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(1811, '2014-10-18 10:30:00', 15, 24, 24, 'Lecciones pr√°cticas de gimnasia', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1812, '2014-11-07 18:00:00', 12, 24, 24, 'Clase avanzada de gimnasia', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(1813, '2014-10-20 16:00:00', 14, 23, 23, 'Clase avanzada de golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(1814, '2014-11-03 22:00:00', 5, 23, 23, 'Introducci√≥n al golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(1815, '2014-11-17 18:00:00', 11, 23, 23, 'Introducci√≥n al golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(1816, '2014-10-22 20:00:00', 13, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(1817, '2014-10-20 20:00:00', 4, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(1818, '2014-10-31 20:00:00', 10, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(1819, '2014-10-19 14:00:00', 12, 21, 21, 'Introducci√≥n al f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1820, '2014-10-24 12:00:00', 3, 21, 21, 'Clase avanzada de f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1821, '2014-11-13 20:00:00', 9, 21, 21, 'Clase avanzada de f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(1822, '2014-10-30 16:00:00', 11, 20, 20, 'Clase avanzada de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1823, '2014-11-09 18:00:00', 2, 20, 20, 'Lecciones pr√°cticas de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1824, '2014-11-11 12:00:00', 8, 20, 20, 'Lecciones pr√°cticas de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(1825, '2014-11-12 10:30:00', 10, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(1826, '2014-10-22 10:30:00', 1, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(1827, '2014-10-20 14:00:00', 7, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(1828, '2014-10-21 16:00:00', 9, 18, 18, 'Lecciones pr√°cticas de cr√≥quet', 'Carlos Pe√±a Otaegui 12501, Las Condes', 13114, '\0\0\0\0\0\0\0H%Èß>†Q¿#Àÿú¥@¿'),
(1829, '2014-10-19 16:00:00', 8, 17, 17, 'Clase avanzada de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(1830, '2014-10-22 10:30:00', 124, 17, 17, 'Lecciones pr√°cticas de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(1831, '2014-10-30 10:30:00', 5, 17, 17, 'Lecciones pr√°cticas de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(1832, '2014-10-31 10:30:00', 7, 16, 16, 'Lecciones pr√°cticas de ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1833, '2014-10-25 18:00:00', 123, 16, 16, 'Introducci√≥n al ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1834, '2014-11-03 10:30:00', 4, 16, 16, 'Clase avanzada de ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(1835, '2014-11-08 14:00:00', 122, 15, 15, 'Clase avanzada de b√©isbol', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1836, '2014-10-17 18:00:00', 3, 15, 15, 'Lecciones pr√°cticas de b√©isbol', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(1837, '2014-11-01 14:00:00', 5, 14, 14, 'Clase avanzada de b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(1838, '2014-10-26 18:00:00', 121, 14, 14, 'Introducci√≥n al b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(1839, '2014-11-05 10:30:00', 5, 14, 14, 'Lecciones pr√°cticas de b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(1840, '2014-11-09 10:30:00', 2, 14, 14, 'Introducci√≥n al b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(1841, '2014-10-17 20:00:00', 4, 13, 13, 'Lecciones pr√°cticas de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(1842, '2014-10-25 18:00:00', 120, 13, 13, 'Lecciones pr√°cticas de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(1843, '2014-11-17 20:00:00', 4, 13, 13, 'Clase avanzada de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(1844, '2014-10-22 16:00:00', 1, 13, 13, 'Clase avanzada de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(1845, '2014-11-06 12:00:00', 3, 12, 12, 'Introducci√≥n al bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1846, '2014-10-26 18:00:00', 119, 12, 12, 'Clase avanzada de bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1847, '2014-11-04 18:00:00', 3, 12, 12, 'Lecciones pr√°cticas de bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(1848, '2014-11-07 10:30:00', 118, 11, 11, 'Lecciones pr√°cticas de handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(1849, '2014-10-19 16:00:00', 2, 11, 11, 'Introducci√≥n al handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(1850, '2014-10-31 10:30:00', 2, 11, 11, 'Clase avanzada de handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(1851, '2014-11-03 12:00:00', 117, 10, 10, 'Introducci√≥n al b√°sketball', 'Escandinavia 177', 13114, '\0\0\0\0\0\0\04°ºÔ>§Q¿,09Â¥@¿'),
(1852, '2014-11-06 14:00:00', 116, 9, 9, 'Clase avanzada de baloncesto', 'Av. Apoquindo 6445', 13114, '\0\0\0\0\0\0\0Ë‹˙§Q¿P[é\0H¥@¿'),
(1853, '2014-10-30 20:00:00', 115, 8, 8, 'Introducci√≥n al atletismo', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(1854, '2014-11-06 10:30:00', 114, 7, 7, 'Lecciones pr√°cticas de artes marciales', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(1855, '2014-10-29 20:00:00', 113, 6, 6, 'Clase avanzada de monta√±ismo', 'Rosario Norte 555', 13114, '\0\0\0\0\0\0\0^_Í≤ñ§Q¿™äG}Ì≥@¿'),
(1856, '2014-11-16 20:00:00', 112, 5, 5, 'Lecciones pr√°cticas de ajedrez', 'Robinson Crusoe 1150', 13114, '\0\0\0\0\0\0\0Ùˇˇì£Q¿≈Ÿ9ìµµ@¿'),
(1857, '2014-10-31 14:00:00', 111, 4, 4, 'Introducci√≥n al aikido', 'Av Cristobal Colon 7000', 13114, '\0\0\0\0\0\0\0\0\0@¶£Q¿–ˇˇø^µ@¿'),
(1858, '2014-10-25 12:00:00', 110, 3, 3, 'Clase avanzada de aer√≥bica', 'Jorge VI 110', 13114, '\0\0\0\0\0\0\0yMr}∏§Q¿Av#¥¥@¿'),
(1859, '2014-11-14 16:00:00', 109, 2, 2, 'Introducci√≥n al ala delta', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(1860, '2014-11-10 22:00:00', 108, 1, 1, 'Lecciones pr√°cticas de crossfit', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2023, '2014-12-04 18:00:00', 103, 197, 115, 'Introducci√≥n al Trompeta ', 'camino el alba 11969', 13114, '\0\0\0\0\0\0\0µç?QŸ†Q¿∆Nx	N≥@¿'),
(2024, '2014-12-11 18:00:00', 103, 197, 115, 'Introducci√≥n al Trompeta ', 'camino el alba 11969', 13114, '\0\0\0\0\0\0\0µç?QŸ†Q¿∆Nx	N≥@¿'),
(2025, '2014-11-27 10:30:00', 102, 196, 114, 'Lecciones pr√°cticas de Trigonometria ', 'echenique 8490', 13113, '\0\0\0\0\0\0\0é\\7•º¢Q¿EÉ<Ö∏@¿'),
(2026, '2014-12-03 10:30:00', 102, 196, 114, 'Lecciones pr√°cticas de Trigonometria ', 'echenique 8490', 13113, '\0\0\0\0\0\0\0é\\7•º¢Q¿EÉ<Ö∏@¿'),
(2027, '2014-11-14 18:00:00', 101, 195, 113, 'Clase avanzada de Trabajo en Metales ', '11 de septiembre 2192', 13123, '\0\0\0\0\0\0\0ÕZ\nH˚¶Q¿ÑÄ|	∂@¿'),
(2028, '2014-11-21 18:00:00', 101, 195, 113, 'Clase avanzada de Trabajo en Metales ', '11 de septiembre 2192', 13123, '\0\0\0\0\0\0\0ÕZ\nH˚¶Q¿ÑÄ|	∂@¿'),
(2029, '2014-11-28 12:00:00', 100, 194, 112, 'Lecciones pr√°cticas de trabajo en madera ', 'apoquindo 4501', 13114, '\0\0\0\0\0\0\0∆ÌÒB•Q¿Æ’ˆ¥@¿'),
(2030, '2014-12-04 12:00:00', 100, 194, 112, 'Lecciones pr√°cticas de trabajo en madera ', 'apoquindo 4501', 13114, '\0\0\0\0\0\0\0∆ÌÒB•Q¿Æ’ˆ¥@¿'),
(2031, '2014-12-11 10:30:00', 99, 193, 111, 'Introducci√≥n al Trabajo en greda ', 'paseo colina sur 14500', 13301, '\0\0\0\0\0\0\0∏v¢$$®Q¿“‰b¨£@¿'),
(2032, '2014-12-18 10:30:00', 99, 193, 111, 'Introducci√≥n al Trabajo en greda ', 'paseo colina sur 14500', 13301, '\0\0\0\0\0\0\0∏v¢$$®Q¿“‰b¨£@¿'),
(2033, '2014-12-07 12:00:00', 98, 192, 110, 'Clase avanzada de TOEFL', 'las condes 13451', 13114, '\0\0\0\0\0\0\0B%Æc\\†Q¿˝NìoØ@¿'),
(2034, '2014-12-14 12:00:00', 98, 192, 110, 'Clase avanzada de TOEFL', 'las condes 13451', 13114, '\0\0\0\0\0\0\0B%Æc\\†Q¿˝NìoØ@¿'),
(2035, '2014-11-20 20:00:00', 97, 191, 109, 'Introducci√≥n al Tejer ', 'isabel la catolica 3740', 13114, '\0\0\0\0\0\0\0p''·_•Q¿&©L1∑@¿'),
(2036, '2014-11-27 20:00:00', 97, 191, 109, 'Introducci√≥n al Tejer ', 'isabel la catolica 3740', 13114, '\0\0\0\0\0\0\0p''·_•Q¿&©L1∑@¿'),
(2037, '2014-11-14 18:00:00', 96, 190, 108, 'Lecciones pr√°cticas de Tecnicas Manuales ', 'isidora goyenechea 3000', 13114, '\0\0\0\0\0\0\0ÿ∂(≥A¶Q¿ª’s“˚¥@¿');
INSERT INTO `clase` (`id`, `fecha`, `id_profesor`, `id_especialidad`, `id_establecimiento`, `nombre`, `lugar`, `id_comuna`, `location`) VALUES
(2038, '2014-11-21 18:00:00', 96, 190, 108, 'Lecciones pr√°cticas de Tecnicas Manuales ', 'isidora goyenechea 3000', 13114, '\0\0\0\0\0\0\0ÿ∂(≥A¶Q¿ª’s“˚¥@¿'),
(2039, '2014-11-29 18:00:00', 95, 189, 107, 'Clase avanzada de Teatro ', 'pdte kennedy 6630', 13132, '\0\0\0\0\0\0\06Êuƒ!§Q¿ÑÛ©cï≤@¿'),
(2040, '2014-12-05 18:00:00', 95, 189, 107, 'Clase avanzada de Teatro ', 'pdte kennedy 6630', 13132, '\0\0\0\0\0\0\06Êuƒ!§Q¿ÑÛ©cï≤@¿'),
(2041, '2014-11-10 18:00:00', 94, 188, 106, 'Lecciones pr√°cticas de Tango ', 'los trapenses 3515', 13115, '\0\0\0\0\0\0\0JÒÒ	Ÿ¢Q¿Òˆ ‰´@¿'),
(2042, '2014-11-17 18:00:00', 94, 188, 106, 'Lecciones pr√°cticas de Tango ', 'los trapenses 3515', 13115, '\0\0\0\0\0\0\0JÒÒ	Ÿ¢Q¿Òˆ ‰´@¿'),
(2043, '2014-11-24 10:30:00', 93, 187, 105, 'Introducci√≥n al Tambor ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0\\:Ê<c†Q¿ä?ä:sØ@¿'),
(2044, '2014-11-30 10:30:00', 93, 187, 105, 'Introducci√≥n al Tambor ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0\\:Ê<c†Q¿ä?ä:sØ@¿'),
(2045, '2014-11-18 18:00:00', 92, 186, 104, 'Clase avanzada de tallado ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2046, '2014-11-25 18:00:00', 92, 186, 104, 'Clase avanzada de tallado ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2047, '2014-12-08 22:00:00', 91, 185, 103, 'Introducci√≥n al Tai Chi ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2048, '2014-12-15 22:00:00', 91, 185, 103, 'Introducci√≥n al Tai Chi ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2049, '2014-11-19 22:00:00', 90, 184, 102, 'Lecciones pr√°cticas de Sociologia ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2050, '2014-11-26 22:00:00', 90, 184, 102, 'Lecciones pr√°cticas de Sociologia ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2051, '2014-11-30 14:00:00', 89, 183, 101, 'Clase avanzada de sobrevivencia ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2052, '2014-12-07 14:00:00', 89, 183, 101, 'Clase avanzada de sobrevivencia ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2053, '2014-12-02 09:00:00', 88, 182, 100, 'Lecciones pr√°cticas de Sicologia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2054, '2014-12-09 09:00:00', 88, 182, 100, 'Lecciones pr√°cticas de Sicologia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2055, '2014-11-19 12:00:00', 87, 181, 99, 'Introducci√≥n al Saxo ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2056, '2014-11-26 12:00:00', 87, 181, 99, 'Introducci√≥n al Saxo ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2057, '2014-11-30 12:00:00', 86, 180, 98, 'Clase avanzada de Salsa ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2058, '2014-12-07 12:00:00', 86, 180, 98, 'Clase avanzada de Salsa ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2059, '2014-11-17 18:00:00', 85, 179, 97, 'Introducci√≥n al Revelado Fotografico ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2060, '2014-11-24 18:00:00', 85, 179, 97, 'Introducci√≥n al Revelado Fotografico ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2061, '2014-11-10 14:00:00', 84, 178, 96, 'Lecciones pr√°cticas de Quimica ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2062, '2014-11-17 14:00:00', 84, 178, 96, 'Lecciones pr√°cticas de Quimica ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2063, '2014-11-17 10:30:00', 83, 177, 95, 'Clase avanzada de PSU Matematicas ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2064, '2014-11-24 10:30:00', 83, 177, 95, 'Clase avanzada de PSU Matematicas ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2065, '2014-11-15 20:00:00', 82, 176, 94, 'Lecciones pr√°cticas de PSU Leguaje ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2066, '2014-11-22 20:00:00', 82, 176, 94, 'Lecciones pr√°cticas de PSU Leguaje ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2067, '2014-12-11 14:00:00', 81, 175, 93, 'Introducci√≥n al PSU Historia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2068, '2014-12-18 14:00:00', 81, 175, 93, 'Introducci√≥n al PSU Historia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2069, '2014-12-06 10:30:00', 80, 174, 92, 'Clase avanzada de PSU Ciencias ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2070, '2014-12-13 10:30:00', 80, 174, 92, 'Clase avanzada de PSU Ciencias ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2071, '2014-12-04 12:00:00', 79, 173, 91, 'Introducci√≥n al Programacion ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2072, '2014-11-28 12:00:00', 79, 173, 91, 'Introducci√≥n al Programacion ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2073, '2014-12-13 09:00:00', 78, 172, 90, 'Lecciones pr√°cticas de primeros auxilios ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2074, '2014-12-06 09:00:00', 78, 172, 90, 'Lecciones pr√°cticas de primeros auxilios ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2075, '2014-11-27 20:00:00', 77, 171, 89, 'Clase avanzada de Powerpoint ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2076, '2014-11-20 20:00:00', 77, 171, 89, 'Clase avanzada de Powerpoint ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2077, '2014-11-19 16:00:00', 76, 170, 88, 'Lecciones pr√°cticas de Pole Dance ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2078, '2014-11-12 16:00:00', 76, 170, 88, 'Lecciones pr√°cticas de Pole Dance ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2079, '2014-12-03 10:30:00', 75, 169, 87, 'Introducci√≥n al Poesia ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2080, '2014-11-27 10:30:00', 75, 169, 87, 'Introducci√≥n al Poesia ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2081, '2014-12-04 12:00:00', 74, 168, 86, 'Clase avanzada de Pitch para emprendedores ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2082, '2014-11-28 12:00:00', 74, 168, 86, 'Clase avanzada de Pitch para emprendedores ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2083, '2014-11-21 14:00:00', 73, 167, 85, 'Introducci√≥n al Pintura ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2084, '2014-11-14 14:00:00', 73, 167, 85, 'Introducci√≥n al Pintura ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2085, '2014-11-28 20:00:00', 72, 166, 84, 'Lecciones pr√°cticas de pilates ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2086, '2014-11-21 20:00:00', 72, 166, 84, 'Lecciones pr√°cticas de pilates ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2087, '2014-12-04 10:30:00', 59, 165, 83, 'Lecciones pr√°cticas de Piano ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2088, '2014-11-28 10:30:00', 59, 165, 83, 'Lecciones pr√°cticas de Piano ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2089, '2014-12-02 20:00:00', 58, 164, 82, 'Introducci√≥n al Photoshop ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2090, '2014-11-26 20:00:00', 58, 164, 82, 'Introducci√≥n al Photoshop ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2091, '2014-12-08 14:00:00', 57, 163, 81, 'Clase avanzada de Optimizacion de Sitios Web ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2092, '2014-12-01 14:00:00', 57, 163, 81, 'Clase avanzada de Optimizacion de Sitios Web ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2093, '2014-11-21 10:30:00', 68, 162, 80, 'Clase avanzada de Natacion ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2094, '2014-11-14 10:30:00', 68, 162, 80, 'Clase avanzada de Natacion ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2095, '2014-12-17 10:30:00', 55, 161, 79, 'Introducci√≥n al Modelaje ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2096, '2014-12-10 10:30:00', 55, 161, 79, 'Introducci√≥n al Modelaje ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2097, '2014-12-05 12:00:00', 54, 160, 78, 'Lecciones pr√°cticas de Moda ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2098, '2014-11-29 12:00:00', 54, 160, 78, 'Lecciones pr√°cticas de Moda ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2099, '2014-11-20 16:00:00', 53, 159, 77, 'Clase avanzada de Medio Ambiente ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2100, '2014-11-13 16:00:00', 53, 159, 77, 'Clase avanzada de Medio Ambiente ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2101, '2014-11-20 18:00:00', 52, 158, 76, 'Lecciones pr√°cticas de Matem√°ticas ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2102, '2014-11-13 18:00:00', 52, 158, 76, 'Lecciones pr√°cticas de Matem√°ticas ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2103, '2014-12-11 12:00:00', 51, 157, 75, 'Introducci√≥n al Matamatica Basica ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2104, '2014-12-04 12:00:00', 51, 157, 75, 'Introducci√≥n al Matamatica Basica ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2105, '2014-11-18 20:00:00', 50, 156, 74, 'Clase avanzada de Masaje ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2106, '2014-11-11 20:00:00', 50, 156, 74, 'Clase avanzada de Masaje ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2107, '2014-12-02 20:00:00', 49, 155, 73, 'Introducci√≥n al Marketing Digital ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2108, '2014-11-26 20:00:00', 49, 155, 73, 'Introducci√≥n al Marketing Digital ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2109, '2014-12-05 16:00:00', 48, 154, 72, 'Lecciones pr√°cticas de Maquillaje ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2110, '2014-11-29 16:00:00', 48, 154, 72, 'Lecciones pr√°cticas de Maquillaje ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2111, '2014-11-22 14:00:00', 47, 153, 71, 'Clase avanzada de Keynote', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2112, '2014-11-15 14:00:00', 47, 153, 71, 'Clase avanzada de Keynote', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2113, '2014-12-18 16:00:00', 46, 152, 70, 'Lecciones pr√°cticas de Joyeria y Olfebrer√≠a ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2114, '2014-12-11 16:00:00', 46, 152, 70, 'Lecciones pr√°cticas de Joyeria y Olfebrer√≠a ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2115, '2014-12-12 18:00:00', 45, 151, 69, 'Introducci√≥n al Jardineria ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2116, '2014-12-05 18:00:00', 45, 151, 69, 'Introducci√≥n al Jardineria ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2117, '2014-12-07 20:00:00', 44, 150, 68, 'Clase avanzada de Introducci√≥n a c√°lculo ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2118, '2014-11-30 20:00:00', 44, 150, 68, 'Clase avanzada de Introducci√≥n a c√°lculo ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2119, '2014-12-13 10:30:00', 43, 149, 67, 'Introducci√≥n al InstaGIS ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2120, '2014-12-06 10:30:00', 43, 149, 67, 'Introducci√≥n al InstaGIS ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2121, '2014-12-06 14:00:00', 42, 148, 66, 'Lecciones pr√°cticas de Ingenier√≠a Mecanica ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2122, '2014-11-30 14:00:00', 42, 148, 66, 'Lecciones pr√°cticas de Ingenier√≠a Mecanica ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2123, '2014-11-23 09:00:00', 41, 147, 65, 'Clase avanzada de Ingenier√≠a Industrial ', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2124, '2014-11-16 09:00:00', 41, 147, 65, 'Clase avanzada de Ingenier√≠a Industrial ', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2125, '2014-11-19 09:00:00', 40, 146, 64, 'Lecciones pr√°cticas de Ingenier√≠a Electrica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2126, '2014-11-12 09:00:00', 40, 146, 64, 'Lecciones pr√°cticas de Ingenier√≠a Electrica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2127, '2014-11-18 22:00:00', 39, 145, 63, 'Introducci√≥n al Illustrator ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2128, '2014-11-11 22:00:00', 39, 145, 63, 'Introducci√≥n al Illustrator ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2129, '2014-12-01 20:00:00', 38, 144, 62, 'Clase avanzada de Historia de la Musica ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2130, '2014-11-25 20:00:00', 38, 144, 62, 'Clase avanzada de Historia de la Musica ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2131, '2014-12-09 12:00:00', 37, 143, 61, 'Introducci√≥n al Historia ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2132, '2014-12-02 12:00:00', 37, 143, 61, 'Introducci√≥n al Historia ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2133, '2014-12-07 10:30:00', 36, 142, 60, 'Lecciones pr√°cticas de Guitarra ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2134, '2014-11-30 10:30:00', 36, 142, 60, 'Lecciones pr√°cticas de Guitarra ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2135, '2014-11-30 12:00:00', 35, 141, 59, 'Clase avanzada de Gram√°tica ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2136, '2014-11-23 12:00:00', 35, 141, 59, 'Clase avanzada de Gram√°tica ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2137, '2014-11-22 14:00:00', 34, 140, 58, 'Lecciones pr√°cticas de Grabados y Litografia ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2138, '2014-11-15 14:00:00', 34, 140, 58, 'Lecciones pr√°cticas de Grabados y Litografia ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2139, '2014-12-11 10:30:00', 33, 139, 57, 'Introducci√≥n al GMAT', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2140, '2014-12-04 10:30:00', 33, 139, 57, 'Introducci√≥n al GMAT', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2141, '2014-12-14 18:00:00', 32, 138, 56, 'Clase avanzada de Geometria ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2142, '2014-12-07 18:00:00', 32, 138, 56, 'Clase avanzada de Geometria ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2143, '2014-11-30 10:30:00', 31, 137, 55, 'Introducci√≥n al Geografia ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2144, '2014-11-23 10:30:00', 31, 137, 55, 'Introducci√≥n al Geografia ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2145, '2014-12-07 09:00:00', 30, 136, 54, 'Lecciones pr√°cticas de Fotografia ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2146, '2014-11-30 09:00:00', 30, 136, 54, 'Lecciones pr√°cticas de Fotografia ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2147, '2014-12-18 10:30:00', 29, 135, 53, 'Clase avanzada de Flores de Bach ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2148, '2014-12-11 10:30:00', 29, 135, 53, 'Clase avanzada de Flores de Bach ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2149, '2014-12-05 20:00:00', 28, 134, 52, 'Lecciones pr√°cticas de Floreria ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2150, '2014-11-29 20:00:00', 28, 134, 52, 'Lecciones pr√°cticas de Floreria ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2151, '2014-12-08 14:00:00', 27, 133, 51, 'Introducci√≥n al Flauta ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2152, '2014-12-01 14:00:00', 27, 133, 51, 'Introducci√≥n al Flauta ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2153, '2014-11-22 12:00:00', 26, 132, 50, 'Clase avanzada de Fisica ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2154, '2014-11-15 12:00:00', 26, 132, 50, 'Clase avanzada de Fisica ', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2155, '2014-11-30 20:00:00', 25, 131, 49, 'Introducci√≥n al Finanzas Personales ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2156, '2014-11-23 20:00:00', 25, 131, 49, 'Introducci√≥n al Finanzas Personales ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2157, '2014-12-18 10:30:00', 24, 130, 48, 'Lecciones pr√°cticas de Filosof√≠a ', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2158, '2014-12-11 10:30:00', 24, 130, 48, 'Lecciones pr√°cticas de Filosof√≠a ', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2159, '2014-11-30 09:00:00', 23, 129, 47, 'Clase avanzada de Excel ', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2160, '2014-11-24 09:00:00', 23, 129, 47, 'Clase avanzada de Excel ', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2161, '2014-12-08 10:30:00', 22, 128, 46, 'Lecciones pr√°cticas de Estadisticas ', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(2162, '2014-12-01 10:30:00', 22, 128, 46, 'Lecciones pr√°cticas de Estadisticas ', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(2163, '2014-12-15 10:30:00', 21, 127, 45, 'Introducci√≥n al Escultura ', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2164, '2014-12-08 10:30:00', 21, 127, 45, 'Introducci√≥n al Escultura ', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2165, '2014-12-13 20:00:00', 20, 126, 44, 'Clase avanzada de Escalada ', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2166, '2014-12-06 20:00:00', 20, 126, 44, 'Clase avanzada de Escalada ', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2167, '2014-12-16 09:00:00', 19, 125, 43, 'Introducci√≥n al Edicion de Videos ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2168, '2014-12-09 09:00:00', 19, 125, 43, 'Introducci√≥n al Edicion de Videos ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2169, '2014-12-01 20:00:00', 18, 124, 42, 'Lecciones pr√°cticas de Economia ', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2170, '2014-11-25 20:00:00', 18, 124, 42, 'Lecciones pr√°cticas de Economia ', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2171, '2014-12-17 10:30:00', 17, 123, 41, 'Clase avanzada de Diseno Industrial ', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(2172, '2014-12-10 10:30:00', 17, 123, 41, 'Clase avanzada de Diseno Industrial ', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(2173, '2014-11-28 22:00:00', 16, 122, 40, 'Lecciones pr√°cticas de Diseno Grafico ', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(2174, '2014-11-21 22:00:00', 16, 122, 40, 'Lecciones pr√°cticas de Diseno Grafico ', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(2175, '2014-11-25 12:00:00', 15, 121, 39, 'Introducci√≥n al Diseno de Vestuario ', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(2176, '2014-11-18 12:00:00', 15, 121, 39, 'Introducci√≥n al Diseno de Vestuario ', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(2177, '2014-11-30 10:30:00', 14, 120, 38, 'Clase avanzada de Dise√±o de Interiores ', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2178, '2014-11-24 10:30:00', 14, 120, 38, 'Clase avanzada de Dise√±o de Interiores ', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2179, '2014-12-03 12:00:00', 13, 119, 37, 'Introducci√≥n al Dibujo ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2180, '2014-11-27 12:00:00', 13, 119, 37, 'Introducci√≥n al Dibujo ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2181, '2014-12-03 10:30:00', 12, 118, 36, 'Lecciones pr√°cticas de Cueca ', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2182, '2014-11-27 10:30:00', 12, 118, 36, 'Lecciones pr√°cticas de Cueca ', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2183, '2014-12-06 20:00:00', 11, 117, 35, 'Clase avanzada de CPR ', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2184, '2014-11-30 20:00:00', 11, 117, 35, 'Clase avanzada de CPR ', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2185, '2014-11-18 16:00:00', 10, 116, 34, 'Lecciones pr√°cticas de Cosmetologia ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(2186, '2014-11-11 16:00:00', 10, 116, 34, 'Lecciones pr√°cticas de Cosmetologia ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(2187, '2014-11-15 16:00:00', 106, 115, 115, 'Introducci√≥n al Coser ', 'camino el alba 11969', 13114, '\0\0\0\0\0\0\0µç?QŸ†Q¿∆Nx	N≥@¿'),
(2188, '2014-11-22 16:00:00', 106, 115, 115, 'Introducci√≥n al Coser ', 'camino el alba 11969', 13114, '\0\0\0\0\0\0\0µç?QŸ†Q¿∆Nx	N≥@¿'),
(2189, '2014-12-18 20:00:00', 9, 115, 33, 'Introducci√≥n al Coser ', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2190, '2014-12-11 20:00:00', 9, 115, 33, 'Introducci√≥n al Coser ', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2191, '2014-12-08 09:00:00', 105, 114, 114, 'Lecciones pr√°cticas de Construccion de Sitios Web ', 'echenique 8490', 13113, '\0\0\0\0\0\0\0é\\7•º¢Q¿EÉ<Ö∏@¿'),
(2192, '2014-12-15 09:00:00', 105, 114, 114, 'Lecciones pr√°cticas de Construccion de Sitios Web ', 'echenique 8490', 13113, '\0\0\0\0\0\0\0é\\7•º¢Q¿EÉ<Ö∏@¿'),
(2193, '2014-11-26 20:00:00', 8, 114, 32, 'Clase avanzada de Construccion de Sitios Web ', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(2194, '2014-11-19 20:00:00', 8, 114, 32, 'Clase avanzada de Construccion de Sitios Web ', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(2195, '2014-12-10 12:00:00', 104, 113, 113, 'Clase avanzada de Comunicacion y Lingu√≠stica ', '11 de septiembre 2192', 13123, '\0\0\0\0\0\0\0ÕZ\nH˚¶Q¿ÑÄ|	∂@¿'),
(2196, '2014-12-17 12:00:00', 104, 113, 113, 'Clase avanzada de Comunicacion y Lingu√≠stica ', '11 de septiembre 2192', 13123, '\0\0\0\0\0\0\0ÕZ\nH˚¶Q¿ÑÄ|	∂@¿'),
(2197, '2014-12-11 22:00:00', 7, 113, 31, 'Introducci√≥n al Comunicacion y Lingu√≠stica ', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2198, '2014-12-04 22:00:00', 7, 113, 31, 'Introducci√≥n al Comunicacion y Lingu√≠stica ', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2199, '2014-12-06 14:00:00', 103, 112, 112, 'Lecciones pr√°cticas de Computacion ', 'apoquindo 4501', 13114, '\0\0\0\0\0\0\0∆ÌÒB•Q¿Æ’ˆ¥@¿'),
(2200, '2014-12-13 14:00:00', 103, 112, 112, 'Lecciones pr√°cticas de Computacion ', 'apoquindo 4501', 13114, '\0\0\0\0\0\0\0∆ÌÒB•Q¿Æ’ˆ¥@¿'),
(2201, '2014-12-11 14:00:00', 18, 112, 30, 'Clase avanzada de Computacion ', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(2202, '2014-12-04 14:00:00', 18, 112, 30, 'Clase avanzada de Computacion ', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(2203, '2014-11-30 14:00:00', 102, 111, 111, 'Introducci√≥n al Comprensi√≥n de Lectura ', 'paseo colina sur 14500', 13301, '\0\0\0\0\0\0\0∏v¢$$®Q¿“‰b¨£@¿'),
(2204, '2014-12-06 14:00:00', 102, 111, 111, 'Introducci√≥n al Comprensi√≥n de Lectura ', 'paseo colina sur 14500', 13301, '\0\0\0\0\0\0\0∏v¢$$®Q¿“‰b¨£@¿'),
(2205, '2014-11-30 18:00:00', 5, 111, 29, 'Lecciones pr√°cticas de Comprensi√≥n de Lectura ', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2206, '2014-11-23 18:00:00', 5, 111, 29, 'Lecciones pr√°cticas de Comprensi√≥n de Lectura ', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2207, '2014-11-11 12:00:00', 101, 110, 110, 'Clase avanzada de Composicion Musical ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0B%Æc\\†Q¿˝NìoØ@¿'),
(2208, '2014-11-18 12:00:00', 101, 110, 110, 'Clase avanzada de Composicion Musical ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0B%Æc\\†Q¿˝NìoØ@¿'),
(2209, '2014-12-06 10:30:00', 4, 110, 28, 'Clase avanzada de Composicion Musical ', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2210, '2014-11-30 10:30:00', 4, 110, 28, 'Clase avanzada de Composicion Musical ', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2211, '2014-11-25 18:00:00', 100, 109, 109, 'Introducci√≥n al Community Manager ', 'isabel la catolica 3740', 13114, '\0\0\0\0\0\0\0p''·_•Q¿&©L1∑@¿'),
(2212, '2014-12-01 18:00:00', 100, 109, 109, 'Introducci√≥n al Community Manager ', 'isabel la catolica 3740', 13114, '\0\0\0\0\0\0\0p''·_•Q¿&©L1∑@¿'),
(2213, '2014-11-26 18:00:00', 3, 109, 27, 'Lecciones pr√°cticas de Community Manager ', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(2214, '2014-11-19 18:00:00', 3, 109, 27, 'Lecciones pr√°cticas de Community Manager ', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(2215, '2014-11-13 14:00:00', 99, 108, 108, 'Lecciones pr√°cticas de Comedia ', 'isidora goyenechea 3000', 13114, '\0\0\0\0\0\0\0ÿ∂(≥A¶Q¿ª’s“˚¥@¿'),
(2216, '2014-11-20 14:00:00', 99, 108, 108, 'Lecciones pr√°cticas de Comedia ', 'isidora goyenechea 3000', 13114, '\0\0\0\0\0\0\0ÿ∂(≥A¶Q¿ª’s“˚¥@¿'),
(2217, '2014-12-16 14:00:00', 2, 108, 26, 'Introducci√≥n al Comedia ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2218, '2014-12-09 14:00:00', 2, 108, 26, 'Introducci√≥n al Comedia ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2219, '2014-12-01 22:00:00', 98, 107, 107, 'Clase avanzada de Ciencias Sociales ', 'pdte kennedy 6630', 13132, '\0\0\0\0\0\0\06Êuƒ!§Q¿ÑÛ©cï≤@¿'),
(2220, '2014-12-08 22:00:00', 98, 107, 107, 'Clase avanzada de Ciencias Sociales ', 'pdte kennedy 6630', 13132, '\0\0\0\0\0\0\06Êuƒ!§Q¿ÑÛ©cï≤@¿'),
(2221, '2014-11-27 18:00:00', 1, 107, 25, 'Clase avanzada de Ciencias Sociales ', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2222, '2014-11-20 18:00:00', 1, 107, 25, 'Clase avanzada de Ciencias Sociales ', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2223, '2014-11-25 18:00:00', 97, 106, 106, 'Lecciones pr√°cticas de Ciencias ', 'los trapenses 3515', 13115, '\0\0\0\0\0\0\0JÒÒ	Ÿ¢Q¿Òˆ ‰´@¿'),
(2224, '2014-12-01 18:00:00', 97, 106, 106, 'Lecciones pr√°cticas de Ciencias ', 'los trapenses 3515', 13115, '\0\0\0\0\0\0\0JÒÒ	Ÿ¢Q¿Òˆ ‰´@¿'),
(2225, '2014-12-11 18:00:00', 127, 106, 24, 'Introducci√≥n al Ciencias ', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2226, '2014-12-04 18:00:00', 127, 106, 24, 'Introducci√≥n al Ciencias ', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2227, '2014-12-02 09:00:00', 96, 105, 105, 'Introducci√≥n al Chello ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0\\:Ê<c†Q¿ä?ä:sØ@¿'),
(2228, '2014-12-09 09:00:00', 96, 105, 105, 'Introducci√≥n al Chello ', 'las condes 13451', 13114, '\0\0\0\0\0\0\0\\:Ê<c†Q¿ä?ä:sØ@¿'),
(2229, '2014-12-03 10:30:00', 126, 105, 23, 'Lecciones pr√°cticas de Chello ', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(2230, '2014-11-27 10:30:00', 126, 105, 23, 'Lecciones pr√°cticas de Chello ', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(2231, '2014-11-20 14:00:00', 95, 104, 104, 'Clase avanzada de Ceramica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2232, '2014-11-27 14:00:00', 95, 104, 104, 'Clase avanzada de Ceramica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2233, '2014-12-12 09:00:00', 125, 104, 22, 'Clase avanzada de Ceramica ', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(2234, '2014-12-05 09:00:00', 125, 104, 22, 'Clase avanzada de Ceramica ', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(2235, '2014-12-09 10:30:00', 94, 103, 103, 'Introducci√≥n al Capoeira ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2236, '2014-12-16 10:30:00', 94, 103, 103, 'Introducci√≥n al Capoeira ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2237, '2014-11-24 20:00:00', 124, 103, 21, 'Lecciones pr√°cticas de Capoeira ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2238, '2014-11-17 20:00:00', 124, 103, 21, 'Lecciones pr√°cticas de Capoeira ', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2239, '2014-12-06 10:30:00', 93, 102, 102, 'Lecciones pr√°cticas de Canto ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2240, '2014-12-13 10:30:00', 93, 102, 102, 'Lecciones pr√°cticas de Canto ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2241, '2014-12-06 14:00:00', 123, 102, 20, 'Introducci√≥n al Canto ', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2242, '2014-11-30 14:00:00', 123, 102, 20, 'Introducci√≥n al Canto ', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2243, '2014-12-07 12:00:00', 92, 101, 101, 'Clase avanzada de Canto ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2244, '2014-12-14 12:00:00', 92, 101, 101, 'Clase avanzada de Canto ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2245, '2014-11-22 14:00:00', 122, 101, 19, 'Clase avanzada de Canto ', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(2246, '2014-11-15 14:00:00', 122, 101, 19, 'Clase avanzada de Canto ', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(2247, '2014-11-28 12:00:00', 91, 100, 100, 'Lecciones pr√°cticas de Caligrafia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2248, '2014-12-04 12:00:00', 91, 100, 100, 'Lecciones pr√°cticas de Caligrafia ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2249, '2014-12-08 18:00:00', 121, 100, 18, 'Introducci√≥n al Caligrafia ', 'Carlos Pe√±a Otaegui 12501, Las Condes', 13114, '\0\0\0\0\0\0\0H%Èß>†Q¿#Àÿú¥@¿'),
(2250, '2014-12-01 18:00:00', 121, 100, 18, 'Introducci√≥n al Caligrafia ', 'Carlos Pe√±a Otaegui 12501, Las Condes', 13114, '\0\0\0\0\0\0\0H%Èß>†Q¿#Àÿú¥@¿'),
(2251, '2014-11-10 09:00:00', 90, 99, 99, 'Introducci√≥n al Calculo ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2252, '2014-11-17 09:00:00', 90, 99, 99, 'Introducci√≥n al Calculo ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2253, '2014-12-05 16:00:00', 120, 99, 17, 'Lecciones pr√°cticas de Calculo ', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(2254, '2014-11-29 16:00:00', 120, 99, 17, 'Lecciones pr√°cticas de Calculo ', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(2255, '2014-11-13 10:30:00', 89, 98, 98, 'Clase avanzada de Bowling ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2256, '2014-11-20 10:30:00', 89, 98, 98, 'Clase avanzada de Bowling ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2257, '2014-11-19 10:30:00', 119, 98, 16, 'Clase avanzada de Bowling ', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2258, '2014-11-12 10:30:00', 119, 98, 16, 'Clase avanzada de Bowling ', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2259, '2014-11-18 22:00:00', 88, 97, 97, 'Introducci√≥n al Bioqu√≠mica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2260, '2014-11-25 22:00:00', 88, 97, 97, 'Introducci√≥n al Bioqu√≠mica ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2261, '2014-11-30 16:00:00', 118, 97, 15, 'Lecciones pr√°cticas de Bioqu√≠mica ', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2262, '2014-11-24 16:00:00', 118, 97, 15, 'Lecciones pr√°cticas de Bioqu√≠mica ', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2263, '2014-11-14 14:00:00', 87, 96, 96, 'Lecciones pr√°cticas de Biolog√≠a ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2264, '2014-11-21 14:00:00', 87, 96, 96, 'Lecciones pr√°cticas de Biolog√≠a ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2265, '2014-12-07 14:00:00', 117, 96, 14, 'Introducci√≥n al Biolog√≠a ', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2266, '2014-11-30 14:00:00', 117, 96, 14, 'Introducci√≥n al Biolog√≠a ', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2267, '2014-11-29 09:00:00', 86, 95, 95, 'Clase avanzada de Bateria ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2268, '2014-12-05 09:00:00', 86, 95, 95, 'Clase avanzada de Bateria ', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2269, '2014-11-28 16:00:00', 116, 95, 13, 'Clase avanzada de Bateria ', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2270, '2014-11-21 16:00:00', 116, 95, 13, 'Clase avanzada de Bateria ', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2271, '2014-12-12 20:00:00', 85, 94, 94, 'Lecciones pr√°cticas de Ballet ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2272, '2014-12-19 20:00:00', 85, 94, 94, 'Lecciones pr√°cticas de Ballet ', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2273, '2014-11-20 18:00:00', 115, 94, 12, 'Introducci√≥n al Ballet ', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2274, '2014-11-13 18:00:00', 115, 94, 12, 'Introducci√≥n al Ballet ', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2275, '2014-11-24 20:00:00', 84, 93, 93, 'Introducci√≥n al Bajo ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2276, '2014-11-30 20:00:00', 84, 93, 93, 'Introducci√≥n al Bajo ', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2277, '2014-11-24 18:00:00', 114, 93, 11, 'Lecciones pr√°cticas de Bajo ', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(2278, '2014-11-17 18:00:00', 114, 93, 11, 'Lecciones pr√°cticas de Bajo ', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(2279, '2014-12-04 14:00:00', 83, 92, 92, 'Clase avanzada de Baile ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2280, '2014-12-11 14:00:00', 83, 92, 92, 'Clase avanzada de Baile ', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2281, '2014-12-05 09:00:00', 113, 92, 10, 'Clase avanzada de Baile ', 'Escandinavia 177', 13114, '\0\0\0\0\0\0\04°ºÔ>§Q¿,09Â¥@¿'),
(2282, '2014-11-29 09:00:00', 113, 92, 10, 'Clase avanzada de Baile ', 'Escandinavia 177', 13114, '\0\0\0\0\0\0\04°ºÔ>§Q¿,09Â¥@¿'),
(2283, '2014-11-24 20:00:00', 82, 91, 91, 'Introducci√≥n al Bachillerato Internacional ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2284, '2014-11-30 20:00:00', 82, 91, 91, 'Introducci√≥n al Bachillerato Internacional ', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2285, '2014-12-10 18:00:00', 112, 91, 9, 'Lecciones pr√°cticas de Bachillerato Internacional ', 'Av. Apoquindo 6445', 13114, '\0\0\0\0\0\0\0Ë‹˙§Q¿P[é\0H¥@¿'),
(2286, '2014-12-03 18:00:00', 112, 91, 9, 'Lecciones pr√°cticas de Bachillerato Internacional ', 'Av. Apoquindo 6445', 13114, '\0\0\0\0\0\0\0Ë‹˙§Q¿P[é\0H¥@¿'),
(2287, '2014-11-29 12:00:00', 81, 90, 90, 'Lecciones pr√°cticas de Autodefensa ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2288, '2014-12-05 12:00:00', 81, 90, 90, 'Lecciones pr√°cticas de Autodefensa ', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2289, '2014-11-30 14:00:00', 111, 90, 8, 'Introducci√≥n al Autodefensa ', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2290, '2014-11-24 14:00:00', 111, 90, 8, 'Introducci√≥n al Autodefensa ', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2291, '2014-12-03 18:00:00', 80, 89, 89, 'Clase avanzada de Autoayuda ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2292, '2014-12-10 18:00:00', 80, 89, 89, 'Clase avanzada de Autoayuda ', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2293, '2014-11-30 22:00:00', 110, 89, 7, 'Clase avanzada de Autoayuda ', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2294, '2014-11-24 22:00:00', 110, 89, 7, 'Clase avanzada de Autoayuda ', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2295, '2014-12-02 10:30:00', 79, 88, 88, 'Lecciones pr√°cticas de Astronom√≠a ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2296, '2014-12-09 10:30:00', 79, 88, 88, 'Lecciones pr√°cticas de Astronom√≠a ', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2297, '2014-12-07 16:00:00', 109, 88, 6, 'Introducci√≥n al Astronom√≠a ', 'Rosario Norte 555', 13114, '\0\0\0\0\0\0\0^_Í≤ñ§Q¿™äG}Ì≥@¿'),
(2298, '2014-11-30 16:00:00', 109, 88, 6, 'Introducci√≥n al Astronom√≠a ', 'Rosario Norte 555', 13114, '\0\0\0\0\0\0\0^_Í≤ñ§Q¿™äG}Ì≥@¿'),
(2299, '2014-12-08 18:00:00', 78, 87, 87, 'Introducci√≥n al Arte ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2300, '2014-12-15 18:00:00', 78, 87, 87, 'Introducci√≥n al Arte ', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2301, '2014-11-18 22:00:00', 108, 87, 5, 'Lecciones pr√°cticas de Arte ', 'Robinson Crusoe 1150', 13114, '\0\0\0\0\0\0\0Ùˇˇì£Q¿≈Ÿ9ìµµ@¿'),
(2302, '2014-11-11 22:00:00', 108, 87, 5, 'Lecciones pr√°cticas de Arte ', 'Robinson Crusoe 1150', 13114, '\0\0\0\0\0\0\0Ùˇˇì£Q¿≈Ÿ9ìµµ@¿'),
(2303, '2014-11-20 10:30:00', 77, 86, 86, 'Clase avanzada de Armonica ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2304, '2014-11-27 10:30:00', 77, 86, 86, 'Clase avanzada de Armonica ', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2305, '2014-11-23 20:00:00', 107, 86, 4, 'Clase avanzada de Armonica ', 'Av Cristobal Colon 7000', 13114, '\0\0\0\0\0\0\0\0\0@¶£Q¿–ˇˇø^µ@¿'),
(2306, '2014-11-16 20:00:00', 107, 86, 4, 'Clase avanzada de Armonica ', 'Av Cristobal Colon 7000', 13114, '\0\0\0\0\0\0\0\0\0@¶£Q¿–ˇˇø^µ@¿'),
(2307, '2014-11-29 22:00:00', 76, 85, 85, 'Introducci√≥n al ArcGIS ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2308, '2014-12-05 22:00:00', 76, 85, 85, 'Introducci√≥n al ArcGIS ', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2309, '2014-12-04 14:00:00', 106, 85, 3, 'Lecciones pr√°cticas de ArcGIS ', 'Jorge VI 110', 13114, '\0\0\0\0\0\0\0yMr}∏§Q¿Av#¥¥@¿'),
(2310, '2014-11-28 14:00:00', 106, 85, 3, 'Lecciones pr√°cticas de ArcGIS ', 'Jorge VI 110', 13114, '\0\0\0\0\0\0\0yMr}∏§Q¿Av#¥¥@¿'),
(2311, '2014-12-09 16:00:00', 75, 84, 84, 'Lecciones pr√°cticas de Anatom√≠a ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2312, '2014-12-16 16:00:00', 75, 84, 84, 'Lecciones pr√°cticas de Anatom√≠a ', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2313, '2014-12-01 14:00:00', 105, 84, 2, 'Introducci√≥n al Anatom√≠a ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2314, '2014-11-25 14:00:00', 105, 84, 2, 'Introducci√≥n al Anatom√≠a ', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2315, '2014-11-23 12:00:00', 74, 83, 83, 'Clase avanzada de Algebra', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2316, '2014-11-22 20:00:00', 71, 83, 83, 'Clase avanzada de Algebra', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2317, '2014-11-30 12:00:00', 74, 83, 83, 'Clase avanzada de Algebra', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2318, '2014-11-29 20:00:00', 71, 83, 83, 'Clase avanzada de Algebra', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2319, '2014-11-21 14:00:00', 104, 83, 1, 'Clase avanzada de Algebra', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2320, '2014-11-14 14:00:00', 104, 83, 1, 'Clase avanzada de Algebra', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2321, '2014-11-10 09:00:00', 73, 82, 82, 'Lecciones pr√°cticas de Alfombras ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2322, '2014-12-03 18:00:00', 70, 82, 82, 'Lecciones pr√°cticas de Alfombras ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2323, '2014-11-17 09:00:00', 73, 82, 82, 'Lecciones pr√°cticas de Alfombras ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2324, '2014-12-10 18:00:00', 70, 82, 82, 'Lecciones pr√°cticas de Alfombras ', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2325, '2014-11-21 10:30:00', 72, 81, 81, 'Introducci√≥n al Ajedrez ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2326, '2014-11-16 14:00:00', 69, 81, 81, 'Introducci√≥n al Ajedrez ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2327, '2014-11-28 10:30:00', 72, 81, 81, 'Introducci√≥n al Ajedrez ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2328, '2014-11-23 14:00:00', 69, 81, 81, 'Introducci√≥n al Ajedrez ', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2329, '2014-12-01 10:30:00', 71, 80, 80, 'Clase avanzada de Acorde√≥n ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2330, '2014-12-08 10:30:00', 71, 80, 80, 'Clase avanzada de Acorde√≥n ', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2331, '2014-11-12 10:30:00', 70, 79, 79, 'Introducci√≥n al equitaci√≥n', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2332, '2014-12-02 14:00:00', 67, 79, 79, 'Introducci√≥n al equitaci√≥n', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2333, '2014-11-19 10:30:00', 70, 79, 79, 'Introducci√≥n al equitaci√≥n', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2334, '2014-12-09 14:00:00', 67, 79, 79, 'Introducci√≥n al equitaci√≥n', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2335, '2014-11-18 20:00:00', 69, 78, 78, 'Lecciones pr√°cticas de esqu√≠', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2336, '2014-11-21 18:00:00', 66, 78, 78, 'Lecciones pr√°cticas de esqu√≠', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2337, '2014-11-25 20:00:00', 69, 78, 78, 'Lecciones pr√°cticas de esqu√≠', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2338, '2014-11-28 18:00:00', 66, 78, 78, 'Lecciones pr√°cticas de esqu√≠', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2339, '2014-11-24 22:00:00', 68, 77, 77, 'Clase avanzada de esgrima', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2340, '2014-11-28 18:00:00', 65, 77, 77, 'Clase avanzada de esgrima', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2341, '2014-11-30 22:00:00', 68, 77, 77, 'Clase avanzada de esgrima', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2342, '2014-12-04 18:00:00', 65, 77, 77, 'Clase avanzada de esgrima', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2343, '2014-12-10 14:00:00', 64, 76, 76, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2344, '2014-12-17 14:00:00', 64, 76, 76, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2345, '2014-12-17 22:00:00', 67, 76, 76, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2346, '2014-12-10 22:00:00', 67, 76, 76, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2347, '2014-11-11 20:00:00', 63, 75, 75, 'Introducci√≥n al gimnasia', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2348, '2014-11-18 20:00:00', 63, 75, 75, 'Introducci√≥n al gimnasia', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2349, '2014-12-16 20:00:00', 66, 75, 75, 'Introducci√≥n al gimnasia', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2350, '2014-12-09 20:00:00', 66, 75, 75, 'Introducci√≥n al gimnasia', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2351, '2014-11-16 14:00:00', 62, 74, 74, 'Clase avanzada de win tsun', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2352, '2014-11-23 14:00:00', 62, 74, 74, 'Clase avanzada de win tsun', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2353, '2014-12-03 12:00:00', 65, 74, 74, 'Clase avanzada de win tsun', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2354, '2014-11-27 12:00:00', 65, 74, 74, 'Clase avanzada de win tsun', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2355, '2014-11-14 16:00:00', 61, 73, 73, 'Introducci√≥n al wushu', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2356, '2014-11-21 16:00:00', 61, 73, 73, 'Introducci√≥n al wushu', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2357, '2014-11-30 10:30:00', 64, 73, 73, 'Introducci√≥n al wushu', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2358, '2014-11-23 10:30:00', 64, 73, 73, 'Introducci√≥n al wushu', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2359, '2014-12-09 20:00:00', 60, 72, 72, 'Lecciones pr√°cticas de windsurf', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2360, '2014-12-16 20:00:00', 60, 72, 72, 'Lecciones pr√°cticas de windsurf', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2361, '2014-12-08 18:00:00', 63, 72, 72, 'Lecciones pr√°cticas de windsurf', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2362, '2014-12-01 18:00:00', 63, 72, 72, 'Lecciones pr√°cticas de windsurf', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2363, '2014-11-18 16:00:00', 59, 71, 71, 'Clase avanzada de waterpolo', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2364, '2014-11-25 16:00:00', 59, 71, 71, 'Clase avanzada de waterpolo', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2365, '2014-12-18 12:00:00', 62, 71, 71, 'Clase avanzada de waterpolo', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2366, '2014-12-11 12:00:00', 62, 71, 71, 'Clase avanzada de waterpolo', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2367, '2014-11-25 12:00:00', 58, 70, 70, 'Lecciones pr√°cticas de volei playa', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2368, '2014-12-01 12:00:00', 58, 70, 70, 'Lecciones pr√°cticas de volei playa', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2369, '2014-12-15 18:00:00', 61, 70, 70, 'Lecciones pr√°cticas de volei playa', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2370, '2014-12-08 18:00:00', 61, 70, 70, 'Lecciones pr√°cticas de volei playa', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2371, '2014-12-04 18:00:00', 57, 69, 69, 'Introducci√≥n al voleibol', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2372, '2014-12-11 18:00:00', 57, 69, 69, 'Introducci√≥n al voleibol', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2373, '2014-12-03 14:00:00', 60, 69, 69, 'Introducci√≥n al voleibol', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2374, '2014-11-27 14:00:00', 60, 69, 69, 'Introducci√≥n al voleibol', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2375, '2014-11-28 14:00:00', 59, 68, 68, 'Clase avanzada de vela', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2376, '2014-11-21 14:00:00', 59, 68, 68, 'Clase avanzada de vela', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2377, '2014-12-10 16:00:00', 55, 67, 67, 'Introducci√≥n al taekwondo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2378, '2014-11-19 14:00:00', 58, 67, 67, 'Introducci√≥n al taekwondo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2379, '2014-12-03 16:00:00', 55, 67, 67, 'Introducci√≥n al taekwondo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2380, '2014-11-12 14:00:00', 58, 67, 67, 'Introducci√≥n al taekwondo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2381, '2014-12-06 10:30:00', 54, 66, 66, 'Clase avanzada de triatl√≥n', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2382, '2014-12-17 10:30:00', 57, 66, 66, 'Lecciones pr√°cticas de triatl√≥n', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2383, '2014-11-30 10:30:00', 54, 66, 66, 'Clase avanzada de triatl√≥n', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2384, '2014-12-10 10:30:00', 57, 66, 66, 'Lecciones pr√°cticas de triatl√≥n', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2385, '2014-11-22 20:00:00', 53, 65, 65, 'Introducci√≥n al tiro con arco', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2386, '2014-11-15 20:00:00', 53, 65, 65, 'Introducci√≥n al tiro con arco', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2387, '2014-12-08 16:00:00', 55, 64, 64, 'Lecciones pr√°cticas de tiro', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2388, '2014-12-15 16:00:00', 55, 64, 64, 'Lecciones pr√°cticas de tiro', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2389, '2014-11-23 10:30:00', 52, 64, 64, 'Lecciones pr√°cticas de tiro', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(2390, '2014-11-16 10:30:00', 52, 64, 64, 'Lecciones pr√°cticas de tiro', 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿');
INSERT INTO `clase` (`id`, `fecha`, `id_profesor`, `id_especialidad`, `id_establecimiento`, `nombre`, `lugar`, `id_comuna`, `location`) VALUES
(2391, '2014-11-14 20:00:00', 54, 63, 63, 'Introducci√≥n al tenis de mesa', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2392, '2014-11-21 20:00:00', 54, 63, 63, 'Introducci√≥n al tenis de mesa', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2393, '2014-12-16 12:00:00', 51, 63, 63, 'Clase avanzada de tenis de mesa', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2394, '2014-12-09 12:00:00', 51, 63, 63, 'Clase avanzada de tenis de mesa', 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(2395, '2014-11-26 22:00:00', 53, 62, 62, 'Clase avanzada de tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2396, '2014-12-02 22:00:00', 53, 62, 62, 'Clase avanzada de tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2397, '2014-11-24 10:30:00', 50, 62, 62, 'Lecciones pr√°cticas de tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2398, '2014-12-04 18:00:00', 44, 62, 62, 'Introducci√≥n al tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2399, '2014-11-17 10:30:00', 50, 62, 62, 'Lecciones pr√°cticas de tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2400, '2014-11-28 18:00:00', 44, 62, 62, 'Introducci√≥n al tenis', 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(2401, '2014-11-15 12:00:00', 52, 61, 61, 'Introducci√≥n al surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2402, '2014-11-22 12:00:00', 52, 61, 61, 'Introducci√≥n al surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2403, '2014-12-13 20:00:00', 49, 61, 61, 'Introducci√≥n al surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2404, '2014-12-06 12:00:00', 43, 61, 61, 'Lecciones pr√°cticas de surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2405, '2014-12-06 20:00:00', 49, 61, 61, 'Introducci√≥n al surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2406, '2014-11-30 12:00:00', 43, 61, 61, 'Lecciones pr√°cticas de surf', 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(2407, '2014-11-18 14:00:00', 51, 60, 60, 'Lecciones pr√°cticas de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2408, '2014-11-25 14:00:00', 51, 60, 60, 'Lecciones pr√°cticas de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2409, '2014-11-30 14:00:00', 48, 60, 60, 'Clase avanzada de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2410, '2014-11-19 12:00:00', 42, 60, 60, 'Clase avanzada de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2411, '2014-11-24 14:00:00', 48, 60, 60, 'Clase avanzada de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2412, '2014-11-12 12:00:00', 42, 60, 60, 'Clase avanzada de superbikes', 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(2413, '2014-11-11 12:00:00', 50, 59, 59, 'Clase avanzada de sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2414, '2014-11-18 12:00:00', 50, 59, 59, 'Clase avanzada de sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2415, '2014-12-18 16:00:00', 47, 59, 59, 'Introducci√≥n al sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2416, '2014-11-26 10:30:00', 41, 59, 59, 'Lecciones pr√°cticas de sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2417, '2014-12-11 16:00:00', 47, 59, 59, 'Introducci√≥n al sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2418, '2014-11-19 10:30:00', 41, 59, 59, 'Lecciones pr√°cticas de sumo', 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(2419, '2014-12-08 20:00:00', 49, 58, 58, 'Lecciones pr√°cticas de squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2420, '2014-12-15 20:00:00', 49, 58, 58, 'Lecciones pr√°cticas de squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2421, '2014-11-22 14:00:00', 46, 58, 58, 'Lecciones pr√°cticas de squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2422, '2014-11-29 12:00:00', 40, 58, 58, 'Introducci√≥n al squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2423, '2014-11-15 14:00:00', 46, 58, 58, 'Lecciones pr√°cticas de squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2424, '2014-11-22 12:00:00', 40, 58, 58, 'Introducci√≥n al squash', 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(2425, '2014-11-17 12:00:00', 48, 57, 57, 'Introducci√≥n al speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2426, '2014-11-24 12:00:00', 48, 57, 57, 'Introducci√≥n al speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2427, '2014-12-13 10:30:00', 45, 57, 57, 'Clase avanzada de speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2428, '2014-12-02 16:00:00', 39, 57, 57, 'Clase avanzada de speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2429, '2014-12-06 10:30:00', 45, 57, 57, 'Clase avanzada de speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2430, '2014-11-26 16:00:00', 39, 57, 57, 'Clase avanzada de speedball', 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(2431, '2014-11-10 09:00:00', 47, 56, 56, 'Clase avanzada de snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2432, '2014-11-17 09:00:00', 47, 56, 56, 'Clase avanzada de snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2433, '2014-12-15 09:00:00', 44, 56, 56, 'Lecciones pr√°cticas de snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2434, '2014-12-07 09:00:00', 38, 56, 56, 'Introducci√≥n al snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2435, '2014-12-08 09:00:00', 44, 56, 56, 'Lecciones pr√°cticas de snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2436, '2014-11-30 09:00:00', 38, 56, 56, 'Introducci√≥n al snowboard', 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(2437, '2014-11-15 10:30:00', 46, 55, 55, 'Introducci√≥n al skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2438, '2014-11-22 10:30:00', 46, 55, 55, 'Introducci√≥n al skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2439, '2014-11-30 10:30:00', 43, 55, 55, 'Introducci√≥n al skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2440, '2014-11-20 12:00:00', 37, 55, 55, 'Lecciones pr√°cticas de skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2441, '2014-11-24 10:30:00', 43, 55, 55, 'Introducci√≥n al skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2442, '2014-11-13 12:00:00', 37, 55, 55, 'Lecciones pr√°cticas de skateboard', 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(2443, '2014-11-22 12:00:00', 45, 54, 54, 'Lecciones pr√°cticas de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2444, '2014-11-29 12:00:00', 45, 54, 54, 'Lecciones pr√°cticas de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2445, '2014-12-19 22:00:00', 42, 54, 54, 'Clase avanzada de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2446, '2014-12-16 18:00:00', 36, 54, 54, 'Clase avanzada de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2447, '2014-12-12 22:00:00', 42, 54, 54, 'Clase avanzada de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2448, '2014-12-09 18:00:00', 36, 54, 54, 'Clase avanzada de softbol', 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(2449, '2014-11-27 10:30:00', 44, 53, 53, 'Clase avanzada de sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2450, '2014-12-03 10:30:00', 44, 53, 53, 'Clase avanzada de sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2451, '2014-11-29 10:30:00', 41, 53, 53, 'Introducci√≥n al sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2452, '2014-12-11 22:00:00', 35, 53, 53, 'Lecciones pr√°cticas de sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2453, '2014-11-22 10:30:00', 41, 53, 53, 'Introducci√≥n al sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2454, '2014-12-04 22:00:00', 35, 53, 53, 'Lecciones pr√°cticas de sendeirismo', 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(2455, '2014-11-25 09:00:00', 43, 52, 52, 'Lecciones pr√°cticas de rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2456, '2014-12-01 09:00:00', 43, 52, 52, 'Lecciones pr√°cticas de rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2457, '2014-12-13 14:00:00', 40, 52, 52, 'Lecciones pr√°cticas de rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2458, '2014-11-23 16:00:00', 34, 52, 52, 'Introducci√≥n al rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2459, '2014-12-06 14:00:00', 40, 52, 52, 'Lecciones pr√°cticas de rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2460, '2014-11-16 16:00:00', 34, 52, 52, 'Introducci√≥n al rugby', 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(2461, '2014-12-08 10:30:00', 42, 51, 51, 'Introducci√≥n al remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2462, '2014-12-15 10:30:00', 42, 51, 51, 'Introducci√≥n al remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2463, '2014-11-18 14:00:00', 39, 51, 51, 'Clase avanzada de remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2464, '2014-11-20 09:00:00', 33, 51, 51, 'Clase avanzada de remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2465, '2014-11-11 14:00:00', 39, 51, 51, 'Clase avanzada de remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2466, '2014-11-13 09:00:00', 33, 51, 51, 'Clase avanzada de remo', 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(2467, '2014-12-10 20:00:00', 41, 50, 50, 'Clase avanzada de polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2468, '2014-12-17 20:00:00', 41, 50, 50, 'Clase avanzada de polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2469, '2014-12-15 12:00:00', 38, 50, 50, 'Lecciones pr√°cticas de polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2470, '2014-11-22 22:00:00', 32, 50, 50, 'Introducci√≥n al polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2471, '2014-12-08 12:00:00', 38, 50, 50, 'Lecciones pr√°cticas de polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2472, '2014-11-15 22:00:00', 32, 50, 50, 'Introducci√≥n al polo', 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(2473, '2014-12-07 18:00:00', 40, 49, 49, 'Introducci√≥n al pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2474, '2014-12-14 18:00:00', 40, 49, 49, 'Introducci√≥n al pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2475, '2014-11-22 09:00:00', 37, 49, 49, 'Introducci√≥n al pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2476, '2014-11-29 16:00:00', 31, 49, 49, 'Lecciones pr√°cticas de pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2477, '2014-11-15 09:00:00', 37, 49, 49, 'Introducci√≥n al pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2478, '2014-11-22 16:00:00', 31, 49, 49, 'Lecciones pr√°cticas de pesca deportiva', 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(2479, '2014-12-06 20:00:00', 39, 48, 48, 'Lecciones pr√°cticas de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2480, '2014-12-13 20:00:00', 39, 48, 48, 'Lecciones pr√°cticas de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2481, '2014-12-04 10:30:00', 36, 48, 48, 'Clase avanzada de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2482, '2014-12-06 10:30:00', 30, 48, 48, 'Clase avanzada de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2483, '2014-11-28 10:30:00', 36, 48, 48, 'Clase avanzada de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2484, '2014-11-30 10:30:00', 30, 48, 48, 'Clase avanzada de paintball', 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(2485, '2014-11-19 16:00:00', 38, 47, 47, 'Clase avanzada de patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2486, '2014-11-26 16:00:00', 38, 47, 47, 'Clase avanzada de patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2487, '2014-11-25 10:30:00', 35, 47, 47, 'Introducci√≥n al patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2488, '2014-12-01 10:30:00', 35, 47, 47, 'Introducci√≥n al patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2489, '2014-11-21 09:00:00', 29, 47, 47, 'Lecciones pr√°cticas de patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2490, '2014-11-14 09:00:00', 29, 47, 47, 'Lecciones pr√°cticas de patinaje', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2491, '2014-11-27 16:00:00', 37, 46, 46, 'Lecciones pr√°cticas de parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(2492, '2014-12-02 10:30:00', 34, 46, 46, 'Lecciones pr√°cticas de parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(2493, '2014-12-03 16:00:00', 37, 46, 46, 'Lecciones pr√°cticas de parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(2494, '2014-12-09 10:30:00', 34, 46, 46, 'Lecciones pr√°cticas de parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(2495, '2014-11-19 22:00:00', 28, 46, 46, 'Introducci√≥n al parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(2496, '2014-11-12 22:00:00', 28, 46, 46, 'Introducci√≥n al parkour', 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(2497, '2014-11-30 18:00:00', 36, 45, 45, 'Introducci√≥n al parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2498, '2014-11-20 12:00:00', 33, 45, 45, 'Clase avanzada de parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2499, '2014-12-07 18:00:00', 36, 45, 45, 'Introducci√≥n al parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2500, '2014-11-27 12:00:00', 33, 45, 45, 'Clase avanzada de parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2501, '2014-12-09 18:00:00', 27, 45, 45, 'Clase avanzada de parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2502, '2014-12-02 18:00:00', 27, 45, 45, 'Clase avanzada de parapente', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2503, '2014-11-15 14:00:00', 35, 44, 44, 'Clase avanzada de paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2504, '2014-11-15 12:00:00', 32, 44, 44, 'Lecciones pr√°cticas de paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2505, '2014-11-22 14:00:00', 35, 44, 44, 'Clase avanzada de paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2506, '2014-11-22 12:00:00', 32, 44, 44, 'Lecciones pr√°cticas de paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2507, '2014-11-27 10:30:00', 26, 44, 44, 'Introducci√≥n al paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2508, '2014-11-20 10:30:00', 26, 44, 44, 'Introducci√≥n al paracaidismo', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2509, '2014-11-25 14:00:00', 34, 43, 43, 'Introducci√≥n al nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2510, '2014-12-09 14:00:00', 31, 43, 43, 'Introducci√≥n al nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2511, '2014-12-01 14:00:00', 34, 43, 43, 'Introducci√≥n al nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2512, '2014-12-16 14:00:00', 31, 43, 43, 'Introducci√≥n al nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2513, '2014-11-25 20:00:00', 25, 43, 43, 'Lecciones pr√°cticas de nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2514, '2014-11-18 20:00:00', 25, 43, 43, 'Lecciones pr√°cticas de nataci√≥n', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2515, '2014-11-27 10:30:00', 33, 42, 42, 'Lecciones pr√°cticas de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2516, '2014-11-30 22:00:00', 30, 42, 42, 'Clase avanzada de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2517, '2014-12-03 10:30:00', 33, 42, 42, 'Lecciones pr√°cticas de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2518, '2014-12-06 22:00:00', 30, 42, 42, 'Clase avanzada de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2519, '2014-11-19 12:00:00', 24, 42, 42, 'Clase avanzada de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2520, '2014-11-12 12:00:00', 24, 42, 42, 'Clase avanzada de mhuai thay', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2521, '2014-11-17 22:00:00', 32, 41, 41, 'Clase avanzada de moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(2522, '2014-12-07 09:00:00', 29, 41, 41, 'Introducci√≥n al moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(2523, '2014-11-24 22:00:00', 32, 41, 41, 'Clase avanzada de moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(2524, '2014-12-14 09:00:00', 29, 41, 41, 'Introducci√≥n al moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(2525, '2014-12-05 20:00:00', 23, 41, 41, 'Lecciones pr√°cticas de moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(2526, '2014-12-12 20:00:00', 23, 41, 41, 'Lecciones pr√°cticas de moton√°utica', 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(2527, '2014-11-15 20:00:00', 31, 40, 40, 'Lecciones pr√°cticas de motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(2528, '2014-12-11 10:30:00', 28, 40, 40, 'Lecciones pr√°cticas de motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(2529, '2014-12-12 14:00:00', 22, 40, 40, 'Introducci√≥n al motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(2530, '2014-11-22 20:00:00', 31, 40, 40, 'Lecciones pr√°cticas de motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(2531, '2014-12-18 10:30:00', 28, 40, 40, 'Lecciones pr√°cticas de motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(2532, '2014-12-19 14:00:00', 22, 40, 40, 'Introducci√≥n al motociclismo', 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(2533, '2014-12-05 22:00:00', 30, 39, 39, 'Introducci√≥n al lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(2534, '2014-12-01 18:00:00', 27, 39, 39, 'Clase avanzada de lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(2535, '2014-11-29 14:00:00', 21, 39, 39, 'Clase avanzada de lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(2536, '2014-12-12 22:00:00', 30, 39, 39, 'Introducci√≥n al lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(2537, '2014-12-08 18:00:00', 27, 39, 39, 'Clase avanzada de lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(2538, '2014-12-05 14:00:00', 21, 39, 39, 'Clase avanzada de lucha', 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(2539, '2014-11-13 16:00:00', 29, 38, 38, 'Clase avanzada de lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2540, '2014-11-27 22:00:00', 26, 38, 38, 'Lecciones pr√°cticas de lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2541, '2014-11-12 18:00:00', 20, 38, 38, 'Introducci√≥n al lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2542, '2014-11-20 16:00:00', 29, 38, 38, 'Clase avanzada de lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2543, '2014-12-03 22:00:00', 26, 38, 38, 'Lecciones pr√°cticas de lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2544, '2014-11-19 18:00:00', 20, 38, 38, 'Introducci√≥n al lacrosse', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2545, '2014-11-25 09:00:00', 28, 37, 37, 'Introducci√≥n al kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2546, '2014-12-03 20:00:00', 25, 37, 37, 'Introducci√≥n al kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2547, '2014-12-07 14:00:00', 19, 37, 37, 'Lecciones pr√°cticas de kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2548, '2014-12-01 09:00:00', 28, 37, 37, 'Introducci√≥n al kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2549, '2014-12-10 20:00:00', 25, 37, 37, 'Introducci√≥n al kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2550, '2014-12-14 14:00:00', 19, 37, 37, 'Lecciones pr√°cticas de kung fu', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2551, '2014-11-27 18:00:00', 27, 36, 36, 'Lecciones pr√°cticas de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2552, '2014-12-02 09:00:00', 24, 36, 36, 'Clase avanzada de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2553, '2014-11-21 12:00:00', 18, 36, 36, 'Clase avanzada de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2554, '2014-12-03 18:00:00', 27, 36, 36, 'Lecciones pr√°cticas de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2555, '2014-12-09 09:00:00', 24, 36, 36, 'Clase avanzada de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2556, '2014-11-28 12:00:00', 18, 36, 36, 'Clase avanzada de karting', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2557, '2014-11-28 22:00:00', 26, 35, 35, 'Clase avanzada de kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2558, '2014-12-01 10:30:00', 23, 35, 35, 'Introducci√≥n al kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2559, '2014-12-08 20:00:00', 17, 35, 35, 'Lecciones pr√°cticas de kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2560, '2014-12-04 22:00:00', 26, 35, 35, 'Clase avanzada de kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2561, '2014-12-08 10:30:00', 23, 35, 35, 'Introducci√≥n al kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2562, '2014-12-15 20:00:00', 17, 35, 35, 'Lecciones pr√°cticas de kickboxing', 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(2563, '2014-12-04 10:30:00', 25, 34, 34, 'Lecciones pr√°cticas de kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(2564, '2014-12-09 12:00:00', 22, 34, 34, 'Lecciones pr√°cticas de kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(2565, '2014-11-11 10:30:00', 16, 34, 34, 'Introducci√≥n al kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(2566, '2014-12-11 10:30:00', 25, 34, 34, 'Lecciones pr√°cticas de kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(2567, '2014-12-16 12:00:00', 22, 34, 34, 'Lecciones pr√°cticas de kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(2568, '2014-11-18 10:30:00', 16, 34, 34, 'Introducci√≥n al kendo', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(2569, '2014-11-18 18:00:00', 24, 33, 33, 'Introducci√≥n al karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2570, '2014-11-29 14:00:00', 21, 33, 33, 'Clase avanzada de karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2571, '2014-12-02 18:00:00', 15, 33, 33, 'Clase avanzada de karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2572, '2014-11-25 18:00:00', 24, 33, 33, 'Introducci√≥n al karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2573, '2014-12-05 14:00:00', 21, 33, 33, 'Clase avanzada de karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2574, '2014-12-09 18:00:00', 15, 33, 33, 'Clase avanzada de karate', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2575, '2014-11-30 20:00:00', 23, 32, 32, 'Clase avanzada de judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(2576, '2014-12-01 20:00:00', 20, 32, 32, 'Lecciones pr√°cticas de judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(2577, '2014-11-28 20:00:00', 14, 32, 32, 'Introducci√≥n al judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(2578, '2014-12-07 20:00:00', 23, 32, 32, 'Clase avanzada de judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(2579, '2014-12-08 20:00:00', 20, 32, 32, 'Lecciones pr√°cticas de judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(2580, '2014-12-04 20:00:00', 14, 32, 32, 'Introducci√≥n al judo', 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(2581, '2014-12-15 09:00:00', 19, 31, 31, 'Introducci√≥n al h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2582, '2014-11-29 10:30:00', 13, 31, 31, 'Lecciones pr√°cticas de h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2583, '2014-11-12 16:00:00', 22, 31, 31, 'Introducci√≥n al h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2584, '2014-12-08 09:00:00', 19, 31, 31, 'Introducci√≥n al h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2585, '2014-11-22 10:30:00', 13, 31, 31, 'Lecciones pr√°cticas de h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2586, '2014-11-19 16:00:00', 22, 31, 31, 'Introducci√≥n al h√≥ckey', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2587, '2014-11-21 20:00:00', 21, 30, 30, 'Lecciones pr√°cticas de h√≥ckey sobre hielo', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(2588, '2014-12-04 20:00:00', 12, 30, 30, 'Clase avanzada de h√≥ckey sobre hielo', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(2589, '2014-11-14 20:00:00', 21, 30, 30, 'Lecciones pr√°cticas de h√≥ckey sobre hielo', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(2590, '2014-11-28 20:00:00', 12, 30, 30, 'Clase avanzada de h√≥ckey sobre hielo', 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(2591, '2014-11-24 20:00:00', 20, 29, 29, 'Clase avanzada de h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2592, '2014-12-17 14:00:00', 17, 29, 29, 'Introducci√≥n al h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2593, '2014-12-17 12:00:00', 11, 29, 29, 'Lecciones pr√°cticas de h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2594, '2014-11-17 20:00:00', 20, 29, 29, 'Clase avanzada de h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2595, '2014-12-10 14:00:00', 17, 29, 29, 'Introducci√≥n al h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2596, '2014-12-10 12:00:00', 11, 29, 29, 'Lecciones pr√°cticas de h√≥ckey sobre hierba', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2597, '2014-12-08 16:00:00', 19, 28, 28, 'Lecciones pr√°cticas de h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2598, '2014-12-06 10:30:00', 16, 28, 28, 'Lecciones pr√°cticas de h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2599, '2014-11-26 20:00:00', 10, 28, 28, 'Introducci√≥n al h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2600, '2014-12-01 16:00:00', 19, 28, 28, 'Lecciones pr√°cticas de h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2601, '2014-11-30 10:30:00', 16, 28, 28, 'Lecciones pr√°cticas de h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2602, '2014-11-19 20:00:00', 10, 28, 28, 'Introducci√≥n al h√≥ckey en patines', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2603, '2014-12-10 14:00:00', 18, 27, 27, 'Introducci√≥n al h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(2604, '2014-11-28 22:00:00', 15, 27, 27, 'Clase avanzada de h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(2605, '2014-12-16 09:00:00', 9, 27, 27, 'Clase avanzada de h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(2606, '2014-12-03 14:00:00', 18, 27, 27, 'Introducci√≥n al h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(2607, '2014-11-21 22:00:00', 15, 27, 27, 'Clase avanzada de h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(2608, '2014-12-09 09:00:00', 9, 27, 27, 'Clase avanzada de h√≠pica', 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(2609, '2014-11-19 16:00:00', 17, 26, 26, 'Clase avanzada de halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2610, '2014-12-16 22:00:00', 14, 26, 26, 'Lecciones pr√°cticas de halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2611, '2014-12-14 18:00:00', 8, 26, 26, 'Introducci√≥n al halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2612, '2014-11-12 16:00:00', 17, 26, 26, 'Clase avanzada de halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2613, '2014-12-09 22:00:00', 14, 26, 26, 'Lecciones pr√°cticas de halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2614, '2014-12-07 18:00:00', 8, 26, 26, 'Introducci√≥n al halterofilia', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2615, '2014-11-29 09:00:00', 16, 25, 25, 'Introducci√≥n al gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2616, '2014-12-09 14:00:00', 13, 25, 25, 'Introducci√≥n al gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2617, '2014-11-29 10:30:00', 7, 25, 25, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2618, '2014-11-22 09:00:00', 16, 25, 25, 'Introducci√≥n al gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2619, '2014-12-02 14:00:00', 13, 25, 25, 'Introducci√≥n al gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2620, '2014-11-22 10:30:00', 7, 25, 25, 'Lecciones pr√°cticas de gimnasia r√≠tmica', 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(2621, '2014-11-18 10:30:00', 15, 24, 24, 'Lecciones pr√°cticas de gimnasia', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2622, '2014-12-07 18:00:00', 12, 24, 24, 'Clase avanzada de gimnasia', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2623, '2014-11-11 10:30:00', 15, 24, 24, 'Lecciones pr√°cticas de gimnasia', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2624, '2014-11-30 18:00:00', 12, 24, 24, 'Clase avanzada de gimnasia', 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(2625, '2014-11-20 16:00:00', 14, 23, 23, 'Clase avanzada de golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(2626, '2014-12-03 22:00:00', 5, 23, 23, 'Introducci√≥n al golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(2627, '2014-12-17 18:00:00', 11, 23, 23, 'Introducci√≥n al golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(2628, '2014-11-13 16:00:00', 14, 23, 23, 'Clase avanzada de golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(2629, '2014-11-27 22:00:00', 5, 23, 23, 'Introducci√≥n al golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(2630, '2014-12-10 18:00:00', 11, 23, 23, 'Introducci√≥n al golf', 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(2631, '2014-11-22 20:00:00', 13, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(2632, '2014-11-20 20:00:00', 4, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(2633, '2014-11-30 20:00:00', 10, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(2634, '2014-11-15 20:00:00', 13, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(2635, '2014-11-13 20:00:00', 4, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(2636, '2014-11-24 20:00:00', 10, 22, 22, 'Lecciones pr√°cticas de f√∫tbol sala', 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(2637, '2014-11-19 14:00:00', 12, 21, 21, 'Introducci√≥n al f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2638, '2014-11-24 12:00:00', 3, 21, 21, 'Clase avanzada de f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2639, '2014-12-13 20:00:00', 9, 21, 21, 'Clase avanzada de f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2640, '2014-11-12 14:00:00', 12, 21, 21, 'Introducci√≥n al f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2641, '2014-11-17 12:00:00', 3, 21, 21, 'Clase avanzada de f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2642, '2014-12-06 20:00:00', 9, 21, 21, 'Clase avanzada de f√∫tbol playa', 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(2643, '2014-11-30 16:00:00', 11, 20, 20, 'Clase avanzada de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2644, '2014-12-09 18:00:00', 2, 20, 20, 'Lecciones pr√°cticas de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2645, '2014-12-11 12:00:00', 8, 20, 20, 'Lecciones pr√°cticas de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2646, '2014-11-23 16:00:00', 11, 20, 20, 'Clase avanzada de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2647, '2014-12-02 18:00:00', 2, 20, 20, 'Lecciones pr√°cticas de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2648, '2014-12-04 12:00:00', 8, 20, 20, 'Lecciones pr√°cticas de f√∫tbol', 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(2649, '2014-12-12 10:30:00', 10, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(2650, '2014-11-22 10:30:00', 1, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(2651, '2014-11-20 14:00:00', 7, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(2652, '2014-12-05 10:30:00', 10, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(2653, '2014-11-15 10:30:00', 1, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(2654, '2014-11-13 14:00:00', 7, 19, 19, 'Introducci√≥n al dardos', 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(2655, '2014-11-21 16:00:00', 9, 18, 18, 'Lecciones pr√°cticas de cr√≥quet', 'Carlos Pe√±a Otaegui 12501, Las Condes', 13114, '\0\0\0\0\0\0\0H%Èß>†Q¿#Àÿú¥@¿'),
(2656, '2014-11-14 16:00:00', 9, 18, 18, 'Lecciones pr√°cticas de cr√≥quet', 'Carlos Pe√±a Otaegui 12501, Las Condes', 13114, '\0\0\0\0\0\0\0H%Èß>†Q¿#Àÿú¥@¿'),
(2657, '2014-11-19 16:00:00', 8, 17, 17, 'Clase avanzada de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(2658, '2014-11-22 10:30:00', 124, 17, 17, 'Lecciones pr√°cticas de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(2659, '2014-11-30 10:30:00', 5, 17, 17, 'Lecciones pr√°cticas de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(2660, '2014-11-12 16:00:00', 8, 17, 17, 'Clase avanzada de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(2661, '2014-11-15 10:30:00', 124, 17, 17, 'Lecciones pr√°cticas de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(2662, '2014-11-23 10:30:00', 5, 17, 17, 'Lecciones pr√°cticas de cr√≠quet', 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(2663, '2014-11-30 10:30:00', 7, 16, 16, 'Lecciones pr√°cticas de ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2664, '2014-11-25 18:00:00', 123, 16, 16, 'Introducci√≥n al ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2665, '2014-12-03 10:30:00', 4, 16, 16, 'Clase avanzada de ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2666, '2014-11-24 10:30:00', 7, 16, 16, 'Lecciones pr√°cticas de ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2667, '2014-11-18 18:00:00', 123, 16, 16, 'Introducci√≥n al ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2668, '2014-11-27 10:30:00', 4, 16, 16, 'Clase avanzada de ciclismo', 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(2669, '2014-12-08 14:00:00', 122, 15, 15, 'Clase avanzada de b√©isbol', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2670, '2014-11-17 18:00:00', 3, 15, 15, 'Lecciones pr√°cticas de b√©isbol', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2671, '2014-12-01 14:00:00', 122, 15, 15, 'Clase avanzada de b√©isbol', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2672, '2014-11-10 18:00:00', 3, 15, 15, 'Lecciones pr√°cticas de b√©isbol', 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(2673, '2014-11-25 14:00:00', 5, 14, 14, 'Clase avanzada de b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2674, '2014-12-01 14:00:00', 5, 14, 14, 'Clase avanzada de b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2675, '2014-11-26 18:00:00', 121, 14, 14, 'Introducci√≥n al b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2676, '2014-12-05 10:30:00', 5, 14, 14, 'Lecciones pr√°cticas de b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2677, '2014-12-09 10:30:00', 2, 14, 14, 'Introducci√≥n al b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2678, '2014-11-19 18:00:00', 121, 14, 14, 'Introducci√≥n al b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2679, '2014-11-29 10:30:00', 5, 14, 14, 'Lecciones pr√°cticas de b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2680, '2014-12-02 10:30:00', 2, 14, 14, 'Introducci√≥n al b√°dminton', 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(2681, '2014-11-10 20:00:00', 4, 13, 13, 'Lecciones pr√°cticas de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2682, '2014-11-17 20:00:00', 4, 13, 13, 'Lecciones pr√°cticas de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2683, '2014-11-25 18:00:00', 120, 13, 13, 'Lecciones pr√°cticas de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2684, '2014-12-17 20:00:00', 4, 13, 13, 'Clase avanzada de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2685, '2014-11-22 16:00:00', 1, 13, 13, 'Clase avanzada de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2686, '2014-11-18 18:00:00', 120, 13, 13, 'Lecciones pr√°cticas de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2687, '2014-12-10 20:00:00', 4, 13, 13, 'Clase avanzada de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2688, '2014-11-15 16:00:00', 1, 13, 13, 'Clase avanzada de boxeo', 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(2689, '2014-11-30 12:00:00', 3, 12, 12, 'Introducci√≥n al bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2690, '2014-12-06 12:00:00', 3, 12, 12, 'Introducci√≥n al bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2691, '2014-11-26 18:00:00', 119, 12, 12, 'Clase avanzada de bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2692, '2014-12-04 18:00:00', 3, 12, 12, 'Lecciones pr√°cticas de bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2693, '2014-11-19 18:00:00', 119, 12, 12, 'Clase avanzada de bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2694, '2014-11-28 18:00:00', 3, 12, 12, 'Lecciones pr√°cticas de bodyboard', 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(2695, '2014-12-07 10:30:00', 118, 11, 11, 'Lecciones pr√°cticas de handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(2696, '2014-11-19 16:00:00', 2, 11, 11, 'Introducci√≥n al handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(2697, '2014-11-30 10:30:00', 2, 11, 11, 'Clase avanzada de handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(2698, '2014-11-30 10:30:00', 118, 11, 11, 'Lecciones pr√°cticas de handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(2699, '2014-11-12 16:00:00', 2, 11, 11, 'Introducci√≥n al handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(2700, '2014-11-24 10:30:00', 2, 11, 11, 'Clase avanzada de handball', 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(2701, '2014-12-03 12:00:00', 117, 10, 10, 'Introducci√≥n al b√°sketball', 'Escandinavia 177', 13114, '\0\0\0\0\0\0\04°ºÔ>§Q¿,09Â¥@¿'),
(2702, '2014-11-27 12:00:00', 117, 10, 10, 'Introducci√≥n al b√°sketball', 'Escandinavia 177', 13114, '\0\0\0\0\0\0\04°ºÔ>§Q¿,09Â¥@¿'),
(2703, '2014-12-06 14:00:00', 116, 9, 9, 'Clase avanzada de baloncesto', 'Av. Apoquindo 6445', 13114, '\0\0\0\0\0\0\0Ë‹˙§Q¿P[é\0H¥@¿'),
(2704, '2014-11-30 14:00:00', 116, 9, 9, 'Clase avanzada de baloncesto', 'Av. Apoquindo 6445', 13114, '\0\0\0\0\0\0\0Ë‹˙§Q¿P[é\0H¥@¿'),
(2705, '2014-11-30 20:00:00', 115, 8, 8, 'Introducci√≥n al atletismo', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2706, '2014-11-23 20:00:00', 115, 8, 8, 'Introducci√≥n al atletismo', 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(2707, '2014-12-06 10:30:00', 114, 7, 7, 'Lecciones pr√°cticas de artes marciales', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2708, '2014-11-30 10:30:00', 114, 7, 7, 'Lecciones pr√°cticas de artes marciales', 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(2709, '2014-11-29 20:00:00', 113, 6, 6, 'Clase avanzada de monta√±ismo', 'Rosario Norte 555', 13114, '\0\0\0\0\0\0\0^_Í≤ñ§Q¿™äG}Ì≥@¿'),
(2710, '2014-11-22 20:00:00', 113, 6, 6, 'Clase avanzada de monta√±ismo', 'Rosario Norte 555', 13114, '\0\0\0\0\0\0\0^_Í≤ñ§Q¿™äG}Ì≥@¿'),
(2711, '2014-12-16 20:00:00', 112, 5, 5, 'Lecciones pr√°cticas de ajedrez', 'Robinson Crusoe 1150', 13114, '\0\0\0\0\0\0\0Ùˇˇì£Q¿≈Ÿ9ìµµ@¿'),
(2712, '2014-12-09 20:00:00', 112, 5, 5, 'Lecciones pr√°cticas de ajedrez', 'Robinson Crusoe 1150', 13114, '\0\0\0\0\0\0\0Ùˇˇì£Q¿≈Ÿ9ìµµ@¿'),
(2713, '2014-11-30 14:00:00', 111, 4, 4, 'Introducci√≥n al aikido', 'Av Cristobal Colon 7000', 13114, '\0\0\0\0\0\0\0\0\0@¶£Q¿–ˇˇø^µ@¿'),
(2714, '2014-11-24 14:00:00', 111, 4, 4, 'Introducci√≥n al aikido', 'Av Cristobal Colon 7000', 13114, '\0\0\0\0\0\0\0\0\0@¶£Q¿–ˇˇø^µ@¿'),
(2715, '2014-11-25 12:00:00', 110, 3, 3, 'Clase avanzada de aer√≥bica', 'Jorge VI 110', 13114, '\0\0\0\0\0\0\0yMr}∏§Q¿Av#¥¥@¿'),
(2716, '2014-11-18 12:00:00', 110, 3, 3, 'Clase avanzada de aer√≥bica', 'Jorge VI 110', 13114, '\0\0\0\0\0\0\0yMr}∏§Q¿Av#¥¥@¿'),
(2717, '2014-12-14 16:00:00', 109, 2, 2, 'Introducci√≥n al ala delta', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2718, '2014-12-07 16:00:00', 109, 2, 2, 'Introducci√≥n al ala delta', 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(2719, '2014-12-10 22:00:00', 108, 1, 1, 'Lecciones pr√°cticas de crossfit', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2720, '2014-12-03 22:00:00', 108, 1, 1, 'Lecciones pr√°cticas de crossfit', 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE IF NOT EXISTS `comuna` (
`id` int(11) NOT NULL,
  `nombre` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `centro` point NOT NULL,
  `region` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15203 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`id`, `nombre`, `centro`, `region`) VALUES
(1101, 'iquique', '', 0),
(1107, 'alto hospicio', '', 0),
(1401, 'pozo almonte', '', 0),
(1402, 'camina', '', 0),
(1403, 'colchane', '', 0),
(1404, 'huara', '', 0),
(1405, 'pica', '', 0),
(2101, 'antofagasta', '', 0),
(2102, 'mejillones', '', 0),
(2103, 'sierra gorda', '', 0),
(2104, 'taltal', '', 0),
(2201, 'calama', '', 0),
(2202, 'ollague', '', 0),
(2203, 'san pedro de atacama', '', 0),
(2301, 'tocopilla', '', 0),
(2302, 'maria elena', '', 0),
(3101, 'copiapo', '', 0),
(3102, 'caldera', '', 0),
(3103, 'tierra amarilla', '', 0),
(3201, 'chanaral', '', 0),
(3202, 'diego de almagro', '', 0),
(3301, 'vallenar', '', 0),
(3302, 'alto del carmen', '', 0),
(3303, 'freirina', '', 0),
(3304, 'huasco', '', 0),
(4101, 'la serena', '', 0),
(4102, 'coquimbo', '', 0),
(4103, 'andacollo', '', 0),
(4104, 'la higuera', '', 0),
(4105, 'paihuano', '', 0),
(4106, 'vicuna', '', 0),
(4201, 'illapel', '', 0),
(4202, 'canela', '', 0),
(4203, 'los vilos', '', 0),
(4204, 'salamanca', '', 0),
(4301, 'ovalle', '', 0),
(4302, 'combarbala', '', 0),
(4303, 'monte patria', '', 0),
(4304, 'punitaqui', '', 0),
(4305, 'rio hurtado', '', 0),
(5101, 'valparaiso', '', 0),
(5102, 'casablanca', '', 0),
(5103, 'concon', '', 0),
(5104, 'juan fernandez', '', 0),
(5105, 'puchuncavi', '', 0),
(5106, 'quilpue', '', 0),
(5107, 'quintero', '', 0),
(5108, 'villa alemana', '', 0),
(5109, 'vina del mar', '', 0),
(5201, 'isla de pascua', '', 0),
(5301, 'los andes', '', 0),
(5302, 'calle larga', '', 0),
(5303, 'rinconada', '', 0),
(5304, 'san esteban', '', 0),
(5401, 'la ligua', '', 0),
(5402, 'cabildo', '', 0),
(5403, 'papudo', '', 0),
(5404, 'petorca', '', 0),
(5405, 'zapallar', '', 0),
(5501, 'quillota', '', 0),
(5502, 'calera', '', 0),
(5503, 'hijuelas', '', 0),
(5504, 'la cruz', '', 0),
(5505, 'limache', '', 0),
(5506, 'nogales', '', 0),
(5507, 'olmue', '', 0),
(5601, 'san antonio', '', 0),
(5602, 'algarrobo', '', 0),
(5603, 'cartagena', '', 0),
(5604, 'el quisco', '', 0),
(5605, 'el tabo', '', 0),
(5606, 'santo domingo', '', 0),
(5701, 'san felipe', '', 0),
(5702, 'catemu', '', 0),
(5704, 'panquehue', '', 0),
(5705, 'putaendo', '', 0),
(5706, 'santa maria', '', 0),
(6101, 'rancagua', '', 0),
(6102, 'codegua', '', 0),
(6103, 'coinco', '', 0),
(6104, 'coltauco', '', 0),
(6105, 'donihue', '', 0),
(6106, 'graneros', '', 0),
(6107, 'las cabras', '', 0),
(6108, 'machali', '', 0),
(6109, 'malloa', '', 0),
(6110, 'mostazal', '', 0),
(6111, 'olivar', '', 0),
(6112, 'peumo', '', 0),
(6113, 'pichidegua', '', 0),
(6114, 'quinta de tilcoco', '', 0),
(6115, 'rengo', '', 0),
(6116, 'requinoa', '', 0),
(6117, 'san vicente', '', 0),
(6201, 'pichilemu', '', 0),
(6202, 'la estrella', '', 0),
(6203, 'litueche', '', 0),
(6204, 'marchigue', '', 0),
(6205, 'navidad', '', 0),
(6206, 'paredones', '', 0),
(6301, 'san fernando', '', 0),
(6302, 'chepica', '', 0),
(6303, 'chimbarongo', '', 0),
(6304, 'lolol', '', 0),
(6305, 'nancagua', '', 0),
(6306, 'palmilla', '', 0),
(6307, 'peralillo', '', 0),
(6308, 'placilla', '', 0),
(6309, 'pumanque', '', 0),
(6310, 'santa cruz', '', 0),
(7101, 'talca', '', 0),
(7102, 'constitucion', '', 0),
(7103, 'curepto', '', 0),
(7104, 'empedrado', '', 0),
(7105, 'maule', '', 0),
(7106, 'pelarco', '', 0),
(7107, 'pencahue', '', 0),
(7108, 'rio claro', '', 0),
(7109, 'san clemente', '', 0),
(7110, 'san rafael', '', 0),
(7201, 'cauquenes', '', 0),
(7202, 'chanco', '', 0),
(7203, 'pelluhue', '', 0),
(7301, 'curico', '', 0),
(7302, 'hualane', '', 0),
(7303, 'licanten', '', 0),
(7304, 'molina', '', 0),
(7305, 'rauco', '', 0),
(7306, 'romeral', '', 0),
(7307, 'sagrada familia', '', 0),
(7308, 'teno', '', 0),
(7309, 'vichuquen', '', 0),
(7401, 'linares', '', 0),
(7402, 'colbun', '', 0),
(7403, 'longavi', '', 0),
(7404, 'parral', '', 0),
(7405, 'retiro', '', 0),
(7406, 'san javier', '', 0),
(7407, 'villa alegre', '', 0),
(7408, 'yerbas buenas', '', 0),
(8101, 'concepcion', '', 0),
(8102, 'coronel', '', 0),
(8103, 'chiguayante', '', 0),
(8104, 'florida', '', 0),
(8105, 'hualqui', '', 0),
(8106, 'lota', '', 0),
(8107, 'penco', '', 0),
(8108, 'san pedro de la paz', '', 0),
(8109, 'santa juana', '', 0),
(8110, 'talcahuano', '', 0),
(8111, 'tome', '', 0),
(8112, 'hualpen', '', 0),
(8201, 'lebu', '', 0),
(8202, 'arauco', '', 0),
(8203, 'canete', '', 0),
(8204, 'contulmo', '', 0),
(8205, 'curanilahue', '', 0),
(8206, 'los alamos', '', 0),
(8207, 'tirua', '', 0),
(8301, 'los angeles', '', 0),
(8302, 'antuco', '', 0),
(8303, 'cabrero', '', 0),
(8304, 'laja', '', 0),
(8305, 'mulchen', '', 0),
(8306, 'nacimiento', '', 0),
(8307, 'negrete', '', 0),
(8308, 'quilaco', '', 0),
(8309, 'quilleco', '', 0),
(8310, 'san rosendo', '', 0),
(8311, 'santa barbara', '', 0),
(8312, 'tucapel', '', 0),
(8313, 'yumbel', '', 0),
(8314, 'alto biobio', '', 0),
(8401, 'chillan', '', 0),
(8402, 'bulnes', '', 0),
(8403, 'cobquecura', '', 0),
(8404, 'coelemu', '', 0),
(8405, 'coihueco', '', 0),
(8406, 'chillan viejo', '', 0),
(8407, 'el carmen', '', 0),
(8408, 'ninhue', '', 0),
(8409, 'niquen', '', 0),
(8410, 'pemuco', '', 0),
(8411, 'pinto', '', 0),
(8412, 'portezuelo', '', 0),
(8413, 'quillon', '', 0),
(8414, 'quirihue', '', 0),
(8415, 'ranquil', '', 0),
(8416, 'san carlos', '', 0),
(8417, 'san fabian', '', 0),
(8418, 'san ignacio', '', 0),
(8419, 'san nicolas', '', 0),
(8420, 'treguaco', '', 0),
(8421, 'yungay', '', 0),
(9101, 'temuco', '', 0),
(9102, 'carahue', '', 0),
(9103, 'cunco', '', 0),
(9104, 'curarrehue', '', 0),
(9105, 'freire', '', 0),
(9106, 'galvarino', '', 0),
(9107, 'gorbea', '', 0),
(9108, 'lautaro', '', 0),
(9109, 'loncoche', '', 0),
(9110, 'melipeuco', '', 0),
(9111, 'nueva imperial', '', 0),
(9112, 'padre las casas', '', 0),
(9113, 'perquenco', '', 0),
(9114, 'pitrufquen', '', 0),
(9115, 'pucon', '', 0),
(9116, 'saavedra', '', 0),
(9117, 'teodoro schmidt', '', 0),
(9118, 'tolten', '', 0),
(9119, 'vilcun', '', 0),
(9120, 'villarrica', '', 0),
(9121, 'cholchol', '', 0),
(9201, 'angol', '', 0),
(9202, 'collipulli', '', 0),
(9203, 'curacautin', '', 0),
(9204, 'ercilla', '', 0),
(9205, 'lonquimay', '', 0),
(9206, 'los sauces', '', 0),
(9207, 'lumaco', '', 0),
(9208, 'puren', '', 0),
(9209, 'renaico', '', 0),
(9210, 'traiguen', '', 0),
(9211, 'victoria', '', 0),
(10101, 'puerto montt', '', 0),
(10102, 'calbuco', '', 0),
(10103, 'cochamo', '', 0),
(10104, 'fresia', '', 0),
(10105, 'frutillar', '', 0),
(10106, 'los muermos', '', 0),
(10107, 'llanquihue', '', 0),
(10108, 'maullin', '', 0),
(10109, 'puerto varas', '', 0),
(10201, 'castro', '', 0),
(10202, 'ancud', '', 0),
(10203, 'chonchi', '', 0),
(10204, 'curaco de velez', '', 0),
(10205, 'dalcahue', '', 0),
(10206, 'puqueldon', '', 0),
(10207, 'queilen', '', 0),
(10208, 'quellon', '', 0),
(10209, 'quemchi', '', 0),
(10210, 'quinchao', '', 0),
(10301, 'osorno', '', 0),
(10302, 'puerto octay', '', 0),
(10303, 'purranque', '', 0),
(10304, 'puyehue', '', 0),
(10305, 'rio negro', '', 0),
(10306, 'san juan de la costa', '', 0),
(10307, 'san pablo', '', 0),
(10401, 'chaiten', '', 0),
(10402, 'futaleufu', '', 0),
(10403, 'hualaihue', '', 0),
(10404, 'palena', '', 0),
(11101, 'coyhaique', '', 0),
(11102, 'lago verde', '', 0),
(11202, 'cisnes', '', 0),
(11203, 'guaitecas', '', 0),
(11301, 'cochrane', '', 0),
(11302, 'ohiggins', '', 0),
(11303, 'tortel', '', 0),
(11401, 'chile chico', '', 0),
(11402, 'rio ibanez', '', 0),
(12101, 'punta arenas', '', 0),
(12102, 'laguna blanca', '', 0),
(12103, 'rio verde', '', 0),
(12104, 'san gregorio', '', 0),
(12201, 'cabo de hornos', '', 0),
(12301, 'porvenir', '', 0),
(12302, 'primavera', '', 0),
(12303, 'timaukel', '', 0),
(12401, 'natales', '', 0),
(12402, 'torres del paine', '', 0),
(13101, 'santiago', '', 0),
(13102, 'cerrillos', '', 0),
(13103, 'cerro navia', '', 0),
(13104, 'conchali', '', 0),
(13105, 'el bosque', '', 0),
(13107, 'huechuraba', '', 0),
(13108, 'independencia', '', 0),
(13109, 'la cisterna', '', 0),
(13110, 'la florida', '', 0),
(13111, 'la granja', '', 0),
(13112, 'la pintana', '', 0),
(13113, 'la reina', '', 0),
(13114, 'las condes', '', 0),
(13115, 'lo barnechea', '', 0),
(13116, 'lo espejo', '', 0),
(13117, 'lo prado', '', 0),
(13118, 'macul', '', 0),
(13119, 'maipu', '', 0),
(13120, 'nunoa', '', 0),
(13121, 'pedro aguirre cerda', '', 0),
(13122, 'penalolen', '', 0),
(13123, 'providencia', '', 0),
(13124, 'pudahuel', '', 0),
(13125, 'quilicura', '', 0),
(13126, 'quinta normal', '', 0),
(13127, 'recoleta', '', 0),
(13128, 'renca', '', 0),
(13129, 'san joaquin', '', 0),
(13130, 'san miguel', '', 0),
(13131, 'san ramon', '', 0),
(13132, 'vitacura', '', 0),
(13201, 'puente alto', '', 0),
(13202, 'pirque', '', 0),
(13203, 'san jose de maipo', '', 0),
(13301, 'colina', '', 0),
(13302, 'lampa', '', 0),
(13303, 'tiltil', '', 0),
(13401, 'san bernardo', '', 0),
(13402, 'buin', '', 0),
(13403, 'calera de tango', '', 0),
(13404, 'paine', '', 0),
(13501, 'melipilla', '', 0),
(13502, 'alhue', '', 0),
(13503, 'curacavi', '', 0),
(13504, 'maria pinto', '', 0),
(13505, 'san pedro', '', 0),
(13601, 'talagante', '', 0),
(13602, 'el monte', '', 0),
(13603, 'isla de maipo', '', 0),
(13604, 'padre hurtado', '', 0),
(13605, 'penaflor', '', 0),
(14101, 'valdivia', '', 0),
(14102, 'corral', '', 0),
(14103, 'lanco', '', 0),
(14104, 'los lagos', '', 0),
(14105, 'mafil', '', 0),
(14106, 'mariquina', '', 0),
(14107, 'paillaco', '', 0),
(14108, 'panguipulli', '', 0),
(14201, 'la union', '', 0),
(14202, 'futrono', '', 0),
(14203, 'lago ranco', '', 0),
(14204, 'rio bueno', '', 0),
(15101, 'arica', '', 0),
(15102, 'camarones', '', 0),
(15201, 'putre', '', 0),
(15202, 'general lagos', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE IF NOT EXISTS `especialidad` (
`id` int(11) NOT NULL,
  `nombre` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `icono` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `categoria` varchar(64) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`id`, `nombre`, `icono`, `descripcion`, `categoria`) VALUES
(1, 'crossfit', '', 'Es un deporte que hace gente desquiciada.', 'de Deporte'),
(2, 'ala delta', '', '', 'de Deporte'),
(3, 'aer√≥bica', '', '', 'de Deporte'),
(4, 'aikido', '', '', 'de Deporte'),
(5, 'ajedrez', '', '', 'de Deporte'),
(6, 'monta√±ismo', '', '', 'de Deporte'),
(7, 'artes marciales', '', '', 'de Deporte'),
(8, 'atletismo', '', '', 'de Deporte'),
(9, 'baloncesto', '', '', 'de Deporte'),
(10, 'b√°sketball', '', '', 'de Deporte'),
(11, 'handball', '', '', 'de Deporte'),
(12, 'bodyboard', '', '', 'de Deporte'),
(13, 'boxeo', '', '', 'de Deporte'),
(14, 'b√°dminton', '', '', 'de Deporte'),
(15, 'b√©isbol', '', '', 'de Deporte'),
(16, 'ciclismo', '', '', 'de Deporte'),
(17, 'cr√≠quet', '', '', 'de Deporte'),
(18, 'cr√≥quet', '', '', 'de Deporte'),
(19, 'dardos', '', '', 'de Deporte'),
(20, 'f√∫tbol', '', '', 'de Deporte'),
(21, 'f√∫tbol playa', '', '', 'de Deporte'),
(22, 'f√∫tbol sala', '', '', 'de Deporte'),
(23, 'golf', '', '', 'de Deporte'),
(24, 'gimnasia', '', '', 'de Deporte'),
(25, 'gimnasia r√≠tmica', '', '', 'de Deporte'),
(26, 'halterofilia', '', '', 'de Deporte'),
(27, 'h√≠pica', '', '', 'de Deporte'),
(28, 'h√≥ckey en patines', '', '', 'de Deporte'),
(29, 'h√≥ckey sobre hierba', '', '', 'de Deporte'),
(30, 'h√≥ckey sobre hielo', '', '', 'de Deporte'),
(31, 'h√≥ckey', '', '', 'de Deporte'),
(32, 'judo', '', '', 'de Deporte'),
(33, 'karate', '', '', 'de Deporte'),
(34, 'kendo', '', '', 'de Deporte'),
(35, 'kickboxing', '', '', 'de Deporte'),
(36, 'karting', '', '', 'de Deporte'),
(37, 'kung fu', '', '', 'de Deporte'),
(38, 'lacrosse', '', '', 'de Deporte'),
(39, 'lucha', '', '', 'de Deporte'),
(40, 'motociclismo', '', '', 'de Deporte'),
(41, 'moton√°utica', '', '', 'de Deporte'),
(42, 'mhuai thay', '', '', 'de Deporte'),
(43, 'nataci√≥n', '', '', 'de Deporte'),
(44, 'paracaidismo', '', '', 'de Deporte'),
(45, 'parapente', '', '', 'de Deporte'),
(46, 'parkour', '', '', 'de Deporte'),
(47, 'patinaje', '', '', 'de Deporte'),
(48, 'paintball', '', '', 'de Deporte'),
(49, 'pesca deportiva', '', '', 'de Deporte'),
(50, 'polo', '', '', 'de Deporte'),
(51, 'remo', '', '', 'de Deporte'),
(52, 'rugby', '', '', 'de Deporte'),
(53, 'sendeirismo', '', '', 'de Deporte'),
(54, 'softbol', '', '', 'de Deporte'),
(55, 'skateboard', '', '', 'de Deporte'),
(56, 'snowboard', '', '', 'de Deporte'),
(57, 'speedball', '', '', 'de Deporte'),
(58, 'squash', '', '', 'de Deporte'),
(59, 'sumo', '', '', 'de Deporte'),
(60, 'superbikes', '', '', 'de Deporte'),
(61, 'surf', '', '', 'de Deporte'),
(62, 'tenis', '', '', 'de Deporte'),
(63, 'tenis de mesa', '', '', 'de Deporte'),
(64, 'tiro', '', '', 'de Deporte'),
(65, 'tiro con arco', '', '', 'de Deporte'),
(66, 'triatl√≥n', '', '', 'de Deporte'),
(67, 'taekwondo', '', '', 'de Deporte'),
(68, 'vela', '', '', 'de Deporte'),
(69, 'voleibol', '', '', 'de Deporte'),
(70, 'volei playa', '', '', 'de Deporte'),
(71, 'waterpolo', '', '', 'de Deporte'),
(72, 'windsurf', '', '', 'de Deporte'),
(73, 'wushu', '', '', 'de Deporte'),
(74, 'win tsun', '', '', 'de Deporte'),
(75, 'gimnasia', '', '', 'de Deporte'),
(76, 'gimnasia r√≠tmica', '', '', 'de Deporte'),
(77, 'esgrima', '', '', 'de Deporte'),
(78, 'esqu√≠', '', '', 'de Deporte'),
(79, 'equitaci√≥n', '', '', 'de Deporte'),
(80, 'Acorde√≥n ', '', '', 'de Performance'),
(81, 'Ajedrez ', '', '', 'de Deportes'),
(82, 'Alfombras ', '', '', 'de Arte y T√©cnicas Manuales'),
(83, 'Algebra', '', '', 'Acad√©micas'),
(84, 'Anatom√≠a ', '', '', 'Acad√©micas'),
(85, 'ArcGIS ', '', '', 'de Inform√°tica'),
(86, 'Armonica ', '', '', 'de Performance'),
(87, 'Arte ', '', '', 'de Arte y T√©cnicas Manuales'),
(88, 'Astronom√≠a ', '', '', 'Acad√©micas'),
(89, 'Autoayuda ', '', '', 'de Otras Disciplinas'),
(90, 'Autodefensa ', '', '', 'de Deportes'),
(91, 'Bachillerato Internacional ', '', '', 'Acad√©micas'),
(92, 'Baile ', '', '', 'de Performance'),
(93, 'Bajo ', '', '', 'de Performance'),
(94, 'Ballet ', '', '', 'de Performance'),
(95, 'Bateria ', '', '', 'de Performance'),
(96, 'Biolog√≠a ', '', '', 'Acad√©micas'),
(97, 'Bioqu√≠mica ', '', '', 'Acad√©micas'),
(98, 'Bowling ', '', '', 'de Deportes'),
(99, 'Calculo ', '', '', 'Acad√©micas'),
(100, 'Caligrafia ', '', '', 'de Arte y T√©cnicas Manuales'),
(101, 'Canto ', '', '', 'de Performance'),
(102, 'Canto ', '', '', 'de Performance'),
(103, 'Capoeira ', '', '', 'de Deportes'),
(104, 'Ceramica ', '', '', 'de Arte y T√©cnicas Manuales'),
(105, 'Chello ', '', '', 'de Performance'),
(106, 'Ciencias ', '', '', 'Acad√©micas'),
(107, 'Ciencias Sociales ', '', '', 'Acad√©micas'),
(108, 'Comedia ', '', '', 'de Performance'),
(109, 'Community Manager ', '', '', 'de Otras Disciplinas'),
(110, 'Composicion Musical ', '', '', 'de Performance'),
(111, 'Comprensi√≥n de Lectura ', '', '', 'Acad√©micas'),
(112, 'Computacion ', '', '', 'de Inform√°tica'),
(113, 'Comunicacion y Lingu√≠stica ', '', '', 'de Otras Disciplinas'),
(114, 'Construccion de Sitios Web ', '', '', 'de Inform√°tica'),
(115, 'Coser ', '', '', 'de Arte y T√©cnicas Manuales'),
(116, 'Cosmetologia ', '', '', 'de Otras Disciplinas'),
(117, 'CPR ', '', '', 'de Otras Disciplinas'),
(118, 'Cueca ', '', '', 'de Performance'),
(119, 'Dibujo ', '', '', 'de Arte y T√©cnicas Manuales'),
(120, 'Dise√±o de Interiores ', '', '', 'de Arte y T√©cnicas Manuales'),
(121, 'Diseno de Vestuario ', '', '', 'de Arte y T√©cnicas Manuales'),
(122, 'Diseno Grafico ', '', '', 'de Arte y T√©cnicas Manuales'),
(123, 'Diseno Industrial ', '', '', 'de Arte y T√©cnicas Manuales'),
(124, 'Economia ', '', '', 'Acad√©micas'),
(125, 'Edicion de Videos ', '', '', 'de Arte y T√©cnicas Manuales'),
(126, 'Escalada ', '', '', 'de Deportes'),
(127, 'Escultura ', '', '', 'de Arte y T√©cnicas Manuales'),
(128, 'Estadisticas ', '', '', 'Acad√©micas'),
(129, 'Excel ', '', '', 'de Inform√°tica'),
(130, 'Filosof√≠a ', '', '', 'Acad√©micas'),
(131, 'Finanzas Personales ', '', '', 'de Inform√°tica'),
(132, 'Fisica ', '', '', 'Acad√©micas'),
(133, 'Flauta ', '', '', 'de Performance'),
(134, 'Floreria ', '', '', 'de Arte y T√©cnicas Manuales'),
(135, 'Flores de Bach ', '', '', 'de Otras Disciplinas'),
(136, 'Fotografia ', '', '', 'de Arte y T√©cnicas Manuales'),
(137, 'Geografia ', '', '', 'Acad√©micas'),
(138, 'Geometria ', '', '', 'Acad√©micas'),
(139, 'GMAT', '', '', 'Acad√©micas'),
(140, 'Grabados y Litografia ', '', '', 'de Arte y T√©cnicas Manuales'),
(141, 'Gram√°tica ', '', '', 'Acad√©micas'),
(142, 'Guitarra ', '', '', 'de Performance'),
(143, 'Historia ', '', '', 'Acad√©micas'),
(144, 'Historia de la Musica ', '', '', 'de Performance'),
(145, 'Illustrator ', '', '', 'de Inform√°tica'),
(146, 'Ingenier√≠a Electrica ', '', '', 'Acad√©micas'),
(147, 'Ingenier√≠a Industrial ', '', '', 'Acad√©micas'),
(148, 'Ingenier√≠a Mecanica ', '', '', 'Acad√©micas'),
(149, 'InstaGIS ', '', '', 'de Inform√°tica'),
(150, 'Introducci√≥n a c√°lculo ', '', '', 'Acad√©micas'),
(151, 'Jardineria ', '', '', 'de Arte y T√©cnicas Manuales'),
(152, 'Joyeria y Olfebrer√≠a ', '', '', 'de Arte y T√©cnicas Manuales'),
(153, 'Keynote', '', '', 'de Inform√°tica'),
(154, 'Maquillaje ', '', '', 'de Otras Disciplinas'),
(155, 'Marketing Digital ', '', '', 'de Otras Disciplinas'),
(156, 'Masaje ', '', '', 'de Otras Disciplinas'),
(157, 'Matamatica Basica ', '', '', 'Acad√©micas'),
(158, 'Matem√°ticas ', '', '', 'Acad√©micas'),
(159, 'Medio Ambiente ', '', '', 'Acad√©micas'),
(160, 'Moda ', '', '', 'de Arte y T√©cnicas Manuales'),
(161, 'Modelaje ', '', '', 'de Otras Disciplinas'),
(162, 'Natacion ', '', '', 'de Deportes'),
(163, 'Optimizacion de Sitios Web ', '', '', 'de Otras Disciplinas'),
(164, 'Photoshop ', '', '', 'de Inform√°tica'),
(165, 'Piano ', '', '', 'de Performance'),
(166, 'pilates ', '', '', 'de Deportes'),
(167, 'Pintura ', '', '', 'de Arte y T√©cnicas Manuales'),
(168, 'Pitch para emprendedores ', '', '', 'de Otras Disciplinas'),
(169, 'Poesia ', '', '', 'Acad√©micas'),
(170, 'Pole Dance ', '', '', 'de Performance'),
(171, 'Powerpoint ', '', '', 'de Inform√°tica'),
(172, 'primeros auxilios ', '', '', 'de Otras Disciplinas'),
(173, 'Programacion ', '', '', 'de Inform√°tica'),
(174, 'PSU Ciencias ', '', '', 'Acad√©micas'),
(175, 'PSU Historia ', '', '', 'Acad√©micas'),
(176, 'PSU Leguaje ', '', '', 'Acad√©micas'),
(177, 'PSU Matematicas ', '', '', 'Acad√©micas'),
(178, 'Quimica ', '', '', 'Acad√©micas'),
(179, 'Revelado Fotografico ', '', '', 'de Arte y T√©cnicas Manuales'),
(180, 'Salsa ', '', '', 'de Performance'),
(181, 'Saxo ', '', '', 'de Performance'),
(182, 'Sicologia ', '', '', 'Acad√©micas'),
(183, 'sobrevivencia ', '', '', 'de Otras Disciplinas'),
(184, 'Sociologia ', '', '', 'Acad√©micas'),
(185, 'Tai Chi ', '', '', 'de Deportes'),
(186, 'tallado ', '', '', 'de Arte y T√©cnicas Manuales'),
(187, 'Tambor ', '', '', 'de Performance'),
(188, 'Tango ', '', '', 'de Performance'),
(189, 'Teatro ', '', '', 'de Performance'),
(190, 'Tecnicas Manuales ', '', '', 'de Arte y T√©cnicas Manuales'),
(191, 'Tejer ', '', '', 'de Arte y T√©cnicas Manuales'),
(192, 'TOEFL', '', '', 'Acad√©micas'),
(193, 'Trabajo en greda ', '', '', 'de Arte y T√©cnicas Manuales'),
(194, 'trabajo en madera ', '', '', 'de Arte y T√©cnicas Manuales'),
(195, 'Trabajo en Metales ', '', '', 'de Arte y T√©cnicas Manuales'),
(196, 'Trigonometria ', '', '', 'Acad√©micas'),
(197, 'Trompeta ', '', '', 'de Performance'),
(198, 'Ukelele ', '', '', 'de Performance'),
(199, 'Video o Cinematograf√≠a ', '', '', 'de Arte y T√©cnicas Manuales'),
(200, 'Violin ', '', '', 'de Performance'),
(201, 'Word ', '', '', 'de Inform√°tica'),
(202, 'Yoga ', '', '', 'de Deportes'),
(203, 'Zumba ', '', '', 'de Deportes'),
(204, 'Buceo', '', '', 'de Deportes'),
(205, 'Audiovisual ', '', '', 'de Arte y T√©cnicas Manuales'),
(206, 'Entrenamiento de Mascotas ', '', '', 'de Otras Disciplinas'),
(207, 'Personal trainer ', '', '', 'de Deportes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento`
--

CREATE TABLE IF NOT EXISTS `establecimiento` (
`id` int(11) NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL COMMENT 'direccion completa',
  `id_comuna` int(6) NOT NULL,
  `location` point NOT NULL COMMENT 'geopoint'
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `establecimiento`
--

INSERT INTO `establecimiento` (`id`, `direccion`, `id_comuna`, `location`) VALUES
(1, 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(2, 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(3, 'Jorge VI 110', 13114, '\0\0\0\0\0\0\0yMr}∏§Q¿Av#¥¥@¿'),
(4, 'Av Cristobal Colon 7000', 13114, '\0\0\0\0\0\0\0\0\0@¶£Q¿–ˇˇø^µ@¿'),
(5, 'Robinson Crusoe 1150', 13114, '\0\0\0\0\0\0\0Ùˇˇì£Q¿≈Ÿ9ìµµ@¿'),
(6, 'Rosario Norte 555', 13114, '\0\0\0\0\0\0\0^_Í≤ñ§Q¿™äG}Ì≥@¿'),
(7, 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(8, 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(9, 'Av. Apoquindo 6445', 13114, '\0\0\0\0\0\0\0Ë‹˙§Q¿P[é\0H¥@¿'),
(10, 'Escandinavia 177', 13114, '\0\0\0\0\0\0\04°ºÔ>§Q¿,09Â¥@¿'),
(11, 'Cristobal Col√≥n 7000', 13114, '\0\0\0\0\0\0\0&~•£Q¿øs\ndµ@¿'),
(12, 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(13, 'Republica Arabe de Egipto 670', 13114, '\0\0\0\0\0\0\0èÏS‚G§Q¿R√ª¥@¿'),
(14, 'Avenida Manquehue Norte 69', 13114, '\0\0\0\0\0\0\0 #`ÓH§Q¿cä$^*¥@¿'),
(15, 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(16, 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(17, 'Los militares', 13114, '\0\0\0\0\0\0\0\ZÂÓõå§Q¿}ÍŸÎ≥@¿'),
(18, 'Carlos Pe√±a Otaegui 12501, Las Condes', 13114, '\0\0\0\0\0\0\0H%Èß>†Q¿#Àÿú¥@¿'),
(19, 'Vital Apoquindo', 13114, '\0\0\0\0\0\0\0\n‹µ“&¢Q¿µ„˝ã*¥@¿'),
(20, 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(21, 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(22, 'La Meseta, San Carlos de Apoquindo', 13114, '\0\0\0\0\0\0\0“Ö\0s°Q¿ı¨£Ωóµ@¿'),
(23, 'La Quebrada 9651', 13114, '\0\0\0\0\0\0\0ƒœ.Ù°Q¿‡ıcµ@¿'),
(24, 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(25, 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(26, 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0Ñ~¶^∑£Q¿á˘ÚÏ≥@¿'),
(27, 'Homs 6945', 13114, '\0\0\0\0\0\0\04‹ø£Q¿¯FÿÚ¥@¿'),
(28, 'Av Kennedy 5933', 13114, '\0\0\0\0\0\0\0Ê*_Æ§Q¿Ê]"≥@¿'),
(29, 'Avenida Presidente Kennedy 6576', 13114, '\0\0\0\0\0\0\0[Æoê.§Q¿ß¸©∫≤@¿'),
(30, 'Av. Kennedy 7301', 13114, '\0\0\0\0\0\0\0*\Zú”£Q¿ë3>…ê≤@¿'),
(31, 'Reina Astrid 950, Lass Condes', 13114, '\0\0\0\0\0\0\0¨L\\£†£Q¿‰A~Td≤@¿'),
(32, 'Av. Apoquindo 7600', 13114, '\0\0\0\0\0\0\0{m∞ó>£Q¿˙Äê:;¥@¿'),
(33, 'Los Trigales 7887', 13114, '\0\0\0\0\0\0\08ô≤ç£Q¿oÓ1≥@¿'),
(34, 'Las Carmelitas 46', 13114, '\0\0\0\0\0\0\0zß„bª£Q¿Smˆ8˙≥@¿'),
(35, 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(36, 'Malmo 505', 13114, '\0\0\0\0\0\0\0˛qæˇ£Q¿ñ\rEx≥@¿'),
(37, 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(38, 'Cerro El Plomo', 13114, '\0\0\0\0\0\0\0ÇÎvÏV§Q¿Ÿ8O	ñ≥@¿'),
(39, 'Av. Kennedy', 13114, '\0\0\0\0\0\0\0õ—Bı£Q¿Y†dgì≤@¿'),
(40, 'Chesterton', 13114, '\0\0\0\0\0\0\0n\r†˜J£Q¿‹ø…á¥@¿'),
(41, 'San Francisco de Asis', 13114, '\0\0\0\0\0\0\0zN◊…W†Q¿ù_Óﬂ·∞@¿'),
(42, 'Av. Tabancura 1623', 13114, '\0\0\0\0\0\0\0aî&¿[¢Q¿<8ü∞@¿'),
(43, 'Estoril 200', 13114, '\0\0\0\0\0\0\0?rP»¢Q¿¥(	˝6±@¿'),
(44, 'Camino El Alba', 13114, '\0\0\0\0\0\0\0»≥À∑>¢Q¿	qÂÏù≥@¿'),
(45, 'Camino Oto√±al', 13114, '\0\0\0\0\0\0\0\0\0˘°Q¿Áæ8¸ﬁ±@¿'),
(46, 'R√≠¬≠o Maule 555', 13114, '\0\0\0\0\0\0\0˛ËN¢Q¿MÑ·4|±@¿'),
(47, 'Paul Harris 9574', 13114, '\0\0\0\0\0\0\0…´Œ¬E¢Q¿I	8Q›±@¿'),
(48, 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(49, 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(50, 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(51, 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(52, 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(53, 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(54, 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(55, 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(56, 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(57, 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(58, 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(59, 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(60, 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(61, 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(62, 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(63, 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(64, 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(65, 'pedro fontova 7789', 13107, '\0\0\0\0\0\0\08†•+ÿ™Q¿ﬂ4}v¨@¿'),
(66, 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(67, 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(68, 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(69, 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(70, 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(71, 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(72, 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(73, 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(74, 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(75, 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(76, 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(77, 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(78, 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(79, 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(80, 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(81, 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(82, 'el rodeo 12850', 13115, '\0\0\0\0\0\0\0Ú}q©J°Q¿P™}:≠@¿'),
(83, 'las condes 12916', 13115, '\0\0\0\0\0\0\0r˘È∑†Q¿Dà+gØ@¿'),
(84, 'camino el alba 11865', 13114, '\0\0\0\0\0\0\0ª’s“˚†Q¿¬ª}V≥@¿'),
(85, 'sanchez fontecilla 310', 13114, '\0\0\0\0\0\0\0qìQe¶Q¿Q°∫π¯µ@¿'),
(86, 'vitacura 2640', 13114, '\0\0\0\0\0\0\0&ßvÜ©¶Q¿i‚‡Iµ@¿'),
(87, 'bandera 101', 13101, '\0\0\0\0\0\0\0ê¡äS≠©Q¿‰Gà∏@¿'),
(88, 'simon bolivar 4509', 13120, '\0\0\0\0\0\0\0ıg?RD•Q¿ˆ@+0dπ@¿'),
(89, 'diego portales 6303', 13110, '\0\0\0\0\0\0\0µ‡E_A£Q¿"5Ìbö«@¿'),
(90, 'los pajaritos 4444', 13119, '\0\0\0\0\0\0\0’<G‰ªØQ¿ﬂQcBÃΩ@¿'),
(91, 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(92, 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(93, 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(94, 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(95, 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(96, 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(97, 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(98, 'del parque 4023', 13107, '\0\0\0\0\0\0\0í>≠ßQ¿O[#Çq≤@¿'),
(99, 'americo vespucio 0', 13110, '\0\0\0\0\0\0\0È∂D.8¶Q¿ö≤”¬@¿'),
(100, 'vitacura 4380', 13132, '\0\0\0\0\0\0\0.…ªö•Q¿bÌc≥@¿'),
(101, 'americo vespucio 1737', 13107, '\0\0\0\0\0\0\0∂h⁄V´Q¿Ê!S>Ø@¿'),
(102, 'encomenderos 200', 13114, '\0\0\0\0\0\0\0™b*˝Ñ¶Q¿äË◊÷Oµ@¿'),
(103, 'tobalaba 11761', 13122, '\0\0\0\0\0\0\0y‹ùµ£Q¿f£s~äΩ@¿'),
(104, 'americo vespucio 1501', 13102, '\0\0\0\0\0\0\0w¢$$“≠Q¿Uiãk|¬@¿'),
(105, 'las condes 13451', 13114, '\0\0\0\0\0\0\0\\:Ê<c†Q¿ä?ä:sØ@¿'),
(106, 'los trapenses 3515', 13115, '\0\0\0\0\0\0\0JÒÒ	Ÿ¢Q¿Òˆ ‰´@¿'),
(107, 'pdte kennedy 6630', 13132, '\0\0\0\0\0\0\06Êuƒ!§Q¿ÑÛ©cï≤@¿'),
(108, 'isidora goyenechea 3000', 13114, '\0\0\0\0\0\0\0ÿ∂(≥A¶Q¿ª’s“˚¥@¿'),
(109, 'isabel la catolica 3740', 13114, '\0\0\0\0\0\0\0p''·_•Q¿&©L1∑@¿'),
(110, 'las condes 13451', 13114, '\0\0\0\0\0\0\0B%Æc\\†Q¿˝NìoØ@¿'),
(111, 'paseo colina sur 14500', 13301, '\0\0\0\0\0\0\0∏v¢$$®Q¿“‰b¨£@¿'),
(112, 'apoquindo 4501', 13114, '\0\0\0\0\0\0\0∆ÌÒB•Q¿Æ’ˆ¥@¿'),
(113, '11 de septiembre 2192', 13123, '\0\0\0\0\0\0\0ÕZ\nH˚¶Q¿ÑÄ|	∂@¿'),
(114, 'echenique 8490', 13113, '\0\0\0\0\0\0\0é\\7•º¢Q¿EÉ<Ö∏@¿'),
(115, 'camino el alba 11969', 13114, '\0\0\0\0\0\0\0µç?QŸ†Q¿∆Nx	N≥@¿'),
(116, 'Escriva de balaguer 5970', 13132, '\0\0\0\0\0\0\0“‚åaN•Q¿¢(–''Ú∞@¿');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
`id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_spanish_ci NOT NULL COMMENT 'email',
  `avatar` varchar(255) COLLATE utf8_spanish_ci NOT NULL COMMENT 'url del avatar',
  `url` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'link a su perfil en facebook, linkedin, etc',
  `fecha_inscrito` datetime NOT NULL,
  `last_seen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_spanish_ci,
  `id_especialidad` int(11) NOT NULL,
  `id_usuario` bigint(17) NOT NULL COMMENT 'el usuario que corresponde a este entrenador (todos los entrenadores pueden loguearse como usuario com√∫n)',
  `is_real` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'es usuario real o es de prueba'
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `name`, `email`, `avatar`, `url`, `fecha_inscrito`, `last_seen`, `description`, `id_especialidad`, `id_usuario`, `is_real`) VALUES
(1, 'Alberto Scheggia', 'alberto.scheggia@gmail.com', 'http://www.craack.com/assets/avatars/13skull-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de crossfit', 1, 1, 0),
(2, 'Liliana Del Bosque', 'liliana.del bosque@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Wookie_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de ala delta', 2, 2, 0),
(3, 'Freddy De Gregorio', 'freddy.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/LOST_Avatar_v_LA1.0', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de aer√≥bica', 3, 3, 0),
(4, 'Daniela Darlette', 'daniela.darlette@gmail.com', 'http://www.craack.com/assets/avatars/9967.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de aikido', 4, 4, 0),
(5, 'Jaime Rosasco', 'jaime.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/77orc-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de ajedrez', 5, 5, 0),
(7, 'Diego J√°uregui', 'diego.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/eko(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de artes marciales', 7, 7, 0),
(8, 'Alberto S√°nchez', 'alberto.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Zabrak_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de atletismo', 8, 8, 0),
(9, 'Consuelo Scheggia', 'consuelo.scheggia@gmail.com', 'http://www.craack.com/assets/avatars/sawyer(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de baloncesto', 9, 9, 0),
(10, 'Mar√≠a Orrego', 'mar√≠a.orrego@gmail.com', 'http://www.craack.com/assets/avatars/20025.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de b√°sketball', 10, 10, 0),
(11, 'Juan J√°uregui', 'juan.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/charlie(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de handball', 11, 11, 0),
(12, 'Luisa Paganini', 'luisa.paganini@gmail.com', 'http://www.craack.com/assets/avatars/desmond(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de bodyboard', 12, 12, 0),
(13, 'Pilar Mart√≠nez', 'pilar.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/20053.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de boxeo', 13, 13, 0),
(14, 'Mar√≠a P√≠a Rioseco', 'mariapia.rioseco@gmail.com', 'http://www.craack.com/assets/avatars/jin(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de b√°dminton', 14, 14, 0),
(15, 'Felipe Puigrred√≥n', 'felipe.puigrred√≥n@gmail.com', 'http://www.craack.com/assets/avatars/hurley(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de b√©isbol', 15, 15, 0),
(16, 'Pilar Darlette', 'pilar.darlette@gmail.com', 'http://www.craack.com/assets/avatars/20052.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de ciclismo', 16, 16, 0),
(17, 'Margarita Hevia', 'margarita.hevia@gmail.com', 'http://www.craack.com/assets/avatars/jack(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de cr√≠quet', 17, 17, 0),
(18, 'Santiago Ar√©valo', 'santiago.ar√©valo@gmail.com', 'http://www.craack.com/assets/avatars/15tpale4-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de cr√≥quet', 18, 18, 0),
(19, 'Freddy Darlette', 'freddy.darlette@gmail.com', 'http://www.craack.com/assets/avatars/Gamorrea.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de dardos', 19, 19, 0),
(20, 'Freddy Hevia', 'freddy.hevia@gmail.com', 'http://www.craack.com/assets/avatars/9963.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de f√∫tbol', 20, 20, 0),
(21, 'Alfredo Ya√±ez', 'alfredo.ya√±ez@gmail.com', 'http://www.craack.com/assets/avatars/star_wars_deathstar1.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de f√∫tbol playa', 21, 21, 0),
(22, 'Romina De Gregorio', 'romina.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/monster(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de f√∫tbol sala', 22, 22, 0),
(23, 'Diego De Gregorio', 'diego.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/165.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de golf', 23, 23, 0),
(24, 'Pilar Puigrred√≥n', 'pilar.puigrred√≥n@gmail.com', 'http://www.craack.com/assets/avatars/sayid(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de gimnasia', 24, 24, 0),
(25, 'Consuelo Orrego', 'consuelo.orrego@gmail.com', 'http://www.craack.com/assets/avatars/71i_xolotl-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de gimnasia r√≠tmica', 25, 25, 0),
(26, 'Daniela J√°uregui', 'daniela.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/53viador-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de halterofilia', 26, 26, 0),
(27, 'Teresa Hevia', 'teresa.hevia@gmail.com', 'http://www.craack.com/assets/avatars/sharapova.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de h√≠pica', 27, 27, 0),
(28, 'Jaime Salas', 'jaime.salas@gmail.com', 'http://www.craack.com/assets/avatars/4alice_duke1-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de h√≥ckey en patines', 28, 28, 0),
(29, 'Felipe Hevia', 'felipe.hevia@gmail.com', 'http://www.craack.com/assets/avatars/155.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de h√≥ckey sobre hierba', 29, 29, 0),
(30, 'Alberto Salas', 'alberto.salas@gmail.com', 'http://www.craack.com/assets/avatars/1209death05-thumb.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de h√≥ckey sobre hielo', 30, 30, 0),
(31, 'Ignacia Salazar', 'ignacia.salazar@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Wookie_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de h√≥ckey', 31, 31, 0),
(32, 'Diego Rosasco', 'diego.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Human_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de judo', 32, 32, 0),
(33, 'Pilar Salas', 'pilar.salas@gmail.com', 'http://www.craack.com/assets/avatars/148.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de karate', 33, 33, 0),
(34, 'Jaime Zamorano', 'jaime.zamorano@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Twielk_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de kendo', 34, 34, 0),
(35, 'Homero Olea', 'homero.olea@gmail.com', 'http://www.craack.com/assets/avatars/19silverhottie-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de kickboxing', 35, 35, 0),
(36, 'Jorge Salazar', 'jorge.salazar@gmail.com', 'http://www.craack.com/assets/avatars/swg_misc_jawa.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de karting', 36, 36, 0),
(37, 'Felipe Garc√≠a', 'felipe.garc√≠a@gmail.com', 'http://www.craack.com/assets/avatars/345newquaysunsetAA-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de kung fu', 37, 37, 0),
(38, 'Daniela Dom√≠nguez', 'daniela.dom√≠nguez@gmail.com', 'http://www.craack.com/assets/avatars/2411.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de lacrosse', 38, 38, 0),
(39, 'Romina Olea', 'romina.olea@gmail.com', 'http://www.craack.com/assets/avatars/shannon(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de lucha', 39, 39, 0),
(40, 'Margarita S√°nchez', 'margarita.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/431Alien1_ktk-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de motociclismo', 40, 40, 0),
(41, 'Margarita Garc√≠a', 'margarita.garc√≠a@gmail.com', 'http://www.craack.com/assets/avatars/Star_Wars_46.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de moton√°utica', 41, 41, 0),
(42, 'Antonia Rosasco', 'antonia.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/michael(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de mhuai thay', 42, 42, 0),
(43, 'Alberto Mart√≠nez', 'alberto.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/patoyanez.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de nataci√≥n', 43, 43, 0),
(44, 'Santiago Santis', 'milagros.santis@gmail.com', 'http://www.craack.com/assets/avatars/chino.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de paracaidismo', 44, 44, 0),
(45, 'Teresa Olivera', 'teresa.olivera@gmail.com', 'http://www.craack.com/assets/avatars/michael(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de parapente', 45, 45, 0),
(46, 'Fabiola De Gregorio', 'fabiola.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/1190h_h_r-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de parkour', 46, 46, 0),
(47, 'Consuelo Mart√≠nez', 'consuelo.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/192.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de patinaje', 47, 47, 0),
(48, 'Fabiola Ledermann', 'fabiola.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/eko(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de paintball', 48, 48, 0),
(49, 'Teresa Ledermann', 'teresa.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/stormtrooper.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de pesca deportiva', 49, 49, 0),
(50, 'Consuelo Rosasco', 'consuelo.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/147.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de polo', 50, 50, 0),
(51, 'Teresa Bodanovic', 'teresa.bodanovic@gmail.com', 'http://www.craack.com/assets/avatars/o_human1.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de remo', 51, 51, 0),
(52, 'Ignacia Pizarro', 'ignacia.pizarro@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Twielk_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de rugby', 52, 52, 0),
(53, 'Ramiro Pizarro', 'ramiro.pizarro@gmail.com', 'http://www.craack.com/assets/avatars/20031.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de sendeirismo', 53, 53, 0),
(54, 'Sandra Hevia', 'sandra.hevia@gmail.com', 'http://www.craack.com/assets/avatars/1185adl-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de softbol', 54, 54, 0),
(55, 'Raquel Darlette', 'raquel.darlette@gmail.com', 'http://www.craack.com/assets/avatars/16614.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de skateboard', 55, 55, 0),
(57, 'Luis Mart√≠nez', 'luis.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/img170.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de speedball', 57, 57, 0),
(58, 'Miguel Celed√≥n', 'miguel.celed√≥n@gmail.com', 'http://www.craack.com/assets/avatars/9966.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de squash', 58, 58, 0),
(59, 'Romina Hevia', 'romina.hevia@gmail.com', 'http://www.craack.com/assets/avatars/9Mark_Lockett5-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de sumo', 59, 59, 0),
(60, 'Manuel Salas', 'manuel.salas@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Human_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de superbikes', 60, 60, 0),
(61, 'Liliana Salazar', 'liliana.salazar@gmail.com', 'http://www.craack.com/assets/avatars/6602.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de surf', 61, 61, 0),
(62, 'Raquel Salas', 'raquel.salas@gmail.com', 'http://www.craack.com/assets/avatars/150.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de tenis', 62, 62, 0),
(63, 'Alberto Celed√≥n', 'alberto.celed√≥n@gmail.com', 'http://www.craack.com/assets/avatars/9962.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de tenis de mesa', 63, 63, 0),
(64, 'Jaime S√°nchez', 'jaime.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/153.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de tiro', 64, 64, 0),
(65, 'Liliana Ledermann', 'liliana.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/o_wookiee1.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de tiro con arco', 65, 65, 0),
(66, 'Miguel Garrido', 'miguel.garrido@gmail.com', 'http://www.craack.com/assets/avatars/71.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de triatl√≥n', 66, 66, 0),
(67, 'Homero Donoso', 'homero.donoso@gmail.com', 'http://www.craack.com/assets/avatars/42whatthehell1-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de taekwondo', 67, 67, 0),
(68, 'Jaime J√°uregui', 'jaime.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/6885.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de vela', 68, 68, 0),
(69, 'Fabiola Donoso', 'fabiola.donoso@gmail.com', 'http://www.craack.com/assets/avatars/29ikon.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de voleibol', 69, 69, 0),
(70, 'Santiago Donoso', 'santiago.donoso@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Zabrak_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de volei playa', 70, 70, 0),
(71, 'Freddy Donoso', 'freddy.donoso@gmail.com', 'http://www.craack.com/assets/avatars/186.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de waterpolo', 71, 71, 0),
(72, 'Camilo G√≥mez', 'camilo.g√≥mez@gmail.com', 'http://www.craack.com/assets/avatars/ana(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de windsurf', 72, 72, 0),
(73, 'Diego Jara', 'diego.jara@gmail.com', 'http://www.craack.com/assets/avatars/1500Leader_Of_The_Pack-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de wushu', 73, 73, 0),
(74, 'Ignacia Ried', 'ignacia.ried@gmail.com', 'http://www.craack.com/assets/avatars/15littlerabbit-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de win tsun', 74, 74, 0),
(75, 'Freddy Ledermann', 'freddy.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/20029.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de gimnasia', 75, 75, 0),
(76, 'Antonia S√°nchez', 'antonia.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/18869.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de gimnasia r√≠tmica', 76, 76, 0),
(77, 'Homero Jara', 'homero.jara@gmail.com', 'http://www.craack.com/assets/avatars/6enlightened_CG-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de esgrima', 77, 77, 0),
(78, 'Ernesto Zamorano', 'ernesto.zamorano@gmail.com', 'http://www.craack.com/assets/avatars/103guardthumb-thumb.JPG', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de esqu√≠', 78, 78, 0),
(79, 'Luis Alessandri', 'luis.alessandri@gmail.com', 'http://www.craack.com/assets/avatars/12533.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de equitaci√≥n', 79, 79, 0),
(80, 'Pedro Salazar', 'pedro.salazar@gmail.com', 'http://www.craack.com/assets/avatars/20022.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Acorde√≥n ', 80, 80, 0),
(81, 'Gerardo Reinozo', 'gerardo.reinozo@gmail.com', 'http://www.craack.com/assets/avatars/146.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Ajedrez ', 81, 81, 0),
(82, 'Enrique Misle', 'enrique.misle@gmail.com', 'http://www.craack.com/assets/avatars/arzt(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Alfombras ', 82, 82, 0),
(83, 'Alberto Misle', 'alberto.misle@gmail.com', 'http://www.craack.com/assets/avatars/o_C-3PO1.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Algebra', 83, 83, 0),
(84, 'Milagros Alessandri', 'milagros.alessandri@gmail.com', 'http://www.craack.com/assets/avatars/20024.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Anatom√≠a ', 84, 84, 0),
(85, 'Benito Rosasco', 'benito.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/20042.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de ArcGIS ', 85, 85, 0),
(86, 'Benito J√°uregui', 'benito.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/9965.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Armonica ', 86, 86, 0),
(87, 'Emilio Alessandri', 'emilio.alessandri@gmail.com', 'http://www.craack.com/assets/avatars/15tuglybird2-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Arte ', 87, 87, 0),
(88, 'Camilo S√°nchez', 'camilo.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/desmond(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Astronom√≠a ', 88, 88, 0),
(89, 'Teresa Rosasco', 'teresa.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/swg_misc_kyrat_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Autoayuda ', 89, 89, 0),
(90, 'Alberto Guevara', 'alberto.guevara@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_rodain_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Autodefensa ', 90, 90, 0),
(91, 'Mar√≠a Ya√±ez', 'mar√≠a.ya√±ez@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_moncalla_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Bachillerato Internacional ', 91, 91, 0),
(92, 'Raquel G√≥mez', 'raquel.g√≥mez@gmail.com', 'http://www.craack.com/assets/avatars/37AllAvatarsDrowMage-thumb.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Baile ', 92, 92, 0),
(93, 'Diego Bodanovic', 'diego.bodanovic@gmail.com', 'http://www.craack.com/assets/avatars/123boy_looking-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Bajo ', 93, 93, 0),
(94, 'Alfredo Del Bosque', 'alfredo.del bosque@gmail.com', 'http://www.craack.com/assets/avatars/10aa15-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Ballet ', 94, 94, 0),
(95, 'Camilo Garc√≠a', 'camilo.garc√≠a@gmail.com', 'http://www.craack.com/assets/avatars/o_bothan1.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Bateria ', 95, 95, 0),
(96, 'Manuel Mart√≠nez', 'manuel.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/4133-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Biolog√≠a ', 96, 96, 0),
(97, 'Melissa Darlette', 'melissa.darlette@gmail.com', 'http://www.craack.com/assets/avatars/20049.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Bioqu√≠mica ', 97, 97, 0),
(98, 'Juan Dom√≠nguez', 'juan.dom√≠nguez@gmail.com', 'http://www.craack.com/assets/avatars/9879.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Bowling ', 98, 98, 0),
(99, 'Milagros Garc√≠a', 'milagros.garc√≠a@gmail.com', 'http://www.craack.com/assets/avatars/173.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Calculo ', 99, 99, 0),
(100, 'Pilar Jara', 'pilar.jara@gmail.com', 'http://www.craack.com/assets/avatars/locke(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Caligrafia ', 100, 100, 0),
(101, 'Vicente Guevara', 'vicente.guevara@gmail.com', 'http://www.craack.com/assets/avatars/25715-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Canto ', 101, 101, 0),
(102, 'Antonia Santis', 'antonia.santis@gmail.com', 'http://www.craack.com/assets/avatars/walt(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Canto ', 102, 102, 0),
(103, 'Miguel Salas', 'miguel.salas@gmail.com', 'http://www.craack.com/assets/avatars/locke(3).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Capoeira ', 103, 103, 0),
(104, 'Mar√≠a Ledermann', 'mar√≠a.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/charlie(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Ceramica ', 104, 104, 0),
(105, 'Teresa Garrido', 'teresa.garrido@gmail.com', 'http://www.craack.com/assets/avatars/swg_misc_jabba.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Chello ', 105, 105, 0),
(106, 'Melissa Rosasco', 'melissa.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/20027.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Ciencias ', 106, 106, 0),
(107, 'Mario Darlette', 'mario.darlette@gmail.com', 'http://www.craack.com/assets/avatars/20026.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Ciencias Sociales ', 107, 107, 0),
(108, 'Luis Salas', 'luis.salas@gmail.com', 'http://www.craack.com/assets/avatars/zamorano.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Comedia ', 108, 108, 0),
(109, 'Liliana Orrego', 'liliana.orrego@gmail.com', 'http://www.craack.com/assets/avatars/monicaseles.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Community Manager ', 109, 109, 0),
(110, 'Liliana De Gregorio', 'liliana.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/375053_needlespunsundropped.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Composicion Musical ', 110, 110, 0),
(111, 'Camilo Salas', 'camilo.salas@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Trans_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Comprensi√≥n de Lectura ', 111, 111, 0),
(112, 'Mario Mart√≠nez', 'mario.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/32stonewolf_av-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Computacion ', 112, 112, 0),
(113, 'Mar√≠a Donoso', 'mar√≠a.donoso@gmail.com', 'http://www.craack.com/assets/avatars/6barbarianbabe_CG-thumb.JPG', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Comunicacion y Lingu√≠stica ', 113, 113, 0),
(114, 'Asunci√≥n Salazar', 'asunci√≥n.salazar@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Bothan_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Construccion de Sitios Web ', 114, 114, 0),
(115, 'Miguel Scheggia', 'miguel.scheggia@gmail.com', 'http://www.craack.com/assets/avatars/massu.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Coser ', 115, 115, 0),
(116, 'Jorge Guevara', 'jorge.guevara@gmail.com', 'http://www.craack.com/assets/avatars/Star_Wars_44.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Cosmetologia ', 116, 116, 0),
(117, 'Raquel Donoso', 'raquel.donoso@gmail.com', 'http://www.craack.com/assets/avatars/walt(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de CPR ', 117, 117, 0),
(118, 'Sergio Celed√≥n', 'sergio.celed√≥n@gmail.com', 'http://www.craack.com/assets/avatars/kate(2).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Cueca ', 118, 118, 0),
(119, 'Ramiro Dom√≠nguez', 'ramiro.dom√≠nguez@gmail.com', 'http://www.craack.com/assets/avatars/shannon(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Dibujo ', 119, 119, 0),
(120, 'Milagros Hevia', 'milagros.hevia@gmail.com', 'http://www.craack.com/assets/avatars/o_zabrak1.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Dise√±o de Interiores ', 120, 120, 0),
(121, 'Miguel Puigrred√≥n', 'miguel.puigrred√≥n@gmail.com', 'http://www.craack.com/assets/avatars/gary.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Diseno de Vestuario ', 121, 121, 0),
(122, 'Milagros Donoso', 'milagros.donoso@gmail.com', 'http://www.craack.com/assets/avatars/Star_Wars_40.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Diseno Grafico ', 122, 122, 0),
(123, 'Diego Scheggia', 'diego.scheggia@gmail.com', 'http://www.craack.com/assets/avatars/431alien_saucer_ktk-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Diseno Industrial ', 123, 123, 0),
(124, 'Benito Santis', 'benito.santis@gmail.com', 'http://www.craack.com/assets/avatars/claire(1).gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Economia ', 124, 124, 0),
(125, 'Antonia G√≥mez', 'antonia.g√≥mez@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_moncalla_A.gif', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Edicion de Videos ', 125, 125, 0),
(126, 'Daniela Hevia', 'daniela.hevia@gmail.com', 'http://www.craack.com/assets/avatars/151.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Escalada ', 126, 126, 0),
(127, 'Antonia Huidobro', 'antonia.huidobro@gmail.com', 'http://www.craack.com/assets/avatars/431AlienPortrait_ktk-thumb.jpg', NULL, '2014-10-06 18:39:43', '2014-10-06 19:28:19', 'Campe√≥n regional de Escultura ', 127, 127, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(17) NOT NULL,
  `name` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(14) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_real` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'permite distinguir a los usuarios creados como maqueta de los reales',
  `updated_time` datetime NOT NULL COMMENT 'la √∫ltima vez que actualiz√≥ el perfil',
  `gender` enum('male','female') COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `name`, `email`, `avatar`, `celular`, `is_real`, `updated_time`, `gender`) VALUES
(1, 'Alberto Scheggia', 'alberto.scheggia@gmail.com', 'http://www.craack.com/assets/avatars/13skull-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(2, 'Liliana Del Bosque', 'liliana.del bosque@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Wookie_A.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(3, 'Freddy De Gregorio', 'freddy.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/LOST_Avatar_v_LA1.0', '', 0, '0000-00-00 00:00:00', 'male'),
(4, 'Daniela Darlette', 'daniela.darlette@gmail.com', 'http://www.craack.com/assets/avatars/9967.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(5, 'Jaime Rosasco', 'jaime.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/77orc-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(7, 'Diego J√°uregui', 'diego.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/eko(2).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(8, 'Alberto S√°nchez', 'alberto.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Zabrak_A.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(9, 'Consuelo Scheggia', 'consuelo.scheggia@gmail.com', 'http://www.craack.com/assets/avatars/sawyer(1).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(10, 'Mar√≠a Orrego', 'mar√≠a.orrego@gmail.com', 'http://www.craack.com/assets/avatars/20025.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(11, 'Juan J√°uregui', 'juan.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/charlie(1).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(12, 'Luisa Paganini', 'luisa.paganini@gmail.com', 'http://www.craack.com/assets/avatars/desmond(2).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(13, 'Pilar Mart√≠nez', 'pilar.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/20053.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(14, 'Mar√≠a P√≠a Rioseco', 'mariapia.rioseco@gmail.com', 'http://www.craack.com/assets/avatars/jin(2).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(15, 'Felipe Puigrred√≥n', 'felipe.puigrred√≥n@gmail.com', 'http://www.craack.com/assets/avatars/hurley(2).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(16, 'Pilar Darlette', 'pilar.darlette@gmail.com', 'http://www.craack.com/assets/avatars/20052.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(17, 'Margarita Hevia', 'margarita.hevia@gmail.com', 'http://www.craack.com/assets/avatars/jack(2).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(18, 'Santiago Ar√©valo', 'santiago.ar√©valo@gmail.com', 'http://www.craack.com/assets/avatars/15tpale4-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(19, 'Freddy Darlette', 'freddy.darlette@gmail.com', 'http://www.craack.com/assets/avatars/Gamorrea.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(20, 'Freddy Hevia', 'freddy.hevia@gmail.com', 'http://www.craack.com/assets/avatars/9963.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(21, 'Alfredo Ya√±ez', 'alfredo.ya√±ez@gmail.com', 'http://www.craack.com/assets/avatars/star_wars_deathstar1.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(22, 'Romina De Gregorio', 'romina.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/monster(1).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(23, 'Diego De Gregorio', 'diego.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/165.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(24, 'Pilar Puigrred√≥n', 'pilar.puigrred√≥n@gmail.com', 'http://www.craack.com/assets/avatars/sayid(2).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(25, 'Consuelo Orrego', 'consuelo.orrego@gmail.com', 'http://www.craack.com/assets/avatars/71i_xolotl-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(26, 'Daniela J√°uregui', 'daniela.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/53viador-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(27, 'Teresa Hevia', 'teresa.hevia@gmail.com', 'http://www.craack.com/assets/avatars/sharapova.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(28, 'Jaime Salas', 'jaime.salas@gmail.com', 'http://www.craack.com/assets/avatars/4alice_duke1-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(29, 'Felipe Hevia', 'felipe.hevia@gmail.com', 'http://www.craack.com/assets/avatars/155.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(30, 'Alberto Salas', 'alberto.salas@gmail.com', 'http://www.craack.com/assets/avatars/1209death05-thumb.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(31, 'Ignacia Salazar', 'ignacia.salazar@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Wookie_A.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(32, 'Diego Rosasco', 'diego.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Human_A.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(33, 'Pilar Salas', 'pilar.salas@gmail.com', 'http://www.craack.com/assets/avatars/148.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(34, 'Jaime Zamorano', 'jaime.zamorano@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Twielk_A.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(35, 'Homero Olea', 'homero.olea@gmail.com', 'http://www.craack.com/assets/avatars/19silverhottie-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(36, 'Jorge Salazar', 'jorge.salazar@gmail.com', 'http://www.craack.com/assets/avatars/swg_misc_jawa.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(37, 'Felipe Garc√≠a', 'felipe.garc√≠a@gmail.com', 'http://www.craack.com/assets/avatars/345newquaysunsetAA-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(38, 'Daniela Dom√≠nguez', 'daniela.dom√≠nguez@gmail.com', 'http://www.craack.com/assets/avatars/2411.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(39, 'Romina Olea', 'romina.olea@gmail.com', 'http://www.craack.com/assets/avatars/shannon(2).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(40, 'Margarita S√°nchez', 'margarita.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/431Alien1_ktk-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(41, 'Margarita Garc√≠a', 'margarita.garc√≠a@gmail.com', 'http://www.craack.com/assets/avatars/Star_Wars_46.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(42, 'Antonia Rosasco', 'antonia.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/michael(2).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(43, 'Alberto Mart√≠nez', 'alberto.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/patoyanez.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(44, 'Santiago Santis', 'milagros.santis@gmail.com', 'http://www.craack.com/assets/avatars/chino.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(45, 'Teresa Olivera', 'teresa.olivera@gmail.com', 'http://www.craack.com/assets/avatars/michael(1).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(46, 'Fabiola De Gregorio', 'fabiola.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/1190h_h_r-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(47, 'Consuelo Mart√≠nez', 'consuelo.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/192.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(48, 'Fabiola Ledermann', 'fabiola.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/eko(1).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(49, 'Teresa Ledermann', 'teresa.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/stormtrooper.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(50, 'Consuelo Rosasco', 'consuelo.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/147.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(51, 'Teresa Bodanovic', 'teresa.bodanovic@gmail.com', 'http://www.craack.com/assets/avatars/o_human1.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(52, 'Ignacia Pizarro', 'ignacia.pizarro@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Twielk_A.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(53, 'Ramiro Pizarro', 'ramiro.pizarro@gmail.com', 'http://www.craack.com/assets/avatars/20031.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(54, 'Sandra Hevia', 'sandra.hevia@gmail.com', 'http://www.craack.com/assets/avatars/1185adl-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(55, 'Raquel Darlette', 'raquel.darlette@gmail.com', 'http://www.craack.com/assets/avatars/16614.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(57, 'Luis Mart√≠nez', 'luis.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/img170.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(58, 'Miguel Celed√≥n', 'miguel.celed√≥n@gmail.com', 'http://www.craack.com/assets/avatars/9966.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(59, 'Romina Hevia', 'romina.hevia@gmail.com', 'http://www.craack.com/assets/avatars/9Mark_Lockett5-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(60, 'Manuel Salas', 'manuel.salas@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Human_A.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(61, 'Liliana Salazar', 'liliana.salazar@gmail.com', 'http://www.craack.com/assets/avatars/6602.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(62, 'Raquel Salas', 'raquel.salas@gmail.com', 'http://www.craack.com/assets/avatars/150.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(63, 'Alberto Celed√≥n', 'alberto.celed√≥n@gmail.com', 'http://www.craack.com/assets/avatars/9962.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(64, 'Jaime S√°nchez', 'jaime.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/153.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(65, 'Liliana Ledermann', 'liliana.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/o_wookiee1.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(66, 'Miguel Garrido', 'miguel.garrido@gmail.com', 'http://www.craack.com/assets/avatars/71.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(67, 'Homero Donoso', 'homero.donoso@gmail.com', 'http://www.craack.com/assets/avatars/42whatthehell1-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(68, 'Jaime J√°uregui', 'jaime.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/6885.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(69, 'Fabiola Donoso', 'fabiola.donoso@gmail.com', 'http://www.craack.com/assets/avatars/29ikon.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(70, 'Santiago Donoso', 'santiago.donoso@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Zabrak_A.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(71, 'Freddy Donoso', 'freddy.donoso@gmail.com', 'http://www.craack.com/assets/avatars/186.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(72, 'Camilo G√≥mez', 'camilo.g√≥mez@gmail.com', 'http://www.craack.com/assets/avatars/ana(1).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(73, 'Diego Jara', 'diego.jara@gmail.com', 'http://www.craack.com/assets/avatars/1500Leader_Of_The_Pack-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(74, 'Ignacia Ried', 'ignacia.ried@gmail.com', 'http://www.craack.com/assets/avatars/15littlerabbit-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(75, 'Freddy Ledermann', 'freddy.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/20029.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(76, 'Antonia S√°nchez', 'antonia.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/18869.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(77, 'Homero Jara', 'homero.jara@gmail.com', 'http://www.craack.com/assets/avatars/6enlightened_CG-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(78, 'Ernesto Zamorano', 'ernesto.zamorano@gmail.com', 'http://www.craack.com/assets/avatars/103guardthumb-thumb.JPG', '', 0, '0000-00-00 00:00:00', 'male'),
(79, 'Luis Alessandri', 'luis.alessandri@gmail.com', 'http://www.craack.com/assets/avatars/12533.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(80, 'Pedro Salazar', 'pedro.salazar@gmail.com', 'http://www.craack.com/assets/avatars/20022.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(81, 'Gerardo Reinozo', 'gerardo.reinozo@gmail.com', 'http://www.craack.com/assets/avatars/146.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(82, 'Enrique Misle', 'enrique.misle@gmail.com', 'http://www.craack.com/assets/avatars/arzt(1).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(83, 'Alberto Misle', 'alberto.misle@gmail.com', 'http://www.craack.com/assets/avatars/o_C-3PO1.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(84, 'Milagros Alessandri', 'milagros.alessandri@gmail.com', 'http://www.craack.com/assets/avatars/20024.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(85, 'Benito Rosasco', 'benito.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/20042.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(86, 'Benito J√°uregui', 'benito.j√°uregui@gmail.com', 'http://www.craack.com/assets/avatars/9965.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(87, 'Emilio Alessandri', 'emilio.alessandri@gmail.com', 'http://www.craack.com/assets/avatars/15tuglybird2-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(88, 'Camilo S√°nchez', 'camilo.s√°nchez@gmail.com', 'http://www.craack.com/assets/avatars/desmond(1).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(89, 'Teresa Rosasco', 'teresa.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/swg_misc_kyrat_A.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(90, 'Alberto Guevara', 'alberto.guevara@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_rodain_A.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(91, 'Mar√≠a Ya√±ez', 'mar√≠a.ya√±ez@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_moncalla_A.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(92, 'Raquel G√≥mez', 'raquel.g√≥mez@gmail.com', 'http://www.craack.com/assets/avatars/37AllAvatarsDrowMage-thumb.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(93, 'Diego Bodanovic', 'diego.bodanovic@gmail.com', 'http://www.craack.com/assets/avatars/123boy_looking-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(94, 'Alfredo Del Bosque', 'alfredo.del bosque@gmail.com', 'http://www.craack.com/assets/avatars/10aa15-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(95, 'Camilo Garc√≠a', 'camilo.garc√≠a@gmail.com', 'http://www.craack.com/assets/avatars/o_bothan1.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(96, 'Manuel Mart√≠nez', 'manuel.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/4133-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(97, 'Melissa Darlette', 'melissa.darlette@gmail.com', 'http://www.craack.com/assets/avatars/20049.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(98, 'Juan Dom√≠nguez', 'juan.dom√≠nguez@gmail.com', 'http://www.craack.com/assets/avatars/9879.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(99, 'Milagros Garc√≠a', 'milagros.garc√≠a@gmail.com', 'http://www.craack.com/assets/avatars/173.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(100, 'Pilar Jara', 'pilar.jara@gmail.com', 'http://www.craack.com/assets/avatars/locke(2).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(101, 'Vicente Guevara', 'vicente.guevara@gmail.com', 'http://www.craack.com/assets/avatars/25715-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(102, 'Antonia Santis', 'antonia.santis@gmail.com', 'http://www.craack.com/assets/avatars/walt(1).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(103, 'Miguel Salas', 'miguel.salas@gmail.com', 'http://www.craack.com/assets/avatars/locke(3).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(104, 'Mar√≠a Ledermann', 'mar√≠a.ledermann@gmail.com', 'http://www.craack.com/assets/avatars/charlie(2).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(105, 'Teresa Garrido', 'teresa.garrido@gmail.com', 'http://www.craack.com/assets/avatars/swg_misc_jabba.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(106, 'Melissa Rosasco', 'melissa.rosasco@gmail.com', 'http://www.craack.com/assets/avatars/20027.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(107, 'Mario Darlette', 'mario.darlette@gmail.com', 'http://www.craack.com/assets/avatars/20026.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(108, 'Luis Salas', 'luis.salas@gmail.com', 'http://www.craack.com/assets/avatars/zamorano.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(109, 'Liliana Orrego', 'liliana.orrego@gmail.com', 'http://www.craack.com/assets/avatars/monicaseles.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(110, 'Liliana De Gregorio', 'liliana.de gregorio@gmail.com', 'http://www.craack.com/assets/avatars/375053_needlespunsundropped.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(111, 'Camilo Salas', 'camilo.salas@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_Trans_A.gif', '', 0, '0000-00-00 00:00:00', 'male'),
(112, 'Mario Mart√≠nez', 'mario.mart√≠nez@gmail.com', 'http://www.craack.com/assets/avatars/32stonewolf_av-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(113, 'Mar√≠a Donoso', 'mar√≠a.donoso@gmail.com', 'http://www.craack.com/assets/avatars/6barbarianbabe_CG-thumb.JPG', '', 0, '0000-00-00 00:00:00', 'female'),
(114, 'Asunci√≥n Salazar', 'asunci√≥n.salazar@gmail.com', 'http://www.craack.com/assets/avatars/swg_male_Bothan_A.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(115, 'Miguel Scheggia', 'miguel.scheggia@gmail.com', 'http://www.craack.com/assets/avatars/massu.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(116, 'Jorge Guevara', 'jorge.guevara@gmail.com', 'http://www.craack.com/assets/avatars/Star_Wars_44.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(117, 'Raquel Donoso', 'raquel.donoso@gmail.com', 'http://www.craack.com/assets/avatars/walt(2).gif', '', 0, '0000-00-00 00:00:00', 'female'),
(118, 'Sergio Celed√≥n', 'sergio.celed√≥n@gmail.com', 'http://www.craack.com/assets/avatars/kate(2).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(119, 'Ramiro Dom√≠nguez', 'ramiro.dom√≠nguez@gmail.com', 'http://www.craack.com/assets/avatars/shannon(1).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(120, 'Milagros Hevia', 'milagros.hevia@gmail.com', 'http://www.craack.com/assets/avatars/o_zabrak1.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(121, 'Miguel Puigrred√≥n', 'miguel.puigrred√≥n@gmail.com', 'http://www.craack.com/assets/avatars/gary.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(122, 'Milagros Donoso', 'milagros.donoso@gmail.com', 'http://www.craack.com/assets/avatars/Star_Wars_40.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(123, 'Diego Scheggia', 'diego.scheggia@gmail.com', 'http://www.craack.com/assets/avatars/431alien_saucer_ktk-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'male'),
(124, 'Benito Santis', 'benito.santis@gmail.com', 'http://www.craack.com/assets/avatars/claire(1).gif', '', 0, '0000-00-00 00:00:00', 'male'),
(125, 'Antonia G√≥mez', 'antonia.g√≥mez@gmail.com', 'http://www.craack.com/assets/avatars/swg_fem_moncalla_A.gif', '', 0, '0000-00-00 00:00:00', 'female'),
(126, 'Daniela Hevia', 'daniela.hevia@gmail.com', 'http://www.craack.com/assets/avatars/151.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(127, 'Antonia Huidobro', 'antonia.huidobro@gmail.com', 'http://www.craack.com/assets/avatars/431AlienPortrait_ktk-thumb.jpg', '', 0, '0000-00-00 00:00:00', 'female'),
(702935893132419, 'Julian Garcia', 'jgarcia@instagis.com', '', '+569 97973947', 1, '0000-00-00 00:00:00', 'male'),
(10152771510094588, 'Pablo Ortega Mesa', 'pablo.ortega.mesa@gmail.com', '', '', 1, '0000-00-00 00:00:00', 'male'),
(10152966937366917, 'Antonia Undurraga', 'aantoniaundurraga@gmail.com', '', '+569 82498327', 1, '0000-00-00 00:00:00', 'male'),
(10153125242673943, 'Felipe Fagandini', 'amenadiel@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c17.17.216.216/s200x200/197703_10150191766888943_6809051_n.jpg', '+569 99492598', 1, '2013-12-22 16:02:13', 'male');

--
-- √çndices para tablas volcadas
--

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
 ADD PRIMARY KEY (`id`), ADD KEY `id_establecimiento` (`id_establecimiento`), ADD KEY `id_deporte` (`id_especialidad`), ADD KEY `id_entrenador` (`id_profesor`), ADD KEY `id_comuna` (`id_comuna`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
 ADD PRIMARY KEY (`id`), ADD KEY `id_comuna` (`id_comuna`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
 ADD PRIMARY KEY (`id`), ADD KEY `especialidad` (`id_especialidad`), ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3046;
--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15203;
--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
ADD CONSTRAINT `clase_ibfk_3` FOREIGN KEY (`id_establecimiento`) REFERENCES `establecimiento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `clase_ibfk_4` FOREIGN KEY (`id_comuna`) REFERENCES `comuna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `clase_ibfk_5` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `clase_ibfk_6` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
ADD CONSTRAINT `establecimiento_ibfk_1` FOREIGN KEY (`id_comuna`) REFERENCES `comuna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
ADD CONSTRAINT `profesor_ibfk_3` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `profesor_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
