-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 13 avr. 2024 à 22:06
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exam_2017`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

CREATE TABLE `candidat` (
  `idcand` int(11) NOT NULL,
  `Nom` varchar(100) DEFAULT NULL,
  `Prenom` varchar(100) DEFAULT NULL,
  `Datnais` date DEFAULT NULL,
  `Ville` varchar(100) DEFAULT NULL,
  `Sexe` char(1) DEFAULT NULL,
  `codfil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `candidat`
--

INSERT INTO `candidat` (`idcand`, `Nom`, `Prenom`, `Datnais`, `Ville`, `Sexe`, `codfil`) VALUES
(1, 'ADIMI', 'Jean', '1997-08-10', 'Cotonou', 'M', 4),
(2, 'SOGLO', 'Chantal', '1994-09-12', 'Porto-Novo', 'M', 3),
(3, 'DOSSOU', 'Jules', '1995-12-04', 'Cotonou', 'M', 2),
(4, 'ADIMI', 'Mariam', '1993-11-25', 'Parakou', 'M', 4),
(5, 'SOUMAILA', 'Jules', '1994-02-18', 'Abomey', 'F', 4),
(6, 'KANOU', 'Jules', '1996-08-21', 'Ouidah', 'M', 4),
(7, 'ALIDOU', 'Mariam', '1996-04-30', 'Porto-Novo', 'F', 1),
(8, 'MAMOUDOU', 'Juliette', '1996-05-10', 'Bohicon', 'F', 4),
(9, 'MADETIN', 'Coffi Casimir Edem', '2005-03-04', 'Cotonou', 'M', 2);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `codefil` int(11) NOT NULL,
  `nomfil` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`codefil`, `nomfil`) VALUES
(1, 'AGE'),
(2, 'Agronomie'),
(3, 'RIT'),
(4, 'SIL');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD PRIMARY KEY (`idcand`),
  ADD KEY `codfil` (`codfil`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`codefil`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `candidat`
--
ALTER TABLE `candidat`
  MODIFY `idcand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `codefil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD CONSTRAINT `candidat_ibfk_1` FOREIGN KEY (`codfil`) REFERENCES `filiere` (`codefil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
