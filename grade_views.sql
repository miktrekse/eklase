-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 16, 2025 at 10:25 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grade_views`
--

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `subject_id`, `grade`) VALUES
(1, 1, 1, 9),
(2, 1, 2, 8),
(3, 1, 3, 6),
(4, 1, 4, 10),
(5, 1, 5, 10),
(6, 2, 1, 6),
(7, 2, 2, 7),
(8, 2, 3, 3),
(9, 1, 4, 9),
(10, 1, 5, 4),
(11, 3, 1, 10),
(12, 3, 2, 9),
(13, 3, 3, 9),
(14, 1, 4, 8),
(15, 1, 5, 9),
(16, 4, 1, 5),
(17, 4, 2, 6),
(18, 4, 3, 4),
(19, 1, 4, 7),
(20, 1, 5, 2),
(21, 5, 1, 7),
(22, 5, 2, 5),
(23, 5, 3, 8),
(24, 1, 4, 3),
(25, 1, 5, 5),
(26, 6, 1, 8),
(27, 6, 2, 8),
(28, 6, 3, 5),
(29, 1, 4, 1),
(30, 1, 5, 7),
(31, 7, 1, 4),
(32, 7, 2, 7),
(33, 7, 3, 1),
(34, 1, 4, 7),
(35, 1, 5, 1),
(36, 8, 1, 9),
(37, 8, 2, 9),
(38, 8, 3, 2),
(39, 1, 4, 9),
(40, 1, 5, 9),
(41, 9, 1, 10),
(42, 9, 2, 6),
(43, 9, 3, 7),
(44, 1, 4, 2),
(45, 1, 5, 8),
(46, 10, 1, 3),
(47, 10, 2, 4),
(48, 10, 3, 10),
(49, 1, 4, 4),
(50, 1, 5, 5),
(51, 11, 1, 7),
(52, 11, 2, 6),
(53, 11, 3, 6),
(54, 1, 4, 3),
(55, 1, 5, 3),
(56, 12, 1, 6),
(57, 12, 2, 5),
(58, 12, 3, 10),
(59, 1, 4, 6),
(60, 1, 5, 6),
(61, 13, 1, 8),
(62, 13, 2, 9),
(63, 13, 3, 8),
(64, 1, 4, 8),
(65, 1, 5, 7),
(66, 14, 1, 5),
(67, 14, 2, 4),
(68, 14, 3, 9),
(69, 1, 4, 3),
(70, 1, 5, 6),
(71, 15, 1, 9),
(72, 15, 2, 10),
(73, 15, 3, 4),
(74, 1, 4, 10),
(75, 1, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `the_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `the_date`) VALUES
(1, 'Jānis', 'Bērziņš', '2025-04-16 10:23:13'),
(2, 'Kate', 'Ozoliņa', '2025-04-16 10:23:13'),
(3, 'Andris', 'Sienāzis', '2025-04-16 10:23:13'),
(4, 'Dāvis', 'Krasts', '2025-04-16 10:23:13'),
(5, 'Gustavs', 'Mieriņš', '2025-04-16 10:23:13'),
(6, 'Roberts', 'Kastanis', '2025-04-16 10:23:13'),
(7, 'Sofija', 'Jūrniece', '2025-04-16 10:23:13'),
(8, 'Kristīne', 'Ceriņa', '2025-04-16 10:23:13'),
(9, 'Sanija', 'Mītniece', '2025-04-16 10:23:13'),
(10, 'Markuss', 'Krieviņš', '2025-04-16 10:23:13'),
(11, 'Sabīne', 'Brikmane', '2025-04-16 10:23:13'),
(12, 'Henrijs', 'Čarlzs', '2025-04-16 10:23:13'),
(13, 'Aleksandrs', 'Mājnieks', '2025-04-16 10:23:13'),
(14, 'Anna', 'Marija', '2025-04-16 10:23:13'),
(15, 'Niks', 'Slinkotājs', '2025-04-16 10:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`) VALUES
(1, 'Matemātika'),
(2, 'Ķīmija'),
(3, 'Bioloģija'),
(4, 'Sports'),
(5, 'Angļu valoda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
