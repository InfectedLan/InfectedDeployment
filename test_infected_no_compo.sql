-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2016 at 12:32 PM
-- Server version: 5.6.28-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `chatmessages`
--

CREATE TABLE IF NOT EXISTS `chatmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `chatId` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatmessages`
--

INSERT INTO `chatmessages` (`id`, `userId`, `chatId`, `time`, `message`) VALUES
(1, 1, 7, '2016-02-14 17:52:44', 'Hei warbo :)'),
(2, 3, 7, '2016-02-14 17:52:56', 'yo'),
(3, 1, 7, '2016-02-14 17:53:01', 'Funker fett, dette'),
(4, 1, 9, '2016-02-14 17:56:14', 'Men'),
(5, 1, 9, '2016-02-14 17:56:18', 'Se her, match chat!'),
(6, 3, 9, '2016-02-14 17:59:00', 'hei :)');

-- --------------------------------------------------------

--
-- Table structure for table `steamids`
--

CREATE TABLE IF NOT EXISTS `steamids` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `steamid` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE IF NOT EXISTS `chats` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `name`, `title`) VALUES
(7, 'csgo-chat', 'csgo'),
(8, 'lol-chat', 'lol'),
(9, 'compo-chat', 'Compo chat');

-- --------------------------------------------------------

--
-- Table structure for table `clans`
--

CREATE TABLE IF NOT EXISTS `clans` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `tag` varchar(32) NOT NULL,
  `chiefId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clans`
--

INSERT INTO `clans` (`id`, `eventId`, `name`, `tag`, `chiefId`) VALUES
(1, 6, 'The yolo swaggers', '#SWAG', 1),
(2, 6, 'Test01', 'Test01', 3);

-- --------------------------------------------------------

--
-- Table structure for table `compos`
--

