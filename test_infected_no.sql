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
-- Database: `test_infected_no`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `emergencycontacts`
--

CREATE TABLE `emergencycontacts` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `theme` varchar(16) NOT NULL,
  `locationId` int(11) NOT NULL,
  `participants` int(11) NOT NULL,
  `bookingTime` datetime NOT NULL,
  `prioritySeatingTime` datetime NOT NULL,
  `seatingTime` datetime NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `seatmapId` int(11) NOT NULL,
  `ticketTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `events`
--

INSERT INTO `events` (`id`, `theme`, `locationId`, `participants`, `bookingTime`, `prioritySeatingTime`, `seatingTime`, `startTime`, `endTime`, `seatmapId`, `ticketTypeId`) VALUES
(1, 'Arcade', 1, 322, '2013-08-27 18:00:00', '2013-08-27 18:00:00', '2013-08-27 18:00:00', '2013-09-27 18:00:00', '2013-09-29 12:00:00', 1, 1),
(2, '', 1, 335, '2014-01-14 18:00:00', '2014-01-14 18:00:00', '2014-01-14 18:00:00', '2014-02-14 18:00:00', '2014-02-16 12:00:00', 2, 1),
(3, '', 1, 370, '2014-08-28 18:00:00', '2014-08-28 18:00:00', '2014-08-28 18:00:00', '2014-09-26 18:00:00', '2014-09-28 12:00:00', 3, 1),
(4, '', 1, 368, '2015-01-14 18:00:00', '2015-01-14 18:00:00', '2015-01-14 18:00:00', '2015-02-13 18:00:00', '2015-02-15 12:00:00', 4, 1),
(5, '', 1, 386, '2015-08-25 18:00:00', '2015-08-25 18:00:00', '2015-08-25 18:00:00', '2015-09-25 18:00:00', '2015-09-27 12:00:00', 5, 1),
(6, '', 1, 402, '2016-01-20 18:00:00', '2016-01-20 18:00:00', '2016-01-20 18:00:00', '2016-02-19 18:00:00', '2016-02-21 12:00:00', 6, 1),
(7, '', 1, 400, '2016-08-30 16:00:00', '2016-08-30 16:30:00', '2016-08-30 17:00:00', '2016-09-30 18:00:00', '2016-10-02 12:00:00', 7, 1),
(8, '', 1, 400, '2017-01-17 18:00:00', '2017-01-17 18:30:00', '2017-01-17 19:00:00', '2017-02-17 18:00:00', '2017-02-19 12:00:00', 8, 1),
(9, '', 1, 400, '2017-08-25 18:00:00', '2017-08-25 18:30:00', '2017-08-25 19:00:00', '2017-09-29 18:00:00', '2017-10-01 12:00:00', 9, 1),
(10, '', 1, 400, '2018-01-16 18:00:00', '2018-01-16 18:30:00', '2018-01-16 19:00:00', '2018-02-16 18:00:00', '2018-02-18 12:00:00', 10, 1),
(11, '', 1, 400, '2018-09-05 18:00:00', '2018-09-05 18:30:00', '2018-09-05 19:00:00', '2018-10-05 18:00:00', '2018-10-07 12:00:00', 11, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `locations`
--

INSERT INTO `locations` (`id`, `name`, `title`) VALUES
(1, 'kulturhuset', 'Kulturhuset');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `passwordresetcodes`
--

CREATE TABLE `passwordresetcodes` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `code` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `registrationcodes`
--

CREATE TABLE `registrationcodes` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `code` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `syslogs`
--

CREATE TABLE `syslogs` (
  `id` int(12) NOT NULL,
  `source` varchar(32) NOT NULL,
  `message` varchar(64) NOT NULL,
  `severity` int(12) NOT NULL,
  `metadata` text NOT NULL,
  `date` datetime NOT NULL,
  `userId` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `object` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `userfriends`
--

CREATE TABLE `userfriends` (
  `id` int(11) NOT NULL,
  `toId` int(11) NOT NULL,
  `fromId` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `userfriends`
--

INSERT INTO `userfriends` (`id`, `toId`, `fromId`, `datetime`, `state`) VALUES
(1, 1, 2, '0000-00-00 00:00:00', 1),
(2, 2, 4, '0000-00-00 00:00:00', 0);

--
-- Tabellstruktur for tabell `usernotes`
--

CREATE TABLE `usernotes` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `useroptions`
--

CREATE TABLE `useroptions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `privatePhone` tinyint(1) NOT NULL,
  `reserveFromNotifications` tinyint(1) NOT NULL,
  `easterEgg` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `userpermissions`
--

INSERT INTO `userpermissions` (`id`, `eventId`, `userId`, `permissionId`) VALUES
(1, 0, 1, 1),
(2, 0, 2, 1);


-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `bongTypes`
--

