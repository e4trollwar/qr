-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2019 at 12:04 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csdeptso_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `email` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `avatar` text NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `year` varchar(10) NOT NULL,
  `month` varchar(15) NOT NULL,
  `day` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`email`, `id`, `fname`, `lname`, `avatar`, `username`, `password`, `Gender`, `year`, `month`, `day`) VALUES
('dfsdf', 1, 'Juan', 'Dela Cruz', 'uploads/me.jpg', 'jdelacruz', '12345678', '', '', '', ''),
('manzano.rigel.m@gmail.com', 13, 'Rigel', 'Manzano', '', 'Raii213', 'Raii213', 'Female', '1996', 'October', '23'),
('sambrano.karen@gmail.com', 17, 'Karen', 'Sambrano', '', 'Karen', '123123', '', '1998', 'September', '18'),
('asasdasd@ssd', 18, 'aarona', 'hoho', 'maleficent-37.jpg', 'aa1', 'asdasdasd', 'Male', '2002', 'March', '17'),
('bbbbbb@gmail.com', 19, 'qweqwe', 'qweqwe', 'uploads/default_profile.jpg', 'bbbbbb@gmail.com', 'qweqweqwe', '', '', '', ''),
('angeloarimas23@gmail.com', 20, 'arimas', 'arimas', 'uploads/default_profile.jpg', 'angeloarimas23@gmail.com', 'arimas23', '', '', '', ''),
('matyson23@yahoo.com', 21, 'tyson', 'tyson', 'uploads/default_profile.jpg', 'matyson23@yahoo.com', 'tyson2323', '', '', '', ''),
('jm@gmail.com', 22, 'asdasd', 'asdasd', 'uploads/default_profile.jpg', 'jm@gmail.com', 'asdasdasd', '', '', '', ''),
('michangelo23@gmail.com', 23, 'mich', 'arimas', 'uploads/default_profile.jpg', 'michangelo23@gmail.com', 'qweqweqwe', '', '', '', ''),
('asdasd@gmail', 24, 'asdasd', 'asdasd', 'uploads/default_profile.jpg', 'asdasd@user', 'asdasdasd', '', '', '', ''),
('charmcharm123456789123456789123456789123456789@gma', 25, 'Charmaine', 'Nidoy', 'uploads/default_profile.jpg', 'charmcharm123456789123456', '123456789abcdefghijklmnop', '', '', '', ''),
('123123@g', 26, 'name', 'lastname', 'maleficent-31.jpg', '123123@g', '12345678', '', '', '', ''),
('angeloarimas@gmail.com', 30, 'Michael Angelo', 'Arimas', '56603181_865440463796476_812802228392820736_n3.jpg', 'angeloarimas@gmail.com', 'qweqweqw', 'Female', '1996', 'October', '23');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL,
  `reciever` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message_read` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender`, `message`, `reciever`, `time`, `message_read`) VALUES
