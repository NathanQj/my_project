-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 22 Novembre 2015 à 23:43
-- Version du serveur :  5.6.17-log
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `symfony_nov`
--

-- --------------------------------------------------------

--
-- Structure de la table `app_users`
--

CREATE TABLE IF NOT EXISTS `app_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `api_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C2502824F85E0677` (`username`),
  UNIQUE KEY `UNIQ_C2502824E7927C74` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Contenu de la table `app_users`
--

INSERT INTO `app_users` (`id`, `username`, `password`, `email`, `is_active`, `api_key`) VALUES
(1, 'Nathan', '$2y$13$Y1FQ49ze9a8ZTyWaoygy4uEA/V7R/tqUGoAY7V7dOJtr8p8be1Dx6', 'nathan.qjm@gmail.com', 1, ''),
(3, 'Maxime', '$2y$13$wru1b.kcf8chcJ6AuvWup.Kqn.OPL29w7hUFJkq2OODWfw8iYIpe2', 'maxime@gmail.com', 1, ''),
(4, 'Arthur', '$2y$13$C5yKzuddIcEkjkKPTZMAceMsNCGX4l8GwSQqGSSzIGvNTsEd4Nszy', 'arthur@gmail.com', 1, ''),
(5, 'Guillaume', '$2y$13$5THRZL1ennK6.xXxC7GGTeHhnsMEYYHUsnWj7bXxKwTpWYt5mA/2m', 'guigui@gmail.com', 1, ''),
(6, 'Romain', '$2y$13$0Hg3claeGTK/FOLHWSb0S.8Nv8PseeYiI5FQ7VI.uqesVzB.Y7RVq', 'romain@gmail.com', 1, ''),
(7, 'Batman', '$2y$13$kriFBa4GB7XAKYI0WTQNQuDUMT9o1oSnJXnEPcvOxk1ZDBWlpyvGS', 'batman@gmail.com', 1, ''),
(8, 'Popeye', '$2y$13$x6OMLvLNTjx9.pOxad7Cw./6n/0ecIqv381Dv81bBxoNRzvPgVcuS', 'popeye@gmail.com', 1, ''),
(9, 'Jean', '$2y$13$pUk9ZPdXSr0JDMFLWDJUXeJT.VfHBUyiVnGwe7CQ3tAz8dBBPOVN2', 'jean@gmail.com', 1, ''),
(10, 'Retard', '$2y$13$4yKS1jEUppOmpXgynd0Kt.jH7cD1uTFlkyT/b0effXO5BUa4tRlfy', 'retard@gmail.com', 1, ''),
(11, 'Quentin', '$2y$13$IHzs1usFBH.71sKzvkLHveR3keOWGiw5jk0W9.vIadNsU4lB3N4ja', 'quentin@gmail.com', 1, ''),
(12, 'Yamel', '$2y$13$.tWWx5enB6b9JOCBqFFXZOpZWgxWjupxmSNQo6Dwa54Hct57dILZm', 'yamel@gmail.com', 1, ''),
(13, 'Token', '$2y$13$bzUgoyeBtIy5Paf7CnrDSeq7b7miR9W3y7qoFgvewd3Wkh0tJ5Y6y', 'token@gmail.com', 1, ''),
(14, 'Fa', '$2y$13$8/vLt89TvCD.oDjlsDVjI.wMDo50Gff0dknPx9cE3vuvNjighaTKG', 'fa@gmail.com', 1, ''),
(15, 'Roger', '$2y$13$svme/PjAEVTueQG0z3IbJOtrC1uql2H87UuXpSxM7LOTTG44L5e/6', 'roger@gmail.com', 1, 'd32ca0fa0168c344a781e9ec85bb178f'),
(16, 'Dedpol', '$2y$13$oU.s5gxZJUg4IbagTS1JiuuuRCJqFFve/F1ByoTUCJF1ipikjj37u', 'uiui@gmail.com', 1, 'b425dd8fdb65f8a6c6c4f4771e58650e'),
(17, 'Portal', '$2y$13$KnpwnTT7CwZVz4ZqYMAt/uYx10H64UIsAwovZnphq/3D3.t178.zS', 'portal@gmail.com', 1, '33ef27b8177b2583abb9075697ff986a');

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` smallint(6) NOT NULL,
  `comment` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_595AAE34CDF80196` (`lesson_id`),
  KEY `IDX_595AAE34A76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `grade`
--

INSERT INTO `grade` (`id`, `grade`, `comment`, `lesson_id`, `user_id`) VALUES
(1, 12, 'ur lif sux', 1, 9),
(2, 20, 'gg', 2, 1),
(3, 20, 'gg', 2, 3),
(4, 20, 'gg', 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `lesson`
--

CREATE TABLE IF NOT EXISTS `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `writer_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F87474F31BC7E6B6` (`writer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `lesson`
--

INSERT INTO `lesson` (`id`, `writer_id`, `title`, `summary`, `content`) VALUES
(1, 1, 'Symfedit', 'C''est l''EDIT de votre vie', 'uiuiui'),
(2, 9, 'How to Rekta Newb', 'Exemple : HTR Arthon Richur', 'REKT.GIF');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `FK_595AAE34A76ED395` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`),
  ADD CONSTRAINT `FK_595AAE34CDF80196` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`);

--
-- Contraintes pour la table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FK_F87474F31BC7E6B6` FOREIGN KEY (`writer_id`) REFERENCES `app_users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