CREATE TABLE IF NOT EXISTS `compos` (
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
  `connectionType` int(11) NOT NULL,
  `requiresSteamId` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compos`
--

INSERT INTO `compos` (`id`, `eventId`, `name`, `title`, `tag`, `description`, `pluginName`, `price`, `startTime`, `registrationEndTime`, `teamSize`, `participantLimit`, `chatId`, `connectionType`) VALUES
(1, 3, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', 'CS:GO', '', '5on5', 0, '2014-09-26 18:00:00', '2014-09-26 18:00:00', 5, 0, 0, 0),
(2, 3, 'league-of-legends', 'League of Legends', 'LoL', '', '', 0, '2014-09-26 18:00:00', '2014-09-26 18:00:00', 5, 0, 0, 0),
(3, 4, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', 'CS:GO', '', '5on5', 0, '2015-02-14 18:00:00', '2015-02-14 18:00:00', 5, 0, 0, 0),
(4, 4, 'league-of-legends', 'League of Legends', 'LoL', '', '', 0, '2015-02-14 18:00:00', '2015-02-14 18:00:00', 5, 0, 0, 0),
(5, 5, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', 'CS:GO', '1.plass 7500,- 2.plass 2500,- maks 16 lag', '5on5', 0, '2015-09-25 21:45:00', '2015-09-25 20:00:00', 5, 16, 0, 0),
(6, 5, 'league-of-legends', 'League of Legends', 'LoL', '1.plass 7500,- 2.plass 2500,- maks 16 lag', '5on5', 0, '2015-09-25 21:00:00', '2015-09-25 19:30:00', 5, 16, 0, 0),
(7, 6, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', 'CS:GO', '1.plass 7500,- 2.plass 2500,- maks 16 lag', 'csgo', 0, '2015-09-25 21:45:00', '2015-09-25 20:00:00', 5, 16, 7, 0),
(8, 6, 'league-of-legends', 'League of Legends', 'LoL', '1.plass 7500,- 2.plass 2500,- maks 16 lag', '5on5', 0, '2015-09-25 21:00:00', '2015-09-25 19:30:00', 5, 16, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE IF NOT EXISTS `invites` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `clanId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE IF NOT EXISTS `matches` (
  `id` int(11) NOT NULL,
  `scheduledTime` datetime NOT NULL,
  `connectDetails` text NOT NULL,
  `state` int(11) NOT NULL,
  `winnerId` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `bracketOffset` int(8) NOT NULL,
  `chatId` int(11) NOT NULL,
  `bracket` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `scheduledTime`, `connectDetails`, `state`, `winnerId`, `compoId`, `bracketOffset`, `chatId`, `bracket`) VALUES
(1, '2016-02-14 17:54:00', '', 2, 0, 7, 0, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `matchmetadata`
--

CREATE TABLE IF NOT EXISTS `matchmetadata` (
  `id` int(11) NOT NULL,
  `match` int(11) NOT NULL,
  `key` varchar(32) NOT NULL,
  `value` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matchmetadata`
--

INSERT INTO `matchmetadata` (`id`, `match`, `key`, `value`) VALUES
(1, 1, 'tag', 'grp_1');

-- --------------------------------------------------------

--
-- Table structure for table `matchrelationships`
--

CREATE TABLE IF NOT EXISTS `matchrelationships` (
  `id` int(11) NOT NULL,
  `fromCompoId` int(11) NOT NULL,
  `toCompoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `memberof`
--

CREATE TABLE IF NOT EXISTS `memberof` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `clanId` int(11) NOT NULL,
  `stepinId` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberof`
--

INSERT INTO `memberof` (`id`, `userId`, `clanId`, `stepinId`) VALUES
(1, 1, 1, 0),
(2, 3, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `memberofchat`
--

CREATE TABLE IF NOT EXISTS `memberofchat` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `chatId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberofchat`
--

INSERT INTO `memberofchat` (`id`, `userId`, `chatId`) VALUES
(1, 1, 1),
(3, 1, 7),
(5, 1, 9),
(2, 3, 1),
(4, 3, 7),
(6, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `participantof`
--

CREATE TABLE IF NOT EXISTS `participantof` (
  `id` int(11) NOT NULL,
  `clanId` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `qualified` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participantof`
--

INSERT INTO `participantof` (`id`, `clanId`, `compoId`, `qualified`) VALUES
(1, 1, 7, 1),
(2, 2, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `participantofmatch`
--

CREATE TABLE IF NOT EXISTS `participantofmatch` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participantofmatch`
--

INSERT INTO `participantofmatch` (`id`, `type`, `participantId`, `matchId`) VALUES
(1, 0, 1, 1),
(2, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qualificationQueue`
--

CREATE TABLE IF NOT EXISTS `qualificationQueue` (
  `id` int(11) NOT NULL,
  `clan` int(11) NOT NULL,
  `compo` int(11) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `readyhandlers`
--

CREATE TABLE IF NOT EXISTS `readyhandlers` (
  `id` int(11) NOT NULL,
  `compoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `readyusers`
--

CREATE TABLE IF NOT EXISTS `readyusers` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `readyusers`
--

INSERT INTO `readyusers` (`id`, `userId`, `matchId`) VALUES
(1, 1, 1),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `id` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `humanName` text NOT NULL,
  `connectionData` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voteoptions`
--

CREATE TABLE IF NOT EXISTS `voteoptions` (
  `id` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `thumbnailUrl` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL,
  `consumerId` int(11) NOT NULL,
  `voteOptionId` int(11) NOT NULL
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
-- Indexes for table `steamids`
--

ALTER TABLE `steamids`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatmessages`
--
ALTER TABLE `chatmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `clans`
--
ALTER TABLE `clans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `compos`
--
ALTER TABLE `compos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `steamids`
--
ALTER TABLE `steamids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `matchmetadata`
--
ALTER TABLE `matchmetadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `matchrelationships`
--
ALTER TABLE `matchrelationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `memberof`
--
ALTER TABLE `memberof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `memberofchat`
--
ALTER TABLE `memberofchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `participantof`
--
ALTER TABLE `participantof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `participantofmatch`
--
ALTER TABLE `participantofmatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
