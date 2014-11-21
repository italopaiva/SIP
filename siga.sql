-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 21-Nov-2014 às 18:59
-- Versão do servidor: 5.6.20
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siga`
--
CREATE DATABASE IF NOT EXISTS `siga` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `siga`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `course`
--

CREATE TABLE IF NOT EXISTS `course` (
`id` int(11) NOT NULL,
  `course_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `course`
--

TRUNCATE TABLE `course`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `course_type`
--

CREATE TABLE IF NOT EXISTS `course_type` (
`id_course_type` int(11) NOT NULL,
  `name_course_type` varchar(40) CHARACTER SET latin1 NOT NULL,
  `financiated` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `course_type`
--

TRUNCATE TABLE `course_type`;
--
-- Extraindo dados da tabela `course_type`
--

INSERT INTO `course_type` (`id_course_type`, `name_course_type`, `financiated`) VALUES
(1, 'graduacao', 0),
(2, 'pos graduacao', 0),
(3, 'educação a distancia', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
`id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `departamentos`
--

TRUNCATE TABLE `departamentos`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE IF NOT EXISTS `funcionarios` (
`id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `funcionarios`
--

TRUNCATE TABLE `funcionarios`;
--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`) VALUES
(2, 'funcionario1'),
(3, 'funcionario2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcoes`
--

CREATE TABLE IF NOT EXISTS `funcoes` (
`id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `funcoes`
--

TRUNCATE TABLE `funcoes`;
--
-- Extraindo dados da tabela `funcoes`
--

INSERT INTO `funcoes` (`id`, `nome`) VALUES
(1, 'coordenador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `graduation`
--

CREATE TABLE IF NOT EXISTS `graduation` (
`id_graduation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `graduation`
--

TRUNCATE TABLE `graduation`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `module`
--

CREATE TABLE IF NOT EXISTS `module` (
`id_module` int(11) NOT NULL,
  `module_name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `module`
--

TRUNCATE TABLE `module`;
--
-- Extraindo dados da tabela `module`
--

INSERT INTO `module` (`id_module`, `module_name`) VALUES
(1, 'financeiro'),
(2, 'administrativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `module_permission`
--

CREATE TABLE IF NOT EXISTS `module_permission` (
  `id_module` int(11) NOT NULL,
  `id_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `module_permission`
--

TRUNCATE TABLE `module_permission`;
--
-- Extraindo dados da tabela `module_permission`
--

INSERT INTO `module_permission` (`id_module`, `id_permission`) VALUES
(1, 3),
(1, 6),
(2, 4),
(2, 7),
(2, 6),
(2, 3),
(2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
`id_permission` int(11) NOT NULL,
  `permission_name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `permission`
--

TRUNCATE TABLE `permission`;
--
-- Extraindo dados da tabela `permission`
--

INSERT INTO `permission` (`id_permission`, `permission_name`) VALUES
(1, 'cadastro'),
(3, 'funcionarios'),
(4, 'setores'),
(6, 'funcoes'),
(7, 'departamentos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `postgraduation_type`
--

CREATE TABLE IF NOT EXISTS `postgraduation_type` (
`id_postgraduation_type` int(11) NOT NULL,
  `name_postgraduation_type` varchar(40) CHARACTER SET ucs2 NOT NULL,
  `id_course_type` int(11) NOT NULL,
  `financiated` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `postgraduation_type`
--

TRUNCATE TABLE `postgraduation_type`;
--
-- Extraindo dados da tabela `postgraduation_type`
--

INSERT INTO `postgraduation_type` (`id_postgraduation_type`, `name_postgraduation_type`, `id_course_type`, `financiated`) VALUES
(1, 'programa academico', 2, 0),
(2, 'programa profissional', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setores`
--

CREATE TABLE IF NOT EXISTS `setores` (
`id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `setores`
--

TRUNCATE TABLE `setores`;
--
-- Extraindo dados da tabela `setores`
--

INSERT INTO `setores` (`id`, `nome`) VALUES
(1, 'setor1'),
(2, 'setor2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `cpf`, `email`, `login`, `password`) VALUES
(3, 'admin', '', 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'Italo', '', 'italo@italo.com', 'italo', '647a26221e19b6ac03b4b33b0a2dd895'),
(5, 'Macario', '', 'macario@macario.com', 'macario', '6b5d45b4a73b2be619e0710c80b08b0e'),
(6, 'filipe', '', 'filipe@filipe.com', 'filipe', 'a5530b58fabf3c5c89189ed6c7a065f5'),
(7, 'tiago', '', 'tiago@tiago.com', 'tiago', 'c11845c9a05c8df7b137f49504dd918b'),
(8, 'Richard', '04106969190', 'richard@gmail.com', 'richard', '6ae199a93c381bf6d5de27491139d3f9'),
(9, 'Breno', '21312423542', 'breno@gmail.com', 'breno', '4b4070bf857ce36407f2d14f016d8279'),
(10, 'Bruna', '11111111111', 'bruna@gmail.com', 'bruna', '1f260fa281fb68be2a991eb6edc345fb'),
(11, 'Capivara', '00240137140', 'capivara@gmail.com', 'capivara', '29b5a2f496880fa1f5f9ef734032c13d'),
(12, 'Tiririca', '40181340100', 'tiririca_deputado@gmail.com', 'tiririca', '934b535800b1cba8f96a5d72f72f1611');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_module`
--

CREATE TABLE IF NOT EXISTS `user_module` (
  `id_user` int(11) NOT NULL,
  `id_module` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `user_module`
--

TRUNCATE TABLE `user_module`;
--
-- Extraindo dados da tabela `user_module`
--

INSERT INTO `user_module` (`id_user`, `id_module`) VALUES
(3, 1),
(4, 2),
(5, 1),
(6, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
`id_type` int(11) NOT NULL,
  `type_name` varchar(15) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `user_type`
--

TRUNCATE TABLE `user_type`;
--
-- Extraindo dados da tabela `user_type`
--

INSERT INTO `user_type` (`id_type`, `type_name`) VALUES
(1, 'admininstrador'),
(2, 'discente'),
(3, 'docente'),
(4, 'secretaria'),
(5, 'convidado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_user_type`
--

CREATE TABLE IF NOT EXISTS `user_user_type` (
  `id_user` int(11) NOT NULL,
  `id_user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `user_user_type`
--

TRUNCATE TABLE `user_user_type`;
--
-- Extraindo dados da tabela `user_user_type`
--

INSERT INTO `user_user_type` (`id_user`, `id_user_type`) VALUES
(4, 2),
(5, 3),
(6, 4),
(7, 5),
(3, 1),
(8, 5),
(9, 3),
(10, 4),
(11, 2),
(12, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_type`
--
ALTER TABLE `course_type`
 ADD PRIMARY KEY (`id_course_type`), ADD UNIQUE KEY `name_course_type` (`name_course_type`);

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcoes`
--
ALTER TABLE `funcoes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graduation`
--
ALTER TABLE `graduation`
 ADD PRIMARY KEY (`id_graduation`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
 ADD PRIMARY KEY (`id_module`);

--
-- Indexes for table `module_permission`
--
ALTER TABLE `module_permission`
 ADD KEY `id_module` (`id_module`), ADD KEY `id_permission` (`id_permission`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
 ADD PRIMARY KEY (`id_permission`);

--
-- Indexes for table `postgraduation_type`
--
ALTER TABLE `postgraduation_type`
 ADD PRIMARY KEY (`id_postgraduation_type`), ADD KEY `id_course_type` (`id_course_type`);

--
-- Indexes for table `setores`
--
ALTER TABLE `setores`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_module`
--
ALTER TABLE `user_module`
 ADD KEY `id_user` (`id_user`), ADD KEY `id_module` (`id_module`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
 ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `user_user_type`
--
ALTER TABLE `user_user_type`
 ADD KEY `id_user_type` (`id_user_type`), ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_type`
--
ALTER TABLE `course_type`
MODIFY `id_course_type` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `funcoes`
--
ALTER TABLE `funcoes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `graduation`
--
ALTER TABLE `graduation`
MODIFY `id_graduation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
MODIFY `id_permission` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `postgraduation_type`
--
ALTER TABLE `postgraduation_type`
MODIFY `id_postgraduation_type` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `setores`
--
ALTER TABLE `setores`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `module_permission`
--
ALTER TABLE `module_permission`
ADD CONSTRAINT `PERMISSION_ID_FK` FOREIGN KEY (`id_permission`) REFERENCES `permission` (`id_permission`),
ADD CONSTRAINT `PERMISSION_MODULE_ID_FK` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`);

--
-- Limitadores para a tabela `postgraduation_type`
--
ALTER TABLE `postgraduation_type`
ADD CONSTRAINT `postgraduation_type_ibfk_1` FOREIGN KEY (`id_course_type`) REFERENCES `course_type` (`id_course_type`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `user_module`
--
ALTER TABLE `user_module`
ADD CONSTRAINT `MODULE_ID_FK` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`),
ADD CONSTRAINT `MODULE_USER_ID_FK` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `user_user_type`
--
ALTER TABLE `user_user_type`
ADD CONSTRAINT `USER_ID_FK` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
ADD CONSTRAINT `USER_TYPE_FK` FOREIGN KEY (`id_user_type`) REFERENCES `user_type` (`id_type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
