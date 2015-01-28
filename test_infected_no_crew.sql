-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2015 at 10:34 PM
-- Server version: 5.6.19-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_infected_no_crew`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicationqueue`
--

CREATE TABLE IF NOT EXISTS `applicationqueue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `openedTime` datetime NOT NULL,
  `closedTime` datetime NOT NULL,
  `state` tinyint(11) NOT NULL,
  `content` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `avatars`
--

CREATE TABLE IF NOT EXISTS `avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `file` varchar(64) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `leader` int(11) NOT NULL,
  `coleader` int(11) NOT NULL,
  `queuing` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `title`, `description`, `leader`, `coleader`, `queuing`) VALUES
(1, 'core', 'Core', 'Tar seg av administrative oppgaver samt oppgaver som ikke faller naturlig under noe annet crew.  Du må være glad i utfordringer, kunne jobbe selvstendig og i team, se løsninger, få med seg andre på fellesoppgaver og organisering. Eksempler her er: sponsor arbeid, booking, økonomi, problemløsning, forefallende oppgaver.', 3, 0, 0),
(2, 'security', 'Security', 'Sørger for sikkerheten under arrangementet.', 303, 0, 0),
(3, 'tech', 'Tech', 'Er de som planlegger, setter opp samt drifter nettverket og alle tjenester rundt nettverket på Infected. Her er oppgavene alt fra å konfiugerere switcher, routere, brannmurer og servere (applikasjoner) til kabling og testing av tjenester. Du bør ha gode kunnskaper om nettverk, servere (linux), koding eller være generelt interessert i IT. (Gamere teller ikke). ', 193, 0, 0),
(4, 'event', 'Event', 'Er ansvarlig for alle andre konkurranser og aktiviteter på Infected. Eksempler på dette er scenekonkurranser.', 0, 0, 0),
(5, 'game', 'Game', 'Planlegger og arrangerer alle spillkonkurranser på Infected. Du bør ha kunnskap og erfaring fra spillet i en konkurransesammenheng.', 247, 0, 0),
(6, 'kafe', 'Kafe', 'Planlegger innkjøp og drifter Radar Cafe under Infected. Dette innebærer salg, tilbredning og rydding i kafeområdet.', 188, 1161, 0),
(7, 'backstage', 'Backstage', 'Er det crewet som står for alle måltidene til crewet i sin helhet. Dette innebærer å tilbrede maten, servere og rydde opp.', 355, 360, 0),
(8, 'media', 'Media', 'Ansvarlig for bilder og film under arrangementet.', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `memberof`
--

CREATE TABLE IF NOT EXISTS `memberof` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `memberof`
--

INSERT INTO `memberof` (`id`, `eventId`, `userId`, `groupId`, `teamId`) VALUES
(1, 4, 2, 4, 0),
(2, 4, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  `private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `content`, `groupId`, `teamId`, `private`) VALUES
(1, 'vaktliste', 'Vaktliste', '', 3, 0, 1),
(2, 'vaktliste', 'Vaktliste', '', 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `leader` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `groupId`, `name`, `title`, `description`, `leader`) VALUES
(1, 2, 'lag-1', 'Lag 1', 'Lag 1', 463),
(2, 2, 'lag-2', 'Lag 2', 'Lag 2', 626),
(3, 2, 'lag-3', 'Lag 3', 'Lag 3', 303),
(4, 2, 'lag-4', 'Lag 4', 'Lag 4', 361),
(5, 3, 'net', 'Net', 'Net sørger for kjernen i nettverket, de lager nettverksdesignet og setter opp brannmuren og svitjene.', 396),
(6, 3, 'server', 'Server', 'Server driver med drift av tjenester relatert til nettverk.', 2),
(7, 3, 'support', 'Support', 'Support legger kabler og gir nettverks support til deltakere.', 417),
(8, 2, 'ops-/-flex', 'OPS / FLEX', 'OPS / FLEX', 294),
(9, 1, 'tech', 'Tech', 'Tech', 0),
(10, 1, 'Økonomi', 'Økonomi', 'Økonomi', 0),
(11, 1, 'kulturhus-representant', 'Kulturhus Representant', 'Kulturhus Representant', 0),
(13, 5, 'server', 'Server', 'CS server', 247),
(14, 5, 'cs-go', 'cs-go', 'CS-GO ', 0),
(15, 1, 'sec', 'Sec', 'Sec', 0),
(16, 8, 'teknikker', 'Teknikker', 'Teknikker', 0),
(17, 8, 'foto', 'Foto', 'Foto', 0),
(18, 8, 'web', 'web', 'web', 0),
(19, 7, 'lag-1', 'Lag 1', 'Lag 1', 393),
(20, 7, 'lag-2', 'Lag 2', 'Lag 2', 392),
(21, 7, 'lag-3', 'Lag 3', 'Lag 3', 365);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
