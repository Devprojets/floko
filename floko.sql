-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2022 at 09:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `floko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins_db`
--

CREATE TABLE `admins_db` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins_db`
--

INSERT INTO `admins_db` (`id`, `name`, `email`, `pass`) VALUES
('Admin557', 'usama', 'usama@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `ads_db`
--

CREATE TABLE `ads_db` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `niche` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ads_db`
--

INSERT INTO `ads_db` (`id`, `title`, `description`, `photo`, `niche`) VALUES
(28876, 'test', 'test ad', 'scott-graham-5fNmWej4tAA-unsplash.jpg', 'Tech');

-- --------------------------------------------------------

--
-- Table structure for table `comp_db`
--

CREATE TABLE `comp_db` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `parent_comp` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `intrest` varchar(255) NOT NULL,
  `b2b` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comp_db`
--

INSERT INTO `comp_db` (`id`, `name`, `email`, `pass`, `domain`, `parent_comp`, `bio`, `logo`, `intrest`, `b2b`) VALUES
(1056, 'Bizdev', 'bizdev@gmail.com', '1234', 'Web Development', 'Bizdev', 'We are a we development company in Pakistan proviing servics world wide', 'Null', 'Tech', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_db`
--

CREATE TABLE `jobs_db` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `niche` varchar(255) NOT NULL,
  `contract_type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `medical` varchar(255) NOT NULL,
  `travel` varchar(255) NOT NULL,
  `bonus` varchar(255) NOT NULL,
  `boosted` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs_db`
--

INSERT INTO `jobs_db` (`id`, `title`, `salary`, `type`, `niche`, `contract_type`, `location`, `description`, `medical`, `travel`, `bonus`, `boosted`, `date`, `email`) VALUES
(531, 'Front end developer', '10k', 'Remote', 'Web', 'CDI', 'Paris', 'this is job for front end developer with vue js expeirence', 'true', 'false', 'true', '0', '04-08-2022', 'bizdev@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `match_db`
--

CREATE TABLE `match_db` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `com_email` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `com_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `match_done` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `packages_db`
--

CREATE TABLE `packages_db` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `swipe` varchar(255) NOT NULL,
  `redo` varchar(255) NOT NULL,
  `com_accep_ref` varchar(255) NOT NULL,
  `comp_accep_me` varchar(255) NOT NULL,
  `super_swipe` varchar(255) NOT NULL,
  `boost` varchar(255) NOT NULL,
  `super_msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_db`
--

CREATE TABLE `user_db` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `intrest` varchar(255) NOT NULL,
  `pref_location` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `profilepic` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL,
  `contract_type` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `package` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_db`
--

INSERT INTO `user_db` (`id`, `name`, `email`, `pass`, `salary`, `location`, `intrest`, `pref_location`, `bio`, `profilepic`, `job_type`, `contract_type`, `domain`, `category`, `age`, `package`) VALUES
(1674, 'usama', 'usama@gmail.com', '123456', '50k', 'Pakistan', 'Cricket', 'United Kingdom', 'I am Web Developer And App Develoepr Flutter PHP', 'Null', 'Contract', 'CDI', 'Tech', 'Web Development', '24', 'Silver');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins_db`
--
ALTER TABLE `admins_db`
  ADD UNIQUE KEY `id` (`id`,`email`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `comp_db`
--
ALTER TABLE `comp_db`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `packages_db`
--
ALTER TABLE `packages_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_db`
--
ALTER TABLE `user_db`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;
