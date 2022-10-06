-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenix_airline_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `acceptg1` (IN `username` VARCHAR(255))  BEGIN
Start TRANSACTION;
INSERT INTO grade01staff
SELECT uname,fullname,empid,password from temp_staff_details
WHERE uname = username;





INSERT INTO stafflogin
SELECT uname, password from temp_staff_details
WHERE uname = username;





DELETE
FROM temp_staff_details
WHERE uname = username;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `acceptg2` (IN `username` VARCHAR(255))  BEGIN
Start TRANSACTION;
INSERT INTO grade02staff
SELECT uname,fullname,empid,password from temp_staff_details
WHERE uname = username;





INSERT INTO stafflogin02
SELECT uname, password from temp_staff_details
WHERE uname = username;





DELETE
FROM temp_staff_details
WHERE uname = username;
COMMIT;
END$$

DELIMITER ;

CREATE TABLE `adminsign` (
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminsign`
--

INSERT INTO `adminsign` (`uname`, `password`) VALUES
('Ruwanthi@98', 'ruwiabcd');

CREATE TABLE `flightsinformations` (
  `flightid` varchar(100) NOT NULL,
  `flightfrom` varchar(150) NOT NULL,
  `flightto` varchar(150) NOT NULL,
  `departdate` varchar(100) NOT NULL,
  `returndate` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flightsinformations`
--

INSERT INTO `flightsinformations` (`flightid`, `flightfrom`, `flightto`, `departdate`, `returndate`, `time`) VALUES
('A280', 'Chichago', 'Amsterdam', '2022-07-10', '2022-07-11', '15:12'),
('A303', 'Canada', 'autralia', '2022-08-05', '2022-08-06', '13:15'),
('A320', 'srilanka', 'newzeland', '2022-08-17', '2022-08-18', '17:20'),
('A333', 'india ', 'dubai', '2022-08-03', '2022-08-04', '09:20'),
('A737', 'srilanka ', 'autralia', '2022-08-20', '2022-08-21', '20:35');

CREATE TABLE `grade01staff` (
  `uname` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `empid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade01staff`
--

INSERT INTO `grade01staff` (`uname`, `fullname`, `empid`, `password`) VALUES
('Ruwanthi@98', 'Ruwanthi Anjali Paranagama', '90cd', '98abcd'),
('Tharush@20', 'Tharushi Rodrigo', 'DC36', 'tharu1356'),
('shehan@21', 'Shehan Karunarathne', 'CF56', 'Shesh@AB'),
('Darshana20@', 'Darshana Madushan', 'AB12', 'DarshAC20'),
('Samudi88', 'Samudi Samarakon', 'ZC20' 'Samu#ACD'),
('Sudilka', 'Sudila Kahadagamage', 'TF20', 'Sudilka@abcd');

CREATE TABLE `grade02staff` (
  `uname` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `empid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade02staff`
--

INSERT INTO `grade02staff` (`uname`, `fullname`, `empid`, `password`) VALUES
('Shehani@200', 'Shehani Harshani Wijesinghe', 'NM23', 'shey@girl'),
('Anji1@1', 'Anjali Wickramarchchi', 'EL00', 'anjalii#'),
('Randy1%', 'Randeer Perera', 'GJ89', 'randyboy@12'),
('Hesh0', 'Heshan Abeysinghe', 'CD82', 'heshyy@!');

CREATE TABLE `staffsign` (
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffsign`
--

INSERT INTO `staffsign` (`uname`, `password`) VALUES
('PARANAGAMA', 'PA###'),
('mishely', 'MI@@98'),
('Tharu', 'Tharuuu00'),
('Chanu', 'CKevin%ab'),
('CDdil', '@@@CD'),
('Randi', 'Rgirly7'),
('dhnau00', 'dhanu999'),
('Sandu44', 'Sanduuu1'),
('kalapani99', '99kalpi'),
('Dilan@34', 'Dil77'),
('Chey99', '4cChenara'),
('ryan@67', '34RY');

CREATE TABLE `staffsign02` (
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffsign02`
--

INSERT INTO `staffsin02` (`uname`, `password`) VALUES
('Amandi99', '77OP@'),
('dusheniiii', '309309@@'),
('immaaa@@', '&&&8899'),
('dimuboy@45', 'dimma9876'),
('Nidul12', 'nidul00'),
('Dinidu$88', 'Diniya2000'),
('YOhan@1234', 'OOTT99'),
('Arshad00', 'IEE@880'),
('januka345', 'januk%15'),
('milan44', 'ggff@98'),
('Tharindu@EE', 'T7890');

CREATE TABLE `ticketdetails` (
  `ticketid` varchar(100) NOT NULL,
  `flightid` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticketdetails`
--

INSERT INTO `ticketdetails` (`ticketid`, `flightid`, `uname`) VALUES
('T24568523751', 'A230', 'Rodrigo'),
('T72498376439', 'A333', 'Samarakoon'),
('T82496138675', 'A737', 'Kahadagama');



CREATE TABLE `userdetails` (
  `uname` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`uname`, `fullname`, `email`, `password`) VALUES
('Rodrigo', 'Anthonan hettilage Tharushi divyanjali Rodrigo', 'tharushi@gmail.com', 'asd123fgtd'),
('Samarakoon', 'Samarakoon arachchige don samudi samarakoon', 'samudi12@gmail.com', 'hhggsyjj127hshgh'),
('Kahadagama', 'weerasinha mudiyanselage sudilka kahadagama', 'sudilka4@gmail.com', 'haktgsjih234hg');


CREATE TABLE `usersign` (
  `uname` varchar(35) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersign`
--

INSERT INTO `userlogin` (`uname`, `password`) VALUES
('Vs23', '236778HSG'),
('Abihi@60', 'dhfgf60'),
('keshGG', 'HHHH99'),
('harsha1K', 'banshd1'),
('senuri88888', 'SENURI9'),
('Sasi@@@', 'sasi10'),
('sakuni8', 'ssss8'),
('amee', '0192023a7bbd73250516f069df18b500'),
('dedunu1', '1111@1111'),
('kushanNN', 'kk9999'),
('kusal909', 'PA001'),
('devindha5', 'dev5555'),
('tharuki34', '34THARUKI'),
('ruwanioo', 'ru99ru'),
('ruki1', '11112222'),
('Naveen4', '4444hhhh'),
('Binura567', 'hhhhJ'),
('EshannnM', 'mbcd123'),
('Sasindu9', 'sss999'),
('yashan@A', 'A@@@@12'),
('Uveen98', '989800');
COMMIT;



