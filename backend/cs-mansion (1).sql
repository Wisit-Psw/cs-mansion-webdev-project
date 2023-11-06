-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 10:34 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillID` bigint(20) NOT NULL,
  `RentingID` bigint(20) NOT NULL,
  `BillWaterPrice` int(11) NOT NULL,
  `BillElectricPrice` float NOT NULL,
  `BillTotalPrice` double NOT NULL,
  `BillStatusID` int(1) NOT NULL,
  `BillDate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillID`, `RentingID`, `BillWaterPrice`, `BillElectricPrice`, `BillTotalPrice`, `BillStatusID`, `BillDate`) VALUES
(1, 1, 10, 100, 5200, 2, '2023:09');

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
(3, 'รอยืนยัน');

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
(1, 1, 'ค่าล้างแอร์', 300),
(2, 1, 'ค่าเติมน้ำยาแอร์', 300);

-- --------------------------------------------------------

--
-- Table structure for table `internetpackage`
--

CREATE TABLE `internetpackage` (
  `InternetPackID` int(11) NOT NULL,
  `InternetPackName` text NOT NULL,
  `InternetPackPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internetpackage`
--

INSERT INTO `internetpackage` (`InternetPackID`, `InternetPackName`, `InternetPackPrice`) VALUES
(1, '200/200 mbps', 159),
(2, '300/300 mbps', 199),
(3, '500/500 mbps', 259);

-- --------------------------------------------------------

--
-- Table structure for table `mansiondetail`
--

CREATE TABLE `mansiondetail` (
  `DetailID` int(11) NOT NULL,
  `DetailName` text NOT NULL,
  `DetailPrice` double NOT NULL,
  `MDSID` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mansiondetail`
--

INSERT INTO `mansiondetail` (`DetailID`, `DetailName`, `DetailPrice`, `MDSID`) VALUES
(0, 'ค่าส่วนกลาง', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mansiondetailstatus`
--

CREATE TABLE `mansiondetailstatus` (
  `MDSID` int(1) NOT NULL,
  `MDSName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mansiondetailstatus`
--

INSERT INTO `mansiondetailstatus` (`MDSID`, `MDSName`) VALUES
(1, 'ใช้งาน'),
(2, 'ไม่ใช้งาน');

-- --------------------------------------------------------

--
-- Table structure for table `renting`
--

CREATE TABLE `renting` (
  `RentingID` bigint(20) NOT NULL,
  `RoomID` varchar(5) NOT NULL,
  `UserID` varchar(13) NOT NULL,
  `InternetPackID` int(3) DEFAULT NULL,
  `RentingStart` text NOT NULL,
  `RentingEnd` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `renting`
--

INSERT INTO `renting` (`RentingID`, `RoomID`, `UserID`, `InternetPackID`, `RentingStart`, `RentingEnd`) VALUES
(1, '1201', '1122233445660', 1, '2022:09', NULL);

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
('1101', 3700, '27 ตร.ม. แอร์', 27, 2, 1),
('1102', 3200, '27 ตร.ม. แอร์', 27, 2, 1),
('1201', 3200, '27 ตร.ม. พัดลม', 27, 1, 2);

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
('1122233445660', 'วิสิฐ พูลสวัสดิ์', '0614077850', '1/1 วงสว่าง บางซื่อ กทม'),
('1122233445661', 'วิสิฐ พูลสวัสดิ์', '0614077851', '1/1 วงสว่าง บางซื่อ กทม');

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
-- Indexes for table `internetpackage`
--
ALTER TABLE `internetpackage`
  ADD PRIMARY KEY (`InternetPackID`);

--
-- Indexes for table `mansiondetail`
--
ALTER TABLE `mansiondetail`
  ADD PRIMARY KEY (`DetailID`),
  ADD KEY `DetailStatusID` (`MDSID`);

--
-- Indexes for table `mansiondetailstatus`
--
ALTER TABLE `mansiondetailstatus`
  ADD PRIMARY KEY (`MDSID`);

--
-- Indexes for table `renting`
--
ALTER TABLE `renting`
  ADD PRIMARY KEY (`RentingID`),
  ADD KEY `InternetPackID` (`InternetPackID`),
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
  MODIFY `BillID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billstatus`
--
ALTER TABLE `billstatus`
  MODIFY `BillStatusID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `ExpenID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `internetpackage`
--
ALTER TABLE `internetpackage`
  MODIFY `InternetPackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mansiondetailstatus`
--
ALTER TABLE `mansiondetailstatus`
  MODIFY `MDSID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `renting`
--
ALTER TABLE `renting`
  MODIFY `RentingID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`BillID`) REFERENCES `bill` (`BillID`) ON UPDATE CASCADE;

--
-- Constraints for table `mansiondetail`
--
ALTER TABLE `mansiondetail`
  ADD CONSTRAINT `mansiondetail_ibfk_1` FOREIGN KEY (`MDSID`) REFERENCES `mansiondetailstatus` (`MDSID`) ON UPDATE CASCADE;

--
-- Constraints for table `renting`
--
ALTER TABLE `renting`
  ADD CONSTRAINT `renting_ibfk_1` FOREIGN KEY (`InternetPackID`) REFERENCES `internetpackage` (`InternetPackID`) ON UPDATE CASCADE,
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
