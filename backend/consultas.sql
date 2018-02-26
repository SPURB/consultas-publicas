-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2018 at 08:31 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consultas`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `public` tinyint(1) NOT NULL,
  `postid` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `commentid` int(11) NOT NULL,
  `commentcontext` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memid`, `name`, `email`, `content`, `date`, `public`, `postid`, `trash`, `commentid`, `commentcontext`) VALUES
(1, 'asdasdasdasd', 'asd@asd.com', 'Lrem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-01-01 00:00:00', 0, 1, 1, 2, ''),
(33, 'Thomas', 'yubathom@gmail.com', 'teste', '0000-00-00 00:00:00', 0, 3, 1, 0, ''),
(34, 'teste', 'yubathom@gmail.com', 'teste', '0000-00-00 00:00:00', 0, 2, 1, 0, ''),
(46, 'Thomas', 'yubathom@gmail.com', 'testet', '0000-00-00 00:00:00', 0, 1, 1, 0, ''),
(47, 'teste', 'asd@teste.com', 'tres', '0000-00-00 00:00:00', 1, 1, 0, 3, ''),
(48, 'Thomas', 'yubathom@gmail.com', 'dois', '0000-00-00 00:00:00', 1, 1, 0, 2, ''),
(49, 'Thomas', 'yubathom@gmail.com', 'um', '0000-00-00 00:00:00', 1, 1, 0, 1, ''),
(50, 'asd', 'asd@asd.com', 'teste - > um', '0000-00-00 00:00:00', 0, 1, 0, 1, 'um'),
(51, 'Thomas', 'yubathom@gmail.com', 'teste dois', '0000-00-00 00:00:00', 0, 1, 0, 2, 'dois');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
