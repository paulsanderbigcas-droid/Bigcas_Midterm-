-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2026 at 02:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminpanel`
--

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL DEFAULT 'bg-secondary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `username`, `category`, `name`, `color`) VALUES
(1, 'admin', 'Frontend', 'HTML', 'bg-danger'),
(2, 'admin', 'Frontend', 'CSS', 'bg-primary'),
(3, 'admin', 'Frontend', 'JavaScript', 'bg-warning text-dark'),
(4, 'admin', 'Frontend', 'Bootstrap 5', 'bg-info text-dark'),
(5, 'admin', 'Backend', 'PHP', 'bg-secondary'),
(6, 'admin', 'Backend', 'MySQL', 'bg-success'),
(7, 'admin', 'Libraries', 'jQuery', 'bg-dark'),
(8, 'admin', 'Design', 'Responsive Design', 'bg-primary'),
(9, 'paulsanderbigcas', 'Frontend', 'HTML', 'bg-secondary'),
(10, 'paulsanderbigcas', 'Frontend', 'CSS', 'bg-secondary'),
(11, 'paulsanderbigcas', 'Backend', 'SQL', 'bg-secondary'),
(12, 'paulsanderbigcas', 'Backend ', 'NoSQL', 'bg-secondary');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_skills_user` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `fk_skills_user` FOREIGN KEY (`username`) REFERENCES `native_users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
