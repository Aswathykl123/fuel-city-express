-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2022 at 08:47 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fuel_city`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `email`, `phone`, `address`, `district`) VALUES
(1, 'AK', 'ak@mail.com', '9090909090', 'Ak Adrs\r\nVVV', 'Ernakulam'),
(2, 'AK', 'ak@mail.com', '9090909090', 'Ak Adrs\r\nVVV', 'Ernakulam'),
(3, 'Aji', 'aji@mail.com', '9090909090', 'Aji\r\nAdrs', 'Ernakulam');

-- --------------------------------------------------------

--
-- Table structure for table `dboy`
--

CREATE TABLE IF NOT EXISTS `dboy` (
  `dbid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_proof` varchar(100) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dboy`
--


-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lid`, `uid`, `username`, `password`, `usertype`, `status`) VALUES
(1, 1, 'ak@mail.com', 'AK', 'Customer', 'Active'),
(2, 2, 'ak@mail.com', 'AK', 'Customer', 'Active'),
(3, 3, 'aji@mail.com', '12345', 'Customer', 'Active'),
(4, 1, 'hpekm@mail.com', '12345', 'Pump', 'Active'),
(5, 0, 'admin@gmail.com', 'admin', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `pump`
--

CREATE TABLE IF NOT EXISTS `pump` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pump` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pin` int(11) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pump`
--

INSERT INTO `pump` (`pid`, `pump`, `email`, `phone`, `district`, `pin`, `address`, `reg_no`) VALUES
(1, 'HP EKM', 'hpekm@mail.com', '9898989898', 'Ernakulam', 678678, 'HP\r\nEKM\r\nAdrs', 'REGHPEKM');
