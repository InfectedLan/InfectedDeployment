-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2016 at 04:21 PM
-- Server version: 5.6.27-0ubuntu1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_infected_no_crew`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicationqueue`
--

CREATE TABLE IF NOT EXISTS `applicationqueue` (
  `id` int(11) NOT NULL,
  `applicationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `eventId`, `groupId`, `userId`, `openedTime`, `closedTime`, `state`, `content`, `updatedByUserId`, `comment`) VALUES
(2, 5, 1, 2, '2015-08-16 03:57:17', '2015-08-16 17:35:27', 1, 'test, test...', 2, 'Closed by the system.');

-- --------------------------------------------------------

--
-- Table structure for table `avatars`
--

CREATE TABLE IF NOT EXISTS `avatars` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `fileName` varchar(64) NOT NULL,
  `state` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avatars`
--

INSERT INTO `avatars` (`id`, `userId`, `fileName`, `state`) VALUES
(6, 1, '705b94bc9e67bc71928518b15c986affpetterroea.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `eventId`, `name`, `title`, `description`, `leaderId`, `coleaderId`, `queuing`) VALUES
(1, 5, 'core', 'Core', 'Tar seg av administrative oppgaver samt oppgaver som ikke faller naturlig under noe annet crew.  Du må være glad i utfordringer, kunne jobbe selvstendig og i team, se løsninger, få med seg andre på fellesoppgaver og organisering. Eksempler her er: sponsor arbeid, booking, økonomi, problemløsning, forefallende oppgaver.', 3, 0, 0),
(2, 5, 'security', 'Security', 'Sørger for sikkerheten under arrangementet.', 0, 0, 0),
(3, 5, 'tech', 'Tech', 'Er de som planlegger, setter opp samt drifter nettverket og alle tjenester rundt nettverket på Infected. Her er oppgavene alt fra å konfiugerere switcher, routere, brannmurer og servere (applikasjoner) til kabling og testing av tjenester. Du bør ha gode kunnskaper om nettverk, servere (linux), koding eller være generelt interessert i IT. (Gamere teller ikke). ', 0, 0, 0),
(4, 5, 'event', 'Event', 'Er ansvarlig for alle andre konkurranser og aktiviteter på Infected. Eksempler på dette er scenekonkurranser.', 0, 0, 0),
(5, 5, 'game', 'Game', 'Planlegger og arrangerer alle spillkonkurranser på Infected. Du bør ha kunnskap og erfaring fra spillet i en konkurransesammenheng.', 0, 0, 0),
(6, 5, 'kafe', 'Kafe', 'Planlegger innkjøp og drifter Radar Cafe under Infected. Dette innebærer salg, tilbredning og rydding i kafeområdet.', 0, 0, 0),
(7, 5, 'backstage', 'Backstage', 'Er det crewet som står for alle måltidene til crewet i sin helhet. Dette innebærer å tilbrede maten, servere og rydde opp.', 2, 0, 0),
(8, 5, 'media', 'Media', 'Ansvarlig for bilder og film under arrangementet.', 3, 0, 0),
(9, 6, 'core', 'Core', 'Tar seg av administrative oppgaver samt oppgaver som ikke faller naturlig under noe annet crew.  Du må være glad i utfordringer, kunne jobbe selvstendig og i team, se løsninger, få med seg andre på fellesoppgaver og organisering. Eksempler her er: sponsor arbeid, booking, økonomi, problemløsning, forefallende oppgaver.', 3, 0, 0),
(10, 6, 'security', 'Security', 'Sørger for sikkerheten under arrangementet.', 0, 0, 0),
(11, 6, 'tech', 'Tech', 'Er de som planlegger, setter opp samt drifter nettverket og alle tjenester rundt nettverket på Infected. Her er oppgavene alt fra å konfiugerere switcher, routere, brannmurer og servere (applikasjoner) til kabling og testing av tjenester. Du bør ha gode kunnskaper om nettverk, servere (linux), koding eller være generelt interessert i IT. (Gamere teller ikke). ', 0, 0, 0),
(12, 6, 'event', 'Event', 'Er ansvarlig for alle andre konkurranser og aktiviteter på Infected. Eksempler på dette er scenekonkurranser.', 0, 0, 0),
(13, 6, 'game', 'Game', 'Planlegger og arrangerer alle spillkonkurranser på Infected. Du bør ha kunnskap og erfaring fra spillet i en konkurransesammenheng.', 0, 0, 0),
(14, 6, 'kafe', 'Kafe', 'Planlegger innkjøp og drifter Radar Cafe under Infected. Dette innebærer salg, tilbredning og rydding i kafeområdet.', 0, 0, 0),
(15, 6, 'backstage', 'Backstage', 'Er det crewet som står for alle måltidene til crewet i sin helhet. Dette innebærer å tilbrede maten, servere og rydde opp.', 2, 0, 0),
(16, 6, 'media', 'Media', 'Ansvarlig for bilder og film under arrangementet.', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `memberof`
--

CREATE TABLE IF NOT EXISTS `memberof` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberof`
--

INSERT INTO `memberof` (`id`, `eventId`, `userId`, `groupId`, `teamId`) VALUES
(75, 5, 1, 1, 3),
(80, 5, 2, 3, 0),
(81, 6, 1, 1, 3),
(82, 6, 2, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `secondsOffset` int(11) NOT NULL,
  `time` time NOT NULL,
  `notified` tinyint(1) NOT NULL,
  `done` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notewatches`
--

CREATE TABLE IF NOT EXISTS `notewatches` (
  `id` int(11) NOT NULL,
  `noteId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `leaderId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `eventId`, `groupId`, `name`, `title`, `description`, `leaderId`) VALUES
(1, 5, 2, 'lag-1', 'Lag 1', 'Lag 1', 463),
(2, 5, 2, 'lag-2', 'Lag 2', 'Lag 2', 626),
(3, 5, 2, 'lag-3', 'Lag 3', 'Lag 3', 303),
(4, 5, 2, 'lag-4', 'Lag 4', 'Lag 4', 361),
(5, 5, 3, 'net', 'Net', 'Net sørger for kjernen i nettverket, de lager nettverksdesignet og setter opp brannmuren og svitjene.', 2),
(6, 5, 3, 'server', 'Server', 'Server driver med drift av tjenester relatert til nettverk.', 2),
(7, 5, 3, 'support', 'Support', 'Support legger kabler og gir nettverks support til deltakere.', 2),
(8, 5, 2, 'ops-/-flex', 'OPS / FLEX', 'OPS / FLEX', 294),
(9, 5, 1, 'tech', 'Tech', 'Tech', 0),
(10, 5, 1, 'Økonomi', 'Økonomi', 'Økonomi', 0),
(11, 5, 1, 'kulturhus-representant', 'Kulturhus Representant', 'Kulturhus Representant', 0),
(13, 5, 5, 'server', 'Server', 'CS server', 247),
(14, 5, 5, 'cs-go', 'cs-go', 'CS-GO ', 0),
(15, 5, 1, 'sec', 'Sec', 'Sec', 0),
(16, 5, 8, 'teknikker', 'Teknikker', 'Teknikker', 0),
(17, 5, 8, 'foto', 'Foto', 'Foto', 0),
(18, 5, 8, 'web', 'web', 'web', 0),
(19, 5, 7, 'lag-1', 'Lag 1', 'Lag 1', 393),
(20, 5, 7, 'lag-2', 'Lag 2', 'Lag 2', 392),
(21, 5, 7, 'lag-3', 'Lag 3', 'Lag 3', 365),
(22, 6, 2, 'lag-1', 'Lag 1', 'Lag 1', 463),
(23, 6, 2, 'lag-2', 'Lag 2', 'Lag 2', 626),
(24, 6, 2, 'lag-3', 'Lag 3', 'Lag 3', 303),
(25, 6, 2, 'lag-4', 'Lag 4', 'Lag 4', 361),
(26, 6, 3, 'net', 'Net', 'Net sørger for kjernen i nettverket, de lager nettverksdesignet og setter opp brannmuren og svitjene.', 2),
(27, 6, 3, 'server', 'Server', 'Server driver med drift av tjenester relatert til nettverk.', 2),
(28, 6, 3, 'support', 'Support', 'Support legger kabler og gir nettverks support til deltakere.', 2),
(29, 6, 2, 'ops-/-flex', 'OPS / FLEX', 'OPS / FLEX', 294),
(30, 6, 1, 'tech', 'Tech', 'Tech', 0),
(31, 6, 1, 'Økonomi', 'Økonomi', 'Økonomi', 0),
(32, 6, 1, 'kulturhus-representant', 'Kulturhus Representant', 'Kulturhus Representant', 0),
(33, 6, 5, 'server', 'Server', 'CS server', 247),
(34, 6, 5, 'cs-go', 'cs-go', 'CS-GO ', 0),
(35, 6, 1, 'sec', 'Sec', 'Sec', 0),
(36, 6, 8, 'teknikker', 'Teknikker', 'Teknikker', 0),
(37, 6, 8, 'foto', 'Foto', 'Foto', 0),
(38, 6, 8, 'web', 'web', 'web', 0),
(39, 6, 7, 'lag-1', 'Lag 1', 'Lag 1', 393),
(40, 6, 7, 'lag-2', 'Lag 2', 'Lag 2', 392),
(41, 6, 7, 'lag-3', 'Lag 3', 'Lag 3', 365);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicationqueue`
--
ALTER TABLE `applicationqueue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`applicationId`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`groupId`,`userId`,`state`,`updatedByUserId`);

--
-- Indexes for table `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`,`state`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`leaderId`,`coleaderId`);

--
-- Indexes for table `memberof`
--
ALTER TABLE `memberof`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`userId`,`groupId`,`teamId`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notewatches`
--
ALTER TABLE `notewatches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`groupId`,`teamId`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`groupId`,`leaderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicationqueue`
--
ALTER TABLE `applicationqueue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `memberof`
--
ALTER TABLE `memberof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notewatches`
--
ALTER TABLE `notewatches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
