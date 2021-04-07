-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 05:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdproiect`
--

-- --------------------------------------------------------

--
-- Table structure for table `medici`
--

CREATE TABLE `medici` (
  `Id` int(3) NOT NULL,
  `Nume` varchar(21) NOT NULL,
  `Prenume` varchar(21) NOT NULL,
  `Specializare` varchar(21) NOT NULL,
  `Functie` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medici`
--

INSERT INTO `medici` (`Id`, `Nume`, `Prenume`, `Specializare`, `Functie`) VALUES
(1, 'Istrate', 'Stefan', 'Diabet Zaharat', 'Medic Primar'),
(2, 'Tiberiu', 'Maria', 'Diabet Zaharat', 'Medic Specialist'),
(3, 'Popescu', 'Raluca', 'Diabet', 'Medic Primar'),
(4, 'Alupului', 'Andrei', 'Cardiologie', 'Medic Primar'),
(5, 'Jbanca', 'Stefania', 'Cardiologie', 'Medic Specialist'),
(6, 'Brebulet', 'Andra', 'Cardiologie', 'Medic Specialist'),
(7, 'Alexa', 'Iulian', 'Oftalmologie', 'Medic Primar'),
(8, 'Vanca', 'Ioana', 'Oftalmologie', 'Medic Primar'),
(9, 'Cotea', 'Elena', 'Oftalmologie', 'Medic Specialist'),
(10, 'Lupei', 'Silvia', 'ORL', 'Medic Primar'),
(11, 'Herdes', 'Sergiu', 'ORL', 'Medic Specialist'),
(12, 'Muntean', 'Elena', 'ORL', 'Medic Specialist'),
(13, 'Cadare', 'Iulian', 'Dermatologie', 'Medic Primar'),
(14, 'Albata', 'Anda', 'Dermatologie', 'Medic Specialist'),
(15, 'Herteg', 'Alexandra', 'Dermatologie', 'Medic Specialist'),
(16, 'Grigore', 'Ionut', 'Chirurgie Plastica', 'Medic Primar'),
(17, 'Vasilescu', 'Mihai', 'Chirurgie Plastica', 'Medic Specialist'),
(18, 'Ionescu', 'Lidia', 'Chirurgie Plastica', 'Medic Specialist'),
(19, 'Trifescu', 'Bianca', 'Endocrinologie', 'Medic Primar'),
(20, 'Tofan', 'Radu', 'Endocrinologie', 'Medic Specialist'),
(21, 'Costan', 'Victor', 'Endocrinologie', 'Medic Specialist');

-- --------------------------------------------------------

--
-- Table structure for table `medici_date`
--

CREATE TABLE `medici_date` (
  `Id` int(3) NOT NULL,
  `User` varchar(21) NOT NULL,
  `Pass` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medici_date`
--

INSERT INTO `medici_date` (`Id`, `User`, `Pass`) VALUES
(1, 'Istrate', 'Istrate'),
(2, 'Tiberiu', 'Tiberiu'),
(3, 'Popescu', 'Popescu'),
(4, 'Alupului', 'Alupului'),
(5, 'Jbanca', 'Jbanca'),
(6, 'Brebulet', 'Brebulet'),
(7, 'Alexa', 'Alexa'),
(8, 'Vanca', 'Vanca'),
(9, 'Cotea', 'Cotea'),
(10, 'Lupei', 'Lupei'),
(11, 'Herdes', 'Herdes'),
(12, 'Muntean', 'Muntean'),
(13, 'Cadare', 'Cadare'),
(14, 'Albata', 'Albata'),
(15, 'Herteg', 'Herteg'),
(16, 'Grigore', 'Grigore'),
(17, 'Vasilescu', 'Vasilescu'),
(18, 'Ionescu', 'Ionescu'),
(19, 'Trifescu', 'Trifescu'),
(20, 'Tofan', 'Tofan'),
(21, 'Costan', 'Costan');

-- --------------------------------------------------------

--
-- Table structure for table `ora`
--

CREATE TABLE `ora` (
  `Ora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ora`
--

INSERT INTO `ora` (`Ora`) VALUES
('09:00:00'),
('09:30:00'),
('10:00:00'),
('10:30:00'),
('11:00:00'),
('11:30:00'),
('12:00:00'),
('12:30:00'),
('13:00:00'),
('13:30:00'),
('14:00:00'),
('14:30:00'),
('15:00:00'),
('15:30:00'),
('16:00:00'),
('16:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `programari`
--

CREATE TABLE `programari` (
  `NumePacient` varchar(25) NOT NULL,
  `CNP` int(20) NOT NULL,
  `NumeDoctor` varchar(25) NOT NULL,
  `Data` date NOT NULL,
  `Ora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zile`
--

CREATE TABLE `zile` (
  `Ziua` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zile`
--

INSERT INTO `zile` (`Ziua`) VALUES
('2021-05-31'),
('2021-06-01'),
('2021-06-02'),
('2021-06-03'),
('2021-06-04'),
('2021-06-07'),
('2021-06-08'),
('2021-06-09'),
('2021-06-10'),
('2021-06-11'),
('2021-06-14'),
('2021-06-15'),
('2021-06-16'),
('2021-06-17'),
('2021-06-18'),
('2021-06-21'),
('2021-06-22'),
('2021-06-23'),
('2021-06-24'),
('2021-06-25'),
('2021-06-28'),
('2021-06-29'),
('2021-06-30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
