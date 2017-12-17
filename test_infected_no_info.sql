-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 05. Des, 2017 00:34 AM
-- Server-versjon: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.2.0-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_infected_no_info`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `slides`
--

INSERT INTO `slides` (`id`, `eventId`, `name`, `title`, `content`, `startTime`, `endTime`, `published`) VALUES
(1, 10, 'velkommen-til-infected', 'Velkommen til infected', '<p>Velkommen!</p>\r\n', '2017-09-16 22:16:00', '2017-09-30 22:00:00', 1),
(2, 10, 'eurobeat', 'Drikk vann', 'Visste du at energidrikken din er opptil <b>DOBBELT</b> så effektiv om du drikker vann? Drikk vann!', '2017-09-16 22:57:00', '2017-09-30 17:00:00', 1),
(3, 10, 'cafémeny', 'Cafémeny', 'Redbull 30,- 2 for 50,-\r\n\r\nMountain Dew 35,- kr/ 2 for 60,-\r\n\r\nCola, Fanta, Fanta Exotic, Sprite, Pepsi Max og  Urge 30,-/2 for 50,-</p>', '2017-09-30 20:43:00', '2017-10-01 00:00:00', 1),
(4, 10, 'cafémeny', 'Cafémeny', 'Pizza 60,-\r\n\r\nGratinert Natchos 35,-\r\n\r\nX-tra Rømme og Salsa  10,\r\n\r\nExtra Ost 5,-\r\n\r\nFrukt 5,-\r\n\r\nSjokolade 10,-\r\n\r\nPotetgull 10,-\r\n', '2017-09-30 21:12:00', '2017-10-01 00:00:00', 1),
(5, 10, 'cafémeny', 'Cafémeny', 'Pizza + Brus 80,-\r\n\r\nNachos + Brus 60,-\r\n', '2017-09-30 21:44:00', '2017-10-01 12:00:00', 1),
(6, 10, 'lol-finale', 'LoL Finale', '<p>LoL Finalen spilles p&aring; radar scene. Det vil bli solgt snacks og drikke under finalen.</p>\r\n', '2017-09-30 21:48:27', '2017-10-01 01:00:27', 1),
(7, 10, 'cs:go-finale', 'CS:GO Finale', '<p>CS:GO Finalen spilles på radar scene. Det vil bli solgt snacks og drikke under finalen.<br />\r\n </p>\r\n', '2017-09-30 21:50:00', '2017-10-01 04:00:00', 1),
(8, 10, 'café-tilbud', 'Café tilbud', '<h1><em><strong>PANNACOTTA 10,-</strong></em></h1>\r\n', '2017-10-01 03:37:43', '2017-10-01 05:00:43', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`published`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
