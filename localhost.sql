-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2023 at 04:06 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `UnityAccess`
--
CREATE DATABASE IF NOT EXISTS `UnityAccess` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `UnityAccess`;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(10) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(320) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `salt` varchar(50) NOT NULL,
  `experience` int(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `username`, `email`, `hash`, `salt`, `experience`) VALUES
(1, 'usernametest', 'testemail@gmail.com', '$5$rounds=5000$steamedhamsusern$wYgs3oR5Z28jZBbAlU7PxgpuwTIPvTZP2Bvyx/LtBP3', '$5$rounds=5000$steamedhamsusernametest$', 0),
(2, 'testusername', 'usertest@gmail.com', '$5$rounds=5000$steamedhamstestu$TYUO2plEdpOSkRmXv5RiOjdZhNxe7eLsQ/DmiAwWiM5', '$5$rounds=5000$steamedhamstestusername$', 0),
(3, 'Levinguard', 'bryanlevin72@gmail.com', '$5$rounds=5000$steamedhamsLevin$thamCBDogAEO9jbBoexF33KQB97mCfnlAgDVgxCd084', '$5$rounds=5000$steamedhamsLevinguard$', 0),
(4, 'ArlingDaMom', 'arlinglevin@gmail.com', '$5$rounds=5000$steamedhamsArlin$ubAPYsugG6OyRm1CBKhkmgaxTZrIZlAIQeoqhSaXdb5', '$5$rounds=5000$steamedhamsArlingDaMom$', 0),
(5, 'testregister', 'testregister@gmail.com', '$5$rounds=5000$steamedhamstestr$3S9CCWRdno7f5pbYMQWsMzAd7d52E3Rj5oZeENcgoZ7', '$5$rounds=5000$steamedhamstestregister$', 0),
(6, 'testinggamertag', 'testing@yahoo.com', '$5$rounds=5000$steamedhamstesti$4bIeBb23TE3srtVs/uLwO.LTyUTiXCEyLO0/DWmxMX/', '$5$rounds=5000$steamedhamstestinggamertag$', 0),
(7, 'usertest2', 'usertest2@yahoo.com', '$5$rounds=5000$steamedhamsusert$eMXmef0k4xIR4BPwpXNsMdfUFkVSu.oG4/2QvksfYk9', '$5$rounds=5000$steamedhamsusertest2$', 0),
(8, 'screentest', 'screentest@yahoo.com', '$5$rounds=5000$steamedhamsscree$KQoYRTOpZazC811ejWFlSxNWQMIxIm4iCnFdFft7t3B', '$5$rounds=5000$steamedhamsscreentest$', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
