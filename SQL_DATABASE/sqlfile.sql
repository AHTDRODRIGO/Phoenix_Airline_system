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


----- Table structure for table `bookflight`-----

CREATE TABLE `bookflight` (
  `uname` varchar(80) NOT NULL,
  `tripmethod` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `passportid` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `departure` varchar(100) NOT NULL,
  `arrival` varchar(100) NOT NULL,
  `departuredate` varchar(20) NOT NULL,
  `returndate` varchar(20) NOT NULL,
  `classtype` varchar(50) NOT NULL,
  `adult` varchar(50) NOT NULL,
  `child` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--- Dumping data for table `bookflight`---


INSERT INTO `bookflight` (`uname`, `tripmethod`, `fullname`, `passportid`, `email`, `departure`, `arrival`, `departuredate`, `returndate`, `classtype`, `adult`, `child`) VALUES
('dilan', 'Roundtrip', 'Dilan Arachchi', '711135829121064LK', 'dilanarachchi@gmail.com', 'Sydney', 'Australia', '2022-10-16', '2022-10-18', 'Economy ', '3', '1'),
('kevin', 'Roundtrip', 'Kevin Sathishka', '72587965424125LK', 'kevinsathishka@gmail.com', 'Melbourne', 'Australia', '2022-10-17', '2022-10-18', 'Business', '2', '2'),
('binath', 'Roundtrip', 'Binath Lakvindu', '72512365485214LK', 'binathlakvindu@gmail.com', 'Delhi', 'India', '2022-10-19', '2022-10-20', 'Business', '4', '1'),
('darshana', 'Roundtrip', 'Darshana Madhushan', '75568995412354LK', 'darshanamadhushan@gmail.com', 'Singapore', 'Amsterdam', '2022-10-20', '2022-10-21', 'Economy', '3', '2');


--
-- Table structure for table `contactmsg`
--

CREATE TABLE `contactmsg` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  `messege` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactmsg`
--

INSERT INTO `contactmsg` (`name`, `email`, `phoneno`, `messege`) VALUES
('Chinthana', 'chintha@gmail.com', '0743536678', 'plz help me my problems'),
('Mahinda', 'mahinda@gmail.com', '0761111122', 'I have a problem flight A234'),
('Amir', 'amirk@gmail.com', '0766031056', 'Can you please help me? I have a problem with flight A7033.'),
('Jeewan', 'jeewan@gmail.com', '07788955555', ' plesase help me?'),
('vikram', 'vikram@gmail.com', '07435363663', 'Please help me? I have a problem with a flight A2234.');


-- Table structure for table `flightsinformations`
--

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
('A456', 'Kolkata', 'Colombo', '2022-05-27', '2022-05-28', '00:22'),
('A286', 'Colombo', 'Sydney', '2022-05-28', '2022-05-29', '08:23'),
('A7067', 'Delhi', 'Kathmandu', '2022-05-28', '2022-05-29', '18:20'),
('A328', 'Calfornia ', 'Colombo', '2022-05-21', '2022-05-22', '04:25'),
('A326', 'Bangalore ', 'Los Angeles', '2022-05-26', '2022-05-27', '21:28'),
('A3022', 'London', 'Hyderabad', '2022-05-30', '2022-05-31', '10:30'),
('A7012', 'Manchester', 'Colombo', '2022-05-28', '2022-05-29', '12:34'),
('A3067', 'Dhaka', 'Chennai', '2022-05-24', '2022-05-24', '18:42'),
('A321', 'Auckland', 'Kochi', '2022-05-27', '2022-05-29', '21:32');


-- Table structure for table `flightstatus`
--

CREATE TABLE `flightstatus` (
  `flightid` varchar(100) NOT NULL,
  `flightfrom` varchar(150) NOT NULL,
  `flightto` varchar(150) NOT NULL,
  `time` varchar(100) NOT NULL,
  `flghtstatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flightstatus`
--

INSERT INTO `flightstatus` (`flightid`, `flightfrom`, `flightto`, `time`, `flghtstatus`) VALUES
('A456', 'Kolkata', 'Colombo', '01:30', 'on time'),
('A286', 'Colombo', 'Sydney', '12:30', 'not available'),
('A7067', 'Delhi ', 'Kathmandu', '02:55', 'on time'),
('A456', 'Kolkata', 'Colombo', '01:30', 'on time'),
('A326', 'Bangalore', 'Los Angeles', '00:39', 'on time'),
('A456', 'Kolkata', 'Colombo', '02:30', 'on time'),
('A456', 'Kolkata', 'Colombo', '01:30', 'not available'),
('A321', 'Auckland', 'Kochchi', '14:22', 'on time'),
('A456', 'Kolkata', 'Colombo', '04:30', 'not available')
('A7003', 'Chichago', 'Amsterdam', '13:29', 'on time'),
('A7012', 'Manchester ', 'Colombo', '04:25', 'on time'),
('A3022', 'London ', 'Hyderabad', '19:28', 'not available'),
('A326', 'Bangalore', 'Los Angeles', '09:30', 'on time'),
('A7012', 'Manchester ', 'Colombo', '05:25', 'not available'),
('A7067', 'Delhi', 'Kathmandu', '11:42', 'on time'),
('A328', 'Calfornia', 'Colombo', '09:36', 'not available');


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

-- Table structure for table `ticketdetails`
--

CREATE TABLE `ticketdetails` (
  `ticketid` varchar(100) NOT NULL,
  `flightid` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Dumping data for table `ticketdetails` --


INSERT INTO `ticketdetails` (`ticketid`, `flightid`, `uname`) VALUES
('1000', 'A230', 'savi'),
('TDZ36103105838131', 'A715', 'kevin'),
('TDZ10464178109896', 'A879', 'nimal'),
('TDZ73954910448223', 'A280', 'amal'),
('TDZ85952951051761', 'A700', 'kamal'),
('TDZ13106644614958', 'A500', 'dilan'),
('TDZ25239691081077', 'A715', 'binath'),
('TDZ77623311024910', 'A280', 'tharushi'),
('TDZ32415432101046', 'A280', 'shehan'),
('TDZ10252316472109', 'A879', 'kavii');


CREATE TABLE `userdetails` (
  `Fullname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `MObile` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`fullname`, `Email`, `Phone`, `Mobile`, `Address`) VALUES
