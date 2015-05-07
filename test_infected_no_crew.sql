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
-- Database: `test_infected_no_crew`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `applicationqueue`
--

CREATE TABLE IF NOT EXISTS `applicationqueue` (
`id` int(11) NOT NULL,
  `applicationId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `applicationqueue`
--

INSERT INTO `applicationqueue` (`id`, `applicationId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `openedTime` datetime NOT NULL,
  `closedTime` datetime NOT NULL,
  `state` tinyint(11) NOT NULL,
  `content` text NOT NULL,
  `updatedByUserId` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `applications`
--

INSERT INTO `applications` (`id`, `eventId`, `groupId`, `userId`, `openedTime`, `closedTime`, `state`, `content`, `updatedByUserId`, `comment`) VALUES
(1, 4, 1, 17, '2015-02-09 09:57:01', '2015-02-09 10:11:11', 1, 'trhtyh', 2, '');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `avatars`
--

CREATE TABLE IF NOT EXISTS `avatars` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `file` varchar(64) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `avatars`
--

INSERT INTO `avatars` (`id`, `userId`, `file`, `state`) VALUES
(1, 17, 'feed8a35a78e2026db38cf8a6b3ebb7ftest13.jpg', 2);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `leaderId` int(11) NOT NULL,
  `coleaderId` int(11) NOT NULL,
  `queuing` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `groups`
--

INSERT INTO `groups` (`id`, `eventId`, `name`, `title`, `description`, `leaderId`, `coleaderId`, `queuing`) VALUES
(1, 4, 'core', 'Core', 'Tar seg av administrative oppgaver samt oppgaver som ikke faller naturlig under noe annet crew.  Du må være glad i utfordringer, kunne jobbe selvstendig og i team, se løsninger, få med seg andre på fellesoppgaver og organisering. Eksempler her er: sponsor arbeid, booking, økonomi, problemløsning, forefallende oppgaver.', 3, 0, 0),
(2, 4, 'security', 'Security', 'Sørger for sikkerheten under arrangementet.', 303, 0, 0),
(3, 4, 'tech', 'Tech', 'Er de som planlegger, setter opp samt drifter nettverket og alle tjenester rundt nettverket på Infected. Her er oppgavene alt fra å konfiugerere switcher, routere, brannmurer og servere (applikasjoner) til kabling og testing av tjenester. Du bør ha gode kunnskaper om nettverk, servere (linux), koding eller være generelt interessert i IT. (Gamere teller ikke). ', 58, 0, 0),
(4, 4, 'event', 'Event', 'Er ansvarlig for alle andre konkurranser og aktiviteter på Infected. Eksempler på dette er scenekonkurranser.', 0, 0, 0),
(5, 4, 'game', 'Game', 'Planlegger og arrangerer alle spillkonkurranser på Infected. Du bør ha kunnskap og erfaring fra spillet i en konkurransesammenheng.', 247, 0, 0),
(6, 4, 'kafe', 'Kafe', 'Planlegger innkjøp og drifter Radar Cafe under Infected. Dette innebærer salg, tilbredning og rydding i kafeområdet.', 188, 1161, 0),
(7, 4, 'backstage', 'Backstage', 'Er det crewet som står for alle måltidene til crewet i sin helhet. Dette innebærer å tilbrede maten, servere og rydde opp.', 2, 0, 0),
(8, 4, 'media', 'Media', 'Ansvarlig for bilder og film under arrangementet.', 3, 0, 0),
(9, 5, 'hgjhgjjh', 'hgjhgjjh', 'ghjghj', 20, 20, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `memberof`
--

CREATE TABLE IF NOT EXISTS `memberof` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `memberof`
--

INSERT INTO `memberof` (`id`, `eventId`, `userId`, `groupId`, `teamId`) VALUES
(55, 4, 1, 1, 3),
(58, 4, 2, 3, 6),
(59, 4, 3, 4, 0),
(75, 5, 1, 1, 3),
(76, 5, 2, 3, 6),
(77, 5, 3, 4, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `pages`
--

INSERT INTO `pages` (`id`, `eventId`, `name`, `title`, `content`, `groupId`, `teamId`) VALUES
(1, 4, 'vaktliste', 'Vaktliste', 'hyhy', 3, 0),
(2, 4, 'vaktliste', 'Vaktliste', 'hyhy', 6, 0),
(3, 4, 'gfhfgh', 'gfhfgh', '<p>gfhgfhfh</p>\r\n', 3, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `leaderId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `teams`
--

INSERT INTO `teams` (`id`, `eventId`, `groupId`, `name`, `title`, `description`, `leaderId`) VALUES
(1, 4, 2, 'lag-1', 'Lag 1', 'Lag 1', 463),
(2, 4, 2, 'lag-2', 'Lag 2', 'Lag 2', 626),
(3, 4, 2, 'lag-3', 'Lag 3', 'Lag 3', 303),
(4, 4, 2, 'lag-4', 'Lag 4', 'Lag 4', 361),
(5, 4, 3, 'net', 'Net', 'Net sørger for kjernen i nettverket, de lager nettverksdesignet og setter opp brannmuren og svitjene.', 2),
(6, 4, 3, 'server', 'Server', 'Server driver med drift av tjenester relatert til nettverk.', 2),
(7, 4, 3, 'support', 'Support', 'Support legger kabler og gir nettverks support til deltakere.', 2),
(8, 4, 2, 'ops-/-flex', 'OPS / FLEX', 'OPS / FLEX', 294),
(9, 4, 1, 'tech', 'Tech', 'Tech', 0),
(10, 4, 1, 'Økonomi', 'Økonomi', 'Økonomi', 0),
(11, 4, 1, 'kulturhus-representant', 'Kulturhus Representant', 'Kulturhus Representant', 0),
(13, 4, 5, 'server', 'Server', 'CS server', 247),
(14, 4, 5, 'cs-go', 'cs-go', 'CS-GO ', 0),
(15, 4, 1, 'sec', 'Sec', 'Sec', 0),
(16, 4, 8, 'teknikker', 'Teknikker', 'Teknikker', 0),
(17, 4, 8, 'foto', 'Foto', 'Foto', 0),
(18, 4, 8, 'web', 'web', 'web', 0),
(19, 4, 7, 'lag-1', 'Lag 1', 'Lag 1', 393),
(20, 4, 7, 'lag-2', 'Lag 2', 'Lag 2', 392),
(21, 4, 7, 'lag-3', 'Lag 3', 'Lag 3', 365),
(22, 5, 3, 'dsfdsfsf', 'dsfdsfsf', 'sdfdsf', 0),
(23, 5, 3, 'dsfdsfsfsf', 'dsfdsfsfsf', 'dsfsdf', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicationqueue`
--
ALTER TABLE `applicationqueue`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`applicationId`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`,`groupId`,`userId`,`updatedByUserId`);

--
-- Indexes for table `avatars`
--
ALTER TABLE `avatars`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`userId`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`,`leaderId`,`coleaderId`);

--
-- Indexes for table `memberof`
--
ALTER TABLE `memberof`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`,`userId`,`groupId`,`teamId`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`groupId`,`teamId`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`,`groupId`,`leaderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicationqueue`
--
ALTER TABLE `applicationqueue`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `avatars`
--
ALTER TABLE `avatars`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `memberof`
--
ALTER TABLE `memberof`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
