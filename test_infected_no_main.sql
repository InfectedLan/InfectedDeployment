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
-- Database: `test_infected_no_main`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `startTime` datetime NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `agenda`
--

INSERT INTO `agenda` (`id`, `eventId`, `name`, `title`, `description`, `startTime`, `published`) VALUES
(1, 3, 'csgo', 'CS:GO', 'Higher bracket r4 og Lower bracket r4', '2014-09-27 16:30:00', 1),
(2, 3, 'csgo', 'CS:GO', 'Lower bracket r5', '2014-09-27 18:00:00', 1),
(3, 3, 'spis-og-spy', 'Spis og Spy', 'Scenen i Multisalen', '2014-09-27 17:30:00', 1),
(4, 3, 'csgo', 'CS:GO', 'Lower bracket r6', '2014-09-27 19:00:00', 1),
(5, 3, 'csgo', 'CS:GO', 'Finale på scenen', '2014-09-27 23:00:00', 1),
(6, 3, 'league-of-legends', 'League of Legends', 'Finale på scenen', '2014-09-27 21:00:00', 1),
(7, 3, 'lanet-er-over', 'Lanet er over!', 'Nett og strøm blir tatt ned kl. 12:00', '2014-09-28 12:00:00', 1),
(10, 4, 'spis-og-spy', 'Spis og Spy', 'Scenen i Multisalen', '2015-02-14 17:30:00', 1),
(12, 4, 'csgo', 'CS:GO', 'Finale på scenen', '2015-02-14 21:30:00', 1),
(13, 4, 'league-of-legends', 'League of Legends', 'Finale på scenen', '2015-02-14 23:00:00', 1),
(14, 4, 'lanet-er-over', 'Lanet er over!', 'Nett og strøm blir tatt ned kl. 12:00', '2015-02-15 12:00:00', 1),
(41, 4, 'league-of-legends', 'League of Legends', 'Lower bracket r4', '2015-02-14 14:00:00', 1),
(42, 4, 'league-of-legends', 'League of Legends', 'Lower bracket r6', '2015-02-14 16:00:00', 1),
(43, 4, 'league-of-legends', 'League of Legends', 'Lower bracket r5', '2015-02-14 14:00:00', 1),
(44, 4, 'league-of-legends', 'League of Legends', 'Lower bracket r6', '2015-02-14 17:00:00', 0),
(45, 4, 'cs:go', 'CS:GO', 'Higher bracket r1', '2015-02-14 12:00:00', 0),
(46, 4, 'cs:go', 'CS:GO', 'Infomøte - Ved game', '2015-02-14 11:00:00', 0),
(47, 4, 'cs:go', 'CS:GO', 'Higher bracket r2 og Lower bracket r1', '2015-02-14 13:00:00', 0),
(48, 4, 'cs:go', 'CS:GO', 'Lower bracket r2', '2015-02-14 14:00:00', 0),
(49, 4, 'cs:go', 'CS:GO', 'Higher bracket r3 og Lower bracket r3', '2015-02-14 16:00:00', 1),
(50, 4, 'cs:go', 'CS:GO', 'Higher bracket r4 og Lower bracket r4', '2015-02-14 18:00:00', 1),
(52, 4, 'cs:go', 'CS:GO', 'Lower bracket r5', '2015-02-14 19:00:00', 1),
(53, 4, 'cs:go', 'CS:GO', 'Lower bracket Finale', '2015-02-14 20:00:00', 1),
(54, 4, 'league-of-legends', 'League of Legends', 'Lower bracket r7', '2015-02-14 18:30:00', 0),
(55, 4, 'league-of-legends', 'League of Legends', 'Higher bracket r5 og Lower bracket r7', '2015-02-14 18:00:00', 1),
(56, 4, 'league-of-legends', 'League of Legends', 'Lower bracket r5', '2015-02-14 19:00:00', 0),
(57, 4, 'league-of-legends', 'League of Legends', 'Lower bracket Finale', '2015-02-14 20:00:00', 1),
(58, 4, 'pause', 'Pause', 'Matpause for Compo deltakere', '2015-02-14 17:00:00', 1),
(59, 4, 'påmeldingsfrist', 'Påmeldingsfrist', 'Påmeldingsfrist for både cs og lol', '2015-02-13 21:00:00', 1),
(61, 5, 'csgo', 'CS:GO', 'Finale på scenen', '2015-09-26 21:30:00', 1),
(62, 5, 'league-of-legends', 'League of Legends', 'Finale på scenen', '2015-09-26 23:59:00', 1),
(63, 5, 'lanet-er-over', 'Lanet er over!', 'Nett og strøm blir tatt ned kl. 12:00', '2015-09-27 12:00:00', 1),
(64, 5, 'league-of-legends', 'CS:GO', 'Gruppespill Runde 3', '2015-09-26 14:00:00', 1),
(65, 5, 'league-of-legends', 'League of Legends', 'Infomøte - Ved game', '2015-09-26 10:45:00', 1),
(66, 5, 'league-of-legends', 'League of Legends', 'Gruppespill Runde 1', '2015-09-26 11:00:00', 1),
(67, 5, 'league-of-legends', 'League of Legends', 'Gruppespill Runde 3', '2015-09-26 13:30:00', 1),
(68, 5, 'cs:go', 'CS:GO', 'Gruppespill Runde 1', '2015-09-26 11:30:00', 1),
(69, 5, 'cs:go', 'CS:GO', 'Infomøte - Ved game', '2015-09-26 11:15:00', 1),
(70, 5, 'cs:go', 'CS:GO', 'Gruppespill Runde 2', '2015-09-26 13:00:00', 1),
(71, 5, 'cs:go', 'League of Legends', 'Gruppespill Runde 2', '2015-09-26 12:30:00', 1),
(72, 5, 'cs:go', 'CS:GO', 'Playoff Runde 1', '2015-09-26 15:00:00', 1),
(73, 5, 'cs:go', 'CS:GO', 'Playoff Runde 2', '2015-09-26 16:00:00', 1),
(74, 5, 'cs:go', 'CS:GO', 'Playoff Runde 3', '2015-09-26 17:00:00', 1),
(75, 5, 'cs:go', 'CS:GO', 'Lower bracket Finale', '2015-09-26 19:00:00', 1),
(76, 5, 'league-of-legends', 'League of Legends', 'Playoff Runde 3', '2015-09-26 17:30:00', 1),
(77, 5, 'league-of-legends', 'League of Legends', 'Playoff Runde 1', '2015-09-26 14:30:00', 1),
(78, 5, 'league-of-legends', 'League of Legends', 'Playoff Runde 2', '2015-09-26 15:30:00', 1),
(79, 5, 'league-of-legends', 'League of Legends', 'Lower bracket Finale', '2015-09-26 19:30:00', 1),
(81, 5, 'påmeldingsfrist', 'Påmeldingsfrist', 'Påmeldingsfrist for både cs og lol', '2015-09-25 20:00:00', 1),
(91, 5, 'cs:go', 'CS:GO', 'Playoff Runde 4\r\n', '2015-09-26 18:00:00', 1),
(92, 5, 'league-of-legends', 'League of Legends', 'Playoff Runde 4\r\n', '2015-09-26 18:30:00', 1),
(93, 6, 'csgo', 'CS:GO', 'Finale på scenen', '2016-02-20 21:30:00', 1),
(94, 6, 'league-of-legends', 'League of Legends', 'Finale på scenen', '2016-02-20 23:59:00', 1),
(95, 6, 'lanet-er-over', 'Lanet er over!', 'Nett og strøm blir tatt ned kl. 12:00', '2016-02-21 12:00:00', 1),
(96, 6, 'league-of-legends', 'CS:GO', 'Gruppespill Runde 3', '2016-02-20 12:00:00', 1),
(97, 6, 'league-of-legends', 'League of Legends', 'Infomøte - Ved game', '2016-02-19 20:15:00', 1),
(98, 6, 'league-of-legends', 'League of Legends', 'Gruppespill Runde 1', '2016-02-19 20:30:00', 1),
(99, 6, 'league-of-legends', 'League of Legends', 'Gruppespill Runde 3', '2016-02-19 22:30:00', 1),
(100, 6, 'cs:go', 'CS:GO', 'Gruppespill Runde 1', '2016-02-19 21:00:00', 1),
(101, 6, 'cs:go', 'CS:GO', 'Infomøte - Ved game', '2016-02-19 20:45:00', 1),
(102, 6, 'cs:go', 'CS:GO', 'Gruppespill Runde 2', '2016-02-19 22:00:00', 1),
(103, 6, 'cs:go', 'League of Legends', 'Gruppespill Runde 2', '2016-02-19 21:30:00', 1),
(104, 6, 'cs:go', 'CS:GO', 'Playoff Runde 1', '2016-02-20 13:15:00', 1),
(105, 6, 'cs:go', 'CS:GO', 'Playoff Runde 2', '2016-02-20 14:30:00', 1),
(106, 6, 'cs:go', 'CS:GO', 'Playoff Runde 3', '2016-02-20 16:00:00', 1),
(107, 6, 'cs:go', 'CS:GO', 'Lower bracket Finale', '2016-02-20 19:00:00', 1),
(108, 6, 'league-of-legends', 'League of Legends', 'Playoff Runde 3', '2016-02-20 15:30:00', 1),
(109, 6, 'league-of-legends', 'League of Legends', 'Playoff Runde 1', '2016-02-20 12:30:00', 1),
(110, 6, 'league-of-legends', 'League of Legends', 'Playoff Runde 2', '2016-02-20 14:00:00', 1),
(111, 6, 'league-of-legends', 'League of Legends', 'Lower bracket Finale', '2016-02-20 19:30:00', 1),
(112, 6, 'påmeldingsfrist', 'Påmeldingsfrist', 'Påmeldingsfrist for både cs og lol', '2016-02-19 19:30:00', 1),
(113, 6, 'cs:go', 'CS:GO', 'Playoff Runde 4\r\n', '2016-02-20 17:30:00', 1),
(114, 6, 'league-of-legends', 'League of Legends', 'Playoff Runde 4\r\n', '2016-02-20 18:00:00', 1),
(115, 7, 'csgo', 'CS:GO', 'Finale', '2016-10-01 20:30:00', 1),
(116, 7, 'league-of-legends', 'League of Legends', 'Finale', '2016-10-01 23:00:00', 1),
(117, 7, 'lanet-er-over', 'Lanet er over!', 'Nett og strøm blir tatt ned kl. 12:00', '2016-10-02 12:00:00', 1),
(118, 7, 'league-of-legends', 'CS:GO', 'Gruppespill Runde 3', '2016-10-01 12:00:00', 1),
(119, 7, 'league-of-legends', 'League of Legends', 'Infomøte - Ved game', '2016-09-30 20:15:00', 1),
(120, 7, 'league-of-legends', 'League of Legends', 'Gruppespill Runde 1', '2016-09-30 20:30:00', 1),
(121, 7, 'league-of-legends', 'League of Legends', 'Gruppespill Runde 3', '2016-09-30 22:30:00', 1),
(122, 7, 'cs:go', 'CS:GO', 'Gruppespill Runde 1', '2016-09-30 21:00:00', 1),
(123, 7, 'cs:go', 'CS:GO', 'Infomøte - Ved game (Obligatorisk)', '2016-09-30 20:45:00', 1),
(124, 7, 'cs:go', 'CS:GO', 'Gruppespill Runde 2', '2016-09-30 22:30:00', 1),
(125, 7, 'cs:go', 'League of Legends', 'Gruppespill Runde 2', '2016-09-30 21:30:00', 1),
(126, 7, 'cs:go', 'CS:GO', 'Playoff Runde 1', '2016-10-01 13:15:00', 1),
(127, 7, 'cs:go', 'CS:GO', 'Playoff Runde 2', '2016-10-01 14:30:00', 1),
(128, 7, 'cs:go', 'CS:GO', 'Playoff Runde 3', '2016-10-01 15:45:00', 1),
(129, 7, 'cs:go', 'CS:GO', 'Lower bracket Finale', '2016-10-01 18:30:00', 1),
(130, 7, 'league-of-legends', 'League of Legends', 'Playoff Runde 3', '2016-10-01 15:30:00', 1),
(131, 7, 'league-of-legends', 'League of Legends', 'Playoff Runde 1', '2016-10-01 12:30:00', 1),
(132, 7, 'league-of-legends', 'League of Legends', 'Playoff Runde 2', '2016-10-01 14:00:00', 1),
(133, 7, 'league-of-legends', 'League of Legends', 'Lower bracket Finale', '2016-10-01 19:30:00', 1),
(134, 7, 'påmeldingsfrist', 'Påmeldingsfrist', 'Påmeldingsfrist for både cs og lol', '2016-09-30 20:00:00', 1),
(135, 7, 'cs:go', 'CS:GO', 'Playoff Runde 4\r\n', '2016-10-01 17:00:00', 1),
(136, 7, 'league-of-legends', 'League of Legends', 'Playoff Runde 4\r\n', '2016-10-01 18:00:00', 1),
(164, 8, 'cs:go---grand-final', 'CS:GO - Grand Final', '<p>Vises p&aring; storskjerm i Radar Scene med kommentatorer</p>\r\n', '2017-02-19 01:00:29', 1),
(166, 9, 'info-møte-league-of-legends', 'Info Møte League of Legends', '<p>Alle lag møttes for info på Radar Scene</p>\r\n', '2017-09-29 20:15:00', 1),
(167, 9, 'info-møte-cs:go', 'Info Møte CS:GO', '<p>Alle lag-ledere møttes for info på Radar Scene</p><br />', '2017-09-30 10:30:00', 1),
(168, 9, 'league-of-legends-gruppespill-runde-1', 'League of Legends Gruppespill Runde 1', '<p>F&oslash;rste runde i gruppespillet</p>\r\n', '2017-09-29 20:45:55', 1),
(169, 9, 'league-of-legends-gruppespill-runde-2', 'League of Legends Gruppespill Runde 2', '<p>Andre&nbsp;runde i gruppespillet<br />\r\n&nbsp;</p>\r\n', '2017-09-29 21:45:35', 1),
(170, 9, 'league-of-legends-gruppespill-runde-3', 'League of Legends Gruppespill Runde 3', '<p>Siste runde i gruppespillet</p>\r\n', '2017-09-29 22:45:59', 1),
(171, 9, 'league-of-legends-playoffs-runde-1', 'League of Legends Playoffs Runde 1', '<p>F&oslash;rste runde i playoffs (BO3)</p>\r\n', '2017-09-29 23:45:57', 1),
(172, 9, 'cs:go-gruppespill-runde-1', 'CS:GO Gruppespill Runde 1', '<p>F&oslash;rste runde i gruppespillet</p>\r\n', '2017-09-29 21:30:42', 1),
(173, 9, 'cs:go-gruppespill-runde-2', 'CS:GO Gruppespill Runde 2', '<p>Andre runde i gruppespillet</p>\r\n', '2017-09-29 23:00:39', 1),
(174, 9, 'cs:go-gruppespill-runde-2', 'CS:GO Gruppespill Runde 2', '<p>Siste runde i gruppespillet</p>\r\n', '2017-09-30 00:30:09', 1),
(175, 9, 'lol-playoffs-wb-runde-2', 'LoL Playoffs WB Runde 2', '<p>Andre&nbsp;runde i winner brackets&nbsp;(BO3)</p>\r\n', '2017-09-30 13:00:20', 1),
(176, 9, 'lol-winner-brackets-finale', 'LoL Winner Brackets Finale', '<p>Finale i winner brackets&nbsp;(BO3)</p>\r\n', '2017-09-30 16:00:46', 1),
(177, 9, 'cs:go-runde-1', 'CS:GO Runde 1', '<p>CS:GO Runde 1</p>\r\n', '2017-09-30 11:00:44', 1),
(178, 9, 'cs:go-runde-2', 'CS:GO Runde 2', '<p>CS:GO Winner Bracket runde 2 og Looser Bracket runde 1</p>\r\n', '2017-09-30 12:30:08', 1),
(179, 9, 'lol-playoffs-lb-runde-1', 'LoL Playoffs LB Runde 1', '<p>F&oslash;rste&nbsp;runde i Loser&nbsp;brackets (BO1)</p>\r\n', '2017-09-30 13:00:45', 1),
(180, 9, 'lol-playoffs-lb-runde-2', 'LoL Playoffs LB Runde 2', '<p>Andre&nbsp;runde i loser brackets&nbsp;(BO1)</p>\r\n', '2017-09-30 16:00:52', 1),
(181, 9, 'lol-playoffs-lb-runde-3', 'LoL Playoffs LB Runde 3', '<p>Tredje&nbsp; runde i loser brackets</p>\r\n', '2017-09-30 19:00:22', 1),
(182, 9, 'lol-loser-brackets-finale', 'LoL Loser Brackets Finale', '<p>Lower brackets finale</p>\r\n', '2017-09-30 20:00:03', 1),
(183, 9, 'cs:go-runde-3', 'CS:GO Runde 3', '<p>CS:GO Winner Bracket runde 3&nbsp;og Looser Bracket runde 2</p>\r\n', '2017-09-30 14:00:27', 1),
(184, 9, 'cs:go-runde-4', 'CS:GO Runde 4', '<p>CS:GO Winner Bracket runde 4&nbsp;og Looser Bracket runde 3</p>\r\n', '2017-09-30 15:30:21', 1),
(185, 9, 'cs:go-runde-4', 'CS:GO Runde 5', '<p>CS:GO Winner Bracket Finale og Looser Bracket runde 4</p>\r\n', '2017-09-30 17:30:00', 1),
(186, 9, 'cs:go-runde-5', 'CS:GO Runde 6', '<p>CS:GO Looser Bracket runde 5</p>\r\n', '2017-09-30 19:00:00', 1),
(187, 9, 'cs:go-runde-6', 'CS:GO Runde 6', '<p>CS:GO Looser Bracket finale!</p>\r\n', '2017-09-30 20:30:36', 1),
(188, 9, 'lol-finale', 'LoL Finale', '<p>League Grand Finale! Denne spilles p&aring; Radar Scene.</p>\r\n', '2017-09-30 23:00:05', 1),
(189, 9, 'cs:go-finale', 'CS:GO Finale', '<p>CS:GO Grand Finale! Denne spilles på Radar Scene. Ny tid.</p>\r\n', '2017-10-01 03:00:00', 1),
(190, 9, 'nett-og-strøm-stenges', 'Nett og Strøm Stenges', '<p>Nettet og str&oslash;mmen blir skrud av kl 11:00</p>\r\n', '2017-10-01 11:00:05', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `agenda_new`
--

CREATE TABLE `agenda_new` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `secondsOffset` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `content`) VALUES
(1, 'information', 'Informasjon', '<article class=\"contentBox\">\r\n	<h3>Når?</h3>\r\n	<p>Arrangementet gjennomføres første helg av høstferien og vinterferien. Dørene åpner 18:00, men det lønner seg å komme i god tid før dette om du ønsker å komme raskt i gang. Det tar tid å komme inn, og du må beregne litt ventetid.</p>\r\n</article>\r\n<article class=\"contentLeftBox\">\r\n	<h3>For hvem?</h3>\r\n	<p>Vi ønsker all data- og gaming-interessert ungdom velkommen til Infected uavhengig hvor du kommer fra. Kommer du helt fra Nordland er du like velkommen som en fra Asker. Det er fortsatt ingen fastsatt aldersgrense på Infected, men alle under 14 år må ha med skriftlig bekreftelse fra foreldre. Skjema finnes her! Ettersom dette er et 48-timers arrangement, anbefaler vi at de under 14 år vurderer hvorvidt dette er noe for dem.</p>\r\n</article>\r\n<article class=\"contentRightBox\">\r\n	<h3>Billettsalg</h3>\r\n	<p>Billettsalget starter ca. tre uker før arrangementstart, og dette gjøres gjennom vår billettløsning knyttet opp mot PayPal. Du bestiller plass gjennom siden tickets.infected.no ved å logge deg inn med brukernavn og passord. Så fort seat-mappet er klart kan du velge hvilke plass(er) du ønsker å sitte på.</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<h3>Billetten</h3>\r\n	<p>Alle på Infected må ha bruker på tickets.infected.no, med riktig informasjon om deg. Du må også ha en billett knyttet mot din bruker. Hvis en kamerat har kjøpt billett for deg må han overføre den til din bruker. Dette er noe vi har gjort veldig enkelt for dere på siden. Så det er ikke noe problem om du kjøper billett for andre. Ingen kommer inn på Infected uten bruker med billett.</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<h3>Viktig å huske</h3>\r\n	<p>Husk å ta med legitimasjon, uten det kommer du ikke inn. Du står selv ansvarlig for din oppførsel under LAN-et, og kan få advarsler om utestengelse fra arrangementet før en eventuell utvisning ved brudd på Infected sine regler og rettningslinjer. Vi oppfordrer alle deltakere til å ha jevnlig kontakt med hjemmet underveis, og ta med seg mobiltelefon e.l. Det vil alltid være personer over 18 år tilstede i Infected sitt crew som hjelper deg ved behov.</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<h3>Plassen</h3>\r\n	<p>Hver plass er minimum 70x70cm. Det er lov til å ta med hylle, men den kan ikke gå utenom plassen. Du kan også ta med egen stol, men da bare en vanlig kontorstol ikke noe stor stressless, tenk på sidemannen ;)</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<h3>Foreldre</h3>\r\n	<p>Vi råder alle foreldre til å lese mer om Infected på denne linken. Det vil være opptil flere myndige i Infected sitt crew til stede under hele arrangementet, samt minimum én ansatt i Asker kommune. Har du behov for å komme i kontakt med kontaktpersoner for LAN-et bruk kontaktinformasjonen her. Vi minner om at alle deltakere under 14 år må ha med skriftlig bekreftelse fra foreldre for å komme inn.</p>\r\n</article>'),
(2, 'rules-and-security', 'Regler og sikkerhet', '<article class=\"contentLeftBox\">\r\n	<p>For å gjøre LAN-et best mulig for alle har vi laget ett sett regler som må følges. Dette omtaler alt fra hva du har lov til å medbringe inn på LAN-et, til hva du skal passe på under selve arrangementet. Ved brudd på reglementet har vi rett til å utestenge vedkommende umiddelbart.</p><br>\r\n	<p><strong>Billettprisen inkl. Medlemsskap i Radar Event avd. Infected LAN. Ved medlemskap får man blant annet rabatt på de fleste andre arrangementer på Radar.</strong></p><br>\r\n</article>\r\n<article class=\"contentRightBox\">\r\n	<p>Radar er et rusfritt område, dette inkluderer snus og røyk. Det er ikke lov å røyke eller snuse under Infected, derfor foregår all røyking og snusing utenfor Infecteds område på eget ansvar.<p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Vi forbeholder oss retten til å ta bilder under arrangementet. Hvis du ikke ønsker å bli tatt bilde av, ta kontakt med Info-desken.\r\n		</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Infected forbeholder seg retten til å loggføre og overvåke all nettverkstrafikk som benytter seg av vårt nettverk, vår leverandører, og / eller våre partneres nettverksløsninger, infrastruktur eller internettlinjer. Loggene holdes lagret av Infected sitt tech crew inntil Infected som organisasjon avgjør at loggene ikke lenger har noen form for lagringsverdi for oss. Vi forbeholder oss også retten til å analysere nettverkstrafikk dersom vi finner dette nødvendig.</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Ikke rør dører/avstengte områder i bygget. Dette kan medføre i at alarmer går og vedkommende vil bli holdt økonomisk ansvarlig.</li><br>\r\n		<li>Tyveri, hærverk og andre brudd på regler, blir slått hardt ned på. Politianmeldelse og erstatningskrav kan bli brukt i slike tilfeller.</li>\r\n		<li>Følg Norske lover og regler.</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Infected LAN tar avstand fra kopiering av ulovlig programvare, ulovlig pornografisk materiale og annet som bryter norsk lov. Aktiviteter som dette kan medføre utvisning fra arrangementet.</li><br>\r\n		<li>Ved inngangen skal du vise bånd <em>uoppfordret,</em> hver gang du kommer inn (inkludert crew).</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Ikke legg fra deg penger, lommebok, mobiltelefon og andre verdifulle ting åpenlyst på plassen din.</li><br>\r\n		<li>Det er ikke tillatt med elektroniske artikler som hvitevarer og andre strømkonsumerende eller brannfarlige artikler (kjøleskap og andre ting du finner nødvendig å ta med) på bordradene eller andre steder i lokalet.</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Alle deltagere er ansvarlige for sitt eget utstyr under arrangementet. Arrangør kan ikke stilles til ansvar om det oppstår skader på – eller tyveri av ditt datautstyr eller andre personlige eiendeler.</li><br>\r\n		<li>Det er ikke lov til å ta med seg høytalere.</li><br>\r\n		<li>Sov kun på anviste steder.</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Det er ikke tillatt med elektroniske artikler som hvitevarer og andre strømkonsumerende eller brannfarlige artikler (kjøleskap og andre ting du finner nødvendig å ta med) på bordradene eller andre steder i lokalet.</li><br>\r\n		<li>Ved inngangen skal du vise bånd <em>uoppfordret,</em> hver gang du kommer inn (inkludert crew).</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Vis hensyn til de andre deltagerne og vis normal folkeskikk.</li><br>\r\n		<li>Rydd opp søppla etter deg.</li><br>\r\n		<li>Det er ikke mulig å få refundert billetten.</li><br>\r\n		<li>Personer som blir bortvist, får ikke refundert inngangspengene.</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Virus – Personer som lager eller prøver og viderføre virus med vilje, vil bli bortvist fra arrangementet. Hvis noen har virus, og ikke vet det før vi eller andre deltagere finner det ut, vil personen sperres fra nettverket inntil viruset er fjernet.</li><br>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Hvis du har tenkt å ta med PCen din hjem før LANet er ferdig, si i fra til Security.</li><br>\r\n		<li>Den som påfører eventuelle ødeleggelser på bygg/anlegg osv, vil måtte erstatte eventuelle skader.</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Brudd på regler kan føre til advarsler, utkastelse, politianmeldelse, alt etter alvorlighetsgrad.</li><br>\r\n		<li>Du er selv ansvarlig for å lese reglene før du kommer på Infected.</li><br>\r\n		<li>Vi forbeholder oss retten til å endre/fjerne/legge til regler.</li>\r\n	</ul>\r\n</article>	\r\n<article class=\"contentBox\">\r\n	<ul>\r\n		<li>Ved oppsett av pirat-servere vil eieren av maskinen den står på holdes ansvarlig dersom noe skulle skje.</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<p>Hvis du ikke ønsker å bli medlem ta kontakt med <a href=\"mailto:fredrik@warbo.org\">fredrik@warbo.org</a></p>\r\n</article>'),
(3, 'parents-and-guardians', 'For foreldre og foresatte', '<article class=\"contentBox\">\r\n	<p><strong>Infected er et data-party som foregår kontinuerlig over to døgn. Er du en forelder eller foresatt kan denne artikkelen være nyttig for deg</strong></p><br>\r\n	<p>Infected LAN er et ungdomsarrangement i regi av Asker kommune og Radar ungdomsskafé. Arrangementet passer for alle data og eller spillinteresserte ungdom som ønsker å samle seg for en sosial og hyggelig sammenkomst. Vi ønsker å fokusere på at dette er et av de flotte og miljøbyggende aktivitetene som arrangeres i kommunen.</p>\r\n</article>\r\n<a href=\"files/Foreldreskjema.doc\"><img class=\"contentLeftImageBox\" src=\"images/pages/foreldreskjema.png\"></a>\r\n<article class=\"contentRightBox\">\r\n	<h3>Hvordan foregår det?</h3>\r\n	<p>Arrangementet varer over tre dager – normalt fra fredag kveld til søndag morgen, første helgen i høstferien og vinterferien. Infected er for ungdom – og utføres av ungdom. Det vil si at det er primært ungdommen selv som står for arrangementet, med planlegging, gjennomføring og opprydding. På denne måten blir arrangementet en arena der unge mennesker kan bygge opp relasjoner og drive positivt arbeid.</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<h3>Aldersgrense, spesielle behov</h3>\r\n	<p>Er barnet ditt under 14 år, må du ha med en fullmakt. Den finner du <a href=\"files/Foreldreskjema.doc\">her</a>! Har barnet ditt spesielle behov vi bør vite om? Ta kontakt med <a href=\"mailto:kontakt@infected.no\">kontakt@infected.no</a>, så hjelper vi til.</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<h3>Oppmøte</h3>\r\n	<p>Når LAN (local area network)-et starter klokken 18 sjekker alle deltakerne inn, får på adgangsbånd og finner plassen sin. Her plasserer de pc-en og sitter store deler av tiden. Ellers er Radar Ungdomskafe åpen, og områdene i kafeen åpen for sosiale aktiviteter. Det er egne sovesaler, og deltakerne blir oppfordret til å sove flere ganger underveis. Ellers foregår det spillkonkurranser lokalt, og andre «events» og konkurranser på scenen.</p>\r\n</article>\r\n<article class=\"contentLeftBox\">\r\n	<h3>Sikkerhet</h3>\r\n	<p>Bør vi bekymre oss? Nei. Det er over 100 medlemmer av Infected-crewene (Security, info, core, kafeteria, tech, events, game og backstage) som hele tiden overvåker områdene. Sikkerhet er noe Infected setter veldig høyt. Både i forkant og underveis. Security sørger for sikkerhet også med tanke på kriseberedskap og førstehjelp. Skulle du bli bekymret, ta kontakt med info-crewet underveis.</p>\r\n	<p>Brannvesen og politi er rutinemessig inne og patruljerer på arrangementet.</p>\r\n</article>\r\n<article class=\"contentRightBox\">\r\n	<h3>Kontakt underveis</h3>\r\n	<p>Kan vi få kontakt med barnet underveis?: Vi oppfordrer alle til å ha med seg mobil på arrangementet. Skulle det komme situasjoner hvor du må må ha tak i vedkommende og ikke får kontakt, kan du kontakte info-crew. Vi vil opprette en vakttelefon nærmere LAN-start.</p>\r\n</article>'),
(4, 'packing-list', 'Pakkeliste', '<article class=\"contentLeftBox\">\r\n<p>Aldri vært på LAN før?<br>\r\nEller er du bare litt usikker på hva som er lurest og ha med seg når en skal på LAN?</p><br>\r\n\r\n<p>Ingen fare!<br>\r\nFor vi i Infected Crewet har laget en hendig pakkeliste over ting man bør eller ikke bør ha med på LAN.</p>\r\n</article>\r\n<img class=\"contentRightImageBox\" src=\"images/pages/packing-list.png\" alt=\"Pakkeliste\">\r\n<article class=\"contentBox\">\r\n	<h3>Du bør ha med:</h3>\r\n	<ul>\r\n		<li>Datamaskin med alt tilbehør.</li>\r\n		<li>Nettverkskabel med en minumumslengde på fem meter.</li>\r\n		<li>Strømpad, beregnet ett støpsel per person.</li>\r\n		<li>Tannbørste og andre hygieneartikler.</li>\r\n		<li>Penger.</li>\r\n		<li>Vann eller brus.</li>\r\n		<li>Eventuelle medisiner hvis man trenger det (Ta kontakt med crew hvis det er noe vi bør vite).</li>\r\n		<li>Din billett.</li>\r\n		<li>Sovepose.</li>\r\n		<li>Legitimasjon.</li>\r\n	</ul>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<h3>Du kan ikke ha med:</h3>\r\n	<ul>\r\n		<li>Alkohol og eller andre rusmidler.</li>\r\n		<li>Høytalere.</li>\r\n		<li>Kjøleskap og hvitevarer</li>\r\n	</ul>\r\n</article>'),
(5, 'about', 'Om Infected', '<img class=\"contentLeftImageBox\" src=\"images/pages/om_oss.jpg\">\r\n<article class=\"contentRightBox\">\r\n<h3>Hva er et LAN Party?</h3>\r\n	<p>Kort fortalt er et LAN Party er en midlertidig samling av mennesker med PCer og/eller spillkonsoller.\r\n	Disse kobles opp på et lokalt nettverk (LAN = Local Area Network), og gis som regel også tilgang til internett.\r\n	I tillegg til å spille på PC/spillkonsoller, inneholder som regel LAN Parties også konkurranser og events.\r\n	LAN Parties omtales ofte også som datatreff, dataparty eller bare LAN. Størrelsen kan variere fra 2 personer til større forsamlinger.</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<p>Arrangementet blir holdt første helg i vinter- og høst- ferien hvert år.\r\n	Med over 300 deltagere og 100 i crewet er vi Askers største LAN Party.\r\n	Hovedsakelig er de fleste deltagerne fra Asker og omegn, men noen kommer også mer langveisfra.</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<p>Infected LAN Party er et non-profit, rusfritt ungdomsarrangement.\r\n	Forgjengeren til Infected ble startet av en vennegjeng fra Asker, med hjelp fra Asker Kommune (Radar ungdomskafe).\r\n	Det første LAN partyet under navnet Infected ble arrangert i 2006. I starten var det rundt 50 deltagere og 5 til 10 i crew.\r\n	Siden den gang har vi vokst og utviklet oss innen områdene til et LAN Party.</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<p>Vi har samarbeidet tett med Radar Ungdomskafe hele veien og starter nå også et samarbeid med videregående linjen IKT Servicefag i Asker.\r\n	Vi er organisert som en avdeling under organisasjonen Radar Event. LANet har eget styre med jevnlige møter gjennom året, og med økt hyppighet frem mot arrangementene.\r\n	Styret består pr mai 2013 av åtte ungdommer i alderen 20-28år.</p>\r\n</article>\r\n<article class=\"contentBox\">\r\n	<h3>Formål</h3>\r\n	<ul>\r\n		<li>Å skape et rusfritt tilbud til data og spill interessert ungdom i Asker og omegn.</li>\r\n		<li>Å skape et arrangement hvor ungdom med like interesser kan møtes for spill, konkurranser, sosialisering og læring.</li>\r\n		<li>Å være et non-profit arrangement basert på frivillig arbeid.</li>\r\n	</ul>\r\n</article>'),
(6, 'contact', 'Kontakt', '<article class=\"contentBox\">\r\n	<p>For generelle spørsmål: <a href=\"mailto:kontakt@infected.no\">kontakt@infected.no</a>. Alle presserelaterte spørsmål skal gjennom informasjonsansvarlig.</p>\r\n</article>\r\n<article class=\"contentLeftBox\">\r\n	<h3>Informasjonsansvarlig</h3><br>\r\n	<p>Fredrik Warbo</p>\r\n	<p>Telefon: 99 76 77 45</p>\r\n	<p>E-post: <a href=\"mailto:fredrik@warbo.org\">fredrik@warbo.org</a></p>\r\n	<p>Oppgaver: Info, presse, utvikling, web</p>\r\n</article>\r\n<article class=\"contentRightBox\">\r\n	<h3>Sikkerhetsansvarlig</h3><br>\r\n	<p>Hans Hesle</p>\r\n	<p>Telefon: 99 40 41 37</p>\r\n	<p>E-post: <a href=\"mailto:hansg.hesle@gmail.com\">hansg.hesle@gmail.com</a></p>\r\n	<p>Oppgaver: Sikkerhetsleder, brannleder</p>\r\n</article>'),
(7, 'competitions-general', 'Konkurranser', '<article class=\"contentBox\">\r\n	<h3>Generelt for alle spill:</h3><br>\r\n	<p>Etter matchen må begge lagene melde resultatet til game crew.<br>\r\n	<p>Når du skal kontakte en game admin eller en som representerer det andre laget som spiller så introduser deg med nick så man vet hvem du er. Du må også si klart hvilket lag du spiller for.\r\n<br>\r\n<h4>Double-Elimination</h4>\r\n<p>Begge compoene blir det spilt double-elimination. Det er et spill oppsett som går på vanlig cup system, men du har mulighet til og tape en kamp. Alle starter i Higher bracket, men hvis du taper en match i higher går man ned i det som heter lower bracket. Taper du etter du har kommet ned i lower er du ute av compoen. For å komme til finalen må du enten vinne Higher bracket eller lower bracket.\r\n<br>\r\n	\r\n	\r\n	<h4>Klager/annet</h4>\r\n	<p>Hvis det er noe uklart ved disse reglene så er det ditt ansvar og spørre en i game crew for å finne ut av det du lurer på. Game crew vil være tilgjengelig til enhver tid.</p>\r\n	\r\n	<h4>Spillere</h4>\r\n	Bare spillere som er registrert på laget får lov til å spille. En spiller kan bare være på et lag, som betyr at du ikke kan spille på to forskjellige lag i en og samme compo. Mangler dere en person ved oppmøte så kan dere spørre game crew om dere får lov til å bruke en step til spilleren kommer tilbake. Eller spille med en mindre.</p>\r\n	\r\n	<h4>Oppmøte</h4>\r\n	<p>Hvis det mangler spillere vil de ha 10 minutter på seg til og bli klare. Hvis et av lagene ikke har alle klar innen tiden så kan de spille med færre spillere.<br />\r\n	Crew kan delta som andre deltagere.</p>\r\n<br>\r\n<p>Infected forbeholder seg retten til å endre/heve/legge til regler på et hvilket som helst tidspunkt.<br>\r\n	<p>Vi forbeholder oss også retten til å vike fra å dømme etter reglene i veldig ekstreme situasjoner.</p>\r\n</article>'),
(8, 'counter-strike:-global-offensive', 'Counter-Strike: Global Offensive', '<article class=\"contentLeftBox\">\n	<h3>Regler:</h3><br>\n	<p>Generelt & Game settings:<p>\n	<p>Konkurranse Mode: 5on5<br>\n	Maps: Dust2, Cache, Nuke, Mirage, Season, Inferno, Overpass<br>\n	Gamemode: Competitive - Defuse<br>\n	Vinner: mr15<br>\nTickrate: 128 <br>\n	Mode: Double Elimination</p>\n</article>\n<img class=\"contentRightImageBox\" src=\"images/pages/csgo.png\" alt=\"Counter-Strike: Global Offensive\">\n<article class=\"contentBox\">\n	<p>Map velges av en banning prosess hvor hvert lag har 3 bans av baner.<br>\n	Etter valg av bane er det kniv runde for å bestemme side (T / CT).</p>\n</article>\n<article class=\"contentBox\">\n	<p><strong>Generelt:</strong><br>\nHver spiller skal ta Demo av matchen ved hjelp av Console kommandoen: record (Navn på record).<br>\nTurneringen er i Double Elimination bracket-system. Dette betyr at alle lag kan tape én kamp uten å ryke ut av turneringen.<br>\nInfected stiller med server til compoen.<br>\nSpesial-filer er ikke tillatt. Spesial-filer er alle filer som forandrer eller erstatter de originale in-game-grafiske elementene, *gfc-filer eller lyder. Dette betyr også forandring av HUD, scoreboard og lyder.<br>\nHvis en bug eller ander ting blir misbrukt i spillet, blir dette sett på som regelbrudd og fører til tap av tre runder eller diskvalifisering. Game chief avgjør dette ut fra hvor grov hendelsen er.<br>\nBruk av tredjeparts programmer som tukler med spillets funksjoner er forbudt, og kan føre til utestengelse.<br>\nEn kamp avsluttes når et lag har vunnet 16 runder.\n\n</p>\n</article>\n<article class=\"contentBox\">\n	<p><strong>Rates:</strong><br>\nAlle må ha riktige verdier i cfg fil, dette kan også gjøres gjennom konsoll.<br>\nDette kan du gjøre ved å skrive kommandoene rett inn i konsollen på cs:go.<br>\nSlik gjør du det mulig å åpne konsollen<br>\n<img src=\"https://infected.no/v7/images/pages/HvordanFaKonsoll.jpg\" style=\"width:832px\"><br>\n</article>\n<img class=\"contentLeftImageBox\" src=\"https://infected.no/v7/images/pages/Keyboard.png\" alt=\"Keyboard\">\n<article class=\"contentRightBox\">\n<h3>Rates:</h3><br>\n<p>kommandoene du skal skrive inn er:<br>\n<br>\nrate 128000<br>\ncl_cmdrate 128<br>\ncl_updaterate 128<br>\ncl_interp_ratio 1	\n</p>\n</article>\n<article class=\"contentBox\">\n	<p><strong>Disconnect/tekniske problemer:</strong><br>\n	Hvis en spiller frakoples servere på grunn av tekniske vanskeligheter eller har andre tekniske problemer, kan dere pause spillet. Dette gjør dere ved å skrive /pause i chaten. For å starte spillet igjen må begge lag skrive /unpause i chaten.<br>\n	Problemer med kampen skal rapporteres til administrator via Game-desk, eller chaten på composiden</p>\n</article>\n<article class=\"contentBox\">\n	<p>Game-crew forbeholder seg retten til å endre, legge til eller fjerne regler underveis.</p>\n</article>'),
(9, 'league-of-legends', 'League of Legends', '<article class=\"contentLeftBox\">\n	<h3>Regler:</h3><br>\n	\n	<p>Generelt & game settings:</p><br>\n	\n	<p>Konkurranse Mode: 5 vs 5<br>\n	Map: Summoner’s Rift (summer)<br>\n	Mode: Draft Mode<br>\n	Vinner: Teamet som helt ødelegger motstanderens nexus<br>\n	eller tvinger motstanderen til å surrendere.</p>\n</article>\n<img class=\"contentRightImageBox\" src=\"images/pages/lol.png\" alt=\"Leauge of Leagends\">\n<article class=\"contentBox\">\n	<p>Disconnects:<br>\n	Hvis en spiller blir disconnectet fra spillet pga nettverksproblemer eller andre uforutsette hendelser,<br>\n	skal gamet remakes hvis mindre enn 5 minutter av spillet har gått (ingame timer) eller noen har<br>\n	fått firstblood. Har 5 min av spillet gått eller noe har fått firstblood fortsetter gamet som normalt.<br>\n	Hvis en spiller disconnecter med vilje uten grunn eller med ugyldig grunnlag, fortsetter gamet som normalt.<br>\n	Dersom det ikke opplyses med engang at en spiller disconnectet, fortsetter spillet som normalt.</p><br>\n	\n	<p>Diverse:<br>\n	Følgende oppførsel vil ikke bli tolerert, og vil få konsekvenser avhengig av hvor seriøst tilfellet er.<br>\n	1) Bruk av eventuelle cheat programmer og / eller map hacks.<br>\n	2) Disconnecting med vilje uten skikkelig grunn<br>\n	3) Griefing / flaming / generelt upassende oppførsel<br>\n	4) Bruk av bugs eller lignende. Det blir opp til admins å avgjøre hva som er bugs, hvor grove bugsa er,<br>\n	og konsekvensene for eventuell abuse av dem.<br>\n	5) Bruk av en spiller som ikke opprinnelig er en del av laget («ringer»)</p><br>\n6)<p>Felles chat: infectedlan</p>\n</article>\n<article class=\"contentBox\">\n	<p>Ved uklarheter, ta kontakt med compoansvarlig/game crew.<br>\n	Husk att generelle regler gjelder i tillegg til disse compospesifikke reglene.</p>\n</article>');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `sectionpages`
--

CREATE TABLE `sectionpages` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `sectionpages`
--

INSERT INTO `sectionpages` (`id`, `name`, `title`, `icon`, `content`) VALUES
(1, 'agenda', 'Agenda', '', 'Her finner du agendaen for dette LAN-et'),
(2, 'how-to-contact', 'Hvordan tar jeg kontakt?', 'fa-question-circle-o', 'Vennligst benytt <strong>e-post</strong> hvis henvendelsen <strong>ikke haster.'),
(3, 'information', 'Informasjon', 'fa-info-circle', '<p style=\"text-align:center; color:black;\">Vi har noen regler og forslag.</p>\n<p style=\"text-align:center; color:black;\">Det er viktig at du er klar over reglene til arrangemanget</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`,`published`);

--
-- Indexes for table `agenda_new`
--
ALTER TABLE `agenda_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`eventId`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectionpages`
--
ALTER TABLE `sectionpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `agenda_new`
--
ALTER TABLE `agenda_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sectionpages`
--
ALTER TABLE `sectionpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
