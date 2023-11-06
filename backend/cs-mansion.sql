-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs-mansion`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Email` varchar(100) NOT NULL,
  `Name` text NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Email`, `Name`, `Phone`, `Password`) VALUES
('s6404062610367@email.kmutnb.co.th', 'wisit poonsawat', '0614077850', 'admin12345');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillID` bigint(20) NOT NULL,
  `RentingID` bigint(20) NOT NULL,
  `BillWaterPrice` double NOT NULL,
  `BillElectricPrice` double NOT NULL,
  `BillTotalPrice` double NOT NULL,
  `BillStatusID` int(1) NOT NULL DEFAULT 1,
  `BillDate` date NOT NULL,
  `slip` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillID`, `RentingID`, `BillWaterPrice`, `BillElectricPrice`, `BillTotalPrice`, `BillStatusID`, `BillDate`, `slip`) VALUES
(1, 0, 10, 100, 5300, 2, '2019-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(2, 1, 10, 100, 5300, 4, '2019-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(3, 2, 10, 100, 5300, 2, '2019-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(4, 3, 10, 100, 5300, 2, '2019-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(5, 0, 10, 100, 5300, 2, '2019-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(6, 1, 10, 100, 5300, 2, '2019-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(7, 2, 10, 100, 5300, 2, '2019-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(8, 3, 10, 100, 5300, 2, '2019-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(9, 0, 10, 100, 5300, 2, '2019-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(10, 1, 10, 100, 5300, 2, '2019-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(11, 2, 10, 100, 5300, 2, '2019-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(12, 3, 10, 100, 5300, 2, '2019-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(13, 0, 10, 100, 5300, 2, '2019-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(14, 1, 10, 100, 5300, 2, '2019-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(15, 2, 10, 100, 5300, 2, '2019-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(16, 3, 10, 100, 5300, 2, '2019-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(17, 0, 10, 100, 5300, 2, '2019-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(18, 1, 10, 100, 5300, 2, '2019-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(19, 2, 10, 100, 5300, 2, '2019-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(20, 3, 10, 100, 5300, 2, '2019-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(21, 0, 10, 100, 5300, 2, '2019-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(22, 1, 10, 100, 5300, 2, '2019-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(23, 2, 10, 100, 5300, 2, '2019-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(24, 3, 10, 100, 5300, 2, '2019-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(25, 0, 10, 100, 5300, 2, '2019-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(26, 1, 10, 100, 5300, 2, '2019-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(27, 2, 10, 100, 5300, 2, '2019-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(28, 3, 10, 100, 5300, 2, '2019-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(29, 0, 10, 100, 5300, 2, '2019-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(30, 1, 10, 100, 5300, 2, '2019-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(31, 2, 10, 100, 5300, 2, '2019-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(32, 3, 10, 100, 5300, 2, '2019-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(33, 0, 10, 100, 5300, 2, '2019-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(34, 1, 10, 100, 5300, 2, '2019-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(35, 2, 10, 100, 5300, 2, '2019-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(36, 3, 10, 100, 5300, 2, '2019-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(37, 0, 10, 100, 5300, 2, '2019-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(38, 1, 10, 100, 5300, 2, '2019-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(39, 2, 10, 100, 5300, 2, '2019-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(40, 3, 10, 100, 5300, 2, '2019-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(41, 0, 10, 100, 5300, 2, '2019-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(42, 1, 10, 100, 5300, 2, '2019-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(43, 2, 10, 100, 5300, 2, '2019-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(44, 3, 10, 100, 5300, 2, '2019-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(45, 0, 10, 100, 5300, 2, '2019-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(46, 1, 10, 100, 5300, 2, '2019-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(47, 2, 10, 100, 5300, 2, '2019-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(48, 3, 10, 100, 5300, 2, '2019-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(49, 0, 10, 100, 5300, 2, '2020-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(50, 1, 10, 100, 5300, 2, '2020-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(51, 2, 10, 100, 5300, 2, '2020-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(52, 3, 10, 100, 5300, 2, '2020-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(53, 0, 10, 100, 5300, 2, '2020-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(54, 1, 10, 100, 5300, 2, '2020-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(55, 2, 10, 100, 5300, 2, '2020-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(56, 3, 10, 100, 5300, 2, '2020-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(57, 0, 10, 100, 5300, 2, '2020-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(58, 1, 10, 100, 5300, 2, '2020-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(59, 2, 10, 100, 5300, 2, '2020-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(60, 3, 10, 100, 5300, 2, '2020-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(61, 0, 10, 100, 5300, 2, '2020-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(62, 1, 10, 100, 5300, 2, '2020-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(63, 2, 10, 100, 5300, 2, '2020-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(64, 3, 10, 100, 5300, 2, '2020-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(65, 0, 10, 100, 5300, 2, '2020-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(66, 1, 10, 100, 5300, 2, '2020-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(67, 2, 10, 100, 5300, 2, '2020-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(68, 3, 10, 100, 5300, 2, '2020-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(69, 0, 10, 100, 5300, 2, '2020-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(70, 1, 10, 100, 5300, 2, '2020-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(71, 2, 10, 100, 5300, 2, '2020-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(72, 3, 10, 100, 5300, 2, '2020-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(73, 0, 10, 100, 5300, 2, '2020-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(74, 1, 10, 100, 5300, 2, '2020-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(75, 2, 10, 100, 5300, 2, '2020-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(76, 3, 10, 100, 5300, 2, '2020-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(77, 0, 10, 100, 5300, 2, '2020-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(78, 1, 10, 100, 5300, 2, '2020-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(79, 2, 10, 100, 5300, 2, '2020-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(80, 3, 10, 100, 5300, 2, '2020-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(81, 0, 10, 100, 5300, 2, '2020-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(82, 1, 10, 100, 5300, 2, '2020-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(83, 2, 10, 100, 5300, 2, '2020-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(84, 3, 10, 100, 5300, 2, '2020-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(85, 0, 10, 100, 5300, 2, '2020-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(86, 1, 10, 100, 5300, 2, '2020-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(87, 2, 10, 100, 5300, 2, '2020-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(88, 3, 10, 100, 5300, 2, '2020-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(89, 0, 10, 100, 5300, 2, '2020-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(90, 1, 10, 100, 5300, 2, '2020-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(91, 2, 10, 100, 5300, 2, '2020-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(92, 3, 10, 100, 5300, 2, '2020-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(93, 0, 10, 100, 5300, 2, '2020-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(94, 1, 10, 100, 5300, 2, '2020-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(95, 2, 10, 100, 5300, 2, '2020-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(96, 3, 10, 100, 5300, 2, '2020-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(97, 0, 10, 100, 5300, 2, '2021-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(98, 1, 10, 100, 5300, 2, '2021-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(99, 2, 10, 100, 5300, 2, '2021-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(100, 3, 10, 100, 5300, 2, '2021-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(101, 0, 10, 100, 5300, 3, '2021-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(102, 1, 10, 100, 5300, 3, '2021-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(103, 2, 10, 100, 5300, 3, '2021-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(104, 3, 10, 100, 5300, 3, '2021-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(105, 0, 10, 100, 5300, 3, '2021-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(106, 1, 10, 100, 5300, 3, '2021-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(107, 2, 10, 100, 5300, 3, '2021-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(108, 3, 10, 100, 5300, 3, '2021-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(109, 0, 10, 100, 5300, 3, '2021-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(110, 1, 10, 100, 5300, 3, '2021-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(111, 2, 10, 100, 5300, 3, '2021-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(112, 3, 10, 100, 5300, 3, '2021-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(113, 0, 10, 100, 5300, 3, '2021-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(114, 1, 10, 100, 5300, 3, '2021-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(115, 2, 10, 100, 5300, 3, '2021-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(116, 3, 10, 100, 5300, 3, '2021-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(117, 0, 10, 100, 5300, 3, '2021-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(118, 1, 10, 100, 5300, 3, '2021-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(119, 2, 10, 100, 5300, 3, '2021-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(120, 3, 10, 100, 5300, 3, '2021-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(121, 0, 10, 100, 5300, 3, '2021-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(122, 1, 10, 100, 5300, 3, '2021-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(123, 2, 10, 100, 5300, 3, '2021-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(124, 3, 10, 100, 5300, 3, '2021-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(125, 0, 10, 100, 5300, 3, '2021-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(126, 1, 10, 100, 5300, 3, '2021-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(127, 2, 10, 100, 5300, 3, '2021-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(128, 3, 10, 100, 5300, 3, '2021-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(129, 0, 10, 100, 5300, 3, '2021-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(130, 1, 10, 100, 5300, 3, '2021-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(131, 2, 10, 100, 5300, 3, '2021-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(132, 3, 10, 100, 5300, 3, '2021-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(133, 0, 10, 100, 5300, 3, '2021-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(134, 1, 10, 100, 5300, 3, '2021-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(135, 2, 10, 100, 5300, 3, '2021-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(136, 3, 10, 100, 5300, 3, '2021-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(137, 0, 10, 100, 5300, 3, '2021-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(138, 1, 10, 100, 5300, 3, '2021-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(139, 2, 10, 100, 5300, 3, '2021-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(140, 3, 10, 100, 5300, 3, '2021-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(141, 0, 10, 100, 5300, 3, '2021-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(142, 1, 10, 100, 5300, 3, '2021-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(143, 2, 10, 100, 5300, 3, '2021-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(144, 3, 10, 100, 5300, 3, '2021-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(145, 0, 10, 100, 5300, 3, '2022-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(146, 1, 10, 100, 5300, 3, '2022-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(147, 2, 10, 100, 5300, 3, '2022-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(148, 3, 10, 100, 5300, 3, '2022-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(149, 0, 10, 100, 5300, 3, '2022-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(150, 1, 10, 100, 5300, 3, '2022-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(151, 2, 10, 100, 5300, 3, '2022-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(152, 3, 10, 100, 5300, 3, '2022-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(153, 0, 10, 100, 5300, 3, '2022-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(154, 1, 10, 100, 5300, 3, '2022-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(155, 2, 10, 100, 5300, 3, '2022-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(156, 3, 10, 100, 5300, 3, '2022-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(157, 0, 10, 100, 5300, 3, '2022-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(158, 1, 10, 100, 5300, 3, '2022-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(159, 2, 10, 100, 5300, 3, '2022-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(160, 3, 10, 100, 5300, 3, '2022-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(161, 0, 10, 100, 5300, 3, '2022-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(162, 1, 10, 100, 5300, 3, '2022-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(163, 2, 10, 100, 5300, 3, '2022-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(164, 3, 10, 100, 5300, 3, '2022-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(165, 0, 10, 100, 5300, 3, '2022-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(166, 1, 10, 100, 5300, 3, '2022-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(167, 2, 10, 100, 5300, 3, '2022-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(168, 3, 10, 100, 5300, 3, '2022-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(169, 0, 10, 100, 5300, 3, '2022-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(170, 1, 10, 100, 5300, 3, '2022-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(171, 2, 10, 100, 5300, 3, '2022-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(172, 3, 10, 100, 5300, 3, '2022-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(173, 0, 10, 100, 5300, 3, '2022-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(174, 1, 10, 100, 5300, 3, '2022-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(175, 2, 10, 100, 5300, 3, '2022-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(176, 3, 10, 100, 5300, 3, '2022-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(177, 0, 10, 100, 5300, 3, '2022-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(178, 1, 10, 100, 5300, 3, '2022-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(179, 2, 10, 100, 5300, 3, '2022-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(180, 3, 10, 100, 5300, 3, '2022-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(181, 0, 10, 100, 5300, 3, '2022-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(182, 1, 10, 100, 5300, 3, '2022-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(183, 2, 10, 100, 5300, 3, '2022-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(184, 3, 10, 100, 5300, 3, '2022-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(185, 0, 10, 100, 5300, 3, '2022-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(186, 1, 10, 100, 5300, 3, '2022-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(187, 2, 10, 100, 5300, 3, '2022-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(188, 3, 10, 100, 5300, 3, '2022-11-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(189, 0, 10, 100, 5300, 3, '2022-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(190, 1, 10, 100, 5300, 3, '2022-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(191, 2, 10, 100, 5300, 3, '2022-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(192, 3, 10, 100, 5300, 3, '2022-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(193, 0, 10, 100, 5300, 3, '2023-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(194, 1, 10, 100, 5300, 3, '2023-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(195, 2, 10, 100, 5300, 3, '2023-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(196, 3, 10, 100, 5300, 3, '2023-01-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(197, 0, 10, 100, 5300, 3, '2023-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(198, 1, 10, 100, 5300, 3, '2023-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(199, 2, 10, 100, 5300, 3, '2023-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(200, 3, 10, 100, 5300, 3, '2023-02-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(201, 0, 10, 100, 5300, 3, '2023-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(202, 1, 10, 100, 5300, 3, '2023-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(203, 2, 10, 100, 5300, 3, '2023-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(204, 3, 10, 100, 5300, 3, '2023-03-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(205, 0, 10, 100, 5300, 3, '2023-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(206, 1, 10, 100, 5300, 3, '2023-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(207, 2, 10, 100, 5300, 3, '2023-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(208, 3, 10, 100, 5300, 3, '2023-04-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(209, 0, 10, 100, 5300, 3, '2023-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(210, 1, 10, 100, 5300, 3, '2023-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(211, 2, 10, 100, 5300, 3, '2023-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(212, 3, 10, 100, 5300, 3, '2023-05-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(213, 0, 10, 100, 5300, 3, '2023-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(214, 1, 10, 100, 5300, 3, '2023-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(215, 2, 10, 100, 5300, 3, '2023-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(216, 3, 10, 100, 5300, 3, '2023-06-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(217, 0, 10, 100, 5300, 2, '2023-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(218, 1, 10, 100, 5300, 2, '2023-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(219, 2, 10, 100, 5300, 2, '2023-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(220, 3, 10, 100, 5300, 2, '2023-07-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(221, 0, 10, 100, 5300, 2, '2023-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(222, 1, 10, 100, 5300, 2, '2023-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(223, 2, 10, 100, 5300, 2, '2023-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(224, 3, 10, 100, 5300, 2, '2023-08-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(225, 0, 10, 100, 5300, 2, '2023-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(226, 1, 10, 100, 5300, 2, '2023-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(227, 2, 10, 100, 5300, 2, '2023-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(228, 3, 10, 100, 5300, 2, '2023-09-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(229, 0, 10, 100, 5300, 2, '2023-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(230, 1, 10, 100, 5300, 2, '2023-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(231, 2, 10, 100, 5300, 2, '2023-10-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(238, 1, 10, 100, 5300, 2, '2023-12-25', 'https://s359.kapook.com//pagebuilder/ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg'),
(336, 3, 100, 800, 8523, 1, '2023-11-06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billstatus`
--

