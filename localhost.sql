-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2023 at 09:04 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info`
--
CREATE DATABASE IF NOT EXISTS `info` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `info`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `First Name` varchar(30) NOT NULL COMMENT 'First Name of Customers',
  `Last Name` varchar(15) NOT NULL COMMENT 'Customer''s Last name',
  `Gender` varchar(15) NOT NULL COMMENT 'Gender of each customer',
  `Address` varchar(30) NOT NULL COMMENT 'Address of customer',
  `ZIP Code` varchar(30) NOT NULL COMMENT 'Zip Code of Customer address',
  `Toppings #` varchar(30) NOT NULL COMMENT 'Number of Pizza toppings per customer',
  `Phone Number` varchar(30) NOT NULL COMMENT 'Phone Number of Customer',
  `Pizzabake` varchar(30) NOT NULL COMMENT 'Pizza Baking method of customer',
  `Sauce` varchar(30) NOT NULL COMMENT 'Customer''s chosen Pizza sauce',
  `Date` varchar(15) NOT NULL COMMENT 'Date the customer''s order was made',
  `Time` varchar(15) NOT NULL COMMENT 'Time the customer''s order was made'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`First Name`, `Last Name`, `Gender`, `Address`, `ZIP Code`, `Toppings #`, `Phone Number`, `Pizzabake`, `Sauce`, `Date`, `Time`) VALUES
('Mario', 'Guerrero', 'Male', '2900 Bedford Ave', '11210', '1', '718951-5000', 'Well done', 'Marinara', '2023/08/16', '04:20:18am'),
('Mario', 'Guerreo', 'Male', '1195 Flatbush Avenue', '11226', '2', '3479510430', 'Normal bake', 'Marinara', '2023/08/16', '05:02:13pm');

-- --------------------------------------------------------

--
-- Table structure for table `usr_info`
--

CREATE TABLE `usr_info` (
  `Last Name` varchar(30) NOT NULL,
  `First Name` varchar(15) NOT NULL COMMENT 'First Name of Customers',
  `gender` varchar(15) NOT NULL,
  `color` varchar(15) NOT NULL,
  `options` varchar(35) NOT NULL,
  `favcol` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
