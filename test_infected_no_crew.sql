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
-- Database: `test_infected_no_crew`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `applicationqueue`
--

CREATE TABLE `applicationqueue` (
  `id` int(11) NOT NULL,
  `applicationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `applications`
--

CREATE TABLE `applications` (
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

CREATE TABLE `avatars` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `file` varchar(64) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `avatars`
--

INSERT INTO `avatars` (`id`, `userId`, `file`, `state`) VALUES
(1, 2, '6f836b0f77d06ef59bf7a19be2b17110halvors.jpg', 2);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `castingPages`
--

CREATE TABLE `castingPages` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `data` text NOT NULL,
  `name` text NOT NULL,
  `template` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `queuing` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `groups`
--

INSERT INTO `groups` (`id`, `name`, `title`, `description`, `active`, `queuing`) VALUES
(1, 'core', 'Core', 'Tar seg av administrative oppgaver samt oppgaver som ikke faller naturlig under noe annet crew.  Du må være glad i utfordringer, kunne jobbe selvstendig og i team, se løsninger, få med seg andre på fellesoppgaver og organisering. Eksempler her er: sponsor arbeid, booking, økonomi, problemløsning, forefallende oppgaver.', 1, 0),
(2, 'game', 'Game', 'Planlegger og arrangerer alle spillkonkurranser på Infected. Du bør ha kunnskap og erfaring fra spillet i en konkurransesammenheng.', 1, 0),
(3, 'kafe-og-backstage', 'Kafe og Backstage', 'Er det crewet som står for alle måltidene til crewet i sin helhet. Dette innebærer å tilbrede maten, servere og rydde opp. Har også ansvar for Kafe drift. Planlegger innkjøp og drifter Radar Cafe under Infected. Dette innebærer salg, tilbredning og rydding i kafeområdet.', 1, 0),
(4, 'media', 'Media', 'Ansvarlig for bilder og film under arrangementet.', 1, 0),
(5, 'security', 'Security', 'Sørger for sikkerheten under arrangementet.', 1, 0),
(6, 'tech', 'Tech', 'Er de som planlegger, setter opp samt drifter nettverket og alle tjenester rundt nettverket på Infected. Her er oppgavene alt fra å konfiugerere switcher, routere, brannmurer og servere (applikasjoner) til kabling og testing av tjenester. Du bør ha gode kunnskaper om nettverk, servere (linux), koding eller være generelt interessert i IT. (Gamere teller ikke). ', 1, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `memberof`
--

CREATE TABLE `memberof` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  `groupLeader` tinyint(1) NOT NULL,
  `teamLeader` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `notes`
--

CREATE TABLE `notes` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `notewatches`
--

CREATE TABLE `notewatches` (
  `id` int(11) NOT NULL,
  `noteId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `pages`
--

CREATE TABLE `pages` (
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

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `teams`
--

INSERT INTO `teams` (`id`, `groupId`, `name`, `title`, `description`, `active`) VALUES
(1, 1, 'Økonomi', 'Økonomi', 'Ansvarlige for økonomien til Infected', 1),
(2, 1, 'koordinering', 'Koordinering', 'Overser gjennomføringen av alle seksjoner fra Core', 1),
(3, 1, 'radar', 'Radar', 'Ansatte hos Radar', 1),
(4, 2, 'div', 'Div', 'Alt med media', 0),
(5, 2, 'lol', 'LoL', 'Alle som har hovedfokus på LoL', 1),
(6, 2, 'cs', 'CS', 'Alle som har hovedfokus på CS', 1),
(7, 2, 'casting', 'Casting', 'Casting er rettet mot ting som skjer på scenen, I hovedsak har Infected fokus på finalene i div spill.', 1),
(8, 2, 'event', 'Event', 'Disse har fokus på mindre compoer og aktiviteter under LAN\'et.', 1),
(9, 5, 'flex', 'Flex', 'Gjør alt og ingen ting, 24/7 backup for alle lag og ledere.', 1),
(10, 6, 'monitoring', 'Monitoring', 'Sørger for monitoring systemer og bemanner NOC under arrangementet.', 1),
(11, 6, 'web', 'Web', 'Nettsider and stuff.', 1),
(12, 6, 'net', 'Net', 'Sørger for nettverks- og serveroppsett under arrangementet.', 1),
(13, 6, 'bleiker', 'Bleiker', 'Konteiner med elever fra Bleiker VGS', 1),
(14, 6, 'server', 'Server', 'Mekker heftige servere', 1);

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
-- Indexes for table `castingPages`
--
ALTER TABLE `castingPages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `index` (`groupId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `castingPages`
--
ALTER TABLE `castingPages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `memberof`
--
ALTER TABLE `memberof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
