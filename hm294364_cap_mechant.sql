-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 25, 2019 at 04:16 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hm294364_cap_mechant`
--
CREATE DATABASE IF NOT EXISTS `hm294364_cap_mechant` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hm294364_cap_mechant`;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `category_id`, `name`, `picture`, `description`) VALUES
(51, 7, 'Shop suey porc', 'chopsueyexpressauboeuf-5e0342545f342.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(52, 7, 'Sauté de mines', '0723966001537869343-5e03423abf374.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(53, 7, 'Carri de poulet', 'poulettomatecarilaitdecoco4518-5e034290031f1.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(54, 7, 'Rougail saucisses', 'rougail-5e0342a6d50ed.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(55, 11, 'Gateau patate', 'recettegateaupatatedouce-5e03431eaa521.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(56, 11, 'Gateau manioc', '965b4efa7076dbcb991b8037867db454-5e03433f269f5.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(57, 11, 'Pana cotta aux fruits rouges', '101469_w1024h768c1cx2464cy1595cxt0cyt0cxb4928cyb3190-5e03435944d91.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(58, 11, 'Mousse au chocolat', 'i130302mousseauchocolatnoirfacile-5e03437480f87.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(59, 13, 'Plateau de 6 sushis', 'capturedecran20191225a151313-5e0344bbcb055.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(60, 13, 'Plateau de 12 sushis', 'sushi-5e0344ed1cc1d.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(61, 13, 'Plateau de 24 sushis', 'plateausushirondcouvercle-5e03450e677c9.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(62, 8, 'Salade de pâtes', 'images-5e034588c47fa.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(63, 8, 'Salade au saumon', 'i26052saalde-5e0345aa017f0.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(64, 8, 'Salade au poulet', 'saladedepouletalamozzarella1-5e0345c7e54f8.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(65, 8, 'Salade au jambon', 'saladeestivaleaujambondeparis-5e0345df413d8.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(66, 12, 'Désinfectant mains', 'geldesinfectantmainthevert025lsanytol-5e03463342b6d.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(67, 12, 'Gants vinyles - Taille S', '51qwpu8cgl_sx342_-5e0346911798c.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(68, 12, 'Gants vinyles - Taille M', '51qwpu8cgl_sx342_-5e0346a74f98c.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(69, 12, 'Gants vinyles - Taille L', '51qwpu8cgl_sx342_-5e0346e3896ad.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(70, 12, 'Nettoyant - désinfectant pour sol', '895753-5e03470ae930d.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(71, 12, 'Sachets poubelle - 200L', 'images2-5e0347483263e.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(72, 12, 'Produit vaisselle - 5l', '78744-5e034766ad1fa.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(73, 9, 'Brochettes', 'brochette_boeuf-5e03489c31420.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(74, 9, 'Samoussas au poulet', 'samoussapouletpoivrons1000x500-5e0348f572ba6.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(75, 9, 'Samoussas au fromage', 'samoussapouletpoivrons1000x500-5e03490d33143.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(76, 9, 'Poulet croustillant', 'i100135pouletcroustillant-5e03493091799.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(77, 9, 'Accras de morue', '14403_w1024h768c1cx4344cy2896-5e034948e21d5.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.'),
(78, 9, 'Crevettes à l\'ail', 'i74927crevettesalail-5e03495e3bd8a.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non facilisis erat. Etiam semper, urna quis vestibulum aliquet, elit mi scelerisque augue, id convallis felis erat dictum mi. Morbi eleifend.');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE IF NOT EXISTS `cart_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F0FE25277294869C` (`article_id`),
  KEY `IDX_F0FE252719EB6921` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(7, 'Carris - rougails'),
(8, 'Salades'),
(9, 'Divers fait mains'),
(11, 'Pâtisseries'),
(12, 'Produits d\'entretien - consommables'),
(13, 'Sushis');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191221121433', '2019-12-21 12:14:34'),
('20191222195903', '2019-12-22 19:59:14'),
('20191223080117', '2019-12-23 08:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_client` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649B8C25CF7` (`code_client`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `code_client`) VALUES
(3, 'sebastien.maillot@coding-academy.fr', '[\"ROLE_ADMIN\"]', '$2y$13$iYqs8wLpUXBTglxXcpAi8OCHJyIO2cqfD3Mc3.iatMkzg78Q.5QXy', '00001');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FK_F0FE252719EB6921` FOREIGN KEY (`client_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_F0FE25277294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
