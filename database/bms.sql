-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2018 at 07:29 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookcases`
--

CREATE TABLE `bookcases` (
  `user_email` varchar(50) NOT NULL,
  `bookcase` varchar(50) NOT NULL,
  `shelf_count` int(5) NOT NULL,
  `shelf_cap` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookcases`
--

INSERT INTO `bookcases` (`user_email`, `bookcase`, `shelf_count`, `shelf_cap`) VALUES
('1', '1', 1, 1),
('11', '11', 11, 1),
('1', '1', 1, 1),
('11', '11', 11, 1),
('2@2.2', 'salih', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `user_email` varchar(50) NOT NULL,
  `bookcase` varchar(20) NOT NULL,
  `shelf_id` int(5) NOT NULL,
  `title` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `gener` varchar(20) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`user_email`, `bookcase`, `shelf_id`, `title`, `author`, `gener`, `isbn`, `price`) VALUES
('2@2.2', 'heap', 1, '11', '11', '1', '111', 1),
('2@2.2', 'heap', 1, 'w', 'ew', 'we', '12', 41),
('2@2.2', 'heap', 1, 'w', 'ew', 'we', '12', 41),
('2@2.2', 'heap', 1, 'n', 'm', 'n', '88', 90),
('2@2.2', 'heap', 1, 'Titlem', '2', 'Genrem', '22', 22),
('2@2.2', 'heap', 1, '11', '11', '1', '111', 1111),
('2@2.2', 'heap', 3, '123', '123', 'Ge11nre', '123', 123),
('2@2.2', 'heap', 1, 'salih', 'Author88', 'bluewhale', '90', 500),
('2@2.2', 'salih', 1, 'Titlem', 'Author88', 'Genrem', '44', 55),
('2@2.2', 'heap', 1, 'Titlem', '3', 'Genre0', '3', 432),
('slakshmanan1698@gmai', 'Bookrack', 2, 'Physics', 'Salih', 'Comedy', '11001', 50),
('slakshmanan1698@gmai', 'Bookrack', 1, 'qwe', '22', 'qwe', '22', 432),
('slakshmanan1698@gmai', 'Bookrack', 1, 'qwe', '22', 'qwe', '22', 432),
('slakshmanan1698@gmai', 'Bookrack', 1, 'ww', 'w', 'qwe', '22', 12),
('slakshmanan1698@gmai', 'Bookrack', 2, '3', '3', 'Genre3', '3', 333),
('2@2.2', 'heap', 1, '33', '33', '333', '3', 3444),
('2@2.2', 'heap', 1, '33', '33', '333', '3', 3444),
('2@2.2', 'heap', 1, '33', '33', '333', '3', 3444),
('2@2.2', 'heap', 2, '2', '22', '231', '112', 222),
('slakshmanan1698@gmai', 'Bookrack', 2, 'Title2', 'Author3', '2', '2', 432),
('slakshmanan1698@gmail.com', 'heap', 2, 'Title2', 'Author3', '2', '2', 432),
('slakshmanan1698@gmail.com', 'heap', 2, 'Title2', 'Author3', '2', '2', 432),
('slakshmanan1698@gmail.com', 'heap', 2, 'Title2', 'Author3', '2', '2', 432),
('slakshmanan1698@gmail.com', 'heap', 2, 'Title2', 'Author3', '2', '2', 432),
('slakshmanan1698@gmail.com', 'heap', 2, 'Title2', 'Author3', '2', '2', 432),
('slakshmanan1698@gmail.com', 'heap', 1, 'Physics', 'Salih', 'Comedy', '4745', 50),
('slakshmanan1698@gmail.com', 'heap', 1, 'Titl2e', '1', 'Genre2', '32', 32),
('slakshmanan1698@gmail.com', 'heap', 1, 'Titl2e', '1', 'Genre2', '32', 32),
('slakshmanan1698@gmail.com', 'heap', 1, 'Titl2e', '1', 'Genre2', '32', 32),
('slakshmanan1698@gmail.com', 'heap', 1, 'Titl2e', '1', 'Genre2', '32', 32);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_pass` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_pass`) VALUES
(0000000021, '1@1.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(0000000022, '2@2.2', 'c81e728d9d4c2f636f067f89cc14862c'),
(0000000023, '1@1.1', 'c4ca4238a0b923820dcc509a6f75849b'),
(0000000024, '11@1.1', '6512bd43d9caa6e02c990b0a82652dca'),
(0000000025, '111@1.1', '698d51a19d8a121ce581499d7b701668'),
(0000000026, 'z@z.z', 'fbade9e36a3f36d3d676c1b808451dd7'),
(0000000027, 'slakshmanan1698@gmail.com', '5bcdb629af684c811d9825f2960378a6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
