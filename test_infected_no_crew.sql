-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 26. Jan, 2016 10:32 AM
-- Server-versjon: 5.6.27-0ubuntu1
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
-- Tabellstruktur for tabell `applicationqueue`
--

CREATE TABLE IF NOT EXISTS `applicationqueue` (
  `id` int(11) NOT NULL,
  `applicationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 2, '6f836b0f77d06ef59bf7a19be2b17110halvors.jpg', 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `groups`
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
(11, 6, 'tech', 'Tech', 'Er de som planlegger, setter opp samt drifter nettverket og alle tjenester rundt nettverket på Infected. Her er oppgavene alt fra å konfiugerere switcher, routere, brannmurer og servere (applikasjoner) til kabling og testing av tjenester. Du bør ha gode kunnskaper om nettverk, servere (linux), koding eller være generelt interessert i IT. (Gamere teller ikke). ', 2, 0, 0),
(12, 6, 'event', 'Event', 'Er ansvarlig for alle andre konkurranser og aktiviteter på Infected. Eksempler på dette er scenekonkurranser.', 0, 0, 0),
(13, 6, 'game', 'Game', 'Planlegger og arrangerer alle spillkonkurranser på Infected. Du bør ha kunnskap og erfaring fra spillet i en konkurransesammenheng.', 0, 0, 0),
(14, 6, 'kafe', 'Kafe', 'Planlegger innkjøp og drifter Radar Cafe under Infected. Dette innebærer salg, tilbredning og rydding i kafeområdet.', 0, 0, 0),
(15, 6, 'backstage', 'Backstage', 'Er det crewet som står for alle måltidene til crewet i sin helhet. Dette innebærer å tilbrede maten, servere og rydde opp.', 0, 0, 0),
(16, 6, 'media', 'Media', 'Ansvarlig for bilder og film under arrangementet.', 3, 0, 0),
(17, 6, 'lol', 'lol', 'lol', 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `memberof`
--

INSERT INTO `memberof` (`id`, `eventId`, `userId`, `groupId`, `teamId`) VALUES
(75, 5, 1, 1, 3),
(76, 5, 2, 3, 6),
(77, 5, 3, 4, 0),
(78, 6, 1, 11, 23),
(79, 6, 2, 11, 23),
(80, 6, 3, 4, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `secondsOffset` int(11) NOT NULL,
  `time` time NOT NULL,
  `notified` tinyint(1) NOT NULL,
  `done` tinyint(1) NOT NULL,
  `inProgress` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `notes`
--

INSERT INTO `notes` (`id`, `eventId`, `creatorId`, `groupId`, `teamId`, `userId`, `title`, `content`, `secondsOffset`, `time`, `notified`, `done`, `inProgress`) VALUES
(1, 6, 0, 11, 0, 0, 'lol', 'lol', 172800, '14:58:00', 0, 0, 1),
(2, 6, 0, 11, 0, 0, 'kikiuk', 'iukiuk', 172800, '10:07:00', 0, 1, 0),
(3, 6, 0, 11, 0, 0, 'uikiu', 'kiukiuk', 172800, '10:07:00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `notewatches`
--

CREATE TABLE IF NOT EXISTS `notewatches` (
  `id` int(11) NOT NULL,
  `noteId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `notewatches`
--

INSERT INTO `notewatches` (`id`, `noteId`, `userId`) VALUES
(2, 2, 3),
(64, 4, 4),
(63, 4, 1002),
(49, 7, 3),
(50, 7, 342),
(5, 22, 302),
(40, 22, 327),
(39, 22, 361),
(41, 22, 1006),
(6, 22, 1109),
(15, 22, 1450),
(4, 24, 3),
(30, 24, 1002),
(3, 25, 3),
(29, 25, 1002),
(42, 26, 106),
(13, 26, 302),
(43, 26, 327),
(20, 26, 577),
(44, 26, 1006),
(12, 26, 1109),
(14, 26, 1450),
(34, 27, 106),
(54, 27, 294),
(7, 27, 302),
(35, 27, 327),
(33, 27, 361),
(21, 27, 577),
(8, 27, 1109),
(16, 27, 1450),
(22, 28, 34),
(1, 28, 1450),
(32, 30, 3),
(9, 30, 302),
(11, 30, 1109),
(10, 30, 1450),
(37, 31, 106),
(17, 31, 302),
(38, 31, 327),
(36, 31, 361),
(19, 31, 1109),
(18, 31, 1450),
(55, 32, 294),
(56, 32, 302),
(59, 32, 577),
(58, 32, 1109),
(57, 32, 1450),
(27, 34, 3),
(28, 34, 1002),
(48, 37, 1450),
(52, 44, 3),
(60, 44, 294),
(51, 44, 302),
(53, 44, 1450),
(47, 46, 1450),
(69, 63, 3),
(68, 71, 4),
(67, 71, 1002);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(23, 6, 11, 'server', 'Server', 'Server', 2);

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
  ADD KEY `index` (`eventId`,`groupId`,`userId`,`updatedByUserId`);

--
-- Indexes for table `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`id`,`eventId`,`creatorId`,`groupId`,`teamId`,`userId`,`secondsOffset`,`time`,`notified`,`done`,`inProgress`) USING BTREE;

--
-- Indexes for table `notewatches`
--
ALTER TABLE `notewatches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`noteId`,`userId`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`groupId`,`teamId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `memberof`
--
ALTER TABLE `memberof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `notewatches`
--
ALTER TABLE `notewatches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
