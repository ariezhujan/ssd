-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2019 at 12:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sumbiri`
--

-- --------------------------------------------------------

--
-- Table structure for table `cell`
--

CREATE TABLE `cell` (
  `id_cell` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `nama_cell` varchar(25) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cell`
--

INSERT INTO `cell` (`id_cell`, `id_modul`, `nama_cell`, `status`) VALUES
(1, 1, 'CELL 1', 0),
(2, 1, 'CELL 2', 1),
(3, 1, 'CELL 3', 1),
(4, 1, 'CELL 4', 1),
(5, 1, 'CELL 5', 0),
(6, 1, 'CELL 6', 0),
(7, 1, 'CELL 7', 1),
(8, 1, 'CELL 8', 1),
(9, 1, 'CELL 9', 1),
(10, 1, 'CELL 10', 0),
(11, 2, 'CELL 1', 1),
(12, 2, 'CELL 2', 1),
(13, 2, 'CELL 3', 0),
(14, 2, 'CELL 4', 1),
(15, 2, 'CELL 5', 0),
(16, 2, 'CELL 6', 1),
(17, 2, 'CELL 7', 1),
(18, 2, 'CELL 8', 1),
(19, 2, 'CELL 9', 1),
(20, 2, 'CELL 10', 1),
(21, 3, 'CELL 1', 1),
(22, 3, 'CELL 2', 1),
(23, 3, 'CELL 3', 1),
(24, 3, 'CELL 4', 1),
(25, 3, 'CELL 5', 1),
(26, 3, 'CELL 6', 1),
(27, 3, 'CELL 7', 1),
(28, 3, 'CELL 8', 1),
(29, 3, 'CELL 9', 1),
(30, 3, 'CELL 10', 1),
(31, 4, 'CELL 1', 1),
(32, 4, 'CELL 2', 1),
(33, 4, 'CELL 3', 1),
(34, 4, 'CELL 4', 1),
(35, 4, 'CELL 5', 1),
(36, 4, 'CELL 6', 1),
(37, 4, 'CELL 7', 1),
(38, 4, 'CELL 8', 1),
(39, 4, 'CELL 9', 1),
(40, 4, 'CELL 10', 1),
(41, 5, 'CELL 1', 1),
(42, 5, 'CELL 2', 1),
(43, 5, 'CELL 3', 1),
(44, 5, 'CELL 4', 1),
(45, 5, 'CELL 5', 1),
(46, 5, 'CELL 6', 1),
(47, 5, 'CELL 7', 1),
(48, 5, 'CELL 8', 1),
(49, 5, 'CELL 9', 1),
(50, 5, 'CELL 10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `id_cell` int(11) NOT NULL,
  `time_out` time NOT NULL,
  `time_in` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `date`, `id_cell`, `time_out`, `time_in`, `status`) VALUES
(18, '2019-06-11', 6, '13:01:37', '00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(11) NOT NULL,
  `nama_modul` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`) VALUES
(1, 'MODUL 1'),
(2, 'MODUL 2'),
(3, 'MODUL 3'),
(4, 'MODUL 4'),
(5, 'MODUL 5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cell`
--
ALTER TABLE `cell`
  ADD PRIMARY KEY (`id_cell`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cell`
--
ALTER TABLE `cell`
  MODIFY `id_cell` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
