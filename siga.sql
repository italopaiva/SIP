-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2014 at 01:17 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siga`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

CREATE TABLE IF NOT EXISTS `course_type` (
  `id_course_type` int(11) NOT NULL AUTO_INCREMENT,
  `name_course_type` varchar(40) CHARACTER SET latin1 NOT NULL,
  `financiated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_course_type`),
  UNIQUE KEY `name_course_type` (`name_course_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`id_course_type`, `name_course_type`, `financiated`) VALUES
(1, 'graduacao', 0),
(2, 'pos graduacao', 0),
(3, 'educação a distancia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `funcionarios`
--

CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`) VALUES
(2, 'funcionario1'),
(3, 'funcionario2');

-- --------------------------------------------------------

--
-- Table structure for table `funcoes`
--

CREATE TABLE IF NOT EXISTS `funcoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `funcoes`
--

INSERT INTO `funcoes` (`id`, `nome`) VALUES
(1, 'coordenador');

-- --------------------------------------------------------

--
-- Table structure for table `graduation`
--

CREATE TABLE IF NOT EXISTS `graduation` (
  `id_graduation` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_graduation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id_module` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_module`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id_module`, `module_name`) VALUES
(1, 'financeiro'),
(2, 'administrativo');

-- --------------------------------------------------------

--
-- Table structure for table `module_permission`
--

CREATE TABLE IF NOT EXISTS `module_permission` (
  `id_module` int(11) NOT NULL,
  `id_permission` int(11) NOT NULL,
  KEY `id_module` (`id_module`),
  KEY `id_permission` (`id_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_permission`
--

INSERT INTO `module_permission` (`id_module`, `id_permission`) VALUES
(1, 3),
(1, 6),
(2, 4),
(2, 7),
(2, 6),
(2, 3),
(2, 1),
(2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id_permission` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_permission`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id_permission`, `permission_name`) VALUES
(1, 'cadastro'),
(3, 'funcionarios'),
(4, 'setores'),
(6, 'funcoes'),
(7, 'departamentos'),
(8, 'cursos');

-- --------------------------------------------------------

--
-- Table structure for table `postgraduation_type`
--

CREATE TABLE IF NOT EXISTS `postgraduation_type` (
  `id_postgraduation_type` int(11) NOT NULL AUTO_INCREMENT,
  `name_postgraduation_type` varchar(40) CHARACTER SET ucs2 NOT NULL,
  `id_course_type` int(11) NOT NULL,
  `financiated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_postgraduation_type`),
  KEY `id_course_type` (`id_course_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `postgraduation_type`
--

INSERT INTO `postgraduation_type` (`id_postgraduation_type`, `name_postgraduation_type`, `id_course_type`, `financiated`) VALUES
(1, 'programa academico', 2, 0),
(2, 'programa profissional', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setores`
--

CREATE TABLE IF NOT EXISTS `setores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `setores`
--

INSERT INTO `setores` (`id`, `nome`) VALUES
(1, 'setor1'),
(2, 'setor2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `cpf`, `email`, `login`, `password`) VALUES
(1, 'admin', '', 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Italo', '', 'italo@italo.com', 'italo', '647a26221e19b6ac03b4b33b0a2dd895'),
(3, 'Macario', '', 'macario@macario.com', 'macario', '6b5d45b4a73b2be619e0710c80b08b0e'),
(4, 'filipe', '', 'filipe@filipe.com', 'filipe', 'a5530b58fabf3c5c89189ed6c7a065f5'),
(5, 'tiago', '', 'tiago@tiago.com', 'tiago', 'c11845c9a05c8df7b137f49504dd918b'),
(6, 'Richard', '04106969190', 'richard@gmail.com', 'richard', '6ae199a93c381bf6d5de27491139d3f9'),
(7, 'Breno', '21312423542', 'breno@gmail.com', 'breno', '4b4070bf857ce36407f2d14f016d8279'),
(8, 'Bruna', '11111111111', 'bruna@gmail.com', 'bruna', '1f260fa281fb68be2a991eb6edc345fb');

-- --------------------------------------------------------

--
-- Table structure for table `user_module`
--

CREATE TABLE IF NOT EXISTS `user_module` (
  `id_user` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  KEY `id_user` (`id_user`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_module`
--

INSERT INTO `user_module` (`id_user`, `id_module`) VALUES
(1, 1),
(1, 2),
(1, 1),
(1, 2),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id_type`, `type_name`) VALUES
(1, 'administrador'),
(2, 'discente'),
(3, 'docente'),
(4, 'secretaria'),
(5, 'convidado');

-- --------------------------------------------------------

--
-- Table structure for table `user_user_type`
--

CREATE TABLE IF NOT EXISTS `user_user_type` (
  `id_user` int(11) NOT NULL,
  `id_user_type` int(11) NOT NULL,
  KEY `id_user_type` (`id_user_type`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_user_type`
--

INSERT INTO `user_user_type` (`id_user`, `id_user_type`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(2, 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `module_permission`
--
ALTER TABLE `module_permission`
  ADD CONSTRAINT `PERMISSION_ID_FK` FOREIGN KEY (`id_permission`) REFERENCES `permission` (`id_permission`),
  ADD CONSTRAINT `PERMISSION_MODULE_ID_FK` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`);

--
-- Constraints for table `postgraduation_type`
--
ALTER TABLE `postgraduation_type`
  ADD CONSTRAINT `postgraduation_type_ibfk_1` FOREIGN KEY (`id_course_type`) REFERENCES `course_type` (`id_course_type`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_module`
--
ALTER TABLE `user_module`
  ADD CONSTRAINT `MODULE_ID_FK` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`),
  ADD CONSTRAINT `MODULE_USER_ID_FK` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
