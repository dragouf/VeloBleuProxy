-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 02 Février 2012 à 01:58
-- Version du serveur: 5.1.44
-- Version de PHP: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `velonice`
--

-- --------------------------------------------------------

--
-- Structure de la table `Commentaires`
--

CREATE TABLE `Commentaires` (
  `IdCommentaire` int(11) NOT NULL AUTO_INCREMENT,
  `DateSoumission` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Note` int(11) DEFAULT NULL,
  `Texte` text NOT NULL,
  `Titre` varchar(300) NOT NULL,
  `UserGuid` varchar(1000) NOT NULL,
  `IdStation` int(11) NOT NULL,
  PRIMARY KEY (`IdCommentaire`),
  KEY `IdCommentaire` (`IdCommentaire`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `Commentaires`
--


-- --------------------------------------------------------

--
-- Structure de la table `Pseudos`
--

CREATE TABLE `Pseudos` (
  `IdPseudo` int(11) NOT NULL AUTO_INCREMENT,
  `UserGuid` varchar(1000) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  PRIMARY KEY (`IdPseudo`),
  UNIQUE KEY `UserGuid` (`UserGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='liens entre l''id du telephone et le nom d''utilisateur' AUTO_INCREMENT=1 ;

--
-- Contenu de la table `Pseudos`
--


-- --------------------------------------------------------

--
-- Structure de la table `Stations`
--

CREATE TABLE `Stations` (
  `IdStation` int(11) NOT NULL AUTO_INCREMENT,
  `Communication` text,
  `EmplacamentTotal` int(11) NOT NULL,
  `EmplacementLibre` int(11) NOT NULL,
  `VelosDisponibles` int(11) NOT NULL,
  `Latitude` double NOT NULL,
  `Longitude` double NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `EstAfficher` tinyint(4) NOT NULL COMMENT '1 = true, 0 = false',
  `PhotoStation` blob,
  PRIMARY KEY (`IdStation`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Stock la liste des stations' AUTO_INCREMENT=333 ;

--
-- Contenu de la table `Stations`
--

INSERT INTO `Stations` VALUES(2, '', 15, 9, 6, 43.676697, 7.199092, 'Station%20n%B02', 1, NULL);
INSERT INTO `Stations` VALUES(3, '', 15, 9, 6, 43.677581, 7.205679, 'Station%20n%B03', 1, NULL);
INSERT INTO `Stations` VALUES(4, '', 12, 3, 9, 43.675409, 7.199264, 'Station%20n%B04', 1, NULL);
INSERT INTO `Stations` VALUES(5, '', 15, 15, 0, 43.670815, 7.207847, 'Station%20n%B05', 1, NULL);
INSERT INTO `Stations` VALUES(6, '', 21, 14, 7, 43.664948, 7.203104, 'Station%20n%B06', 1, NULL);
INSERT INTO `Stations` VALUES(7, '', 18, 18, 0, 43.666081, 7.212095, 'Station%20n%B07', 1, NULL);
INSERT INTO `Stations` VALUES(8, '', 12, 10, 2, 43.668325, 7.211838, 'Station%20n%B08', 1, NULL);
INSERT INTO `Stations` VALUES(9, '', 21, 15, 6, 43.670101, 7.213576, 'Station%20n%B09', 1, NULL);
INSERT INTO `Stations` VALUES(10, '', 15, 10, 5, 43.668108, 7.215528, 'Station%20n%B010', 1, NULL);
INSERT INTO `Stations` VALUES(11, '', 15, 11, 4, 43.669557, 7.217073, 'Station%20n%B011', 1, NULL);
INSERT INTO `Stations` VALUES(12, '', 15, 3, 12, 43.674757, 7.22527, 'Station%20n%B012', 1, NULL);
INSERT INTO `Stations` VALUES(13, '', 18, 5, 13, 43.676855, 7.229197, 'Station%20n%B013', 1, NULL);
INSERT INTO `Stations` VALUES(14, '', 24, 14, 10, 43.688462, 7.239797, 'Station%20n%B014', 1, NULL);
INSERT INTO `Stations` VALUES(15, '', 27, 15, 12, 43.691987, 7.245054, 'Station%20n%B015', 1, NULL);
INSERT INTO `Stations` VALUES(16, '', 18, 8, 10, 43.693833, 7.252264, 'Station%20n%B016', 1, NULL);
INSERT INTO `Stations` VALUES(17, '', 15, 2, 13, 43.6976, 7.26545, 'Station%20n%B017', 1, NULL);
INSERT INTO `Stations` VALUES(18, '', 21, 10, 11, 43.696153, 7.266834, 'Station%20n%B018', 1, NULL);
INSERT INTO `Stations` VALUES(19, '', 18, 10, 8, 43.697332, 7.270342, 'Station%20n%B019', 1, NULL);
INSERT INTO `Stations` VALUES(20, '', 24, 6, 18, 43.695633, 7.270482, 'Station%20n%B020', 1, NULL);
INSERT INTO `Stations` VALUES(21, '', 24, 23, 1, 43.6966, 7.27456, 'Station%20n%B021', 1, NULL);
INSERT INTO `Stations` VALUES(22, '', 24, 23, 1, 43.6946, 7.27831, 'Station%20n%B022', 1, NULL);
INSERT INTO `Stations` VALUES(23, '', 15, 14, 1, 43.699597, 7.276458, 'Station%20n%B023', 1, NULL);
INSERT INTO `Stations` VALUES(24, '', 24, 8, 16, 43.694974, 7.274333, 'Station%20n%B024', 1, NULL);
INSERT INTO `Stations` VALUES(25, '', 21, 19, 2, 43.701916, 7.277842, 'Station%20n%B025', 1, NULL);
INSERT INTO `Stations` VALUES(26, '', 24, 20, 4, 43.703111, 7.279451, 'Station%20n%B026', 1, NULL);
INSERT INTO `Stations` VALUES(27, '', 24, 19, 5, 43.699713, 7.28076, 'Station%20n%B027', 1, NULL);
INSERT INTO `Stations` VALUES(28, '', 15, 11, 4, 43.698495, 7.283206, 'Station%20n%B028', 1, NULL);
INSERT INTO `Stations` VALUES(29, '', 15, 6, 9, 43.693647, 7.289976, 'Station%20n%B029', 1, NULL);
INSERT INTO `Stations` VALUES(30, '', 24, 12, 12, 43.708043, 7.281682, 'Station%20n%B030', 1, NULL);
INSERT INTO `Stations` VALUES(31, '', 12, 2, 10, 43.706415, 7.283024, 'Station%20n%B031', 1, NULL);
INSERT INTO `Stations` VALUES(32, '', 24, 14, 10, 43.705026, 7.286274, 'Station%20n%B032', 1, NULL);
INSERT INTO `Stations` VALUES(33, '', 15, 4, 11, 43.702343, 7.273443, 'Station%20n%B033', 1, NULL);
INSERT INTO `Stations` VALUES(34, '', 15, 7, 8, 43.7027, 7.27121, 'Station%20n%B034', 1, NULL);
INSERT INTO `Stations` VALUES(35, '', 27, 25, 2, 43.700753, 7.268239, 'Station%20n%B035', 1, NULL);
INSERT INTO `Stations` VALUES(37, '', 36, 25, 11, 43.7056, 7.28976, 'Station%20n%B037', 1, NULL);
INSERT INTO `Stations` VALUES(38, '', 15, 15, 0, 43.670908, 7.222738, 'Station%20n%B038', 1, NULL);
INSERT INTO `Stations` VALUES(39, '', 15, 10, 5, 43.673509, 7.225399, 'Station%20n%B039', 1, NULL);
INSERT INTO `Stations` VALUES(40, '', 15, 8, 7, 43.675424, 7.227287, 'Station%20n%B040', 1, NULL);
INSERT INTO `Stations` VALUES(41, '', 15, 6, 9, 43.674643, 7.223049, 'Station%20n%B041', 1, NULL);
INSERT INTO `Stations` VALUES(42, '', 15, 9, 6, 43.677414, 7.225302, 'Station%20n%B042', 1, NULL);
INSERT INTO `Stations` VALUES(43, '', 18, 12, 6, 43.690076, 7.24234, 'Station%20n%B043', 1, NULL);
INSERT INTO `Stations` VALUES(44, '', 18, 7, 11, 43.679956, 7.231193, 'Station%20n%B044', 1, NULL);
INSERT INTO `Stations` VALUES(45, '', 12, 6, 6, 43.678812, 7.228146, 'Station%20n%B045', 1, NULL);
INSERT INTO `Stations` VALUES(46, '', 15, 4, 11, 43.685545, 7.235291, 'Station%20n%B046', 1, NULL);
INSERT INTO `Stations` VALUES(47, '', 15, 14, 1, 43.68278, 7.234025, 'Station%20n%B047', 1, NULL);
INSERT INTO `Stations` VALUES(49, '', 15, 9, 6, 43.693104, 7.24882, 'Station%20n%B049', 1, NULL);
INSERT INTO `Stations` VALUES(50, '', 15, 6, 9, 43.695889, 7.251931, 'Station%20n%B050', 1, NULL);
INSERT INTO `Stations` VALUES(51, '', 18, 7, 11, 43.695951, 7.256448, 'Station%20n%B051', 1, NULL);
INSERT INTO `Stations` VALUES(52, '', 15, 3, 12, 43.694586, 7.254581, 'Station%20n%B052', 1, NULL);
INSERT INTO `Stations` VALUES(53, '', 15, 10, 5, 43.697759, 7.251577, 'Station%20n%B053', 1, NULL);
INSERT INTO `Stations` VALUES(54, '', 15, 1, 14, 43.699713, 7.255912, 'Station%20n%B054', 1, NULL);
INSERT INTO `Stations` VALUES(55, '', 15, 9, 6, 43.699457, 7.252167, 'Station%20n%B055', 1, NULL);
INSERT INTO `Stations` VALUES(56, '', 24, 17, 7, 43.702157, 7.257822, 'Station%20n%B056', 1, NULL);
INSERT INTO `Stations` VALUES(57, '', 9, 0, 9, 43.701094, 7.255086, 'Station%20n%B057', 1, NULL);
INSERT INTO `Stations` VALUES(58, '', 15, 3, 12, 43.695478, 7.25868, 'Station%20n%B058', 1, NULL);
INSERT INTO `Stations` VALUES(59, '', 18, 12, 6, 43.698317, 7.260236, 'Station%20n%B059', 1, NULL);
INSERT INTO `Stations` VALUES(61, '', 15, 10, 5, 43.702475, 7.262639, 'Station%20n%B061', 1, NULL);
INSERT INTO `Stations` VALUES(62, '', 24, 10, 14, 43.69969, 7.265021, 'Station%20n%B062', 1, NULL);
INSERT INTO `Stations` VALUES(63, '', 24, 24, 0, 43.703429, 7.265943, 'Station%20n%B063', 1, NULL);
INSERT INTO `Stations` VALUES(64, '', 15, 5, 10, 43.69606, 7.263325, 'Station%20n%B064', 1, NULL);
INSERT INTO `Stations` VALUES(65, '', 15, 8, 7, 43.699139, 7.269977, 'Station%20n%B065', 1, NULL);
INSERT INTO `Stations` VALUES(67, '', 15, 7, 8, 43.6978, 7.27305, 'Station%20n%B067', 1, NULL);
INSERT INTO `Stations` VALUES(68, '', 18, 9, 9, 43.700745, 7.275674, 'Station%20n%B068', 1, NULL);
INSERT INTO `Stations` VALUES(69, '', 12, 3, 9, 43.703902, 7.273582, 'Station%20n%B069', 1, NULL);
INSERT INTO `Stations` VALUES(70, '', 15, 6, 9, 43.702544, 7.27561, 'Station%20n%B070', 1, NULL);
INSERT INTO `Stations` VALUES(71, '', 12, 2, 10, 43.706384, 7.268733, 'Station%20n%B071', 1, NULL);
INSERT INTO `Stations` VALUES(72, '', 24, 6, 18, 43.704274, 7.270042, 'Station%20n%B072', 1, NULL);
INSERT INTO `Stations` VALUES(73, '', 12, 9, 3, 43.6949, 7.28639, 'Station%20n%B073', 1, NULL);
INSERT INTO `Stations` VALUES(74, '', 12, 2, 10, 43.698883, 7.287422, 'Station%20n%B074', 1, NULL);
INSERT INTO `Stations` VALUES(75, '', 15, 7, 8, 43.697262, 7.286843, 'Station%20n%B075', 1, NULL);
INSERT INTO `Stations` VALUES(76, '', 15, 6, 9, 43.697247, 7.282755, 'Station%20n%B076', 1, NULL);
INSERT INTO `Stations` VALUES(77, '', 21, 1, 20, 43.700551, 7.285631, 'Station%20n%B077', 1, NULL);
INSERT INTO `Stations` VALUES(78, '', 15, 14, 1, 43.701939, 7.282122, 'Station%20n%B078', 1, NULL);
INSERT INTO `Stations` VALUES(79, '', 15, 4, 11, 43.702296, 7.28635, 'Station%20n%B079', 1, NULL);
INSERT INTO `Stations` VALUES(80, '', 15, 5, 10, 43.70477, 7.281693, 'Station%20n%B080', 1, NULL);
INSERT INTO `Stations` VALUES(81, '', 15, 7, 8, 43.704018, 7.287326, 'Station%20n%B081', 1, NULL);
INSERT INTO `Stations` VALUES(82, '', 15, 3, 12, 43.702273, 7.288699, 'Station%20n%B082', 1, NULL);
INSERT INTO `Stations` VALUES(83, '', 24, 16, 8, 43.703809, 7.283785, 'Station%20n%B083', 1, NULL);
INSERT INTO `Stations` VALUES(84, '', 15, 7, 8, 43.693989, 7.282208, 'Station%20n%B084', 1, NULL);
INSERT INTO `Stations` VALUES(85, '', 24, 20, 4, 43.695144, 7.277627, 'Station%20n%B085', 1, NULL);
INSERT INTO `Stations` VALUES(86, '', 15, 2, 13, 43.700489, 7.278593, 'Station%20n%B086', 1, NULL);
INSERT INTO `Stations` VALUES(87, '', 21, 8, 13, 43.699457, 7.277541, 'Station%20n%B087', 1, NULL);
INSERT INTO `Stations` VALUES(88, '', 15, 11, 4, 43.702552, 7.259581, 'Station%20n%B088', 1, NULL);
INSERT INTO `Stations` VALUES(89, '', 27, 5, 22, 43.69364, 7.256384, 'Station%20n%B089', 1, NULL);
INSERT INTO `Stations` VALUES(90, '', 15, 9, 6, 43.691599, 7.24896, 'Station%20n%B090', 1, NULL);
INSERT INTO `Stations` VALUES(91, '', 15, 15, 0, 43.668952, 7.220914, 'Station%20n%B091', 1, NULL);
INSERT INTO `Stations` VALUES(92, '', 15, 12, 3, 43.670784, 7.210314, 'Station%20n%B092', 1, NULL);
INSERT INTO `Stations` VALUES(93, '', 15, 12, 3, 43.673282, 7.208984, 'Station%20n%B093', 1, NULL);
INSERT INTO `Stations` VALUES(94, '', 15, 9, 6, 43.675626, 7.207053, 'Station%20n%B094', 1, NULL);
INSERT INTO `Stations` VALUES(95, '', 12, 11, 1, 43.677069, 7.203641, 'Station%20n%B095', 1, NULL);
INSERT INTO `Stations` VALUES(96, '', 15, 12, 3, 43.68141, 7.231557, 'Station%20n%B096', 1, NULL);
INSERT INTO `Stations` VALUES(99, '', 24, 13, 11, 43.708338, 7.288527, 'Station%20n%B099', 1, NULL);
INSERT INTO `Stations` VALUES(100, '', 27, 13, 14, 43.693795, 7.244325, 'Station%20n%B0100', 1, NULL);
INSERT INTO `Stations` VALUES(107, '', 21, 15, 6, 43.705918, 7.256212, 'Station%20n%B0107', 1, NULL);
INSERT INTO `Stations` VALUES(108, '', 24, 7, 17, 43.7027, 7.25512, 'Station%20n%B0108', 1, NULL);
INSERT INTO `Stations` VALUES(109, '', 15, 8, 7, 43.7081, 7.2568, 'Station%20n%B0109', 1, NULL);
INSERT INTO `Stations` VALUES(111, '', 15, 9, 6, 43.709967, 7.258433, 'Station%20n%B0111', 1, NULL);
INSERT INTO `Stations` VALUES(112, '', 15, 10, 5, 43.712216, 7.26192, 'Station%20n%B0112', 1, NULL);
INSERT INTO `Stations` VALUES(113, '', 15, 2, 13, 43.713984, 7.258798, 'Station%20n%B0113', 1, NULL);
INSERT INTO `Stations` VALUES(123, '', 24, 18, 6, 43.707144, 7.262864, 'Station%20n%B0123', 1, NULL);
INSERT INTO `Stations` VALUES(124, '', 12, 2, 10, 43.706058, 7.265332, 'Station%20n%B0124', 1, NULL);
INSERT INTO `Stations` VALUES(125, '', 15, 8, 7, 43.710409, 7.284054, 'Station%20n%B0125', 1, NULL);
INSERT INTO `Stations` VALUES(135, '', 15, 12, 3, 43.707609, 7.292819, 'Station%20n%B0135', 1, NULL);
INSERT INTO `Stations` VALUES(136, '', 15, 11, 4, 43.711719, 7.264613, 'Station%20n%B0136', 1, NULL);
INSERT INTO `Stations` VALUES(137, '', 15, 10, 5, 43.709005, 7.266533, 'Station%20n%B0137', 1, NULL);
INSERT INTO `Stations` VALUES(153, '', 18, 16, 2, 43.710928, 7.282948, 'Station%20n%B0153', 1, NULL);
INSERT INTO `Stations` VALUES(161, '', 24, 15, 9, 43.7087, 7.26018, 'Station%20n%B0161', 1, NULL);
INSERT INTO `Stations` VALUES(162, '', 15, 6, 9, 43.710277, 7.26295, 'Station%20n%B0162', 1, NULL);
INSERT INTO `Stations` VALUES(163, '', 21, 16, 5, 43.709052, 7.289536, 'Station%20n%B0163', 1, NULL);
INSERT INTO `Stations` VALUES(167, '', 15, 5, 10, 43.715868, 7.261577, 'Station%20n%B0167', 1, NULL);
INSERT INTO `Stations` VALUES(168, '', 15, 6, 9, 43.7147, 7.25404, 'Station%20n%B0168', 1, NULL);
INSERT INTO `Stations` VALUES(172, '', 36, 27, 9, 43.715899, 7.265557, 'Station%20n%B0172', 1, NULL);
INSERT INTO `Stations` VALUES(173, '', 15, 8, 7, 43.705631, 7.259592, 'Station%20n%B0173', 1, NULL);
INSERT INTO `Stations` VALUES(174, '', 18, 9, 9, 43.6944, 7.26073, 'Station%20n%B0174', 1, NULL);
INSERT INTO `Stations` VALUES(110, '', 21, 6, 15, 43.709843, 7.255762, 'Station%20n%B0110', 1, NULL);
INSERT INTO `Stations` VALUES(36, '', 39, 31, 8, 43.704445, 7.26325, 'Station%20n%B036', 1, NULL);
INSERT INTO `Stations` VALUES(48, '', 18, 8, 10, 43.686515, 7.238134, 'Station%20n%B048', 1, NULL);
INSERT INTO `Stations` VALUES(60, '', 15, 8, 7, 43.7006, 7.26033, 'Station%20n%B060', 1, NULL);
INSERT INTO `Stations` VALUES(66, '', 15, 9, 6, 43.700497, 7.272756, 'Station%20n%B066', 1, NULL);
INSERT INTO `Stations` VALUES(121, '', 12, 7, 5, 43.712728, 7.259023, 'Station%20n%B0121', 1, NULL);
INSERT INTO `Stations` VALUES(101, '', 15, 7, 8, 43.697012, 7.241316, 'Station%20n%B0101', 1, NULL);
INSERT INTO `Stations` VALUES(102, '', 12, 4, 8, 43.707993, 7.23054, 'Station%20n%B0102', 1, NULL);
INSERT INTO `Stations` VALUES(103, '', 15, 9, 6, 43.704983, 7.232986, 'Station%20n%B0103', 1, NULL);
INSERT INTO `Stations` VALUES(104, '', 12, 12, 0, 43.703898, 7.23466, 'Station%20n%B0104', 1, NULL);
INSERT INTO `Stations` VALUES(105, '', 15, 6, 9, 43.700487, 7.237325, 'Station%20n%B0105', 1, NULL);
INSERT INTO `Stations` VALUES(106, '', 12, 3, 9, 43.69906, 7.239385, 'Station%20n%B0106', 1, NULL);
INSERT INTO `Stations` VALUES(126, '', 12, 6, 6, 43.711826, 7.28524, 'Station%20n%B0126', 1, NULL);
INSERT INTO `Stations` VALUES(127, '', 27, 19, 8, 43.71043, 7.288158, 'Station%20n%B0127', 1, NULL);
INSERT INTO `Stations` VALUES(128, '', 15, 6, 9, 43.712586, 7.289017, 'Station%20n%B0128', 1, NULL);
INSERT INTO `Stations` VALUES(129, '', 15, 7, 8, 43.715626, 7.289832, 'Station%20n%B0129', 1, NULL);
INSERT INTO `Stations` VALUES(130, '', 12, 5, 7, 43.717595, 7.291162, 'Station%20n%B0130', 0, NULL);
INSERT INTO `Stations` VALUES(131, '', 15, 9, 6, 43.722573, 7.29024, 'Station%20n%B0131', 1, NULL);
INSERT INTO `Stations` VALUES(132, '', 12, 6, 6, 43.71544, 7.292407, 'Station%20n%B0132', 1, NULL);
INSERT INTO `Stations` VALUES(133, '', 12, 9, 3, 43.716897, 7.294081, 'Station%20n%B0133', 1, NULL);
INSERT INTO `Stations` VALUES(134, '', 15, 13, 2, 43.710352, 7.293137, 'Station%20n%B0134', 1, NULL);
INSERT INTO `Stations` VALUES(148, '', 6, 4, 2, 43.697384, 7.269619, 'Station%20n%B0148', 1, NULL);
INSERT INTO `Stations` VALUES(149, '', 15, 2, 13, 43.719441, 7.283309, 'Station%20n%B0149', 1, NULL);
INSERT INTO `Stations` VALUES(150, '', 15, 9, 6, 43.716991, 7.281635, 'Station%20n%B0150', 1, NULL);
INSERT INTO `Stations` VALUES(151, '', 15, 5, 10, 43.713763, 7.281996, 'Station%20n%B0151', 1, NULL);
INSERT INTO `Stations` VALUES(152, '', 15, 12, 3, 43.712087, 7.282554, 'Station%20n%B0152', 1, NULL);
INSERT INTO `Stations` VALUES(154, '', 12, 7, 5, 43.716275, 7.284056, 'Station%20n%B0154', 1, NULL);
INSERT INTO `Stations` VALUES(155, '', 12, 2, 10, 43.719222, 7.286159, 'Station%20n%B0155', 1, NULL);
INSERT INTO `Stations` VALUES(164, '', 15, 3, 12, 43.71012, 7.291356, 'Station%20n%B0164', 0, NULL);
INSERT INTO `Stations` VALUES(171, '', 12, 9, 3, 43.723163, 7.284446, 'Station%20n%B0171', 1, NULL);
INSERT INTO `Stations` VALUES(201, '', 18, 15, 3, 43.662452, 7.19426, 'Station%20n%B0201', 1, NULL);
INSERT INTO `Stations` VALUES(202, '', 18, 18, 0, 43.668459, 7.189239, 'Station%20n%B0202', 1, NULL);
INSERT INTO `Stations` VALUES(203, '', 18, 14, 4, 43.668382, 7.191771, 'Station%20n%B0203', 1, NULL);
INSERT INTO `Stations` VALUES(204, '', 18, 6, 12, 43.671377, 7.19059, 'Station%20n%B0204', 1, NULL);
INSERT INTO `Stations` VALUES(205, '', 12, 6, 6, 43.673923, 7.18999, 'Station%20n%B0205', 1, NULL);
INSERT INTO `Stations` VALUES(206, '', 12, 6, 6, 43.673721, 7.190998, 'Station%20n%B0206', 1, NULL);
INSERT INTO `Stations` VALUES(207, '', 12, 9, 3, 43.666442, 7.187028, 'Station%20n%B0207', 1, NULL);
INSERT INTO `Stations` VALUES(208, '', 15, 5, 10, 43.657904, 7.186149, 'Station%20n%B0208', 1, NULL);
INSERT INTO `Stations` VALUES(209, '', 18, 12, 6, 43.659286, 7.190805, 'Station%20n%B0209', 1, NULL);
INSERT INTO `Stations` VALUES(210, '', 15, 7, 8, 43.658385, 7.195247, 'Station%20n%B0210', 1, NULL);
INSERT INTO `Stations` VALUES(211, '', 6, 1, 5, 43.660015, 7.194968, 'Station%20n%B0211', 1, NULL);
INSERT INTO `Stations` VALUES(301, '', 21, 15, 6, 43.656211, 7.177806, 'Station%20n%B0301', 1, NULL);
INSERT INTO `Stations` VALUES(304, '', 12, 3, 9, 43.657641, 7.168395, 'Station%20n%B0304', 1, NULL);
INSERT INTO `Stations` VALUES(308, '', 15, 9, 6, 43.65452, 7.157803, 'Station%20n%B0308', 1, NULL);
INSERT INTO `Stations` VALUES(310, '', 24, 17, 7, 43.650731, 7.151473, 'Station%20n%B0310', 1, NULL);
INSERT INTO `Stations` VALUES(311, '', 21, 17, 4, 43.643699, 7.144437, 'Station%20n%B0311', 1, NULL);
INSERT INTO `Stations` VALUES(312, '', 15, 7, 8, 43.655281, 7.151486, 'Station%20n%B0312', 1, NULL);
INSERT INTO `Stations` VALUES(313, '', 15, 11, 4, 43.656414, 7.154971, 'Station%20n%B0313', 1, NULL);
INSERT INTO `Stations` VALUES(314, '', 12, 8, 4, 43.657871, 7.160288, 'Station%20n%B0314', 1, NULL);
INSERT INTO `Stations` VALUES(317, '', 15, 11, 4, 43.65868, 7.169755, 'Station%20n%B0317', 1, NULL);
INSERT INTO `Stations` VALUES(320, '', 15, 5, 10, 43.657438, 7.151602, 'Station%20n%B0320', 1, NULL);
INSERT INTO `Stations` VALUES(323, '', 12, 3, 9, 43.661241, 7.150872, 'Station%20n%B0323', 1, NULL);
INSERT INTO `Stations` VALUES(326, '', 15, 8, 7, 43.663275, 7.147997, 'Station%20n%B0326', 1, NULL);
INSERT INTO `Stations` VALUES(327, '', 15, 8, 7, 43.664641, 7.150701, 'Station%20n%B0327', 1, NULL);
INSERT INTO `Stations` VALUES(331, '', 15, 8, 7, 43.663616, 7.152868, 'Station%20n%B0331', 1, NULL);
INSERT INTO `Stations` VALUES(332, '', 15, 8, 7, 43.664794, 7.171789, 'Station%20n%B0332', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Synchronisations`
--

CREATE TABLE `Synchronisations` (
  `IdSynchronisation` int(11) NOT NULL AUTO_INCREMENT,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TailleDonnees` double DEFAULT NULL,
  `Etat` tinyint(4) NOT NULL COMMENT '1 = true, 0 = false',
  PRIMARY KEY (`IdSynchronisation`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=464 ;

--
-- Contenu de la table `Synchronisations`
--

INSERT INTO `Synchronisations` VALUES(1, '2010-06-28 01:12:39', 17220, 1);
INSERT INTO `Synchronisations` VALUES(2, '2010-06-28 01:30:49', 17219, 1);
INSERT INTO `Synchronisations` VALUES(3, '2010-06-29 21:35:11', 17192, 1);
INSERT INTO `Synchronisations` VALUES(4, '2010-07-01 19:21:09', 17190, 1);
INSERT INTO `Synchronisations` VALUES(5, '2010-07-01 19:29:02', 17190, 1);
INSERT INTO `Synchronisations` VALUES(6, '2010-07-01 19:37:17', 17187, 1);
INSERT INTO `Synchronisations` VALUES(7, '2010-07-02 21:54:40', NULL, 0);
INSERT INTO `Synchronisations` VALUES(8, '2010-07-02 22:13:54', 17195, 1);
INSERT INTO `Synchronisations` VALUES(9, '2010-07-02 22:33:40', NULL, 0);
INSERT INTO `Synchronisations` VALUES(10, '2010-07-02 22:36:18', NULL, 0);
INSERT INTO `Synchronisations` VALUES(11, '2010-07-02 22:40:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(12, '2010-07-02 22:40:58', NULL, 0);
INSERT INTO `Synchronisations` VALUES(13, '2010-07-02 22:46:23', NULL, 0);
INSERT INTO `Synchronisations` VALUES(14, '2010-07-02 22:51:26', NULL, 0);
INSERT INTO `Synchronisations` VALUES(15, '2010-07-02 22:52:46', NULL, 0);
INSERT INTO `Synchronisations` VALUES(16, '2010-07-04 10:07:44', 17202, 1);
INSERT INTO `Synchronisations` VALUES(17, '2010-07-04 10:08:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(18, '2010-07-04 10:36:14', 17202, 1);
INSERT INTO `Synchronisations` VALUES(19, '2010-07-04 10:37:42', NULL, 0);
INSERT INTO `Synchronisations` VALUES(20, '2010-07-04 10:38:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(21, '2010-07-04 10:39:23', NULL, 0);
INSERT INTO `Synchronisations` VALUES(22, '2010-07-04 10:40:59', NULL, 0);
INSERT INTO `Synchronisations` VALUES(23, '2010-07-04 10:41:41', NULL, 0);
INSERT INTO `Synchronisations` VALUES(24, '2010-07-04 10:43:11', 17199, 1);
INSERT INTO `Synchronisations` VALUES(25, '2010-07-04 10:45:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(26, '2010-07-04 10:45:54', NULL, 0);
INSERT INTO `Synchronisations` VALUES(27, '2010-07-04 10:46:44', NULL, 0);
INSERT INTO `Synchronisations` VALUES(28, '2010-07-04 10:48:42', NULL, 0);
INSERT INTO `Synchronisations` VALUES(29, '2010-07-04 10:49:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(30, '2010-07-04 10:50:18', 17197, 1);
INSERT INTO `Synchronisations` VALUES(31, '2010-07-04 10:51:33', NULL, 0);
INSERT INTO `Synchronisations` VALUES(32, '2010-07-04 10:51:50', NULL, 0);
INSERT INTO `Synchronisations` VALUES(33, '2010-07-04 10:57:05', 17197, 1);
INSERT INTO `Synchronisations` VALUES(34, '2010-07-04 10:57:14', NULL, 0);
INSERT INTO `Synchronisations` VALUES(35, '2010-07-04 11:00:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(36, '2010-07-04 11:01:53', NULL, 0);
INSERT INTO `Synchronisations` VALUES(37, '2010-07-04 11:02:04', NULL, 0);
INSERT INTO `Synchronisations` VALUES(38, '2010-07-04 11:02:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(39, '2010-07-04 11:03:09', 17195, 1);
INSERT INTO `Synchronisations` VALUES(40, '2010-07-04 11:05:21', NULL, 0);
INSERT INTO `Synchronisations` VALUES(41, '2010-07-04 22:40:23', 17181, 1);
INSERT INTO `Synchronisations` VALUES(42, '2010-07-04 22:43:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(43, '2010-07-04 22:47:39', 17183, 1);
INSERT INTO `Synchronisations` VALUES(44, '2010-07-05 01:28:04', 17189, 1);
INSERT INTO `Synchronisations` VALUES(45, '2010-07-07 22:13:08', 17193, 1);
INSERT INTO `Synchronisations` VALUES(46, '2010-07-07 22:21:04', 17193, 1);
INSERT INTO `Synchronisations` VALUES(47, '2010-07-07 22:31:28', 17193, 1);
INSERT INTO `Synchronisations` VALUES(48, '2010-07-07 22:34:23', NULL, 0);
INSERT INTO `Synchronisations` VALUES(49, '2010-07-07 22:37:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(50, '2010-07-07 22:39:42', 17193, 1);
INSERT INTO `Synchronisations` VALUES(51, '2010-07-07 22:42:08', NULL, 0);
INSERT INTO `Synchronisations` VALUES(52, '2010-07-07 22:43:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(53, '2010-07-07 22:43:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(54, '2010-07-07 22:47:37', 17190, 1);
INSERT INTO `Synchronisations` VALUES(55, '2010-07-07 22:48:15', NULL, 0);
INSERT INTO `Synchronisations` VALUES(56, '2010-07-07 22:50:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(57, '2010-07-07 23:36:13', 17188, 1);
INSERT INTO `Synchronisations` VALUES(58, '2010-07-07 23:38:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(59, '2010-07-07 23:38:21', NULL, 0);
INSERT INTO `Synchronisations` VALUES(60, '2010-07-07 23:39:04', NULL, 0);
INSERT INTO `Synchronisations` VALUES(61, '2010-07-07 23:51:17', 17187, 1);
INSERT INTO `Synchronisations` VALUES(62, '2010-07-07 23:51:47', NULL, 0);
INSERT INTO `Synchronisations` VALUES(63, '2010-07-07 23:58:05', 17186, 1);
INSERT INTO `Synchronisations` VALUES(64, '2010-07-07 23:59:09', NULL, 0);
INSERT INTO `Synchronisations` VALUES(65, '2010-07-07 23:59:37', NULL, 0);
INSERT INTO `Synchronisations` VALUES(66, '2010-07-08 00:01:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(67, '2010-07-08 00:06:32', 17186, 1);
INSERT INTO `Synchronisations` VALUES(68, '2010-07-08 00:09:51', NULL, 0);
INSERT INTO `Synchronisations` VALUES(69, '2010-07-08 00:11:33', NULL, 0);
INSERT INTO `Synchronisations` VALUES(70, '2010-07-08 00:13:04', NULL, 0);
INSERT INTO `Synchronisations` VALUES(71, '2010-07-08 00:17:14', NULL, 0);
INSERT INTO `Synchronisations` VALUES(72, '2010-07-08 00:18:18', NULL, 0);
INSERT INTO `Synchronisations` VALUES(73, '2010-07-08 00:18:48', NULL, 0);
INSERT INTO `Synchronisations` VALUES(74, '2010-07-08 00:21:50', NULL, 0);
INSERT INTO `Synchronisations` VALUES(75, '2010-07-08 00:22:37', NULL, 0);
INSERT INTO `Synchronisations` VALUES(76, '2010-07-08 00:27:25', NULL, 0);
INSERT INTO `Synchronisations` VALUES(77, '2010-07-08 00:28:47', NULL, 0);
INSERT INTO `Synchronisations` VALUES(78, '2010-07-08 00:29:39', NULL, 0);
INSERT INTO `Synchronisations` VALUES(79, '2010-07-08 00:30:55', NULL, 0);
INSERT INTO `Synchronisations` VALUES(80, '2010-07-08 00:33:13', NULL, 0);
INSERT INTO `Synchronisations` VALUES(81, '2010-07-08 00:33:49', NULL, 0);
INSERT INTO `Synchronisations` VALUES(82, '2010-07-08 00:40:40', NULL, 0);
INSERT INTO `Synchronisations` VALUES(83, '2010-07-08 00:41:15', NULL, 0);
INSERT INTO `Synchronisations` VALUES(84, '2010-07-08 00:41:29', NULL, 0);
INSERT INTO `Synchronisations` VALUES(85, '2010-07-08 00:42:22', NULL, 0);
INSERT INTO `Synchronisations` VALUES(86, '2010-07-08 00:43:14', NULL, 0);
INSERT INTO `Synchronisations` VALUES(87, '2010-07-08 00:43:41', NULL, 0);
INSERT INTO `Synchronisations` VALUES(88, '2010-07-08 00:44:00', NULL, 0);
INSERT INTO `Synchronisations` VALUES(89, '2010-07-08 00:44:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(90, '2010-07-08 00:44:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(91, '2010-07-08 00:46:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(92, '2010-07-08 00:46:47', NULL, 0);
INSERT INTO `Synchronisations` VALUES(93, '2010-07-08 00:48:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(94, '2010-07-08 00:49:43', NULL, 0);
INSERT INTO `Synchronisations` VALUES(95, '2010-07-08 00:50:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(96, '2010-07-08 00:51:15', NULL, 0);
INSERT INTO `Synchronisations` VALUES(97, '2010-07-08 00:54:47', NULL, 0);
INSERT INTO `Synchronisations` VALUES(98, '2010-07-08 00:59:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(99, '2010-07-08 01:00:23', NULL, 0);
INSERT INTO `Synchronisations` VALUES(100, '2010-07-08 01:02:20', NULL, 0);
INSERT INTO `Synchronisations` VALUES(101, '2010-07-08 01:03:28', NULL, 0);
INSERT INTO `Synchronisations` VALUES(102, '2010-07-08 01:04:09', NULL, 0);
INSERT INTO `Synchronisations` VALUES(103, '2010-07-08 01:05:04', NULL, 0);
INSERT INTO `Synchronisations` VALUES(104, '2010-07-08 01:06:15', NULL, 0);
INSERT INTO `Synchronisations` VALUES(105, '2010-07-08 01:07:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(106, '2010-07-08 01:07:23', NULL, 0);
INSERT INTO `Synchronisations` VALUES(107, '2010-07-08 01:07:46', NULL, 0);
INSERT INTO `Synchronisations` VALUES(108, '2010-07-08 01:08:36', NULL, 0);
INSERT INTO `Synchronisations` VALUES(109, '2010-07-08 01:09:22', NULL, 0);
INSERT INTO `Synchronisations` VALUES(110, '2010-07-08 01:10:48', NULL, 0);
INSERT INTO `Synchronisations` VALUES(111, '2010-07-08 01:12:14', NULL, 0);
INSERT INTO `Synchronisations` VALUES(112, '2010-07-08 01:13:29', 17188, 1);
INSERT INTO `Synchronisations` VALUES(113, '2010-07-08 01:15:22', NULL, 0);
INSERT INTO `Synchronisations` VALUES(114, '2010-07-08 01:17:24', NULL, 0);
INSERT INTO `Synchronisations` VALUES(115, '2010-07-08 22:47:59', 17182, 1);
INSERT INTO `Synchronisations` VALUES(116, '2010-07-08 22:48:57', NULL, 0);
INSERT INTO `Synchronisations` VALUES(117, '2010-07-08 22:50:32', NULL, 0);
INSERT INTO `Synchronisations` VALUES(118, '2010-07-08 22:52:46', NULL, 0);
INSERT INTO `Synchronisations` VALUES(119, '2010-07-08 22:54:15', NULL, 0);
INSERT INTO `Synchronisations` VALUES(120, '2010-07-08 22:54:39', NULL, 0);
INSERT INTO `Synchronisations` VALUES(121, '2010-07-08 22:55:20', NULL, 0);
INSERT INTO `Synchronisations` VALUES(122, '2010-07-08 22:56:21', NULL, 0);
INSERT INTO `Synchronisations` VALUES(123, '2010-07-08 22:57:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(124, '2010-07-08 23:01:39', NULL, 0);
INSERT INTO `Synchronisations` VALUES(125, '2010-07-08 23:04:06', NULL, 0);
INSERT INTO `Synchronisations` VALUES(126, '2010-07-08 23:06:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(127, '2010-07-08 23:08:37', NULL, 0);
INSERT INTO `Synchronisations` VALUES(128, '2010-07-08 23:19:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(129, '2010-07-08 23:21:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(130, '2010-07-08 23:21:30', NULL, 0);
INSERT INTO `Synchronisations` VALUES(131, '2010-07-08 23:22:19', NULL, 0);
INSERT INTO `Synchronisations` VALUES(132, '2010-07-08 23:23:32', NULL, 0);
INSERT INTO `Synchronisations` VALUES(133, '2010-07-08 23:38:35', NULL, 0);
INSERT INTO `Synchronisations` VALUES(134, '2010-07-08 23:39:43', NULL, 0);
INSERT INTO `Synchronisations` VALUES(135, '2010-07-08 23:41:50', NULL, 0);
INSERT INTO `Synchronisations` VALUES(136, '2010-07-08 23:42:37', NULL, 0);
INSERT INTO `Synchronisations` VALUES(137, '2010-07-08 23:44:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(138, '2010-07-08 23:46:48', NULL, 0);
INSERT INTO `Synchronisations` VALUES(139, '2010-07-08 23:47:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(140, '2010-07-08 23:49:17', NULL, 0);
INSERT INTO `Synchronisations` VALUES(141, '2010-07-08 23:57:18', 17186, 1);
INSERT INTO `Synchronisations` VALUES(142, '2010-07-08 23:58:02', NULL, 0);
INSERT INTO `Synchronisations` VALUES(143, '2010-07-09 00:16:57', NULL, 0);
INSERT INTO `Synchronisations` VALUES(144, '2010-07-09 13:34:22', 17172, 1);
INSERT INTO `Synchronisations` VALUES(145, '2010-07-09 13:38:47', NULL, 0);
INSERT INTO `Synchronisations` VALUES(146, '2010-07-09 13:39:13', NULL, 0);
INSERT INTO `Synchronisations` VALUES(147, '2010-07-09 13:41:55', NULL, 0);
INSERT INTO `Synchronisations` VALUES(148, '2010-07-09 13:46:19', NULL, 0);
INSERT INTO `Synchronisations` VALUES(149, '2010-07-09 13:46:50', NULL, 0);
INSERT INTO `Synchronisations` VALUES(150, '2010-07-09 13:50:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(151, '2010-07-09 19:07:43', 17186, 1);
INSERT INTO `Synchronisations` VALUES(152, '2010-07-09 19:17:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(153, '2010-07-09 19:18:12', NULL, 0);
INSERT INTO `Synchronisations` VALUES(154, '2010-07-09 19:41:41', NULL, 0);
INSERT INTO `Synchronisations` VALUES(155, '2010-07-09 19:57:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(156, '2010-07-09 19:58:12', NULL, 0);
INSERT INTO `Synchronisations` VALUES(157, '2010-07-09 19:58:51', NULL, 0);
INSERT INTO `Synchronisations` VALUES(158, '2010-07-09 20:12:28', NULL, 0);
INSERT INTO `Synchronisations` VALUES(159, '2010-07-09 20:14:19', 17185, 1);
INSERT INTO `Synchronisations` VALUES(160, '2010-07-09 20:27:02', NULL, 0);
INSERT INTO `Synchronisations` VALUES(161, '2010-07-09 20:44:48', NULL, 0);
INSERT INTO `Synchronisations` VALUES(162, '2010-07-09 20:59:56', NULL, 0);
INSERT INTO `Synchronisations` VALUES(163, '2010-07-09 21:07:33', NULL, 0);
INSERT INTO `Synchronisations` VALUES(164, '2010-07-09 21:08:19', NULL, 0);
INSERT INTO `Synchronisations` VALUES(165, '2010-07-09 21:10:09', NULL, 0);
INSERT INTO `Synchronisations` VALUES(166, '2010-07-09 21:12:02', NULL, 0);
INSERT INTO `Synchronisations` VALUES(167, '2010-07-09 22:29:41', 17183, 1);
INSERT INTO `Synchronisations` VALUES(168, '2010-07-09 22:51:17', NULL, 0);
INSERT INTO `Synchronisations` VALUES(169, '2010-07-09 22:52:21', NULL, 0);
INSERT INTO `Synchronisations` VALUES(170, '2010-07-09 22:53:51', NULL, 0);
INSERT INTO `Synchronisations` VALUES(171, '2010-07-09 22:56:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(172, '2010-07-09 22:58:06', NULL, 0);
INSERT INTO `Synchronisations` VALUES(173, '2010-07-09 23:05:39', NULL, 0);
INSERT INTO `Synchronisations` VALUES(174, '2010-07-09 23:06:42', NULL, 0);
INSERT INTO `Synchronisations` VALUES(175, '2010-07-09 23:07:44', NULL, 0);
INSERT INTO `Synchronisations` VALUES(176, '2010-07-09 23:08:35', NULL, 0);
INSERT INTO `Synchronisations` VALUES(177, '2010-07-09 23:09:55', NULL, 0);
INSERT INTO `Synchronisations` VALUES(178, '2010-07-09 23:10:40', NULL, 0);
INSERT INTO `Synchronisations` VALUES(179, '2010-07-09 23:13:18', NULL, 0);
INSERT INTO `Synchronisations` VALUES(180, '2010-07-09 23:13:48', NULL, 0);
INSERT INTO `Synchronisations` VALUES(181, '2010-07-09 23:15:09', NULL, 0);
INSERT INTO `Synchronisations` VALUES(182, '2010-07-09 23:39:54', 17182, 1);
INSERT INTO `Synchronisations` VALUES(183, '2010-07-09 23:40:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(184, '2010-07-09 23:44:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(185, '2010-07-09 23:45:09', NULL, 0);
INSERT INTO `Synchronisations` VALUES(186, '2010-07-09 23:46:55', NULL, 0);
INSERT INTO `Synchronisations` VALUES(187, '2010-07-09 23:51:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(188, '2010-07-09 23:52:02', NULL, 0);
INSERT INTO `Synchronisations` VALUES(189, '2010-07-09 23:54:57', NULL, 0);
INSERT INTO `Synchronisations` VALUES(190, '2010-07-10 00:02:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(191, '2010-07-10 00:07:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(192, '2010-07-10 00:07:59', NULL, 0);
INSERT INTO `Synchronisations` VALUES(193, '2010-07-10 00:15:53', NULL, 0);
INSERT INTO `Synchronisations` VALUES(194, '2010-07-10 00:16:48', NULL, 0);
INSERT INTO `Synchronisations` VALUES(195, '2010-07-10 00:24:04', NULL, 0);
INSERT INTO `Synchronisations` VALUES(196, '2010-07-10 00:24:40', NULL, 0);
INSERT INTO `Synchronisations` VALUES(197, '2010-07-10 00:25:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(198, '2010-07-10 21:34:19', 17183, 1);
INSERT INTO `Synchronisations` VALUES(199, '2010-07-10 21:35:37', NULL, 0);
INSERT INTO `Synchronisations` VALUES(200, '2010-07-10 21:36:09', NULL, 0);
INSERT INTO `Synchronisations` VALUES(201, '2010-07-10 22:40:35', NULL, 0);
INSERT INTO `Synchronisations` VALUES(202, '2010-07-10 22:42:24', NULL, 0);
INSERT INTO `Synchronisations` VALUES(203, '2010-07-10 22:43:04', NULL, 0);
INSERT INTO `Synchronisations` VALUES(204, '2010-07-10 22:45:08', NULL, 0);
INSERT INTO `Synchronisations` VALUES(205, '2010-07-10 22:46:10', NULL, 0);
INSERT INTO `Synchronisations` VALUES(206, '2010-07-10 22:50:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(207, '2010-07-10 22:54:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(208, '2010-07-10 22:57:54', NULL, 0);
INSERT INTO `Synchronisations` VALUES(209, '2010-07-11 09:59:43', 17176, 1);
INSERT INTO `Synchronisations` VALUES(210, '2010-07-11 10:12:27', NULL, 0);
INSERT INTO `Synchronisations` VALUES(211, '2010-07-11 12:35:20', 17180, 1);
INSERT INTO `Synchronisations` VALUES(212, '2010-07-11 12:39:10', NULL, 0);
INSERT INTO `Synchronisations` VALUES(213, '2010-07-11 12:41:29', NULL, 0);
INSERT INTO `Synchronisations` VALUES(214, '2010-07-11 12:44:46', NULL, 0);
INSERT INTO `Synchronisations` VALUES(215, '2010-07-11 12:46:06', NULL, 0);
INSERT INTO `Synchronisations` VALUES(216, '2010-07-11 12:47:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(217, '2010-07-11 12:57:15', NULL, 0);
INSERT INTO `Synchronisations` VALUES(218, '2010-07-11 13:03:36', NULL, 0);
INSERT INTO `Synchronisations` VALUES(219, '2010-07-11 13:04:41', NULL, 0);
INSERT INTO `Synchronisations` VALUES(220, '2010-07-11 13:05:17', NULL, 0);
INSERT INTO `Synchronisations` VALUES(221, '2010-07-11 13:05:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(222, '2010-07-12 20:33:01', 17181, 1);
INSERT INTO `Synchronisations` VALUES(223, '2010-07-12 22:58:46', 17181, 1);
INSERT INTO `Synchronisations` VALUES(224, '2010-07-14 21:41:03', 17183, 1);
INSERT INTO `Synchronisations` VALUES(225, '2010-07-14 21:48:32', NULL, 0);
INSERT INTO `Synchronisations` VALUES(226, '2010-07-14 21:49:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(227, '2010-07-14 21:51:48', NULL, 0);
INSERT INTO `Synchronisations` VALUES(228, '2010-07-14 22:16:27', NULL, 0);
INSERT INTO `Synchronisations` VALUES(229, '2010-07-14 22:17:17', NULL, 0);
INSERT INTO `Synchronisations` VALUES(230, '2010-07-14 22:18:20', NULL, 0);
INSERT INTO `Synchronisations` VALUES(231, '2010-07-14 22:18:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(232, '2010-07-14 22:19:22', NULL, 0);
INSERT INTO `Synchronisations` VALUES(233, '2010-07-14 22:34:19', NULL, 0);
INSERT INTO `Synchronisations` VALUES(234, '2010-07-14 22:58:57', NULL, 0);
INSERT INTO `Synchronisations` VALUES(235, '2010-07-14 23:00:22', NULL, 0);
INSERT INTO `Synchronisations` VALUES(236, '2010-07-14 23:57:12', 17179, 1);
INSERT INTO `Synchronisations` VALUES(237, '2010-07-14 23:57:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(238, '2010-07-14 23:57:56', NULL, 0);
INSERT INTO `Synchronisations` VALUES(239, '2010-07-14 23:58:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(240, '2010-07-14 23:58:53', NULL, 0);
INSERT INTO `Synchronisations` VALUES(241, '2010-07-15 00:39:13', NULL, 0);
INSERT INTO `Synchronisations` VALUES(242, '2010-07-15 00:40:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(243, '2010-07-15 00:45:25', NULL, 0);
INSERT INTO `Synchronisations` VALUES(244, '2010-07-15 00:46:41', NULL, 0);
INSERT INTO `Synchronisations` VALUES(245, '2010-07-15 00:47:32', NULL, 0);
INSERT INTO `Synchronisations` VALUES(246, '2010-07-15 00:47:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(247, '2010-07-15 00:48:07', NULL, 0);
INSERT INTO `Synchronisations` VALUES(248, '2010-07-15 00:48:48', NULL, 0);
INSERT INTO `Synchronisations` VALUES(249, '2010-07-15 00:49:49', NULL, 0);
INSERT INTO `Synchronisations` VALUES(250, '2010-07-15 00:50:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(251, '2010-07-15 00:51:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(252, '2010-07-15 00:51:49', NULL, 0);
INSERT INTO `Synchronisations` VALUES(253, '2010-07-15 00:53:29', NULL, 0);
INSERT INTO `Synchronisations` VALUES(254, '2010-07-15 00:54:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(255, '2010-07-15 00:54:23', NULL, 0);
INSERT INTO `Synchronisations` VALUES(256, '2010-07-15 00:54:37', NULL, 0);
INSERT INTO `Synchronisations` VALUES(257, '2010-07-15 00:55:14', NULL, 0);
INSERT INTO `Synchronisations` VALUES(258, '2010-07-15 00:55:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(259, '2010-07-15 00:56:59', NULL, 0);
INSERT INTO `Synchronisations` VALUES(260, '2010-07-15 00:57:24', NULL, 0);
INSERT INTO `Synchronisations` VALUES(261, '2010-07-15 00:58:25', NULL, 0);
INSERT INTO `Synchronisations` VALUES(262, '2010-07-15 00:58:58', NULL, 0);
INSERT INTO `Synchronisations` VALUES(263, '2010-07-15 00:59:21', NULL, 0);
INSERT INTO `Synchronisations` VALUES(264, '2010-07-15 00:59:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(265, '2010-07-15 01:00:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(266, '2010-07-15 01:01:24', NULL, 0);
INSERT INTO `Synchronisations` VALUES(267, '2010-07-15 01:09:24', NULL, 0);
INSERT INTO `Synchronisations` VALUES(268, '2010-07-15 01:10:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(269, '2010-07-15 01:11:41', NULL, 0);
INSERT INTO `Synchronisations` VALUES(270, '2010-07-15 01:12:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(271, '2010-07-15 01:12:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(272, '2010-07-15 01:13:14', NULL, 0);
INSERT INTO `Synchronisations` VALUES(273, '2010-07-15 01:13:24', NULL, 0);
INSERT INTO `Synchronisations` VALUES(274, '2010-07-15 01:14:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(275, '2010-07-15 01:14:57', NULL, 0);
INSERT INTO `Synchronisations` VALUES(276, '2010-07-15 01:17:26', NULL, 0);
INSERT INTO `Synchronisations` VALUES(277, '2010-07-15 01:18:19', NULL, 0);
INSERT INTO `Synchronisations` VALUES(278, '2010-07-15 01:18:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(279, '2010-07-15 01:20:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(280, '2010-07-15 01:21:55', NULL, 0);
INSERT INTO `Synchronisations` VALUES(281, '2010-07-15 01:22:25', NULL, 0);
INSERT INTO `Synchronisations` VALUES(282, '2010-07-15 01:22:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(283, '2010-07-15 01:23:34', NULL, 0);
INSERT INTO `Synchronisations` VALUES(284, '2010-07-15 01:24:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(285, '2010-07-15 01:24:47', NULL, 0);
INSERT INTO `Synchronisations` VALUES(286, '2010-07-15 01:25:43', NULL, 0);
INSERT INTO `Synchronisations` VALUES(287, '2010-07-15 01:26:22', NULL, 0);
INSERT INTO `Synchronisations` VALUES(288, '2010-07-15 01:27:25', NULL, 0);
INSERT INTO `Synchronisations` VALUES(289, '2010-07-15 01:28:21', NULL, 0);
INSERT INTO `Synchronisations` VALUES(290, '2010-07-15 01:28:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(291, '2010-07-15 01:30:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(292, '2010-07-15 21:23:44', 17175, 1);
INSERT INTO `Synchronisations` VALUES(293, '2010-07-15 21:24:54', NULL, 0);
INSERT INTO `Synchronisations` VALUES(294, '2010-07-15 21:26:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(295, '2010-07-15 21:28:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(296, '2010-07-15 21:45:58', NULL, 0);
INSERT INTO `Synchronisations` VALUES(297, '2010-07-15 21:47:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(298, '2010-07-15 21:48:25', NULL, 0);
INSERT INTO `Synchronisations` VALUES(299, '2010-07-15 21:53:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(300, '2010-07-16 22:43:34', 17169, 1);
INSERT INTO `Synchronisations` VALUES(301, '2010-07-16 22:44:57', NULL, 0);
INSERT INTO `Synchronisations` VALUES(302, '2010-07-16 22:45:22', NULL, 0);
INSERT INTO `Synchronisations` VALUES(303, '2010-07-16 23:15:25', NULL, 0);
INSERT INTO `Synchronisations` VALUES(304, '2010-07-16 23:17:06', NULL, 0);
INSERT INTO `Synchronisations` VALUES(305, '2010-07-16 23:18:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(306, '2010-07-16 23:28:55', NULL, 0);
INSERT INTO `Synchronisations` VALUES(307, '2010-07-16 23:30:37', NULL, 0);
INSERT INTO `Synchronisations` VALUES(308, '2010-07-16 23:31:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(309, '2010-07-17 00:04:19', NULL, 0);
INSERT INTO `Synchronisations` VALUES(310, '2010-07-17 00:12:58', NULL, 0);
INSERT INTO `Synchronisations` VALUES(311, '2010-07-17 00:31:44', NULL, 0);
INSERT INTO `Synchronisations` VALUES(312, '2010-07-17 00:33:32', NULL, 0);
INSERT INTO `Synchronisations` VALUES(313, '2010-07-17 00:35:27', NULL, 0);
INSERT INTO `Synchronisations` VALUES(314, '2010-07-17 00:37:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(315, '2010-07-17 00:37:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(316, '2010-07-17 00:39:13', NULL, 0);
INSERT INTO `Synchronisations` VALUES(317, '2010-07-17 00:40:17', NULL, 0);
INSERT INTO `Synchronisations` VALUES(318, '2010-07-17 00:40:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(319, '2010-07-17 00:41:41', NULL, 0);
INSERT INTO `Synchronisations` VALUES(320, '2010-07-17 00:43:12', NULL, 0);
INSERT INTO `Synchronisations` VALUES(321, '2010-07-17 00:45:32', 17175, 1);
INSERT INTO `Synchronisations` VALUES(322, '2010-07-17 00:48:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(323, '2010-07-17 00:56:58', NULL, 0);
INSERT INTO `Synchronisations` VALUES(324, '2010-07-17 00:57:43', NULL, 0);
INSERT INTO `Synchronisations` VALUES(325, '2010-07-17 01:03:48', NULL, 0);
INSERT INTO `Synchronisations` VALUES(326, '2010-07-17 01:06:20', NULL, 0);
INSERT INTO `Synchronisations` VALUES(327, '2010-07-17 01:09:54', NULL, 0);
INSERT INTO `Synchronisations` VALUES(328, '2010-07-17 01:14:32', NULL, 0);
INSERT INTO `Synchronisations` VALUES(329, '2010-07-17 01:15:55', NULL, 0);
INSERT INTO `Synchronisations` VALUES(330, '2010-07-17 01:18:33', NULL, 0);
INSERT INTO `Synchronisations` VALUES(331, '2010-07-17 01:20:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(332, '2010-07-17 01:23:56', NULL, 0);
INSERT INTO `Synchronisations` VALUES(333, '2010-07-17 01:24:56', NULL, 0);
INSERT INTO `Synchronisations` VALUES(334, '2010-07-17 10:27:33', 17171, 1);
INSERT INTO `Synchronisations` VALUES(335, '2010-07-17 10:44:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(336, '2010-07-17 10:45:04', NULL, 0);
INSERT INTO `Synchronisations` VALUES(337, '2010-07-17 10:46:05', NULL, 0);
INSERT INTO `Synchronisations` VALUES(338, '2010-07-17 10:48:26', NULL, 0);
INSERT INTO `Synchronisations` VALUES(339, '2010-07-17 11:05:19', NULL, 0);
INSERT INTO `Synchronisations` VALUES(340, '2010-07-17 11:07:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(341, '2010-07-17 11:09:29', NULL, 0);
INSERT INTO `Synchronisations` VALUES(342, '2010-07-17 11:13:58', NULL, 0);
INSERT INTO `Synchronisations` VALUES(343, '2010-07-17 11:16:24', NULL, 0);
INSERT INTO `Synchronisations` VALUES(344, '2010-07-17 13:12:49', 17179, 1);
INSERT INTO `Synchronisations` VALUES(345, '2010-07-17 13:13:53', NULL, 0);
INSERT INTO `Synchronisations` VALUES(346, '2010-07-17 13:19:56', NULL, 0);
INSERT INTO `Synchronisations` VALUES(347, '2010-07-17 13:20:25', NULL, 0);
INSERT INTO `Synchronisations` VALUES(348, '2010-07-17 13:22:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(349, '2010-07-17 13:36:49', NULL, 0);
INSERT INTO `Synchronisations` VALUES(350, '2010-07-17 13:37:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(351, '2010-07-17 14:38:04', NULL, 0);
INSERT INTO `Synchronisations` VALUES(352, '2010-07-17 14:43:15', NULL, 0);
INSERT INTO `Synchronisations` VALUES(353, '2010-07-17 14:49:34', NULL, 0);
INSERT INTO `Synchronisations` VALUES(354, '2010-07-17 14:51:02', NULL, 0);
INSERT INTO `Synchronisations` VALUES(355, '2010-07-17 14:51:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(356, '2010-07-17 14:52:00', NULL, 0);
INSERT INTO `Synchronisations` VALUES(357, '2010-07-17 15:04:13', NULL, 0);
INSERT INTO `Synchronisations` VALUES(358, '2010-07-17 22:40:35', 17171, 1);
INSERT INTO `Synchronisations` VALUES(359, '2010-07-17 22:43:33', NULL, 0);
INSERT INTO `Synchronisations` VALUES(360, '2010-07-17 22:55:53', NULL, 0);
INSERT INTO `Synchronisations` VALUES(361, '2010-07-17 22:56:35', NULL, 0);
INSERT INTO `Synchronisations` VALUES(362, '2010-07-17 23:02:17', NULL, 0);
INSERT INTO `Synchronisations` VALUES(363, '2010-07-17 23:03:46', NULL, 0);
INSERT INTO `Synchronisations` VALUES(364, '2010-07-17 23:04:17', NULL, 0);
INSERT INTO `Synchronisations` VALUES(365, '2010-07-17 23:05:24', NULL, 0);
INSERT INTO `Synchronisations` VALUES(366, '2010-07-17 23:07:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(367, '2010-07-17 23:08:35', NULL, 0);
INSERT INTO `Synchronisations` VALUES(368, '2010-07-17 23:09:19', NULL, 0);
INSERT INTO `Synchronisations` VALUES(369, '2010-07-17 23:10:35', NULL, 0);
INSERT INTO `Synchronisations` VALUES(370, '2010-07-17 23:13:40', NULL, 0);
INSERT INTO `Synchronisations` VALUES(371, '2010-07-17 23:13:47', NULL, 0);
INSERT INTO `Synchronisations` VALUES(372, '2010-07-17 23:20:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(373, '2010-07-17 23:21:09', NULL, 0);
INSERT INTO `Synchronisations` VALUES(374, '2010-07-17 23:23:13', NULL, 0);
INSERT INTO `Synchronisations` VALUES(375, '2010-07-17 23:23:26', NULL, 0);
INSERT INTO `Synchronisations` VALUES(376, '2010-07-17 23:25:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(377, '2010-07-17 23:25:12', NULL, 0);
INSERT INTO `Synchronisations` VALUES(378, '2010-07-17 23:25:39', NULL, 0);
INSERT INTO `Synchronisations` VALUES(379, '2010-07-17 23:25:54', NULL, 0);
INSERT INTO `Synchronisations` VALUES(380, '2010-07-17 23:26:00', NULL, 0);
INSERT INTO `Synchronisations` VALUES(381, '2010-07-17 23:28:20', NULL, 0);
INSERT INTO `Synchronisations` VALUES(382, '2010-07-17 23:28:29', NULL, 0);
INSERT INTO `Synchronisations` VALUES(383, '2010-07-17 23:29:38', NULL, 0);
INSERT INTO `Synchronisations` VALUES(384, '2010-07-17 23:29:40', NULL, 0);
INSERT INTO `Synchronisations` VALUES(385, '2010-07-17 23:29:42', NULL, 0);
INSERT INTO `Synchronisations` VALUES(386, '2010-07-17 23:29:43', NULL, 0);
INSERT INTO `Synchronisations` VALUES(387, '2010-07-17 23:29:44', NULL, 0);
INSERT INTO `Synchronisations` VALUES(388, '2010-07-17 23:29:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(389, '2010-07-17 23:30:08', NULL, 0);
INSERT INTO `Synchronisations` VALUES(390, '2010-07-17 23:30:10', NULL, 0);
INSERT INTO `Synchronisations` VALUES(391, '2010-07-17 23:30:11', NULL, 0);
INSERT INTO `Synchronisations` VALUES(392, '2010-07-17 23:30:27', NULL, 0);
INSERT INTO `Synchronisations` VALUES(393, '2010-07-17 23:30:30', NULL, 0);
INSERT INTO `Synchronisations` VALUES(394, '2010-07-17 23:30:31', NULL, 0);
INSERT INTO `Synchronisations` VALUES(395, '2010-07-17 23:30:33', NULL, 0);
INSERT INTO `Synchronisations` VALUES(396, '2010-07-17 23:32:37', NULL, 0);
INSERT INTO `Synchronisations` VALUES(397, '2010-07-17 23:32:47', NULL, 0);
INSERT INTO `Synchronisations` VALUES(398, '2010-07-17 23:34:09', NULL, 0);
INSERT INTO `Synchronisations` VALUES(399, '2010-07-17 23:34:15', NULL, 0);
INSERT INTO `Synchronisations` VALUES(400, '2010-07-17 23:36:53', NULL, 0);
INSERT INTO `Synchronisations` VALUES(401, '2010-07-17 23:37:14', NULL, 0);
INSERT INTO `Synchronisations` VALUES(402, '2010-07-17 23:38:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(403, '2010-07-17 23:38:54', NULL, 0);
INSERT INTO `Synchronisations` VALUES(404, '2010-07-18 07:31:26', 17157, 1);
INSERT INTO `Synchronisations` VALUES(405, '2010-07-20 23:07:59', 17178, 1);
INSERT INTO `Synchronisations` VALUES(406, '2010-07-24 23:14:59', 17191, 1);
INSERT INTO `Synchronisations` VALUES(407, '2010-07-24 23:19:03', NULL, 0);
INSERT INTO `Synchronisations` VALUES(408, '2010-07-24 23:19:20', NULL, 0);
INSERT INTO `Synchronisations` VALUES(409, '2010-07-24 23:35:50', NULL, 0);
INSERT INTO `Synchronisations` VALUES(410, '2010-07-25 17:49:45', 17189, 1);
INSERT INTO `Synchronisations` VALUES(411, '2010-07-25 18:07:20', NULL, 0);
INSERT INTO `Synchronisations` VALUES(412, '2010-07-25 18:10:58', NULL, 0);
INSERT INTO `Synchronisations` VALUES(413, '2010-07-25 18:12:34', NULL, 0);
INSERT INTO `Synchronisations` VALUES(414, '2010-07-25 18:15:22', NULL, 0);
INSERT INTO `Synchronisations` VALUES(415, '2010-07-25 18:16:39', NULL, 0);
INSERT INTO `Synchronisations` VALUES(416, '2010-07-25 18:18:06', NULL, 0);
INSERT INTO `Synchronisations` VALUES(417, '2010-07-25 18:20:51', NULL, 0);
INSERT INTO `Synchronisations` VALUES(418, '2010-07-25 18:22:18', NULL, 0);
INSERT INTO `Synchronisations` VALUES(419, '2010-07-25 18:31:06', NULL, 0);
INSERT INTO `Synchronisations` VALUES(420, '2010-07-25 18:31:34', NULL, 0);
INSERT INTO `Synchronisations` VALUES(421, '2010-07-25 18:32:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(422, '2010-07-25 18:37:35', NULL, 0);
INSERT INTO `Synchronisations` VALUES(423, '2010-07-25 19:08:45', NULL, 0);
INSERT INTO `Synchronisations` VALUES(424, '2010-07-25 19:12:47', NULL, 0);
INSERT INTO `Synchronisations` VALUES(425, '2010-07-25 19:13:30', NULL, 0);
INSERT INTO `Synchronisations` VALUES(426, '2010-07-25 19:14:30', NULL, 0);
INSERT INTO `Synchronisations` VALUES(427, '2010-07-25 19:15:56', NULL, 0);
INSERT INTO `Synchronisations` VALUES(428, '2010-07-25 19:17:06', NULL, 0);
INSERT INTO `Synchronisations` VALUES(429, '2010-07-25 19:22:25', NULL, 0);
INSERT INTO `Synchronisations` VALUES(430, '2010-07-25 19:22:50', NULL, 0);
INSERT INTO `Synchronisations` VALUES(431, '2010-07-25 19:23:58', NULL, 0);
INSERT INTO `Synchronisations` VALUES(432, '2010-07-25 20:34:56', 17187, 1);
INSERT INTO `Synchronisations` VALUES(433, '2010-07-25 20:39:19', NULL, 0);
INSERT INTO `Synchronisations` VALUES(434, '2010-07-25 20:40:06', NULL, 0);
INSERT INTO `Synchronisations` VALUES(435, '2010-07-25 20:41:17', NULL, 0);
INSERT INTO `Synchronisations` VALUES(436, '2010-07-25 20:51:39', NULL, 0);
INSERT INTO `Synchronisations` VALUES(437, '2010-07-25 20:52:21', NULL, 0);
INSERT INTO `Synchronisations` VALUES(438, '2010-07-25 21:57:39', NULL, 0);
INSERT INTO `Synchronisations` VALUES(439, '2010-07-25 22:00:10', NULL, 0);
INSERT INTO `Synchronisations` VALUES(440, '2010-07-25 22:08:58', NULL, 0);
INSERT INTO `Synchronisations` VALUES(441, '2010-08-01 21:32:49', NULL, 0);
INSERT INTO `Synchronisations` VALUES(442, '2010-08-01 22:21:16', NULL, 0);
INSERT INTO `Synchronisations` VALUES(443, '2010-08-01 22:33:34', NULL, 0);
INSERT INTO `Synchronisations` VALUES(444, '2010-08-01 22:34:46', NULL, 0);
INSERT INTO `Synchronisations` VALUES(445, '2010-08-01 22:35:29', NULL, 0);
INSERT INTO `Synchronisations` VALUES(446, '2010-08-01 22:36:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(447, '2010-08-01 22:36:35', NULL, 0);
INSERT INTO `Synchronisations` VALUES(448, '2010-08-01 22:50:23', NULL, 0);
INSERT INTO `Synchronisations` VALUES(449, '2010-08-01 22:50:54', NULL, 0);
INSERT INTO `Synchronisations` VALUES(450, '2010-08-01 22:52:57', NULL, 0);
INSERT INTO `Synchronisations` VALUES(451, '2010-08-01 22:53:52', NULL, 0);
INSERT INTO `Synchronisations` VALUES(452, '2010-08-01 23:12:01', NULL, 0);
INSERT INTO `Synchronisations` VALUES(453, '2010-08-03 13:38:59', 17169, 1);
INSERT INTO `Synchronisations` VALUES(454, '2010-08-03 13:39:21', NULL, 0);
INSERT INTO `Synchronisations` VALUES(455, '2010-08-03 13:41:41', NULL, 0);
INSERT INTO `Synchronisations` VALUES(456, '2010-08-03 14:03:30', NULL, 0);
INSERT INTO `Synchronisations` VALUES(457, '2010-08-03 14:16:35', NULL, 0);
INSERT INTO `Synchronisations` VALUES(458, '2010-08-03 14:28:36', NULL, 0);
INSERT INTO `Synchronisations` VALUES(459, '2010-08-03 14:28:54', NULL, 0);
INSERT INTO `Synchronisations` VALUES(460, '2010-08-03 14:29:43', NULL, 0);
INSERT INTO `Synchronisations` VALUES(461, '2010-08-03 14:30:12', NULL, 0);
INSERT INTO `Synchronisations` VALUES(462, '2010-08-03 14:30:27', NULL, 0);
INSERT INTO `Synchronisations` VALUES(463, '2012-02-01 20:53:06', 24419, 1);
