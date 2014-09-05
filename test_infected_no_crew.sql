-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Vert: localhost
-- Generert den: 08. Aug, 2014 13:16 PM
-- Tjenerversjon: 5.5.38-0ubuntu0.14.04.1
-- PHP-Versjon: 5.5.9-1ubuntu4.3

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
-- Tabellstruktur for tabell `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `content` text NOT NULL,
  `state` int(11) NOT NULL,
  `datetime` tinyint(1) NOT NULL,
  `reason` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `avatars`
--

CREATE TABLE IF NOT EXISTS `avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `file` varchar(64) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `leader` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dataark for tabell `groups`
--

INSERT INTO `groups` (`id`, `name`, `title`, `description`, `leader`) VALUES
(1, 'core', 'Core', 'Tar seg av administrative oppgaver samt oppgaver som ikke faller naturlig under noe annet crew.  Du må være glad i utfordringer, kunne jobbe selvstendig og i team, se løsninger, få med seg andre på fellesoppgaver og organisering. Eksempler her er: sponsor arbeid, booking, økonomi, problemløsning, forefallende oppgaver.', 0),
(2, 'security', 'Security', '', 0),
(3, 'tech', 'Tech', 'Er de som planlegger, setter opp samt drifter nettverket og alle tjenester rundt nettverket på Infected. Her er oppgavene alt fra å konfiugerere switcher, routere, brannmurer og servere (applikasjoner) til kabling og testing av tjenester. Du bør ha gode kunnskaper om nettverk, servere (linux), koding eller være generelt interessert i IT. (Gamere teller ikke). ', 0),
(4, 'event', 'Event', 'Er ansvarlig for alle andre konkurranser og aktiviteter på Infected. Eksempler på dette er scenekonkurranser.', 0),
(5, 'game', 'Game', 'Planlegger og arrangerer alle spillkonkurranser på Infected. Du bør ha kunnskap og erfaring fra spillet i en konkurransesammenheng.', 0),
(6, 'kafe', 'Kafe', 'Planlegger innkjøp og drifter Radar Cafe under Infected. Dette innebærer salg, tilbredning og rydding i kafeområdet.', 0),
(7, 'backstage', 'Backstage', 'Er det crewet som står for alle måltidene til crewet i sin helhet. Dette innebærer å tilbrede maten, servere og rydde opp.', 0),
(8, 'info', 'Info', 'Er ansvarlig for alle informasjonssystemer som webside, tickets, crew side, facebook siden. Under arrangementet driver Info en egen info desk som er åpen for deltagerne 24/7.', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `memberof`
--

CREATE TABLE IF NOT EXISTS `memberof` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `pages`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dataark for tabell `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `content`, `groupId`, `teamId`, `private`) VALUES
(1, 'home', 'Infected Vinter 2014!', '<p>Obligatorisk fellesm&oslash;te for ALLE crew i multisalen Fredag den 14. Februar klokken 16.00<br />\r\nObligatorisk fellesm&oslash;te for Security crew i 2 etg. Torsdag den 13. Februar klokken 15.30</p>\r\n', 0, 0, 0),
(2, 'vaktliste-info', '<table border="0" cellpadding="2', '', 15, 0, 1),
(3, 'vaktliste-tech', 'Vaktliste', '<table border="0" cellpadding="2" cellspacing="2" style="width:350px">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Fredag 14. Feb</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18:00 - 21:00</td>\r\n			<td>Alle er p&aring;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21:00 - 02:00</td>\r\n			<td>Markus og Sofie&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>L&oslash;rdag 15. Feb</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>02:00 - 06:00</td>\r\n			<td>Christian, Brage og Patryk</td>\r\n		</tr>\r\n		<tr>\r\n			<td>06:00 - 11:00</td>\r\n			<td>Otto og Kevin</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11:00 - 17:00</td>\r\n			<td>Thomas og Eirik</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17:00 - 22:00</td>\r\n			<td>Markus og Sofie&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22:00 - 03:00</td>\r\n			<td>Christian, Brage og Patryk</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>S&oslash;ndag 16. Feb</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>03:00 - 08:00</td>\r\n			<td>Otto og Kevin</td>\r\n		</tr>\r\n		<tr>\r\n			<td>08:00 - 11:00</td>\r\n			<td>Thomas og Eirik</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11:00 - Nedrigg er ferdig</td>\r\n			<td>Alle er p&aring;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 14, 0, 1),
(4, 'vaktliste-cafe', 'Vaktliste', '<p>18:00-23:00:Marius2&amp;Harepus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>23:00-04:00:Bull&amp;Joakim</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>04:00-09:00:Johannes&amp;Veronica</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>09:00-14:00:Marius&amp;Magnus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>14:00-19:00:Harepus&amp;Marius2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>19:00-00:00:Johannes&amp;Veronica</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>00:00-05:00:Bull&amp;Joakim</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>05:00-10:00:Marius&amp;Magnus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>10:00-12:00:Johannes&amp;Veronica</p>\r\n', 19, 0, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `leader` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dataark for tabell `teams`
--

INSERT INTO `teams` (`id`, `groupId`, `name`, `title`, `description`, `leader`) VALUES
(1, 2, 'lag1', 'Lag 1', 'Lag 1', 0),
(2, 2, 'lag2', 'Lag 2', 'Lag 2', 0),
(3, 2, 'lag3', 'Lag 3', 'Lag 3', 0),
(4, 2, 'lag4', 'Lag 4', 'Lag 4', 0),
(5, 3, 'net', 'Nettverk', 'Nettverk', 0),
(6, 3, 'server', 'Server', 'Server', 0),
(7, 3, 'support', 'Support', 'Support', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
