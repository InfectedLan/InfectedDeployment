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
-- Database: `test_infected_no_compo`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `chatmessages`
--

CREATE TABLE `chatmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `chatId` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `clans`
--

CREATE TABLE `clans` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `tag` varchar(32) NOT NULL,
  `chiefId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `compos`
--

CREATE TABLE `compos` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `tag` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `pluginName` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `registrationEndTime` datetime NOT NULL,
  `teamSize` int(11) NOT NULL,
  `participantLimit` int(11) NOT NULL,
  `chatId` int(11) NOT NULL,
  `connectionType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `compos`
--

INSERT INTO `compos` (`id`, `eventId`, `name`, `title`, `tag`, `description`, `pluginName`, `price`, `startTime`, `registrationEndTime`, `teamSize`, `participantLimit`, `chatId`, `connectionType`) VALUES
(1, 3, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', 'CS:GO', '', '5on5', 0, '2014-09-26 18:00:00', '2014-09-26 18:00:00', 5, 0, 0, 0),
(2, 3, 'league-of-legends', 'League of Legends', 'LoL', '', '', 0, '2014-09-26 18:00:00', '2014-09-26 18:00:00', 5, 0, 0, 0),
(3, 4, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', 'CS:GO', '', '5on5', 0, '2015-02-14 18:00:00', '2015-02-14 18:00:00', 5, 0, 0, 0),
(4, 4, 'league-of-legends', 'League of Legends', 'LoL', '', '', 0, '2015-02-14 18:00:00', '2015-02-14 18:00:00', 5, 0, 0, 0),
(5, 5, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', 'CS:GO', '1.plass 7500,- 2.plass 2500,- maks 16 lag', '5on5', 0, '2015-09-25 21:45:00', '2015-09-25 20:00:00', 5, 16, 0, 0),
(6, 5, 'league-of-legends', 'League of Legends', 'LoL', '1.plass 7500,- 2.plass 2500,- maks 16 lag', '5on5', 0, '2015-09-25 21:00:00', '2015-09-25 19:30:00', 5, 16, 0, 0),
(7, 7, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', 'CS:GO', '1.plass 7500,- 2.plass 2500,- maks 16 lag', 'csgo', 0, '2015-09-25 21:45:00', '2015-09-25 20:00:00', 5, 16, 7, 0),
(8, 7, 'league-of-legends', 'League of Legends', 'LoL', '1.plass 7500,- 2.plass 2500,- maks 16 lag', '5on5', 0, '2015-09-25 21:00:00', '2015-09-25 19:30:00', 5, 16, 8, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `invites`
--

CREATE TABLE `invites` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `clanId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `scheduledTime` datetime NOT NULL,
  `connectDetails` text NOT NULL,
  `state` int(11) NOT NULL,
  `winnerId` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `bracketOffset` int(8) NOT NULL,
  `chatId` int(11) NOT NULL,
  `bracket` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `matchmetadata`
--

CREATE TABLE `matchmetadata` (
  `id` int(11) NOT NULL,
  `match` int(11) NOT NULL,
  `key` varchar(32) NOT NULL,
  `value` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `matchrelationships`
--

CREATE TABLE `matchrelationships` (
  `id` int(11) NOT NULL,
  `fromCompoId` int(11) NOT NULL,
  `toCompoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `memberof`
--

CREATE TABLE `memberof` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `clanId` int(11) NOT NULL,
  `stepinId` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `memberofchat`
--

CREATE TABLE `memberofchat` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `chatId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `participantof`
--

CREATE TABLE `participantof` (
  `id` int(11) NOT NULL,
  `clanId` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `qualified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `participantofmatch`
--

CREATE TABLE `participantofmatch` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `qualificationQueue`
--

CREATE TABLE `qualificationQueue` (
  `id` int(11) NOT NULL,
  `clan` int(11) NOT NULL,
  `compo` int(11) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `readyhandlers`
--

CREATE TABLE `readyhandlers` (
  `id` int(11) NOT NULL,
  `compoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `readyusers`
--

CREATE TABLE `readyusers` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `humanName` text NOT NULL,
  `connectionData` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `voteoptions`
--

CREATE TABLE `voteoptions` (
  `id` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `thumbnailUrl` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `consumerId` int(11) NOT NULL,
  `voteOptionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `votes`
--

CREATE TABLE `steamids` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `steamId` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatmessages`
--
ALTER TABLE `chatmessages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`,`chatId`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`chiefId`);

--
-- Indexes for table `compos`
--
ALTER TABLE `compos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`userId`,`clanId`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`winnerId`,`compoId`,`chatId`);

--
-- Indexes for table `matchmetadata`
--
ALTER TABLE `matchmetadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matchrelationships`
--
ALTER TABLE `matchrelationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`fromCompoId`,`toCompoId`);

--
-- Indexes for table `memberof`
--
ALTER TABLE `memberof`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`,`clanId`,`stepinId`);

--
-- Indexes for table `memberofchat`
--
ALTER TABLE `memberofchat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`,`chatId`);

--
-- Indexes for table `participantof`
--
ALTER TABLE `participantof`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`clanId`,`compoId`);

--
-- Indexes for table `participantofmatch`
--
ALTER TABLE `participantofmatch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`participantId`,`matchId`);

--
-- Indexes for table `qualificationQueue`
--
ALTER TABLE `qualificationQueue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `readyhandlers`
--
ALTER TABLE `readyhandlers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`compoId`);

--
-- Indexes for table `readyusers`
--
ALTER TABLE `readyusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`,`matchId`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voteoptions`
--
ALTER TABLE `voteoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`compoId`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`consumerId`,`voteOptionId`);

--
-- Indexes for table `servers`
--
ALTER TABLE `steamids`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatmessages`
--
ALTER TABLE `chatmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clans`
--
ALTER TABLE `clans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compos`
--
ALTER TABLE `compos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matchmetadata`
--
ALTER TABLE `matchmetadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matchrelationships`
--
ALTER TABLE `matchrelationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberof`
--
ALTER TABLE `memberof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberofchat`
--
ALTER TABLE `memberofchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participantof`
--
ALTER TABLE `participantof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participantofmatch`
--
ALTER TABLE `participantofmatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qualificationQueue`
--
ALTER TABLE `qualificationQueue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `readyhandlers`
--
ALTER TABLE `readyhandlers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `readyusers`
--
ALTER TABLE `readyusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voteoptions`
--
ALTER TABLE `voteoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voteoptions`
--
ALTER TABLE `steamids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