('Mahinda Rajapaksha', 'mahinda@gmail', '011-1212345', '078525256781','No45,flowerroad,colombo'),
('Chinthana Dahanayaka', 'chintha@gmail', '011-435245', '078522356781','No68,highlevelroad,colombo'),
('Amir Khan', 'amirk@gmail', '011-389045', '07222256781','No80,kindomroad,kandy'),
('Vikram Hasan', 'vikram@gmail', '011-43567', '078522332723','No65,mainroad,galle');

----Table structure for table `userlogin`----

CREATE TABLE `userlogin` (
  `uname` varchar(35) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Dumping data for table `userlogin`--


INSERT INTO `userlogin` (`uname`, `password`) VALUES
('kanak', '+9dt9p@w9m8AJUWk'),
('dilan', 'v&vLrSq#YHw9+&zp'),
('binath', 'HjrV6UfuKz^c8XMV'),
('nihal', 'xyp876s2N2Jwc7PX'),
('kavii', 'zcwnB75H2SC9C2!H'),
('savi', '$NhD^BqkSMb57ZnF'),
('amara', 'fWh^#ZbcEM!UZ3Cc'),
('rebeca', 'cAHSqEcckCEPmI^^'),
('janith', 'LCk#sgEF#W!tVpp5'),
('kumari', 'C8CDcEw$K)Q+ABI@'),
('nayna', 'MQu7hh%C&W6+nRSx'),
('simon', '@dvz8A9w$XhKWSgQ'),
('mathew', 'nCfusf@sE72%%rSw'),
('mendis', 'cpj8Uu+a!z^#RnQ8'),
('siraj', 'AYJBbmQXfp+u&+aX'),
('koli', 'pNj!TtUmCw#tMQcY'),
('khalis', 'ez$dN8EDH^Pm!r3h'),
('wood', 'XWLsn#48MRIBxeCd'),
('jason', 'wVFa$PqzjLt9ec3$'),
('daniel', '9*&ZEQbaf+YmUrTF'),
('jhone', 'r&7F$pDKIJ3(WnUP');
COMMIT;



