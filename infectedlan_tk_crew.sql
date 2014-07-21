-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Vert: localhost
-- Generert den: 23. Jul, 2014 00:55 AM
-- Tjenerversjon: 5.5.38-0ubuntu0.14.04.1
-- PHP-Versjon: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `infectedlan_tk_crew`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `avatars`
--

CREATE TABLE IF NOT EXISTS `avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `relativeUrl` varchar(64) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dataark for tabell `avatars`
--

INSERT INTO `avatars` (`id`, `userId`, `relativeUrl`, `state`) VALUES
(1, 302, 'd2d3dcdc31f16894523390351d4349a5joaknu.jpg', 2),
(2, 234, '578c8d9c79e43939bd8a7c5d0de5b925Haaky3.jpg', 3),
(3, 237, '2bebe7c0b89984e9cb7d2c4cd8f3077bcatti12345.jpg', 2),
(4, 547, 'b0f469e9df6466805a572ebb88cf05ddskyline.jpg', 2),
(5, 188, 'a4cfa6d804d0b837d31fbd94f6542507Pimpslic.jpg', 2),
(6, 193, '2d9951e5c137715bc5f2c1b77f7408fbeirsors.jpg', 2),
(7, 3, '9c3ff2ff9c2dc9f949a4d7701a101e95warbo.jpg', 2),
(8, 111, 'aa910935e9acf447f82e83346b37f9b6tigersager.jpg', 2),
(9, 247, '4285bcf545e7e82cdb2148de2f6f9543saajee.jpg', 2),
(10, 555, '300516c2b6c772d0514f74202c566163halfvalley.jpg', 2),
(11, 517, '88ebbe4575aba7bcb004c17ad1dd486cjohpap.jpg', 2),
(12, 552, '91d0d9fd58ecfae45a5d223a83fcaecehanneb.jpg', 2),
(13, 303, '330904f543e54f8fc0d39957a154513bMarina.jpg', 2),
(14, 1, '624f1dac616b90d2ba798acc6b6f4be5petterroea.jpg', 2),
(15, 560, 'b25000a966ce5105dbf68c60e59485dcdethsanius.jpg', 2),
(16, 258, 'ad18f8909c3c4d54302b2525fbe51791udnes.jpg', 2),
(17, 564, '74eaa80e11ee9c2b916fc7612dbdd76fxxjensxx.jpg', 2),
(18, 342, 'da2a0ad825cac4d9520adfee836460f9narren.jpg', 2),
(19, 370, '7cc248506e306101906f2f6a28d9f05eDOFIwaffe.jpg', 2),
(20, 277, 'e3ee0c71188bf1f86c030b2ada6d5e1cDanielJohan.jpg', 3),
(21, 578, '64d4f4a0a3339bb1b22f3b36718c9209SweenyMee.jpg', 2),
(22, 395, 'fd68ffb94207c163e5f9b37f53e6e067kaimet.jpg', 2),
(23, 384, '7aad37aa21884dc5c59dab02e71b9d2dOddern96.jpg', 2),
(24, 586, 'e5963a7c7c77852f77c76201f813cd35anomo.jpg', 2),
(25, 352, '658db7bd0ab72a744d266f70f82a2b8cGjermund123.jpg', 0),
(26, 567, '2821a0dd224ed495f41d07a931e4e3c5raducod.jpg', 2),
(27, 487, '05e0245bd54745c08264e0c0034b6bcfPirateHearts.jpg', 2),
(28, 589, '60ab88fb7a3611d5f74abdefd027176ekristoffergombos.jpg', 2),
(29, 418, '10a87df6c64b7feed879008e52827857youareme.jpg', 2),
(30, 259, '2377e01186a300684b23df89a6557d0bkeikrem.jpg', 2),
(31, 580, '280003503f2814b66e93e6f12b15404finukerkul.jpg', 2),
(32, 592, '0c820957a3a2eb551b60bb0ae9b741dfdavid.jpg', 2),
(33, 417, '564a83b13ec17de2af3c27f183bb09bbAtirion.jpg', 2),
(34, 105, 'd05a7a7b90b64f95aba372059ff3141bHaxzer.jpg', 2),
(35, 2, '6f836b0f77d06ef59bf7a19be2b17110halvors.jpg', 2),
(36, 235, '73f9f2dd48ebde79e31402c84fb43636SkukkeTrudd.jpg', 2),
(37, 595, '66ef164433aea176a679bf4872ccce53patryknorge.jpg', 2),
(38, 585, '4b31d79dd78472306c7ae8f6959ce543nano.jpg', 2),
(39, 416, 'd630f8b6bd3e9bda399e92a7b73eeb8bWinterforce.jpg', 2),
(40, 584, 'c6e9bc35413e22e7bd050786440a358cbetakroll.jpg', 3),
(41, 597, '21520e73e1674adb7cafc81aebb190d5LouisaMorales.jpg', 2),
(42, 561, '7de9d643368a94b4ee6beefc4d9a6714Aikida.jpg', 2),
(43, 599, '9e29c3355d9b30742603e9f583ba13ccNachoDawg.jpg', 2),
(44, 52, '512e7cf7af3bfbdcbc8fe3921657277ekennarn.jpg', 3),
(45, 400, '15245d8ac2bc7e1ad1cdb3feb69bd18cverri.awesome.jpg', 2),
(46, 602, '3977fc37d4f78f0637dc0286476f54e6HenrietteMelien.jpg', 2),
(47, 604, 'c6047fc211678bccf4b28a15785c2d63Wunderbu.jpg', 2),
(48, 204, '36e55a12e7779f7e99ecf27099961b6dSimenstad.jpg', 2),
(49, 449, '1d4979e34b5e33865176d2c40312f232Harepus.jpg', 2),
(50, 424, 'aa561073f919e332c4e1e05152395e88Jokke.jpg', 2),
(51, 483, '416c1b05c2d7cfa6252b3d650dccafb2Killerquo.jpg', 2),
(52, 72, '6bd5900a1d66d20a51b573d648fcb11fzenoy.jpg', 2),
(53, 263, 'c7f0124961572b619606d5598b9628e3lolwind.jpg', 3),
(54, 257, 'c77ae0981cf7739fbfa50b5b185f1918johanne marie.jpg', 2),
(55, 583, '8f3a3edaeeb1d8c8b10c577df071feccKKB.jpg', 2),
(56, 477, '54ebec24f596be0f4bdac081032b4967Magnus Harsheim.jpg', 2),
(57, 419, '0b68e86cc5d9c050be61e874e92d3bf4Leviathan.jpg', 2),
(58, 626, 'c9398fff4c71dd753ea3ff12cacc3e93sebbie 91.jpg', 2),
(59, 628, 'a82823862faf9011bd68f254beaae224Psykl0n.jpg', 2),
(60, 360, 'aee9bb7d5f00d159da88e5e1bfb14931arnerobin.jpg', 0),
(61, 35, '9859abb63a21f5a15433201799b7a86eMarkus.jpg', 2),
(62, 637, '76affcbda2e7fed0bff99a32fbe7a310hewes.jpg', 2),
(63, 433, 'e46223003deda4d613cecbca73d40f3chansmartin97.jpg', 2),
(64, 587, '527b7289924c503ba2532082299c7568diljau.jpg', 2),
(65, 263, '10f3baf2b307b1807820f32542cad4c3Madalgo.jpg', 2),
(66, 454, '0349354b819dc62ac7dcd931aeee83d1mikky.jpg', 2),
(67, 631, 'd10d94522d7ed739ed1ab315c522b2fepleqo.jpg', 2),
(68, 312, 'f087b5361290e6ffbee582580b374a43PanzerPelle.jpg', 2),
(69, 646, '031025b91d992521609f67379bfd6ca1larsdavi.jpg', 2),
(70, 396, '1145f1f536c76a52daf75f45f3ddf59czhimizhi.jpg', 2),
(71, 294, 'fe4598f2a6b9eb6bf56c784bde65e2e2HansGH.jpg', 2),
(72, 358, '42d6b7619bca3548288e7b593ad02913vi3t.jpg', 2),
(73, 577, '677dfa30daaf3a350077fec7e018842bInuksofie.jpg', 2),
(74, 34, 'a443e1f68aaf2816a188bd691d8db828prisoner.jpg', 2),
(75, 644, '8205b8385a87b4c1ae7c83d08ae651a4plecrow.jpg', 2),
(76, 513, 'cb96075b024f825b8dd1a8d9cdeb5ba9dannik1998.jpg', 2),
(77, 435, 'a65f2b6554875a1da599da0a527e1200KapteinSander.jpg', 2),
(78, 266, '3706a838e8af4243b73f779fb92f8a62Aurorastrom.jpg', 2),
(79, 323, '657074a7386754ddaa8b19f8ec4bbc7cmarzuzza.jpg', 2),
(80, 674, 'c32a133d2dab5a84de7781eadf17d80aidaanine.jpg', 2),
(81, 675, '64bca94e885c77a764c9fdcf632bbacbcobraz.jpg', 3),
(82, 676, '8ece11f5fcba1c104aa62de6b62ac7cbtirilholl.jpg', 2),
(83, 677, '379f5dbc6525ed075bf1b770201270bcCora-Maria.jpg', 3);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `chief` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dataark for tabell `groups`
--

INSERT INTO `groups` (`id`, `name`, `title`, `description`, `chief`) VALUES
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dataark for tabell `memberof`
--

INSERT INTO `memberof` (`id`, `userId`, `groupId`, `teamId`) VALUES
(1, 1, 3, 0),
(2, 2, 3, 0);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dataark for tabell `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `content`, `groupId`, `teamId`) VALUES
(1, 'home', 'Infected Vinter 2014!', '<p>Obligatorisk fellesm&oslash;te for ALLE crew i multisalen Fredag den 14. Februar klokken 16.00<br />\r\nObligatorisk fellesm&oslash;te for Security crew i 2 etg. Torsdag den 13. Februar klokken 15.30</p>\r\n', 0, 0),
(8, 'core', 'Core', '', 16, 0),
(9, 'info', 'Info', '<p>Er ansvarlig for alle informasjonssystemer som webside og facebook siden. Under arrangementet driver Info en egen info desk som er &aring;pen for deltagerne 24/7.</p>\r\n\r\n<p>TeamViewer til podiet:<br>\r\nYour ID: 863 698 737<br>\r\nPassword: 2676</p>\r\n\r\n', 15, 0),
(10, 'tech', 'Tech', '', 14, 0),
(11, 'net', 'Tech:Net', '', 14, 0),
(12, 'server', 'Tech:Server', '', 14, 0),
(13, 'support', 'Tech:Support', '', 14, 0),
(14, 'security', 'Security', '', 17, 0),
(15, '', '', '', 19, 0),
(16, 'backstage', 'Backstage', '', 21, 0),
(17, 'event', 'Event', '', 22, 0),
(18, 'game', 'Game', '<p>Let the Games begin!</p>\r\n\r\n<p>&nbsp;</p>\r\n', 26, 0),
(64, 'vaktliste-info', '<table border="0" cellpadding="2', '', 15, 0),
(66, 'vaktliste-tech', 'Vaktliste', '<table border="0" cellpadding="2" cellspacing="2" style="width:350px">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Fredag 14. Feb</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18:00 - 21:00</td>\r\n			<td>Alle er p&aring;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21:00 - 02:00</td>\r\n			<td>Markus og Sofie&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>L&oslash;rdag 15. Feb</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>02:00 - 06:00</td>\r\n			<td>Christian, Brage og Patryk</td>\r\n		</tr>\r\n		<tr>\r\n			<td>06:00 - 11:00</td>\r\n			<td>Otto og Kevin</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11:00 - 17:00</td>\r\n			<td>Thomas og Eirik</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17:00 - 22:00</td>\r\n			<td>Markus og Sofie&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22:00 - 03:00</td>\r\n			<td>Christian, Brage og Patryk</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>S&oslash;ndag 16. Feb</strong></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>03:00 - 08:00</td>\r\n			<td>Otto og Kevin</td>\r\n		</tr>\r\n		<tr>\r\n			<td>08:00 - 11:00</td>\r\n			<td>Thomas og Eirik</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11:00 - Nedrigg er ferdig</td>\r\n			<td>Alle er p&aring;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 14, 0),
(74, 'vaktliste-cafe', 'Vaktliste', '<p>18:00-23:00:Marius2&amp;Harepus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>23:00-04:00:Bull&amp;Joakim</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>04:00-09:00:Johannes&amp;Veronica</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>09:00-14:00:Marius&amp;Magnus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>14:00-19:00:Harepus&amp;Marius2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>19:00-00:00:Johannes&amp;Veronica</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>00:00-05:00:Bull&amp;Joakim</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>05:00-10:00:Marius&amp;Magnus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>10:00-12:00:Johannes&amp;Veronica</p>\r\n', 19, 0);

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
  `chief` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dataark for tabell `teams`
--

INSERT INTO `teams` (`id`, `groupId`, `name`, `title`, `description`, `chief`) VALUES
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
