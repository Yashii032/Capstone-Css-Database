-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 01:27 PM
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
-- Database: `my_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `appointment_date` date NOT NULL,
  `payment` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `purpose`, `appointment_date`, `payment`, `created_at`, `updated_at`) VALUES
(1, '', '0000-00-00', 'Cash On Delivery', '2024-03-06 11:48:16', '2024-03-06 11:48:16'),
(2, '', '0000-00-00', 'Cash On Delivery', '2024-03-06 11:50:06', '2024-03-06 11:50:06'),
(3, '', '0000-00-00', 'Cash On Delivery', '2024-03-06 11:50:40', '2024-03-06 11:50:40'),
(4, '', '0000-00-00', 'Cash On Delivery', '2024-03-06 11:51:49', '2024-03-06 11:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `bdate` date NOT NULL,
  `age` int(11) NOT NULL,
  `bplace` text NOT NULL,
  `gender` varchar(20) NOT NULL,
  `civilstatus` enum('single','divorced','married','widowed','common-law') NOT NULL,
  `spousefname` varchar(100) NOT NULL,
  `spousemidname` varchar(100) NOT NULL,
  `spouselname` varchar(100) NOT NULL,
  `street` text NOT NULL,
  `barangay` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `zip` int(10) NOT NULL,
  `cellnum` int(11) NOT NULL,
  `telnum` int(11) NOT NULL,
  `primeEmail` varchar(100) NOT NULL,
  `secEmail` text NOT NULL,
  `empStat` enum('employed (Private)','student','employed(public)','unemployed','freelancer','self employed','retired/resign from work') NOT NULL,
  `prime_ID_Type` enum('Barangay ID','Alien Certification') NOT NULL,
  `prime_ID_Photo` blob NOT NULL,
  `second_ID_Type` enum('Barangay Certification','Barangay Clearance') NOT NULL,
  `second_ID_Photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`id`, `firstname`, `middlename`, `lastname`, `bdate`, `age`, `bplace`, `gender`, `civilstatus`, `spousefname`, `spousemidname`, `spouselname`, `street`, `barangay`, `city`, `country`, `zip`, `cellnum`, `telnum`, `primeEmail`, `secEmail`, `empStat`, `prime_ID_Type`, `prime_ID_Photo`, `second_ID_Type`, `second_ID_Photo`) VALUES
(1, 'Yashiro', 'Batig nawong', 'Izana', '2024-03-21', 19, 'Digos City', 'on', 'single', 'Clara', 'Olay', 'MERIANA', 'Neuvo Homes Digos City', 'Barangay Zone 1', 'Digos City', 'Philippines', 8002, 2147483647, 88322, 'lordains2004@gmail.com', 'lordains2004@gmail.com', 'employed (Private)', 'Alien Certification', 0x75706c6f6164732f7072696d655f49445f50686f746f732f53637265656e73686f7420323032342d30322d3239203139303834362e6a7067, 'Barangay Certification', 0x75706c6f6164732f7365636f6e645f49445f50686f746f732f53637265656e73686f7420323032342d30322d3239203139303632352e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `Date`) VALUES
(1, 'Barangay', 'brngycorner@gmail.com', '$2y$10$wCkK6M66mwnHHnpT.fHl.uc9IEB8Uw6L4Clraj9c8/qufOQPhAENy', '2024-03-06 11:47:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_details`
--
ALTER TABLE `personal_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