CREATE TABLE `billstatus` (
  `BillStatusID` int(1) NOT NULL,
  `BillStatusName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billstatus`
--

INSERT INTO `billstatus` (`BillStatusID`, `BillStatusName`) VALUES
(1, 'ยังไม่จ่าย'),
(2, 'จ่ายแล้ว'),
(3, 'รอยืนยัน'),
(4, 'ถูกปฏิเสธ');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `ExpenID` bigint(20) NOT NULL,
  `BillID` bigint(20) NOT NULL,
  `ExpenTitle` text NOT NULL,
  `ExpenPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`ExpenID`, `BillID`, `ExpenTitle`, `ExpenPrice`) VALUES
(17, 2, 'ต่าซ่อมแอร์', 100);

-- --------------------------------------------------------

--
-- Table structure for table `renting`
--

CREATE TABLE `renting` (
  `RentingID` bigint(20) NOT NULL,
  `RoomID` varchar(5) NOT NULL,
  `UserID` varchar(13) NOT NULL,
  `RentingStart` date NOT NULL,
  `RentingEnd` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `renting`
--

INSERT INTO `renting` (`RentingID`, `RoomID`, `UserID`, `RentingStart`, `RentingEnd`) VALUES
(0, '1201', '1122233445663', '2020-01-01', '2021-01-01'),
(1, '1201', '1122233445660', '2021-02-01', NULL),
(2, '1102', '1122233445661', '2021-05-01', NULL),
(3, '1101', '1122233445662', '2022-06-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomID` varchar(5) NOT NULL,
  `RoomPrice` double NOT NULL,
  `RoomDetail` text NOT NULL,
  `RoomSize` float NOT NULL COMMENT 'ตารางเมตร',
  `RoomTypeID` int(11) NOT NULL,
  `RoomStatusID` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomID`, `RoomPrice`, `RoomDetail`, `RoomSize`, `RoomTypeID`, `RoomStatusID`) VALUES
('1101', 4200, '27 ตร.ม. แอร์', 27, 2, 2),
('1102', 3200, '27 ตร.ม. แอร์', 27, 2, 2),
('1103', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1104', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1105', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1106', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1107', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1108', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1109', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1110', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1111', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1112', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1113', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1114', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1115', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1201', 3200, '27 ตร.ม. พัดลม', 27, 1, 2),
('1202', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1203', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1204', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1205', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1206', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1207', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1208', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1209', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1210', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1211', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1212', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1213', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1214', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1215', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1301', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1302', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1303', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1304', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1305', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1306', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1307', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1308', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1309', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1310', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1311', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1312', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1313', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1314', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1315', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1401', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1402', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1403', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1404', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1405', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1406', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1407', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1408', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1409', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1410', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1411', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1412', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1413', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1414', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1415', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1501', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1502', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1503', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1504', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1505', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1506', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1507', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1508', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1509', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1510', 3700, '27 ตร.ม. แอร์', 2, 2, 1),
('1511', 4200, '30 ตร.ม. แอร์', 2, 2, 1),
('1512', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1513', 3500, '30 ตร.ม. พัดลม', 1, 1, 1),
('1514', 3200, '27 ตร.ม. พัดลม', 1, 1, 1),
('1515', 3200, '27 ตร.ม. พัดลม', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roomstatus`
--

CREATE TABLE `roomstatus` (
  `RoomStatusID` int(1) NOT NULL,
  `RoomStatusName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomstatus`
--

INSERT INTO `roomstatus` (`RoomStatusID`, `RoomStatusName`) VALUES
(1, 'ห้องว่าง'),
(2, 'มีผู้เช่า');

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

CREATE TABLE `roomtype` (
  `RoomTypeID` int(11) NOT NULL,
  `RoomTypeName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`RoomTypeID`, `RoomTypeName`) VALUES
(1, 'พัดลม'),
(2, 'แอร์');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` varchar(13) NOT NULL,
  `UserName` text NOT NULL,
  `UserPhone` varchar(10) NOT NULL,
  `UserAddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `UserPhone`, `UserAddress`) VALUES
('1122233445660', 'วิสิฐ พูลสวัสดิ์', '061407780', '1/1 วงสว่าง บางซื่อ กทม'),
('1122233445661', 'ณัฐพร ชุมทอง', '0123456787', '1/1 วงสว่าง บางซื่อ กทม'),
('1122233445662', 'พิชญาพร นพพะแก้ว', '0123456788', '1/1 วงสว่าง บางซื่อ กทม'),
('1122233445663', 'พิมพกานต์ บานแย้ม', '0123456786', '1/1 วงสว่าง บางซื่อ กทม');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillID`),
  ADD KEY `BillStatusID` (`BillStatusID`),
  ADD KEY `bill_ibfk_2` (`RentingID`);

--
-- Indexes for table `billstatus`
--
ALTER TABLE `billstatus`
  ADD PRIMARY KEY (`BillStatusID`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`ExpenID`),
  ADD KEY `BillID` (`BillID`);

--
-- Indexes for table `renting`
--
ALTER TABLE `renting`
  ADD PRIMARY KEY (`RentingID`),
  ADD KEY `RoomID` (`RoomID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomID`),
  ADD KEY `RoomTypeID` (`RoomTypeID`),
  ADD KEY `RoomStatusID` (`RoomStatusID`);

--
-- Indexes for table `roomstatus`
--
ALTER TABLE `roomstatus`
  ADD PRIMARY KEY (`RoomStatusID`);

--
-- Indexes for table `roomtype`
--
ALTER TABLE `roomtype`
  ADD PRIMARY KEY (`RoomTypeID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BillID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `billstatus`
--
ALTER TABLE `billstatus`
  MODIFY `BillStatusID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `ExpenID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `renting`
--
ALTER TABLE `renting`
  MODIFY `RentingID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roomstatus`
--
ALTER TABLE `roomstatus`
  MODIFY `RoomStatusID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roomtype`
--
ALTER TABLE `roomtype`
  MODIFY `RoomTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`BillStatusID`) REFERENCES `billstatus` (`BillStatusID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`RentingID`) REFERENCES `renting` (`RentingID`) ON UPDATE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`BillID`) REFERENCES `bill` (`BillID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `renting`
--
ALTER TABLE `renting`
  ADD CONSTRAINT `renting_ibfk_2` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `renting_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`RoomTypeID`) REFERENCES `roomtype` (`RoomTypeID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`RoomStatusID`) REFERENCES `roomstatus` (`RoomStatusID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