(351, '1', 'asd', '17', '2019-09-15 01:13:32', 1),
(352, '1', 'ddd', '17', '2019-09-15 01:18:16', 1),
(353, '17', 'dssdf', '1', '2019-09-15 01:18:34', 1),
(354, '17', 'dsdsd', '1', '2019-09-15 01:19:12', 1),
(355, '17', 'sd', '1', '2019-09-15 01:58:02', 1),
(356, '17', 'xx', '17', '2019-09-15 01:58:20', 1),
(357, '17', 'xx', '1', '2019-09-15 01:58:29', 1),
(358, '1', 'zxz', '17', '2019-09-15 01:58:58', 1),
(359, '17', 'as', '1', '2019-09-15 01:59:31', 1),
(360, '1', 'xcvxcv', '17', '2019-09-15 03:06:10', 1),
(361, '17', 'sd', '1', '2019-09-15 03:17:22', 1),
(362, '17', 'd', '1', '2019-09-15 03:17:31', 1),
(363, '1', 'hoy', '17', '2019-09-15 04:17:45', 1),
(364, '17', 'sd', '1', '2019-09-15 04:54:47', 1),
(365, '1', 'asd', '17', '2019-09-15 05:05:59', 1),
(366, '1', 'asd', '17', '2019-09-15 06:16:06', 1),
(367, '1', 'asd', '17', '2019-09-16 01:29:17', 1),
(368, '1', 'asd', '17', '2019-09-16 01:29:31', 1),
(369, '17', 'napanam?\n', '1', '2019-09-16 02:32:52', 1),
(370, '13', 'asdasd', '17', '2019-09-17 06:55:34', 1),
(371, '17', 'dd', '13', '2019-09-17 06:55:42', 1),
(372, '17', 'sdf', '13', '2019-09-17 06:56:36', 1),
(373, '18', 'asd', '17', '2019-09-19 11:34:55', 1),
(374, '22', 'Hi nice to meet you guys\n', '1', '2019-09-19 14:59:18', 1),
(375, '1', 'OW how ARE YOU', '22', '2019-09-19 14:59:32', 1),
(376, '18', 'hey yo\n', '23', '2019-09-20 02:11:36', 0),
(377, '17', 'Hi Karen', '26', '2019-09-20 04:26:38', 0),
(378, '26', 'Hello WHo you', '17', '2019-09-20 04:26:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `ID` int(20) NOT NULL,
  `photo_details` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `to_id` varchar(10) NOT NULL,
  `from_id` varchar(30) NOT NULL,
  `reciever_account_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_read` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `photo_details`, `comment`, `to_id`, `from_id`, `reciever_account_id`, `time`, `comment_read`) VALUES
