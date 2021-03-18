-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 09:33 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciclos_propedeuticos_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'nombre',
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp() COMMENT 'ultimima actualizzacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `name`, `updated_at`) VALUES
(1, 'Chat 1', '2020-11-11 21:18:03'),
(2, 'Chat 2', '2020-11-11 21:18:06'),
(3, 'fc1f5adb36c38cfd63d7512e25735802641a6560hola', NULL),
(4, '02a53bdd431d75dd6f424d0476d5653c760ad7efhola', NULL),
(5, '16b25592b8ae9d649a73f4052baab091e01d6f48hola', NULL),
(6, '6f7fe4b4cada43d64e21640f118e83b0702d5c40hola', NULL),
(7, '87ad99eba3b0bccfd00da80de62095acba48f121hola', NULL),
(8, '32e251ea68c9313f935e779abdd7c84fbefb961bhola', NULL),
(9, '6cc91fcb919f0f8bd6cdf3237f9fd48cc51e426bhola', NULL),
(10, '4f0b706282c6f8bff2ab03877079b8787f4ebd1dhola', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `created_at`, `updated_at`) VALUES
(9, 3, 1, NULL, NULL, NULL),
(10, 3, 1, NULL, NULL, NULL),
(11, 3, 1, NULL, NULL, NULL),
(12, 3, 1, 'aaaa', NULL, NULL),
(13, 3, 1, 'aaaa', NULL, NULL),
(14, 3, 1, 'aaaa', NULL, NULL),
(15, 3, 1, 'aaaa', NULL, NULL),
(16, 3, 1, 'aaaa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cycle`
--

CREATE TABLE `cycle` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cycle`
--

INSERT INTO `cycle` (`id`, `name`, `create_time`, `update_time`) VALUES
(1, 'Técnico', '2020-12-09 15:13:55', '2020-12-09 15:13:55'),
(2, 'Tecnólogo', '2020-12-10 15:53:47', '2020-12-09 15:13:55'),
(3, 'Profesional', '2020-12-10 15:53:48', '2020-12-09 15:13:55'),
(4, 'Adicional', '2020-12-10 15:53:49', '2020-12-09 15:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `user_send_id` int(11) NOT NULL,
  `user_recive_id` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `chat_id`, `user_send_id`, `user_recive_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 'hla hola', NULL, NULL),
