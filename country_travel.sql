-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 28, 2022 at 05:31 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `country_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `climate`
--

CREATE TABLE `climate` (
  `id` int(11) NOT NULL,
  `KCC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `climate`
--

INSERT INTO `climate` (`id`, `KCC`) VALUES
(1, 'Tropical'),
(2, 'Arid'),
(3, 'Temperate'),
(4, 'Continental'),
(5, 'Polar');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Canada '),
(2, 'Mexico'),
(3, 'Dominican Republic'),
(4, 'Costa Rica '),
(5, 'Cuba'),
(6, 'Brazil '),
(7, 'Colombia'),
(8, 'Argentina'),
(9, 'Chile'),
(10, 'Peru'),
(11, 'South Africa'),
(12, 'Morocco'),
(13, 'Tunisia '),
(14, 'Mozambique'),
(15, 'Algeria'),
(16, 'China'),
(17, 'Japan'),
(18, 'Thailand'),
(19, 'Vietnam'),
(20, 'Malaysia'),
(21, 'France'),
(22, 'Spain'),
(23, 'Italy'),
(24, 'Turkey'),
(25, 'Germany'),
(26, 'Egypt'),
(27, 'Saudi Arabia'),
(28, 'United Arab Emirates'),
(29, 'Jordan'),
(30, 'Bahrain'),
(31, 'Australia'),
(32, 'New Zealand'),
(33, 'Fiji');

-- --------------------------------------------------------

--
-- Table structure for table `countryinfo`
--

CREATE TABLE `countryinfo` (
  `id` int(11) NOT NULL,
  `countriesid` int(11) NOT NULL,
  `regionsid` int(11) NOT NULL,
  `climatesid` int(11) NOT NULL,
  `languagesid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countryinfo`
--

INSERT INTO `countryinfo` (`id`, `countriesid`, `regionsid`, `climatesid`, `languagesid`) VALUES
(1, 15, 3, 2, 5),
(2, 8, 2, 3, 2),
(3, 31, 7, 3, 1),
(4, 30, 6, 2, 5),
(5, 6, 2, 1, 4),
(6, 1, 1, 4, 1),
(7, 9, 2, 3, 2),
(8, 16, 4, 3, 6),
(9, 7, 2, 1, 2),
(10, 4, 1, 1, 2),
(11, 5, 1, 1, 2),
(12, 3, 1, 1, 2),
(13, 26, 6, 2, 5),
(14, 33, 7, 1, 14),
(15, 21, 5, 3, 3),
(16, 25, 5, 4, 13),
(17, 23, 5, 3, 11),
(18, 17, 4, 3, 7),
(19, 29, 6, 2, 5),
(20, 20, 4, 1, 10),
(21, 2, 1, 1, 2),
(22, 12, 3, 2, 5),
(23, 14, 3, 1, 4),
(24, 32, 7, 3, 1),
(25, 10, 2, 1, 2),
(26, 27, 6, 2, 5),
(27, 11, 3, 2, 1),
(28, 22, 5, 2, 2),
(29, 18, 4, 1, 8),
(30, 13, 3, 2, 5),
(31, 24, 5, 2, 12),
(32, 28, 6, 2, 5),
(33, 19, 4, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `dialect` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `dialect`) VALUES
(1, 'English '),
(2, 'Spanish'),
(3, 'French'),
(4, 'Portuguese'),
(5, 'Arabic'),
(6, 'Mandarin'),
(7, 'Japanese'),
(8, 'Thai'),
(9, 'Vietnamese'),
(10, 'Malay'),
(11, 'Italian'),
(12, 'Turkish'),
(13, 'German'),
(14, 'Fijian'),
(15, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `region`) VALUES
(1, 'North America'),
(2, 'South America'),
(3, 'Africa'),
(4, 'Asia'),
(5, 'Europe'),
(6, 'Middle East'),
(7, 'Oceania');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `climate`
--
ALTER TABLE `climate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countryinfo`
--
ALTER TABLE `countryinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countriesid` (`countriesid`),
  ADD KEY `regionsid` (`regionsid`),
  ADD KEY `climatesid` (`climatesid`),
  ADD KEY `languagesid` (`languagesid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `countryinfo`
--
ALTER TABLE `countryinfo`
  ADD CONSTRAINT `countryinfo_ibfk_1` FOREIGN KEY (`countriesid`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `countryinfo_ibfk_2` FOREIGN KEY (`regionsid`) REFERENCES `regions` (`id`),
  ADD CONSTRAINT `countryinfo_ibfk_3` FOREIGN KEY (`climatesid`) REFERENCES `climate` (`id`),
  ADD CONSTRAINT `countryinfo_ibfk_4` FOREIGN KEY (`languagesid`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
