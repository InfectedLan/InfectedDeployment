-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 20, 2015 at 11:56 PM
-- Server version: 5.6.25-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_infected_no_tickets`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkedintickets`
--

CREATE TABLE IF NOT EXISTS `checkedintickets` (
`id` int(11) NOT NULL,
  `ticketId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkedintickets`
--

INSERT INTO `checkedintickets` (`id`, `ticketId`, `userId`) VALUES
(9, 1, 2),
(10, 2, 3),
(11, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE IF NOT EXISTS `entrances` (
`id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrances`
--

INSERT INTO `entrances` (`id`, `name`, `title`) VALUES
(1, 'radar-cafe', 'Radar Cafe'),
(2, 'biblioteket', 'Biblioteket');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ticketTypeId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `transactionId` varchar(64) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `userId`, `ticketTypeId`, `amount`, `price`, `transactionId`, `datetime`) VALUES
(1, 1, 1, 1, 350, '2FR0683745560705K', '2015-02-03 23:24:35'),
(2, 1, 1, 1, 350, '1JB27503MS155754P', '2015-02-04 19:14:14'),
(3, 1, 1, 1, 350, '3CT78292D2684950H', '2015-02-04 19:16:28'),
(4, 1, 1, 1, 350, '2D315183FA7715535', '2015-02-04 19:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `rows`
--

CREATE TABLE IF NOT EXISTS `rows` (
`id` int(11) NOT NULL,
  `seatmapId` int(11) NOT NULL,
  `entranceId` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `isHorizontal` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rows`
--

INSERT INTO `rows` (`id`, `seatmapId`, `entranceId`, `number`, `x`, `y`) VALUES
(1, 3, 1, 1, 5, 641),
(2, 3, 1, 2, 42, 641),
(3, 3, 1, 3, 87, 641),
(4, 3, 1, 4, 124, 641),
(5, 3, 1, 5, 169, 641),
(6, 3, 1, 6, 206, 641),
(7, 3, 1, 7, 251, 641),
(8, 3, 1, 8, 288, 641),
(17, 3, 1, 17, 618, 1054),
(18, 3, 1, 18, 655, 1054),
(19, 3, 1, 19, 700, 1054),
(20, 3, 1, 20, 737, 1054),
(9, 3, 2, 9, 423, 670),
(10, 3, 2, 10, 460, 670),
(11, 3, 2, 11, 505, 670),
(12, 3, 2, 12, 542, 670),
(13, 3, 2, 13, 618, 50),
(14, 3, 2, 14, 655, 50),
(15, 3, 2, 15, 700, 50),
(16, 3, 2, 16, 737, 50),
(21, 4, 1, 1, 5, 641),
(22, 4, 1, 2, 42, 641),
(23, 4, 1, 3, 87, 641),
(24, 4, 1, 4, 124, 641),
(25, 4, 1, 5, 169, 641),
(26, 4, 1, 6, 206, 641),
(27, 4, 1, 7, 251, 641),
(28, 4, 1, 8, 288, 641),
(37, 4, 1, 17, 618, 1054),
(38, 4, 1, 18, 655, 1054),
(39, 4, 1, 19, 700, 1054),
(40, 4, 1, 20, 737, 1054),
(29, 4, 2, 9, 423, 670),
(30, 4, 2, 10, 460, 670),
(31, 4, 2, 11, 505, 670),
(32, 4, 2, 12, 542, 670),
(33, 4, 2, 13, 618, 50),
(34, 4, 2, 14, 655, 50),
(35, 4, 2, 15, 700, 50),
(36, 4, 2, 16, 737, 50),
(41, 5, 1, 1, 5, 641),
(42, 5, 1, 2, 42, 641),
(64, 5, 1, 2, 805, 69),
(43, 5, 1, 3, 87, 641),
(44, 5, 1, 4, 124, 641),
(45, 5, 1, 5, 169, 641),
(46, 5, 1, 6, 206, 641),
(47, 5, 1, 7, 251, 641),
(48, 5, 1, 8, 288, 641),
(57, 5, 1, 17, 618, 1054),
(58, 5, 1, 18, 655, 1054),
(59, 5, 1, 19, 700, 1054),
(60, 5, 1, 20, 737, 1054),
(49, 5, 2, 9, 423, 670),
(50, 5, 2, 10, 460, 670),
(51, 5, 2, 11, 505, 670),
(52, 5, 2, 12, 542, 670),
(53, 5, 2, 13, 618, 50),
(54, 5, 2, 14, 655, 50),
(55, 5, 2, 15, 700, 50),
(56, 5, 2, 16, 747, 54);

-- --------------------------------------------------------

--
-- Table structure for table `seatmaps`
--

CREATE TABLE IF NOT EXISTS `seatmaps` (
`id` int(11) NOT NULL,
  `humanName` varchar(64) NOT NULL,
  `backgroundImage` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seatmaps`
--

INSERT INTO `seatmaps` (`id`, `humanName`, `backgroundImage`) VALUES
(1, 'Infected Høst 2013', '3c909dc398ff5d8325e95d73dba7c0c6.jpg'),
(2, 'Infected Vinter 2014', '3c909dc398ff5d8325e95d73dba7c0c6.jpg'),
(3, 'Infected Høst 2014', '3c909dc398ff5d8325e95d73dba7c0c6.jpg'),
(4, 'Infected Vinter 2015', '3c909dc398ff5d8325e95d73dba7c0c6.jpg'),
(5, 'Infected Høst 2015', '3c909dc398ff5d8325e95d73dba7c0c6.jpg'),
(6, 'Infected Vinter 2016', '3c909dc398ff5d8325e95d73dba7c0c6.jpg'),
(7, 'Infected Høst 2016', '3c909dc398ff5d8325e95d73dba7c0c6.jpg'),
(8, 'Infected Vinter 2017', '3c909dc398ff5d8325e95d73dba7c0c6.jpg'),
(9, 'Infected Høst 2017', '3c909dc398ff5d8325e95d73dba7c0c6.jpg'),
(10, 'Infected Vinter 2018', '3c909dc398ff5d8325e95d73dba7c0c6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
`id` int(11) NOT NULL,
  `rowId` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `rowId`, `number`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 2, 1),
(20, 2, 2),
(21, 2, 3),
(22, 2, 4),
(23, 2, 5),
(24, 2, 6),
(25, 2, 7),
(26, 2, 8),
(27, 2, 9),
(28, 2, 10),
(29, 2, 11),
(30, 2, 12),
(31, 2, 13),
(32, 2, 14),
(33, 2, 15),
(34, 2, 16),
(35, 2, 17),
(36, 2, 18),
(37, 3, 1),
(38, 3, 2),
(39, 3, 3),
(40, 3, 4),
(41, 3, 5),
(42, 3, 6),
(43, 3, 7),
(44, 3, 8),
(45, 3, 9),
(46, 3, 10),
(47, 3, 11),
(48, 3, 12),
(49, 3, 13),
(50, 3, 14),
(51, 3, 15),
(52, 3, 16),
(53, 3, 17),
(54, 3, 18),
(55, 4, 1),
(56, 4, 2),
(57, 4, 3),
(58, 4, 4),
(59, 4, 5),
(60, 4, 6),
(61, 4, 7),
(62, 4, 8),
(63, 4, 9),
(64, 4, 10),
(65, 4, 11),
(66, 4, 12),
(67, 4, 13),
(68, 4, 14),
(69, 4, 15),
(70, 4, 16),
(71, 4, 17),
(72, 4, 18),
(73, 5, 1),
(74, 5, 2),
(75, 5, 3),
(76, 5, 4),
(77, 5, 5),
(78, 5, 6),
(79, 5, 7),
(80, 5, 8),
(81, 5, 9),
(82, 5, 10),
(83, 5, 11),
(84, 5, 12),
(85, 5, 13),
(86, 5, 14),
(87, 5, 15),
(88, 5, 16),
(89, 5, 17),
(90, 5, 18),
(91, 6, 1),
(92, 6, 2),
(93, 6, 3),
(94, 6, 4),
(95, 6, 5),
(96, 6, 6),
(97, 6, 7),
(98, 6, 8),
(99, 6, 9),
(100, 6, 10),
(101, 6, 11),
(102, 6, 12),
(103, 6, 13),
(104, 6, 14),
(105, 6, 15),
(106, 6, 16),
(107, 6, 17),
(108, 6, 18),
(109, 7, 1),
(110, 7, 2),
(111, 7, 3),
(112, 7, 4),
(113, 7, 5),
(114, 7, 6),
(115, 7, 7),
(116, 7, 8),
(117, 7, 9),
(118, 7, 10),
(119, 7, 11),
(120, 7, 12),
(121, 7, 13),
(122, 7, 14),
(123, 7, 15),
(124, 7, 16),
(125, 7, 17),
(126, 7, 18),
(127, 8, 1),
(128, 8, 2),
(129, 8, 3),
(130, 8, 4),
(131, 8, 5),
(132, 8, 6),
(133, 8, 7),
(134, 8, 8),
(135, 8, 9),
(136, 8, 10),
(137, 8, 11),
(138, 8, 12),
(139, 8, 13),
(140, 8, 14),
(141, 8, 15),
(142, 8, 16),
(143, 8, 17),
(144, 8, 18),
(145, 9, 1),
(146, 9, 2),
(147, 9, 3),
(148, 9, 4),
(149, 9, 5),
(150, 9, 6),
(151, 9, 7),
(152, 9, 8),
(153, 9, 9),
(154, 9, 10),
(155, 9, 11),
(156, 9, 12),
(157, 9, 13),
(158, 9, 14),
(159, 9, 15),
(160, 9, 16),
(161, 9, 17),
(162, 9, 18),
(163, 9, 19),
(164, 9, 20),
(165, 10, 1),
(166, 10, 2),
(167, 10, 3),
(168, 10, 4),
(169, 10, 5),
(170, 10, 6),
(171, 10, 7),
(172, 10, 8),
(173, 10, 9),
(174, 10, 10),
(175, 10, 11),
(176, 10, 12),
(177, 10, 13),
(178, 10, 14),
(179, 10, 15),
(180, 10, 16),
(181, 10, 17),
(182, 10, 18),
(183, 10, 19),
(184, 10, 20),
(185, 11, 1),
(186, 11, 2),
(187, 11, 3),
(188, 11, 4),
(189, 11, 5),
(190, 11, 6),
(191, 11, 7),
(192, 11, 8),
(193, 11, 9),
(194, 11, 10),
(195, 11, 11),
(196, 11, 12),
(197, 11, 13),
(198, 11, 14),
(199, 11, 15),
(200, 11, 16),
(201, 11, 17),
(202, 11, 18),
(203, 11, 19),
(204, 11, 20),
(205, 12, 1),
(206, 12, 2),
(207, 12, 3),
(208, 12, 4),
(209, 12, 5),
(210, 12, 6),
(211, 12, 7),
(212, 12, 8),
(213, 12, 9),
(214, 12, 10),
(215, 12, 11),
(216, 12, 12),
(217, 12, 13),
(218, 12, 14),
(219, 12, 15),
(220, 12, 16),
(221, 12, 17),
(222, 12, 18),
(223, 12, 19),
(224, 12, 20),
(225, 13, 1),
(226, 13, 2),
(227, 13, 3),
(228, 13, 4),
(229, 13, 5),
(230, 13, 6),
(231, 13, 7),
(232, 13, 8),
(233, 13, 9),
(234, 13, 10),
(235, 13, 11),
(236, 13, 12),
(237, 13, 13),
(238, 13, 14),
(239, 13, 15),
(240, 13, 16),
(241, 13, 17),
(242, 13, 18),
(243, 13, 19),
(244, 13, 20),
(245, 13, 21),
(246, 13, 22),
(247, 13, 23),
(248, 13, 24),
(249, 13, 25),
(250, 13, 26),
(251, 13, 27),
(252, 13, 28),
(253, 14, 1),
(254, 14, 2),
(255, 14, 3),
(256, 14, 4),
(257, 14, 5),
(258, 14, 6),
(259, 14, 7),
(260, 14, 8),
(261, 14, 9),
(262, 14, 10),
(263, 14, 11),
(264, 14, 12),
(265, 14, 13),
(266, 14, 14),
(267, 14, 15),
(268, 14, 16),
(269, 14, 17),
(270, 14, 18),
(271, 14, 19),
(272, 14, 20),
(273, 14, 21),
(274, 14, 22),
(275, 14, 23),
(276, 14, 24),
(277, 14, 25),
(278, 14, 26),
(279, 14, 27),
(280, 14, 28),
(281, 15, 1),
(282, 15, 2),
(283, 15, 3),
(284, 15, 4),
(285, 15, 5),
(286, 15, 6),
(287, 15, 7),
(288, 15, 8),
(289, 15, 9),
(290, 15, 10),
(291, 15, 11),
(292, 15, 12),
(293, 15, 13),
(294, 15, 14),
(295, 15, 15),
(296, 15, 16),
(297, 15, 17),
(298, 15, 18),
(299, 15, 19),
(300, 15, 20),
(301, 15, 21),
(302, 15, 22),
(303, 15, 23),
(304, 15, 24),
(305, 15, 25),
(306, 15, 26),
(307, 15, 27),
(308, 15, 28),
(309, 16, 1),
(310, 16, 2),
(311, 16, 3),
(312, 16, 4),
(313, 16, 5),
(314, 16, 6),
(315, 16, 7),
(316, 16, 8),
(317, 16, 9),
(318, 16, 10),
(319, 16, 11),
(320, 16, 12),
(321, 16, 13),
(322, 16, 14),
(323, 16, 15),
(324, 16, 16),
(325, 16, 17),
(326, 16, 18),
(327, 16, 19),
(328, 16, 20),
(329, 16, 21),
(330, 16, 22),
(331, 16, 23),
(332, 16, 24),
(333, 16, 25),
(334, 16, 26),
(335, 16, 27),
(336, 16, 28),
(337, 17, 1),
(338, 17, 2),
(339, 17, 3),
(340, 17, 4),
(341, 17, 5),
(342, 17, 6),
(343, 17, 7),
(344, 17, 8),
(345, 18, 1),
(346, 18, 2),
(347, 18, 3),
(348, 18, 4),
(349, 18, 5),
(350, 18, 6),
(351, 18, 7),
(352, 18, 8),
(353, 19, 1),
(354, 19, 2),
(355, 19, 3),
(356, 19, 4),
(357, 19, 5),
(358, 19, 6),
(359, 19, 7),
(360, 19, 8),
(361, 20, 1),
(362, 20, 2),
(363, 20, 3),
(364, 20, 4),
(365, 20, 5),
(366, 20, 6),
(367, 20, 7),
(368, 20, 8),
(369, 21, 1),
(370, 21, 2),
(371, 21, 3),
(372, 21, 4),
(373, 21, 5),
(374, 21, 6),
(375, 21, 7),
(376, 21, 8),
(377, 21, 9),
(378, 21, 10),
(379, 21, 11),
(380, 21, 12),
(381, 21, 13),
(382, 21, 14),
(383, 21, 15),
(384, 21, 16),
(385, 21, 17),
(386, 21, 18),
(387, 22, 1),
(388, 22, 2),
(389, 22, 3),
(390, 22, 4),
(391, 22, 5),
(392, 22, 6),
(393, 22, 7),
(394, 22, 8),
(395, 22, 9),
(396, 22, 10),
(397, 22, 11),
(398, 22, 12),
(399, 22, 13),
(400, 22, 14),
(401, 22, 15),
(402, 22, 16),
(403, 22, 17),
(404, 22, 18),
(405, 23, 1),
(406, 23, 2),
(407, 23, 3),
(408, 23, 4),
(409, 23, 5),
(410, 23, 6),
(411, 23, 7),
(412, 23, 8),
(413, 23, 9),
(414, 23, 10),
(415, 23, 11),
(416, 23, 12),
(417, 23, 13),
(418, 23, 14),
(419, 23, 15),
(420, 23, 16),
(421, 23, 17),
(422, 23, 18),
(423, 24, 1),
(424, 24, 2),
(425, 24, 3),
(426, 24, 4),
(427, 24, 5),
(428, 24, 6),
(429, 24, 7),
(430, 24, 8),
(431, 24, 9),
(432, 24, 10),
(433, 24, 11),
(434, 24, 12),
(435, 24, 13),
(436, 24, 14),
(437, 24, 15),
(438, 24, 16),
(439, 24, 17),
(440, 24, 18),
(441, 25, 1),
(442, 25, 2),
(443, 25, 3),
(444, 25, 4),
(445, 25, 5),
(446, 25, 6),
(447, 25, 7),
(448, 25, 8),
(449, 25, 9),
(450, 25, 10),
(451, 25, 11),
(452, 25, 12),
(453, 25, 13),
(454, 25, 14),
(455, 25, 15),
(456, 25, 16),
(457, 25, 17),
(458, 25, 18),
(459, 26, 1),
(460, 26, 2),
(461, 26, 3),
(462, 26, 4),
(463, 26, 5),
(464, 26, 6),
(465, 26, 7),
(466, 26, 8),
(467, 26, 9),
(468, 26, 10),
(469, 26, 11),
(470, 26, 12),
(471, 26, 13),
(472, 26, 14),
(473, 26, 15),
(474, 26, 16),
(475, 26, 17),
(476, 26, 18),
(477, 27, 1),
(478, 27, 2),
(479, 27, 3),
(480, 27, 4),
(481, 27, 5),
(482, 27, 6),
(483, 27, 7),
(484, 27, 8),
(485, 27, 9),
(486, 27, 10),
(487, 27, 11),
(488, 27, 12),
(489, 27, 13),
(490, 27, 14),
(491, 27, 15),
(492, 27, 16),
(493, 27, 17),
(494, 27, 18),
(495, 28, 1),
(496, 28, 2),
(497, 28, 3),
(498, 28, 4),
(499, 28, 5),
(500, 28, 6),
(501, 28, 7),
(502, 28, 8),
(503, 28, 9),
(504, 28, 10),
(505, 28, 11),
(506, 28, 12),
(507, 28, 13),
(508, 28, 14),
(509, 28, 15),
(510, 28, 16),
(511, 28, 17),
(512, 28, 18),
(513, 29, 1),
(514, 29, 2),
(515, 29, 3),
(516, 29, 4),
(517, 29, 5),
(518, 29, 6),
(519, 29, 7),
(520, 29, 8),
(521, 29, 9),
(522, 29, 10),
(523, 29, 11),
(524, 29, 12),
(525, 29, 13),
(526, 29, 14),
(527, 29, 15),
(528, 29, 16),
(529, 29, 17),
(530, 29, 18),
(531, 29, 19),
(532, 29, 20),
(533, 30, 1),
(534, 30, 2),
(535, 30, 3),
(536, 30, 4),
(537, 30, 5),
(538, 30, 6),
(539, 30, 7),
(540, 30, 8),
(541, 30, 9),
(542, 30, 10),
(543, 30, 11),
(544, 30, 12),
(545, 30, 13),
(546, 30, 14),
(547, 30, 15),
(548, 30, 16),
(549, 30, 17),
(550, 30, 18),
(551, 30, 19),
(552, 30, 20),
(553, 31, 1),
(554, 31, 2),
(555, 31, 3),
(556, 31, 4),
(557, 31, 5),
(558, 31, 6),
(559, 31, 7),
(560, 31, 8),
(561, 31, 9),
(562, 31, 10),
(563, 31, 11),
(564, 31, 12),
(565, 31, 13),
(566, 31, 14),
(567, 31, 15),
(568, 31, 16),
(569, 31, 17),
(570, 31, 18),
(571, 31, 19),
(572, 31, 20),
(573, 32, 1),
(574, 32, 2),
(575, 32, 3),
(576, 32, 4),
(577, 32, 5),
(578, 32, 6),
(579, 32, 7),
(580, 32, 8),
(581, 32, 9),
(582, 32, 10),
(583, 32, 11),
(584, 32, 12),
(585, 32, 13),
(586, 32, 14),
(587, 32, 15),
(588, 32, 16),
(589, 32, 17),
(590, 32, 18),
(591, 32, 19),
(592, 32, 20),
(593, 33, 1),
(594, 33, 2),
(595, 33, 3),
(596, 33, 4),
(597, 33, 5),
(598, 33, 6),
(599, 33, 7),
(600, 33, 8),
(601, 33, 9),
(602, 33, 10),
(603, 33, 11),
(604, 33, 12),
(605, 33, 13),
(606, 33, 14),
(607, 33, 15),
(608, 33, 16),
(609, 33, 17),
(610, 33, 18),
(611, 33, 19),
(612, 33, 20),
(613, 33, 21),
(614, 33, 22),
(615, 33, 23),
(616, 33, 24),
(617, 33, 25),
(618, 33, 26),
(619, 33, 27),
(620, 33, 28),
(621, 34, 1),
(622, 34, 2),
(623, 34, 3),
(624, 34, 4),
(625, 34, 5),
(626, 34, 6),
(627, 34, 7),
(628, 34, 8),
(629, 34, 9),
(630, 34, 10),
(631, 34, 11),
(632, 34, 12),
(633, 34, 13),
(634, 34, 14),
(635, 34, 15),
(636, 34, 16),
(637, 34, 17),
(638, 34, 18),
(639, 34, 19),
(640, 34, 20),
(641, 34, 21),
(642, 34, 22),
(643, 34, 23),
(644, 34, 24),
(645, 34, 25),
(646, 34, 26),
(647, 34, 27),
(648, 34, 28),
(649, 35, 1),
(650, 35, 2),
(651, 35, 3),
(652, 35, 4),
(653, 35, 5),
(654, 35, 6),
(655, 35, 7),
(656, 35, 8),
(657, 35, 9),
(658, 35, 10),
(659, 35, 11),
(660, 35, 12),
(661, 35, 13),
(662, 35, 14),
(663, 35, 15),
(664, 35, 16),
(665, 35, 17),
(666, 35, 18),
(667, 35, 19),
(668, 35, 20),
(669, 35, 21),
(670, 35, 22),
(671, 35, 23),
(672, 35, 24),
(673, 35, 25),
(674, 35, 26),
(675, 35, 27),
(676, 35, 28),
(677, 36, 1),
(678, 36, 2),
(679, 36, 3),
(680, 36, 4),
(681, 36, 5),
(682, 36, 6),
(683, 36, 7),
(684, 36, 8),
(685, 36, 9),
(686, 36, 10),
(687, 36, 11),
(688, 36, 12),
(689, 36, 13),
(690, 36, 14),
(691, 36, 15),
(692, 36, 16),
(693, 36, 17),
(694, 36, 18),
(695, 36, 19),
(696, 36, 20),
(697, 36, 21),
(698, 36, 22),
(699, 36, 23),
(700, 36, 24),
(701, 36, 25),
(702, 36, 26),
(703, 36, 27),
(704, 36, 28),
(705, 37, 1),
(706, 37, 2),
(707, 37, 3),
(708, 37, 4),
(709, 37, 5),
(710, 37, 6),
(711, 37, 7),
(712, 37, 8),
(713, 38, 1),
(714, 38, 2),
(715, 38, 3),
(716, 38, 4),
(717, 38, 5),
(718, 38, 6),
(719, 38, 7),
(720, 38, 8),
(721, 39, 1),
(722, 39, 2),
(723, 39, 3),
(724, 39, 4),
(725, 39, 5),
(726, 39, 6),
(727, 39, 7),
(728, 39, 8),
(729, 40, 1),
(730, 40, 2),
(731, 40, 3),
(732, 40, 4),
(733, 40, 5),
(734, 40, 6),
(735, 40, 7),
(736, 40, 8),
(737, 41, 1),
(738, 41, 2),
(739, 41, 3),
(740, 41, 4),
(741, 41, 5),
(742, 41, 6),
(743, 41, 7),
(744, 41, 8),
(745, 41, 9),
(746, 41, 10),
(747, 41, 11),
(748, 41, 12),
(749, 41, 13),
(750, 41, 14),
(751, 41, 15),
(752, 41, 16),
(753, 41, 17),
(754, 41, 18),
(755, 42, 1),
(756, 42, 2),
(757, 42, 3),
(758, 42, 4),
(759, 42, 5),
(760, 42, 6),
(761, 42, 7),
(762, 42, 8),
(763, 42, 9),
(764, 42, 10),
(765, 42, 11),
(766, 42, 12),
(767, 42, 13),
(768, 42, 14),
(769, 42, 15),
(770, 42, 16),
(771, 42, 17),
(772, 42, 18),
(773, 43, 1),
(774, 43, 2),
(775, 43, 3),
(776, 43, 4),
(777, 43, 5),
(778, 43, 6),
(779, 43, 7),
(780, 43, 8),
(781, 43, 9),
(782, 43, 10),
(783, 43, 11),
(784, 43, 12),
(785, 43, 13),
(786, 43, 14),
(787, 43, 15),
(788, 43, 16),
(789, 43, 17),
(790, 43, 18),
(791, 44, 1),
(792, 44, 2),
(793, 44, 3),
(794, 44, 4),
(795, 44, 5),
(796, 44, 6),
(797, 44, 7),
(798, 44, 8),
(799, 44, 9),
(800, 44, 10),
(801, 44, 11),
(802, 44, 12),
(803, 44, 13),
(804, 44, 14),
(805, 44, 15),
(806, 44, 16),
(807, 44, 17),
(808, 44, 18),
(809, 45, 1),
(810, 45, 2),
(811, 45, 3),
(812, 45, 4),
(813, 45, 5),
(814, 45, 6),
(815, 45, 7),
(816, 45, 8),
(817, 45, 9),
(818, 45, 10),
(819, 45, 11),
(820, 45, 12),
(821, 45, 13),
(822, 45, 14),
(823, 45, 15),
(824, 45, 16),
(825, 45, 17),
(826, 45, 18),
(827, 46, 1),
(828, 46, 2),
(829, 46, 3),
(830, 46, 4),
(831, 46, 5),
(832, 46, 6),
(833, 46, 7),
(834, 46, 8),
(835, 46, 9),
(836, 46, 10),
(837, 46, 11),
(838, 46, 12),
(839, 46, 13),
(840, 46, 14),
(841, 46, 15),
(842, 46, 16),
(843, 46, 17),
(844, 46, 18),
(845, 47, 1),
(846, 47, 2),
(847, 47, 3),
(848, 47, 4),
(849, 47, 5),
(850, 47, 6),
(851, 47, 7),
(852, 47, 8),
(853, 47, 9),
(854, 47, 10),
(855, 47, 11),
(856, 47, 12),
(857, 47, 13),
(858, 47, 14),
(859, 47, 15),
(860, 47, 16),
(861, 47, 17),
(862, 47, 18),
(863, 48, 1),
(864, 48, 2),
(865, 48, 3),
(866, 48, 4),
(867, 48, 5),
(868, 48, 6),
(869, 48, 7),
(870, 48, 8),
(871, 48, 9),
(872, 48, 10),
(873, 48, 11),
(874, 48, 12),
(875, 48, 13),
(876, 48, 14),
(877, 48, 15),
(878, 48, 16),
(879, 48, 17),
(880, 48, 18),
(881, 49, 1),
(882, 49, 2),
(883, 49, 3),
(884, 49, 4),
(885, 49, 5),
(886, 49, 6),
(887, 49, 7),
(888, 49, 8),
(889, 49, 9),
(890, 49, 10),
(891, 49, 11),
(892, 49, 12),
(893, 49, 13),
(894, 49, 14),
(895, 49, 15),
(896, 49, 16),
(897, 49, 17),
(898, 49, 18),
(899, 49, 19),
(900, 49, 20),
(901, 50, 1),
(902, 50, 2),
(903, 50, 3),
(904, 50, 4),
(905, 50, 5),
(906, 50, 6),
(907, 50, 7),
(908, 50, 8),
(909, 50, 9),
(910, 50, 10),
(911, 50, 11),
(912, 50, 12),
(913, 50, 13),
(914, 50, 14),
(915, 50, 15),
(916, 50, 16),
(917, 50, 17),
(918, 50, 18),
(919, 50, 19),
(920, 50, 20),
(921, 51, 1),
(922, 51, 2),
(923, 51, 3),
(924, 51, 4),
(925, 51, 5),
(926, 51, 6),
(927, 51, 7),
(928, 51, 8),
(929, 51, 9),
(930, 51, 10),
(931, 51, 11),
(932, 51, 12),
(933, 51, 13),
(934, 51, 14),
(935, 51, 15),
(936, 51, 16),
(937, 51, 17),
(938, 51, 18),
(939, 51, 19),
(940, 51, 20),
(941, 52, 1),
(942, 52, 2),
(943, 52, 3),
(944, 52, 4),
(945, 52, 5),
(946, 52, 6),
(947, 52, 7),
(948, 52, 8),
(949, 52, 9),
(950, 52, 10),
(951, 52, 11),
(952, 52, 12),
(953, 52, 13),
(954, 52, 14),
(955, 52, 15),
(956, 52, 16),
(957, 52, 17),
(958, 52, 18),
(959, 52, 19),
(960, 52, 20),
(961, 53, 1),
(962, 53, 2),
(963, 53, 3),
(964, 53, 4),
(965, 53, 5),
(966, 53, 6),
(967, 53, 7),
(968, 53, 8),
(969, 53, 9),
(970, 53, 10),
(971, 53, 11),
(972, 53, 12),
(973, 53, 13),
(974, 53, 14),
(975, 53, 15),
(976, 53, 16),
(977, 53, 17),
(978, 53, 18),
(979, 53, 19),
(980, 53, 20),
(981, 53, 41),
(982, 53, 42),
(983, 53, 43),
(984, 53, 44),
(985, 53, 45),
(986, 53, 46),
(987, 53, 47),
(988, 53, 48),
(989, 54, 1),
(990, 54, 2),
(991, 54, 3),
(992, 54, 4),
(993, 54, 5),
(994, 54, 6),
(995, 54, 7),
(996, 54, 8),
(997, 54, 9),
(998, 54, 10),
(999, 54, 11),
(1000, 54, 12),
(1001, 54, 13),
(1002, 54, 14),
(1003, 54, 15),
(1004, 54, 16),
(1005, 54, 17),
(1006, 54, 18),
(1007, 54, 19),
(1008, 54, 20),
(1009, 54, 41),
(1010, 54, 42),
(1011, 54, 43),
(1012, 54, 44),
(1013, 54, 45),
(1014, 54, 46),
(1015, 54, 47),
(1016, 54, 48),
(1017, 55, 1),
(1018, 55, 2),
(1019, 55, 3),
(1020, 55, 4),
(1021, 55, 5),
(1022, 55, 6),
(1023, 55, 7),
(1024, 55, 8),
(1025, 55, 9),
(1026, 55, 10),
(1027, 55, 11),
(1028, 55, 12),
(1029, 55, 13),
(1030, 55, 14),
(1031, 55, 15),
(1032, 55, 16),
(1033, 55, 17),
(1034, 55, 18),
(1035, 55, 19),
(1036, 55, 20),
(1037, 55, 41),
(1038, 55, 42),
(1039, 55, 43),
(1040, 55, 44),
(1041, 55, 45),
(1042, 55, 46),
(1043, 55, 47),
(1044, 55, 48),
(1045, 56, 1),
(1046, 56, 2),
(1047, 56, 3),
(1048, 56, 4),
(1049, 56, 5),
(1050, 56, 6),
(1051, 56, 7),
(1052, 56, 8),
(1053, 56, 9),
(1054, 56, 10),
(1055, 56, 11),
(1056, 56, 12),
(1057, 56, 13),
(1058, 56, 14),
(1059, 56, 15),
(1060, 56, 16),
(1061, 56, 17),
(1062, 56, 18),
(1063, 56, 19),
(1064, 56, 20),
(1065, 56, 41),
(1066, 56, 42),
(1067, 56, 43),
(1068, 56, 44),
(1069, 56, 45),
(1070, 56, 46),
(1071, 56, 47),
(1072, 56, 48),
(1073, 57, 1),
(1074, 57, 2),
(1075, 57, 3),
(1076, 57, 4),
(1077, 57, 5),
(1078, 57, 6),
(1079, 57, 7),
(1080, 57, 8),
(1081, 58, 1),
(1082, 58, 2),
(1083, 58, 3),
(1084, 58, 4),
(1085, 58, 5),
(1086, 58, 6),
(1087, 58, 7),
(1088, 58, 8),
(1089, 59, 1),
(1090, 59, 2),
(1091, 59, 3),
(1092, 59, 4),
(1093, 59, 5),
(1094, 59, 6),
(1095, 59, 7),
(1096, 59, 8),
(1097, 60, 1),
(1098, 60, 2),
(1099, 60, 3),
(1100, 60, 4),
(1101, 60, 5),
(1102, 60, 6),
(1103, 60, 7),
(1104, 60, 8),
(1106, 64, 1),
(1107, 64, 2),
(1108, 64, 3),
(1109, 64, 4),
(1110, 64, 5),
(1111, 64, 6),
(1112, 64, 7);

-- --------------------------------------------------------

--
-- Table structure for table `storesessions`
--

CREATE TABLE IF NOT EXISTS `storesessions` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ticketTypeId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `price` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storesessions`
--

INSERT INTO `storesessions` (`id`, `userId`, `ticketTypeId`, `amount`, `code`, `price`, `datetime`) VALUES
(1, 1, 1, 1, 'c8339f0fd9a25a4351f618495ade78d7', 350, '2015-02-03 23:23:20'),
(2, 1, 1, 1, '87d7080c41eee28af768c3d55b3b94d0', 350, '2015-02-04 17:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `buyerId` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `seaterId` int(11) NOT NULL,
  `seatId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1338 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `eventId`, `typeId`, `buyerId`, `paymentId`, `userId`, `seaterId`, `seatId`) VALUES
(3, 5, 1, 0, 0, 2, 0, 0),
(4, 5, 1, 2, 0, 2, 0, 0),
(5, 5, 1, 2, 0, 2, 0, 0),
(6, 5, 1, 3, 0, 3, 0, 0),
(7, 5, 1, 4, 0, 4, 0, 0),
(8, 5, 1, 5, 0, 5, 0, 0),
(9, 5, 1, 6, 0, 6, 0, 0),
(10, 5, 1, 7, 0, 7, 0, 0),
(11, 5, 1, 8, 0, 8, 0, 0),
(12, 5, 1, 9, 0, 9, 0, 0),
(13, 5, 1, 10, 0, 10, 0, 0),
(14, 5, 1, 11, 0, 11, 0, 0),
(15, 5, 1, 12, 0, 12, 0, 0),
(16, 5, 1, 13, 0, 13, 0, 0),
(17, 5, 1, 14, 0, 14, 0, 0),
(18, 5, 1, 15, 0, 15, 0, 0),
(19, 5, 1, 16, 0, 16, 0, 0),
(20, 5, 2, 1, 1, 1, 0, 0),
(2, 5, 2, 3, 0, 2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tickettransfers`
--

CREATE TABLE IF NOT EXISTS `tickettransfers` (
`id` int(11) NOT NULL,
  `ticketId` int(11) NOT NULL,
  `fromId` int(11) NOT NULL,
  `toId` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `revertable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickettypes`
--

CREATE TABLE IF NOT EXISTS `tickettypes` (
`id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  `refundable` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickettypes`
--

INSERT INTO `tickettypes` (`id`, `name`, `title`, `price`, `refundable`) VALUES
(1, 'participant', 'Deltaker', 350, 1),
(2, 'free', 'Gratis', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkedintickets`
--
ALTER TABLE `checkedintickets`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`ticketId`,`userId`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`userId`,`ticketTypeId`,`transactionId`);

--
-- Indexes for table `rows`
--
ALTER TABLE `rows`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`seatmapId`,`entranceId`,`number`,`x`,`y`);

--
-- Indexes for table `seatmaps`
--
ALTER TABLE `seatmaps`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`rowId`,`number`);

--
-- Indexes for table `storesessions`
--
ALTER TABLE `storesessions`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`userId`,`ticketTypeId`,`code`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`,`typeId`,`buyerId`,`paymentId`,`userId`,`seaterId`,`seatId`);

--
-- Indexes for table `tickettransfers`
--
ALTER TABLE `tickettransfers`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`ticketId`,`fromId`,`toId`,`revertable`);

--
-- Indexes for table `tickettypes`
--
ALTER TABLE `tickettypes`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`refundable`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkedintickets`
--
ALTER TABLE `checkedintickets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rows`
--
ALTER TABLE `rows`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `seatmaps`
--
ALTER TABLE `seatmaps`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1114;
--
-- AUTO_INCREMENT for table `storesessions`
--
ALTER TABLE `storesessions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1338;
--
-- AUTO_INCREMENT for table `tickettransfers`
--
ALTER TABLE `tickettransfers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tickettypes`
--
ALTER TABLE `tickettypes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;