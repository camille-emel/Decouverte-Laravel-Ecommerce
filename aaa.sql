-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 25 juil. 2024 à 07:39
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `aaa`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `zzz` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `postal_code` int DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `address`, `postal_code`, `city`) VALUES
(1, 'Chuck', 'Norris', '51, dqzfgqzg', 987, 'Dallas'),
(2, 'Charlize', 'Theron', '89, zogzog', 658, 'Hollywood');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `Status` tinyint DEFAULT NULL,
  `date` date NOT NULL,
  `Cart` int DEFAULT NULL,
  `payment` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `delivery_price` int DEFAULT NULL,
  `delivery_company` char(1) DEFAULT NULL,
  `name` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `number` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Order_Customer_idx` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `Status`, `date`, `Cart`, `payment`, `delivery_price`, `delivery_company`, `name`, `number`) VALUES
(1, 1, NULL, '2024-07-03', NULL, NULL, NULL, NULL, NULL, 1111111111),
(2, 1, NULL, '2024-06-23', NULL, NULL, NULL, NULL, NULL, 1111111112),
(3, 2, NULL, '2024-06-23', NULL, NULL, NULL, NULL, NULL, 1111111113),
(4, 2, NULL, '2024-06-23', NULL, NULL, NULL, NULL, NULL, 1111111114),
(5, 2, NULL, '2024-07-03', NULL, NULL, NULL, NULL, NULL, 1111111115);

-- --------------------------------------------------------

--
-- Structure de la table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Order_has_Product_Product1_idx` (`product_id`),
  KEY `fk_Order_has_Product_Order1_idx` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 12, 1),
(4, 2, 9, 2),
(5, 3, 1, 1),
(6, 3, 9, 1),
(7, 4, 4, 2),
(8, 4, 11, 1),
(9, 5, 1, 1),
(10, 5, 11, 1);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` longtext,
  `weight` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `aviability` tinyint DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `products` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `weight`, `quantity`, `aviability`, `category`, `products`) VALUES
(1, 'Pomme', 'C\'est bien bon.', 100, 'data:image/jpeg;base64,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', 1000, 10, 1, 'Fruit', 0),
(2, 'Poire', 'C\'est bien bon.', 100, 'data:image/jpeg;base64,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', 1000, 10, 1, 'Fruit', 0),
(3, 'Pomme de terre', 'C\'est bien bon.', 10, 'data:image/jpeg;base64,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', 500, 1, 1, 'Fruit', 0),
(4, 'Potiron', 'C\'est bien bon.', 10, 'data:image/jpeg;base64,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', 500, 1, 1, 'Fruit', 0),
(5, 'Carotte', 'C\'est bien bon.', 10, NULL, 500, 1, 0, 'Fruit', 0),
(6, 'Poireau', 'C\'est bien bon.', 10, NULL, 500, 1, 0, 'Fruit', 0),
(7, 'Kiwi', 'C\'est bien bon.', 13, NULL, 500, 0, 1, 'Legume', 0),
(8, 'toto', 'C\'est bien bon.', 13, NULL, 500, 0, 1, 'Legume', 0),
(9, 'zozo', 'C\'est pas bien bon.', 50, NULL, 1200, 2, 1, 'Legume', 0),
(10, 'popo', 'C\'est pas bien bon.', 50, NULL, 1200, 2, 1, 'Legume', 0),
(11, 'name1', 'nop', 638, NULL, 1200, 5, 1, 'BigF', 0),
(12, 'name2', 'nop', 638, NULL, 1200, 5, 1, 'BigF', 0),
(13, 'name3', 'nop', 638, NULL, 1200, 5, 1, 'BigF', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_Order_Customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Contraintes pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `fk_Order_has_Product_Order1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_Order_has_Product_Product1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
