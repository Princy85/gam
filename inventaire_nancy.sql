-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 27 août 2024 à 12:45
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `inventaire_nancy`
--

-- --------------------------------------------------------

--
-- Structure de la table `comptage1`
--

CREATE TABLE `comptage1` (
  `id` int(11) NOT NULL,
  `emplacement` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `lot` varchar(255) NOT NULL,
  `x3` double NOT NULL,
  `gisement` varchar(255) NOT NULL,
  `c1` double NOT NULL,
  `ecart` double NOT NULL,
  `unite` varchar(255) NOT NULL,
  `statut` varchar(255) NOT NULL,
  `pmp` double NOT NULL,
  `prix_x3` double NOT NULL,
  `prix_phys` double NOT NULL,
  `ecart_valeur` double NOT NULL,
  `observation` varchar(255) NOT NULL,
  `date_inv` date NOT NULL,
  `inventoriste` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comptage1`
--

INSERT INTO `comptage1` (`id`, `emplacement`, `code`, `designation`, `lot`, `x3`, `gisement`, `c1`, `ecart`, `unite`, `statut`, `pmp`, `prix_x3`, `prix_phys`, `ecart_valeur`, `observation`, `date_inv`, `inventoriste`, `sem`) VALUES
(3, '203', '700000326', 'POC GASOIL', 'J01', 3640, 'CUVE', 22, -3618, 'L', 'A', 4219, 15357160, 92818, -15264342, '', '2024-08-22', 'Equipe 1', '34'),
(6, '235', '700000326', 'POC', 'J01', 3640, 'CUVETTE', 23, -3617, 'L', 'A', 4219, 15357160, 97037, -15260123, '', '2024-08-22', 'Equipe 3', '34'),
(7, '235', '700000326', 'FER', 'J01', 3640, 'CUVETTE', 16, -3624, 'L', 'A', 74219, 270157160, 1187504, -268969656, '', '2024-08-22', 'Equipe 3', '34');

-- --------------------------------------------------------

--
-- Structure de la table `comptage2`
--

CREATE TABLE `comptage2` (
  `id` int(11) NOT NULL,
  `emplacement` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `lot` varchar(255) NOT NULL,
  `x3` double NOT NULL,
  `gisement` varchar(255) NOT NULL,
  `c1` double NOT NULL,
  `ecart` double NOT NULL,
  `unite` varchar(255) NOT NULL,
  `statut` varchar(255) NOT NULL,
  `pmp` double NOT NULL,
  `prix_x3` double NOT NULL,
  `prix_phys` double NOT NULL,
  `ecart_valeur` double NOT NULL,
  `observation` varchar(255) NOT NULL,
  `date_inv` date NOT NULL,
  `inventoriste` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comptage2`
--

INSERT INTO `comptage2` (`id`, `emplacement`, `code`, `designation`, `lot`, `x3`, `gisement`, `c1`, `ecart`, `unite`, `statut`, `pmp`, `prix_x3`, `prix_phys`, `ecart_valeur`, `observation`, `date_inv`, `inventoriste`, `sem`) VALUES
(1, '203', '700000326', 'POC GASOIL', 'J01', 3640, 'CUVE', 20, -3620, 'L', 'A', 4219, 15357160, 84380, -15272780, '', '2024-08-27', 'Equipe 1', '35'),
(2, '235', '700000326', 'POC GASOIL', 'J01', 3640, 'CUVETTE', 20, -3620, 'L', 'A', 4219, 15357160, 84380, -15272780, '', '2024-08-27', 'Equipe 2', '35'),
(3, '235', '700000326', 'POC GASOIL', 'J01', 3640, 'CUVETTE', 10, -3630, 'L', 'A', 4219, 15357160, 42190, -15314970, '', '2024-08-27', 'Equipe 2', '35');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `nom_prenom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `matricule` double NOT NULL,
  `service` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`nom_prenom`, `prenom`, `matricule`, `service`) VALUES
('raharimanana', 'sitraka', 3083, 'sm');

-- --------------------------------------------------------

--
-- Structure de la table `zinventaire1`
--

CREATE TABLE `zinventaire1` (
  `id` int(255) DEFAULT NULL,
  `emplacement` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `x3` varchar(255) DEFAULT NULL,
  `unite` varchar(255) DEFAULT NULL,
  `gisement` varchar(255) DEFAULT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `pmp` varchar(255) DEFAULT NULL,
  `inventoriste` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `zinventaire1`
--

INSERT INTO `zinventaire1` (`id`, `emplacement`, `code`, `designation`, `lot`, `x3`, `unite`, `gisement`, `statut`, `pmp`, `inventoriste`) VALUES
(3, '203', '700000326', 'POC GASOIL', 'J01', '3640', 'L', 'CUVE', 'A', '4219', 'Equipe 1'),
(4, '235', '700000326', 'POC GASOIL', 'J01', '3640', 'L', 'CUVETTE', 'A', '4219', 'Equipe 2'),
(5, '205', '700000326', 'POC GASOIL', 'J01', '3640', 'L', 'CUVETTE', 'A', '4219', 'Equipe 2'),
(6, '235', '700000326', 'POC', 'J01', '3640', 'L', 'CUVETTE', 'A', '4219', 'Equipe 2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comptage1`
--
ALTER TABLE `comptage1`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comptage2`
--
ALTER TABLE `comptage2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comptage1`
--
ALTER TABLE `comptage1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2527;

--
-- AUTO_INCREMENT pour la table `comptage2`
--
ALTER TABLE `comptage2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
