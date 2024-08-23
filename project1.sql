-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2024 at 10:41 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `status_attendance` enum('present','absent') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `member_name`, `member_id`, `attendance_date`, `status_attendance`) VALUES
(0, '', 0, '2024-08-30', ''),
(1, '', 1, '2024-08-15', ''),
(3, '', 1, '2024-08-30', ''),
(4, '', 1, '2024-08-31', '');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `member_number` varchar(13) NOT NULL,
  `member_password` varchar(255) NOT NULL,
  `member_year` int(11) NOT NULL,
  `member_status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_name`, `member_number`, `member_password`, `member_year`, `member_status`) VALUES
(0, 'ภาณุพงศ์ ทองเกตุ', '1849901884714', '12345678', 1, 1),
(1, 'ธนกฤต รัตนจินดา', '1849901827745', '12345678', 2, 2),
(2, 'อิบรอฮีม น้อยทับทิม', '1849901827746', '12345678', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_week` varchar(50) NOT NULL,
  `news_detail` varchar(200) NOT NULL,
  `news_detailin` varchar(255) NOT NULL,
  `news_pic` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_week`, `news_detail`, `news_detailin`, `news_pic`) VALUES
(0, 'สัปดาห์ที่4', 'ฟหกฟหนกนฟหากนยฟหากยฟาหกกหยฟ', 'ฟหสกยนฟหทกนยฟาหกนยาฟหนยกาฟห', '3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_number` (`member_number`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
