-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2022 at 12:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS criminalinfo;
USE criminalinfo;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `criminalinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` INT NOT NULL,
  `name` VARCHAR(25) NOT NULL,
  `offname` VARCHAR(25) NOT NULL,
  `crime` VARCHAR(25) NOT NULL,
  `dob` DATE NOT NULL,
  `arrDate` DATE NOT NULL,
  `crimeDate` DATE NOT NULL,
  `sex` VARCHAR(1) NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `img` BLOB DEFAULT NULL,
  `more` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `offname`, `crime`, `dob`, `arrDate`, `crimeDate`, `sex`, `address`, `img`, `more`) VALUES
(1001, 'Glenn Quagmire', 'Joe Swanson', 'Rape', '1989-02-11', '2002-06-01', '2001-09-01', 'M', 'Quahog', 0x696d616765732f646f776e6c6f61642e6a7067, '375');

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `offName` VARCHAR(25) NOT NULL,
  `offID` INT NOT NULL,
  `ID` INT NOT NULL,
  `contact` BIGINT NOT NULL,
  `gender` VARCHAR(1) NOT NULL,
  `weapon` VARCHAR(20) NOT NULL,
  `role` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`offID`),
  FOREIGN KEY (`ID`) REFERENCES `info`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`offName`, `offID`, `ID`, `contact`, `gender`, `weapon`, `role`) VALUES
('Mr.Peater', 1091, 1001, 9787414066, 'M', 'Pistol Auto 9mm 1A', 'API');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uname` VARCHAR(10) NOT NULL,
  `pass` VARCHAR(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uname`, `pass`) VALUES
('admin', 'admin');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;