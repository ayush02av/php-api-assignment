-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 02:00 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpassignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `keyword_table`
--

CREATE TABLE `keyword_table` (
  `keyword` varchar(10) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `columns_to_display` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keyword_table`
--

INSERT INTO `keyword_table` (`keyword`, `table_name`, `columns_to_display`) VALUES
('asd', 'table2', '[column2, column3]'),
('xyz', 'table1', '[column1, column2]');

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `column1` varchar(50) NOT NULL,
  `column2` varchar(50) NOT NULL,
  `column3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`column1`, `column2`, `column3`) VALUES
('table1 col1 val', 'table1 col2 val', 'table1 col3 val'),
('table1 col1 val2', 'table1 col2 val2', 'table1 col3 val2'),
('table1 col1 val3', 'table1 col2 val3', 'table1 col3 val3');

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `column1` varchar(50) NOT NULL,
  `column2` varchar(50) NOT NULL,
  `column3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`column1`, `column2`, `column3`) VALUES
('table2 col1 val', 'table2 col2 val', 'table2 col3 val'),
('table2 col1 val2', 'table2 col2 val2', 'table2 col3 val2'),
('table2 col1 val3', 'table2 col2 val3', 'table2 col3 val3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keyword_table`
--
ALTER TABLE `keyword_table`
  ADD PRIMARY KEY (`keyword`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`column1`);

--
-- Indexes for table `table2`
--
ALTER TABLE `table2`
  ADD PRIMARY KEY (`column1`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
