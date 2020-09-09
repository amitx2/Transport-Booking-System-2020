-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2019 at 02:47 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `Email`, `Number`) VALUES
('Amit', 'amit@gmail.com', '01622222222'),
('Tayab', 'tayab@gmail.com', '016000000'),
('Azad', 'azad@gmail.com', '01611111111');

-- --------------------------------------------------------

--
-- Table structure for table `bookedlist`
--

CREATE TABLE `bookedlist` (
  `Name` text NOT NULL,
  `Number` text NOT NULL,
  `Booking_ID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookedlist`
--

INSERT INTO `bookedlist` (`Name`, `Number`, `Booking_ID`) VALUES
('Rakib', '01911111111', '01'),
('Nakib', '01922222222', '03'),
('Sayem', '01933333333', ' 01'),
('Akash', '01944444444', ' 01'),
('Rakib', '01955555555', ' 01');

-- --------------------------------------------------------

--
-- Table structure for table `bookinglist`
--

CREATE TABLE `bookinglist` (
  `Booking_ID` text NOT NULL,
  `Schedule` text NOT NULL,
  `Route` text NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookinglist`
--

INSERT INTO `bookinglist` (`Booking_ID`, `Schedule`, `Route`, `Price`) VALUES
('01', '1.00AM-3.00PM', 'Dhaka-Chittagong', 1500),
('02', '1.00AM-9.00AM', 'Dhaka-Teknaf', 1500),
('03', '12.00AM-5.00AM', 'Dhaka-Khulna', 700),
('04', '1.00AM-8.00AM', 'Sylhet - Dhaka', 700),
('05', '10.00AM-2.00PM', 'Rajshahi-Khulna', 400),
('06', '1.00AM-9.00AM', 'Rashshahi-Bagerhat', 900);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `Name` text NOT NULL,
  `Number` text NOT NULL,
  `Email` text NOT NULL,
  `Reg_vehicle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`Name`, `Number`, `Email`, `Reg_vehicle`) VALUES
('Ramjan', '01800000000', 'ramjan@gmail.com', 'A5'),
('Karim', '01811111111', 'Karim@gmail.com', 'B5'),
('Ahmed', '01822222222', 'Ahmed@gmail.com', 'C5'),
('Ahmed rakib', '01833333333', 'rakib@gmail.com', 'D5');

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

CREATE TABLE `summary` (
  `Total_earning` int(11) NOT NULL,
  `No_of_tickets_sold` int(11) NOT NULL,
  `Total_cost` int(11) NOT NULL,
  `Profit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`Total_earning`, `No_of_tickets_sold`, `Total_cost`, `Profit`) VALUES
(5000, 10, 3000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `Registration_Number` text NOT NULL,
  `Admin_Name` text NOT NULL,
  `Admin_Number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`Registration_Number`, `Admin_Name`, `Admin_Number`) VALUES
('1254697', 'Amit', '01622222222'),
('2546978', 'Amit', '01622222222');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