CREATE TABLE `bongTypes` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `eventId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `networktypes`
--

INSERT INTO `bongTypes` (`id`, `name`, `description`, `eventId`) VALUES
(1, 'Brus', 'Fanta eller cola', 10),
(2, 'Pølse', '', 10),
(3, 'Vaffel', '', 10);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `bongEntitlements`
--

CREATE TABLE `bongEntitlements` (
  `id` int(11) NOT NULL,
  `bongTypeId` int(11) NOT NULL,
  `entitlementType` int(11) NOT NULL,
  `entitlementArg` int(11) NOT NULL,
  `entitlementAmt` int(11) NOT NULL,
  `appendType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `bongEntitlements`
--

INSERT INTO `bongEntitlements` (`id`, `bongTypeId`, `entitlementType`, `entitlementArg`, `entitlementAmt`, `appendType`) VALUES
(1, 1, 1, 0, 6, 1),
(2, 2, 1, 0, 2, 1),
(3, 3, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `bongTypes`
--

CREATE TABLE `bongTransactions` (
  `id` int(11) NOT NULL,
  `bongType` int(32) NOT NULL,
  `amt` int(11) NOT NULL,
  `transactionHandler` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` binary(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `address` varchar(32) NOT NULL,
  `postalcode` int(4) NOT NULL,
  `countryId` int(11) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `registerdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `birthdate`, `gender`, `phone`, `address`, `postalcode`, `countryId`, `nickname`, `registerdate`) VALUES
(1, 'Liam', 'Svanåsbakken Crouch', 'petterroea', 0x37313031386564333361666164663739656338653564323232633431303331636330326564653936393632396331333430646564626665386433313033306362, 'me@petterroea.com', '1998-03-27', 0, '94132789', 'Otto valstads vei 8e', 1395, 0, 'petterroea', '2014-08-28 18:00:00'),
(2, 'Halvor', 'Lyche Strandvoll', 'halvors', 0x63333839303036363837343164633436353532353365653166643062366137303063626563653936396262376166313462363963333039643535623931653132, 'halvors@halvors.org', '1995-01-17', 0, '97114646', 'Fiolveien 20', 1395, 0, 'halvors', '2014-08-28 18:00:00'),
(5, 'lois', 'williams', 'test1', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(6, 'lois', 'williams', 'test2', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(7, 'kylie', 'warren', 'test3', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(8, 'marc', 'morrison', 'test4', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(9, 'lucas', 'anderson', 'test5', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(10, 'william', 'walters', 'test6', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(11, 'riley', 'carroll', 'test7', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(12, 'brittany', 'davis', 'test8', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(13, 'terry', 'obrien', 'test9', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(14, 'nellie', 'oliver', 'test10', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(15, 'sherri', 'lowe', 'test11', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(16, 'anthony', 'riley', 'test12', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(17, 'danny', 'martin', 'test13', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(18, 'eileen', 'powell', 'test14', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(19, 'isaac', 'smith', 'test15', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(20, 'anthony', 'stephens', 'test16', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(21, 'wade', 'beck', 'test17', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00'),
(22, 'vickie', 'sanchez', 'test18', 0x39663836643038313838346337643635396132666561613063353561643031356133626634663162326230623832326364313564366331356230663030613038, 'spam@petterroea.com', '1990-01-01', 0, '999999999', 'Gokkistan', 1345, 0, 'testuser', '2015-01-28 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emergencycontacts`
--
ALTER TABLE `emergencycontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`locationId`,`seatmapId`,`ticketTypeId`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passwordresetcodes`
--
ALTER TABLE `passwordresetcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`,`code`);

--
-- Indexes for table `registrationcodes`
--
ALTER TABLE `registrationcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`);

--
-- Indexes for table `syslogs`
--
ALTER TABLE `syslogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userfriends`
--
ALTER TABLE `userfriends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`toId`,`fromId`);

--
-- Indexes for table `usernotes`
--
ALTER TABLE `usernotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`);


--
-- Indexes for table `useroptions`
--
ALTER TABLE `useroptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`userId`,`privatePhone`,`reserveFromNotifications`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`userId`,`permissionId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`username`,`email`,`birthdate`,`gender`,`phone`,`postalcode`,`countryId`,`registerdate`);
ALTER TABLE `users` ADD FULLTEXT KEY `search` (`firstname`,`lastname`,`username`,`nickname`);


--
-- Indexes for table `bongTypes`
--
ALTER TABLE `bongTypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bongTransactions`
--
ALTER TABLE `bongTransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bongTransactions`
--
ALTER TABLE `bongEntitlements`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emergencycontacts`
--
ALTER TABLE `emergencycontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `passwordresetcodes`
--
ALTER TABLE `passwordresetcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `registrationcodes`
--
ALTER TABLE `registrationcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `syslogs`
--
ALTER TABLE `syslogs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `userfriends`
--
ALTER TABLE `userfriends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
--
-- AUTO_INCREMENT for table `usernotes`
--
ALTER TABLE `usernotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `useroptions`
--
ALTER TABLE `useroptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `bongTypes`
--
ALTER TABLE `bongTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

--
-- AUTO_INCREMENT for table `bongTypes`
--
ALTER TABLE `bongEntitlements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

--
-- AUTO_INCREMENT for table `bongTransactions`
--
ALTER TABLE `bongTransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
