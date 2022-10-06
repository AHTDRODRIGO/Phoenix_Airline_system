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


