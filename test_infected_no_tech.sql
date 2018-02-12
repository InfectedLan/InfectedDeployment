-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 05. Des, 2017 00:35 AM
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
-- Database: `test_infected_no_tech`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `networkaccess`
--

CREATE TABLE `networkaccess` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `teamId` int(11) DEFAULT NULL,
  `networkId` int(11) NOT NULL,
  `networkTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `networkaccess`
--

INSERT INTO `networkaccess` (`id`, `userId`, `groupId`, `teamId`, `networkId`, `networkTypeId`) VALUES
(2, NULL, 0, NULL, 5, 2),
(3, NULL, 53, NULL, 7, 1),
(4, NULL, 53, NULL, 7, 2),
(1, 0, NULL, NULL, 6, 2);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `networks`
--

CREATE TABLE `networks` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `vlanId` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `networks`
--

INSERT INTO `networks` (`id`, `name`, `title`, `description`, `vlanId`) VALUES
(1, 'multisal', 'Multisal', 'Nettet i multisalen.', 8),
(2, 'vestibyle', 'Vestibyle', 'Nettet i vestibylen.', 16),
(3, 'ytre-vestibyle', 'Ytre-Vestibyle', 'Nettet i ytre vestiyle.', 24),
(4, 'crew', 'Crew', 'Crewnett for alle i crew.', 32),
(5, 'crew-wireless', 'Crew-Wireless', 'Trådløst nett for alle i crewet.', 40),
(6, 'participants-wireless', 'Participants-Wireless', 'Trådløst men begrenset nett for deltakere, tiltenkt mobilbruk etc.', 48),
(7, 'noc', 'NOC', 'Nettverket tilhørende Tech, mer tilganger, ikke for vanlige brukere.', 240),
(8, 'servers', 'Servers', 'Servernett, i dette nettet står alle våre servere.', 248),
(9, 'management', 'Management', 'Management nett, dette bruker vi for å nå utstyr, ingen internett-tilgang, det skal ikke stå klienter i dette.', 1024);


-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `nfccards`
--

CREATE TABLE `nfccards` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `nfcId` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `nfccards` (`id`, `userId`, `eventId`, `nfcId`) VALUES
(1, 1, 10, 'E004000000000000');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `nfcgates`
--

CREATE TABLE `nfcunits` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `pcbId` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `fromRoom` int(11),
  `toRoom` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `nfcunits`
--

INSERT INTO `nfcunits` (`id`, `eventId`, `pcbId`, `name`, `type`, `fromRoom`, `toRoom`) VALUES
(1, 10, 'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', 'Test ticketsale', 1, NULL, NULL),
(2, 10, 'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA', 'Test gate', 0, 3, 1),
(3, 10, 'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0', 'Test POS', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `timeLimited` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `networktypes`
--

INSERT INTO `rooms` (`id`, `name`, `timeLimited`) VALUES
(1, 'Crewomeråde', 0),
(2, 'Crewsoverom', 0),
(3, 'Deltageromeråde', 0),
(4, 'Deltagersoverom', 0),
(5, 'Ute', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `roomPermissions`
--

CREATE TABLE `roomPermissions` (
  `id` int(11) NOT NULL,
  `roomId` int(11) NOT NULL,
  `permissionType` int(11) NOT NULL,
  `permissionArg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `bongEntitlements`
--

INSERT INTO `roomPermissions` (`id`, `roomId`, `permissionType`, `permissionArg`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `nfclog`
--

CREATE TABLE `nfclog` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `unitId` int(11) NOT NULL,
  `cardId` int(11) NOT NULL,
  `legalPass` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `networktypes`
--

CREATE TABLE `networktypes` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` text NOT NULL,
  `portType` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Dataark for tabell `networktypes`
--

INSERT INTO `networktypes` (`id`, `name`, `title`, `portType`) VALUES
(1, 'ethernet', 'Ethernet', 'Ethernet'),
(2, 'wireless', 'Wireless', 'Wireless-802.11');

--
-- Tabellstruktur for tabell `discordMessageQueue`
--

CREATE TABLE `discordMessageQueue` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `read` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `networkaccess`
--
ALTER TABLE `networkaccess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`,`groupId`,`teamId`,`networkId`,`networkTypeId`) USING BTREE;

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`vlanId`) USING BTREE;

--
-- Indexes for table `networktypes`
--
ALTER TABLE `networktypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nfccards`
--
ALTER TABLE `nfccards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nfcgates`
--
ALTER TABLE `nfcunits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nfclog`
--
ALTER TABLE `nfclog`
  ADD PRIMARY KEY (`id`);

  --
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

  --
-- Indexes for table `roomPermissions`
--
ALTER TABLE `roomPermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discordMessageQueue`
--
ALTER TABLE `discordMessageQueue`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `networkaccess`
--
ALTER TABLE `networkaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `networktypes`
--
ALTER TABLE `networktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nfccards`
--
ALTER TABLE `nfccards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nfcgates`
--
ALTER TABLE `nfcunits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

  --
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roomPermissions`
--
ALTER TABLE `roomPermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nfclog`
--
ALTER TABLE `nfclog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discordMessageQueue`
--
ALTER TABLE `discordMessageQueue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