(2, 1, 2, 1, 'kiubo, como está?', NULL, NULL),
(3, 1, 1, 2, 'Bien gracias', NULL, NULL),
(4, 1, 1, 2, 'Usted qué tal?', NULL, NULL),
(5, 1, 2, 1, 'me alegra', NULL, NULL),
(6, 2, 1, 3, 'Hola Profe, cuanto me saqué?', NULL, NULL),
(7, 2, 3, 1, 'Sebas todo bien', NULL, NULL),
(8, 2, 3, 1, 'Pasaste', NULL, NULL),
(9, 1, 1, 2, NULL, NULL, NULL),
(10, 1, 1, 2, NULL, NULL, NULL),
(11, 1, 1, 1, NULL, NULL, NULL),
(12, 1, 1, 1, 'Uff Gracias a Dios.', NULL, NULL),
(13, 1, 1, 2, 'aaa', NULL, NULL),
(14, 1, 1, 1, 'a', NULL, NULL),
(15, 7, 1, 4, 'aaaaa', NULL, NULL),
(16, 8, 1, 7, 'aaaaa', NULL, NULL),
(17, 9, 1, 8, 'asdf', NULL, NULL),
(18, 7, 1, 4, 'a', NULL, NULL),
(19, 10, 1, 5, 'aaaaa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'nombre',
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp() COMMENT 'ultimima actualizzacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `updated_at`) VALUES
(3, 'aaa', NULL),
(4, 'aaa', NULL),
(5, 'qqqa', NULL),
(6, 'qqqa', NULL),
(7, 'Hla Hoola', NULL),
(8, 'Hla Hoola', NULL),
(9, 'Hla Hoola', NULL),
(10, 'Hla Hoola', NULL),
(11, 'a', NULL),
(12, 'ñññ', NULL),
(13, 'ñññ', NULL),
(14, 'ñññ', NULL),
(15, 'a', NULL),
(16, 'aaa', NULL),
(17, 'aaa', NULL),
(18, 'aaa', NULL),
(19, 'aaa', NULL),
(20, 'ñ', NULL),
(21, 'aaq', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_degree`
--

CREATE TABLE `request_degree` (
  `id` int(11) NOT NULL,
  `from` varchar(45) DEFAULT NULL,
  `degree_project_name` varchar(45) NOT NULL,
  `observation` varchar(255) DEFAULT 'Sin Observaciones',
  `state` tinyint(1) DEFAULT 1 COMMENT 'estado de la solicitud de grado',
  `degree_date` date DEFAULT NULL COMMENT 'fecha de graduacion proporcionada por el coordinador',
  `create_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `request_degree`
--

INSERT INTO `request_degree` (`id`, `from`, `degree_project_name`, `observation`, `state`, `degree_date`, `create_time`) VALUES
(1, 'Sebastian Romero Laguna', 'Proyecto de Conservación Natural', 'Sin Observaciones', 1, '2020-12-14', '2020-12-09 15:17:01'),
(2, 'Julio', 'Proytecto número 2 para ciclo tecnico', 'Aprobado', 2, '2021-12-10', '2020-12-10 15:44:27'),
(3, 'Sebastian Romero Laguna', 'Proyecto para tecnólogo', 'Sin Observaciones', 1, '2021-12-10', '2020-12-10 15:58:37'),
(4, 'sebastian', 'asdasd', 'Sin Observaciones', 1, '2020-12-31', '2020-12-15 06:06:10'),
(5, NULL, 'qqqqa', 'Sin Observaciones', 1, NULL, '2020-12-15 06:10:10'),
(16, NULL, 'aaaqwasfas', 'Sin Observaciones', 1, NULL, '2020-12-15 06:48:39'),
(17, NULL, 'a', 'Sin Observaciones', 1, NULL, '2020-12-15 06:49:17'),
(18, NULL, 'a', 'Sin Observaciones', 1, NULL, '2020-12-15 06:52:56'),
(19, NULL, 'sadsdfasgda', 'Sin Observaciones', 1, NULL, '2020-12-15 06:55:20'),
(20, NULL, 'asñ', 'Sin Observaciones', 1, NULL, '2020-12-15 06:56:30'),
(21, NULL, 'sadsdfasgda', 'Sin Observaciones', 1, NULL, '2020-12-15 07:02:55'),
(22, NULL, 'sadsdfasgda', 'Sin Observaciones', 1, NULL, '2020-12-15 07:04:48'),
(23, NULL, 'sadsdasdfasdfadffasgda', 'Sin Observaciones', 1, NULL, '2020-12-15 07:06:19'),
(24, NULL, 'sadsdasdfqasdfadffasgda', 'Sin Observaciones', 1, NULL, '2020-12-15 07:12:46'),
(25, NULL, 'ññk', 'Sin Observaciones', 1, NULL, '2020-12-15 07:13:29'),
(26, NULL, 'ññk', 'Sin Observaciones', 1, NULL, '2020-12-15 07:17:10'),
(27, NULL, 'ññk', 'Sin Observaciones', 1, NULL, '2020-12-15 07:17:20'),
(28, NULL, 'añqk', 'Sin Observaciones', 1, NULL, '2020-12-15 07:17:27'),
(29, NULL, 'ñqk', 'Sin Observaciones', 1, NULL, '2020-12-15 07:19:20'),
(30, 'asdfasdf', 'qqqqa', 'Sin Observaciones', 2, '2020-12-31', '2020-12-15 07:21:03'),
(31, NULL, 'adasfas', 'Sin Observaciones', 1, NULL, '2020-12-15 07:22:07'),
(32, NULL, 'adasfas', 'Sin Observaciones', 1, NULL, '2020-12-15 07:24:43'),
(33, NULL, 'asdfasd', 'Sin Observaciones', 1, NULL, '2020-12-15 07:33:19'),
(34, NULL, 'asdfasdf', 'Sin Observaciones', 1, NULL, '2020-12-15 07:34:15'),
(35, NULL, 'asdfasdf', 'Sin Observaciones', 1, NULL, '2020-12-15 07:34:25'),
(36, 'aaa', 'asdasdf', 'Sin Observaciones Pooop', 2, '2020-12-31', '2020-12-15 07:34:29'),
(37, NULL, 'sdfasdf', 'Sin Observaciones', 1, NULL, '2020-12-15 07:35:57'),
(38, NULL, 'asdfasdf', 'Sin Observaciones', 1, NULL, '2020-12-15 07:37:33'),
(39, NULL, 'asd', 'Sin Observaciones', 1, NULL, '2020-12-15 07:37:40'),
(40, NULL, 'asdf', 'Sin Observaciones', 1, NULL, '2020-12-15 07:37:59'),
(41, NULL, 'asdf', 'Sin Observaciones', 1, NULL, '2020-12-15 07:48:27'),
(42, NULL, 'asdf', 'Sin Observaciones', 1, NULL, '2020-12-15 07:57:36'),
(43, NULL, 'asdfasdf', 'Sin Observaciones', 1, NULL, '2020-12-15 07:57:42'),
(44, NULL, 'asdfasdf', 'Sin Observaciones', 1, NULL, '2020-12-15 07:57:47'),
(45, NULL, 'asdfasd', 'Sin Observaciones', 1, NULL, '2020-12-15 08:00:10'),
(46, NULL, 'asdfasdf', 'Sin Observaciones', 1, NULL, '2020-12-15 08:08:32'),
(47, NULL, 'asdfasdf', 'Sin Observaciones', 1, NULL, '2020-12-15 08:08:44'),
(48, NULL, 'aaaa', 'Sin Observaciones', 1, NULL, '2020-12-15 08:09:32'),
(49, NULL, 'aaaaq', 'Sin Observaciones', 1, NULL, '2020-12-15 08:09:38'),
(50, NULL, 'asdf', 'Sin Observaciones', 1, NULL, '2020-12-15 08:09:52'),
(51, 'Tecnasdflogo', 'sadsdfasgda', 'Sin Observaciones', 1, NULL, '2020-12-15 08:30:22'),
(52, 'Sebastian Romero Laguna asfa', 'Aplicación Handlebars para', 'Sin Observaciones', 1, NULL, '2020-12-15 12:43:14'),
(53, 'asdfasdf', 'q', 'Sin Observaciones', 1, NULL, '2020-12-15 12:44:19'),
(54, 'asdfasdf', 'asdfasdf', 'Sin Observaciones', 1, NULL, '2020-12-16 03:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='																																																	';

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id`, `name`, `create_time`, `update_time`) VALUES
(1, 'Admin', '2020-12-09 15:11:24', '2020-12-09 15:13:55'),
(2, 'Coordinador', '2020-12-09 15:11:24', '2020-12-09 15:13:55'),
(3, 'Estudiante', '2020-12-09 15:11:24', '2020-12-09 15:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('I96CpUXtySLMBO35wX2VDtBVuKSrH8hh', 1608292038, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('P8DD6Rftn6oEeSTd9CzeFJmNP4OlHRU6', 1608323129, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `second_last_name` varchar(50) DEFAULT NULL,
  `card_id` varchar(13) NOT NULL,
  `birth_date` date NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='																																																	';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `middle_name`, `last_name`, `second_last_name`, `card_id`, `birth_date`, `email_address`, `telephone`, `username`, `password`, `rol_id`, `is_active`, `create_time`, `update_time`) VALUES
(1, 'Sebastian', '', 'Romero', 'Laguna', '123', '2020-12-01', 'aaaa@gmail.com', '123', '58holaAlumno', 'asdf', 3, 1, '2020-12-09 15:13:26', '2020-12-09 15:13:55'),
(2, 'coor V', 'a', 'c', 'a', '4568910', '2020-12-01', 'asdf@asdf.com', '456856', 'CoordinatorFetCiclos', '123', 2, 1, '2020-12-09 15:13:26', '2020-12-09 15:13:55'),
(3, 'JULIO', 'a', 'c', 'a', '345', '2020-12-01', '3@asdf.com', '5456', 'ALUMNO2', '123', 3, 1, '2020-12-09 15:13:26', '2020-12-09 15:13:55'),
(4, 'Juan', 'C', 'B', 'Q', '1023659874', '2020-12-01', 'aaaa@gmail.com', '312645978', '58holaAlumno', 'holahola', 3, 1, '2020-12-07 07:08:06', '2020-12-09 15:13:55'),
(5, 'Brayan', 'C', 'B', 'Q', '23145469870', '2020-12-01', 'bbb@gmail.com', '312645978', '4holaAlumno', 'holahola', 3, 1, '2020-12-07 07:08:33', '2020-12-09 15:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_cycle_request`
--

CREATE TABLE `user_cycle_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cycle_id` int(11) NOT NULL,
  `request_degree_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_cycle_request`
--

INSERT INTO `user_cycle_request` (`id`, `user_id`, `cycle_id`, `request_degree_id`) VALUES
(1, 1, 1, 1),
(2, 3, 1, 2),
(3, 1, 2, 3),
(4, 1, 3, 4),
(5, 5, 1, 5),
(6, 1, 2, 23),
(7, 1, 2, 22),
(8, 1, 2, 22),
(9, 1, 2, 24),
(10, 1, 1, 25),
(11, 1, 1, 26),
(12, 1, 1, 27),
(13, 1, 2, 28),
(14, 1, 2, 29),
(15, 1, 4, 30),
(16, 1, 2, 31),
(17, 1, 2, 32),
(18, 1, 2, 33),
(19, 1, 2, 34),
(20, 1, 2, 35),
(21, 1, 1, 36),
(22, 1, 2, 37),
(23, 1, 2, 38),
(24, 1, 2, 39),
(25, 1, 3, 40),
(26, 1, 2, 41),
(27, 1, 2, 42),
(28, 1, 2, 43),
(29, 1, 3, 44),
(30, 1, 2, 45),
(31, 1, 2, 46),
(32, 1, 2, 47),
(33, 1, 1, 48),
(34, 1, 3, 49),
(35, 1, 2, 50),
(36, 1, 2, 51),
(37, 1, 1, 52),
(38, 1, 3, 53),
(39, 1, 1, 54);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_chat` (`post_id`);

--
-- Indexes for table `cycle`
--
ALTER TABLE `cycle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_chat` (`chat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_degree`
--
ALTER TABLE `request_degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rol_rol_id` (`rol_id`);

--
-- Indexes for table `user_cycle_request`
--
ALTER TABLE `user_cycle_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_cycle_request_user1_idx` (`user_id`),
  ADD KEY `fk_user_cycle_request_cycle1_idx` (`cycle_id`),
  ADD KEY `fk_user_cycle_request_degree_request1_idx` (`request_degree_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cycle`
--
ALTER TABLE `cycle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `request_degree`
--
ALTER TABLE `request_degree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_cycle_request`
--
ALTER TABLE `user_cycle_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_post` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_rol_rol_id` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_cycle_request`
--
ALTER TABLE `user_cycle_request`
  ADD CONSTRAINT `fk_user_cycle_request_cycle1` FOREIGN KEY (`cycle_id`) REFERENCES `cycle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_cycle_request_degree_request1` FOREIGN KEY (`request_degree_id`) REFERENCES `request_degree` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_cycle_request_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
