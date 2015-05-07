-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 07. Mai, 2015 09:26 AM
-- Server-versjon: 5.6.24-0ubuntu2
-- PHP Version: 5.6.4-4ubuntu6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_infected_no_info`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `slides`
--

INSERT INTO `slides` (`id`, `eventId`, `name`, `title`, `content`, `startTime`, `endTime`, `published`) VALUES
(1, 3, '', 'LoL Finale', '<p>Finale på scenen<br>21:00</p>', '2014-02-14 18:00:00', '2014-02-14 12:00:00', 0),
(2, 3, '', 'Ha det ryddig rundt deg!', '<p>Hold sakene dine under bordet.</p>', '2014-02-15 11:30:00', '2014-02-15 20:30:00', 1),
(3, 3, '', 'Vann', '<p>Husk &aring; drikke vann! Bare energidrikke og<br /><span style=\\\\\\"line-height:1.6\\\\\\">brus gir deg hodepine!</span></p>', '2014-09-26 16:02:00', '2014-09-29 18:00:00', 1),
(4, 3, '', 'CS:GO', '<p>Finale på scenen<br>23:00</p>', '2014-09-26 17:30:00', '2014-09-26 21:00:00', 1),
(5, 3, '', 'Comporegistrering', '<p>Comporegistrering er åpent.<br>Gå på compo.infected.no</p>', '2014-09-26 17:30:00', '2014-09-26 20:30:00', 0),
(6, 3, '', 'Mye søppel?', '<p>Mye søppel på plassen din?<br> Søppelposer er å finne på begge ender av radene!</p>', '2014-09-26 17:30:00', '2014-09-28 17:30:00', 0),
(8, 4, 'fdg', 'fdg111', 'fdgdfg', '2015-02-02 14:57:00', '2015-02-02 15:57:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