(265, 'abstract', 'sdf', '135', 'aaron hoho', 17, '2019-09-19 11:19:23', 1),
(266, 'Nature\'s blessing', 'sd', '125', 'aaron hoho', 1, '2019-09-19 11:22:49', 0),
(267, 'asd', 'asd', '150', 'aaron hoho', 18, '2019-09-19 11:31:01', 1),
(268, 'asd', 'sdf', '150', 'aaron hoho', 18, '2019-09-19 11:31:12', 1),
(269, 'asd', 'sdf', '150', 'aaron hoho', 18, '2019-09-19 11:31:13', 1),
(270, 'asd', 'sdf', '150', 'aaron hoho', 18, '2019-09-19 11:31:14', 1),
(271, 'asd', 'sdf', '150', 'aaron hoho', 18, '2019-09-19 11:31:15', 1),
(272, 'asd', 'sdf', '150', 'aaron hoho', 18, '2019-09-19 11:31:16', 1),
(273, 'sdf', 'fd', '152', 'arimas arimas', 20, '2019-09-19 11:41:49', 1),
(274, 'Nature\'s blessing', 'sdf', '127', 'aaron hoho', 1, '2019-09-19 14:39:34', 0),
(275, 'abstract', 'sdf', '135', 'aaron hoho', 17, '2019-09-19 14:39:41', 1),
(276, 'BEUTIFUL LIFE', 'sdf', '143', 'aaron hoho', 17, '2019-09-19 14:39:46', 1),
(277, 'Nature\'s blessing', 'asd', '125', 'aaron hoho', 1, '2019-09-19 14:47:11', 0),
(278, 'Music life', 'asd', '128', 'aaron hoho', 1, '2019-09-19 14:47:50', 0),
(279, 'Photography', 'asd', '131', 'aaron hoho', 17, '2019-09-19 14:47:55', 1),
(280, 'abstract', 'test', '135', 'name lastname', 17, '2019-09-20 04:22:46', 1),
(281, 'BEUTIFUL LIFE', 'Hi its beautiful', '143', 'name lastname', 17, '2019-09-20 04:27:18', 1),
(282, 'Photography', 'yow', '131', 'name lastname', 17, '2019-09-20 04:31:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

CREATE TABLE `friend` (
  `id` int(11) NOT NULL,
  `name_1_id` varchar(20) NOT NULL,
  `name_2_id` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend`
--

INSERT INTO `friend` (`id`, `name_1_id`, `name_2_id`, `status`, `time`) VALUES
(3, '17', '1', 1, '2019-09-16 01:50:26'),
(4, '13', '17', 1, '2019-09-16 01:50:26'),
(5, '1', '17', 1, '2019-09-17 06:29:27'),
(6, '17', '13', 1, '2019-09-17 06:52:31'),
(7, '18', '17', 1, '2019-09-17 07:00:04'),
(8, '17', '18', 1, '2019-09-17 07:00:04'),
(147, '18', '1', 1, '2019-09-19 14:35:35'),
(148, '1', '18', 1, '2019-09-19 14:35:46'),
(149, '22', '1', 1, '2019-09-19 14:58:40'),
(150, '1', '22', 1, '2019-09-19 14:59:05'),
(151, '23', '18', 1, '2019-09-20 02:10:58'),
(152, '18', '23', 1, '2019-09-20 02:11:25'),
(153, '26', '17', 1, '2019-09-20 04:12:32'),
(154, '17', '26', 1, '2019-09-20 04:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `cat_id` varchar(10) NOT NULL,
  `photo_details` text NOT NULL,
  `uploader` varchar(30) NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `path_loc` varchar(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `username`, `cat_id`, `photo_details`, `uploader`, `uploader_id`, `path_loc`, `time`) VALUES
(123, 'Raii213', '5', 'GTR r35', 'Rigel Manzano', 13, '11.jpg', '2019-04-17 23:06:04'),
(124, 'Raii213', '5', 'GTR r35', 'Rigel Manzano', 13, '21.jpg', '2019-07-17 23:06:04'),
(125, 'jdelacruz', '1', 'Nature\'s blessing', 'Juan Dela Cruz', 1, '71.jpg', '2019-08-17 23:06:04'),
(127, 'jdelacruz', '1', 'Nature\'s blessing', 'Juan Dela Cruz', 1, '61.jpg', '2019-08-17 23:06:04'),
(128, 'jdelacruz', '2', 'Music life', 'Juan Dela Cruz', 1, '51.jpg', '2019-08-31 23:06:04'),
(131, 'Karen', '3', 'Photography', 'Karen Sambrano', 17, '31.jpg', '2019-09-09 23:06:04'),
(135, 'Karen', '4', 'abstract', 'Karen Sambrano', 17, '101.jpg', '2019-08-17 23:06:04'),
(143, 'Karen', '1', 'BEUTIFUL LIFE', 'Karen Sambrano', 17, 'erd1.jpg', '2019-08-17 23:06:04'),
(150, 'aa', '1', 'asd', 'aaron hoho', 18, 'maxresdefault3.jpg', '2019-09-19 11:30:50'),
(151, 'angeloarimas23@gmail', '1', ' beutiful', 'arimas arimas', 20, 'erd.jpg', '2019-09-19 11:37:26'),
(152, 'angeloarimas23@gmail', '3', 'sdf', 'arimas arimas', 20, 'maxresdefault4.jpg', '2019-09-19 11:37:38'),
(153, 'aa', '1', 'court', 'aaron hoho', 18, 'maxresdefault5.jpg', '2019-09-20 02:14:16'),
(154, 'asdasd@gmail', '4', 'paradise', 'asdasd asdasd', 24, 'maleficent-3.jpg', '2019-09-20 02:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(21) NOT NULL,
  `last_name` varchar(21) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `first_name`, `last_name`, `image`) VALUES
(1, '', '', ''),
(2, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `avatar` text NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `id`, `fname`, `lname`, `avatar`, `username`, `password`) VALUES
('', 1, 'Patrick', 'Mole', 'uploads/me.jpg', 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `friend`
--
ALTER TABLE `friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
