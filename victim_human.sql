-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 07:02 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `victim_human`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_user`
--

CREATE TABLE `ambulance_user` (
  `id` int(11) NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fcmid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ambulance_user`
--

INSERT INTO `ambulance_user` (`id`, `area`, `city`, `state`, `name`, `contact`, `email`, `password`, `fcmid`, `status`, `created_date`) VALUES
(12, 'Incometax', 'Ahmedabad', 'Gujarat', 'vihang', '7567174979', 'vihangpatel133@gmail.com', '1234', 'fy4AT3u0vEo:APA91bFtCPdi4Rf_0DqPebpyPYtPH53axDVgSczE4TnUK-C3saFPjKzueTBMuMI9PxgNbvHEemVON9ipkeSKAEybKeiUg9sB13M_3BOsNOWaqdpzVbFsXQqwsqz2bKtbHshAGlNIOvNE', 'Accepted', '2020-02-20 10:23:30'),
(13, 'Nikol', 'Ahmedabad', 'Gujarat', 'abc', '9558790401', 'ronakrajput401@gmail.com', '1234', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', 'Cancelled', '2020-02-20 10:23:39'),
(14, 'Bopal\r\n', 'Ahmedabad', 'Gujarat', 'abbanna', '9558790401', 'ronakrajput9558@gmail.com', '4567', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', 'Cancelled', '2020-02-20 10:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `cityId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `cityId`, `name`, `created_date`) VALUES
(1, '1', 'Bopal\r\n', '2020-02-15 07:01:30'),
(2, '1', 'Naranpura', '2020-02-15 07:01:12'),
(3, '1', 'Naroda', '2020-02-15 07:02:34'),
(4, '1', 'Bapunagar', '2020-02-15 07:02:34'),
(5, '1', 'Rakhiyal', '2020-02-15 07:04:54'),
(6, '1', 'Amraivadi', '2020-02-15 07:04:54'),
(7, '1', 'Thaltej', '2020-02-15 07:06:47'),
(8, '1', 'Vadaj', '2020-02-15 07:06:47'),
(9, '1', 'Ranip', '2020-02-15 07:08:14'),
(10, '1', 'jivrajpark', '2020-02-15 07:08:14'),
(11, '1', 'Paladi', '2020-02-15 07:12:59'),
(12, '1', 'Ambavadi', '2020-02-15 07:12:59'),
(13, '1', 'Odhav', '2020-02-15 07:15:49'),
(14, '1', 'Nikol', '2020-02-15 07:15:49'),
(15, '1', 'Iskon', '2020-02-15 07:22:30'),
(16, '1', 'Sola', '2020-02-15 07:22:30'),
(17, '2', 'Gotri', '2020-02-15 07:33:05'),
(18, '2', 'Bhayli Road', '2020-02-15 07:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `stateId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `stateId`, `name`, `created_date`) VALUES
(1, '1', 'Ahmedabad', '2020-02-14 10:09:37'),
(2, '1', 'Vadodara', '2020-02-14 10:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalnotification`
--

CREATE TABLE `hospitalnotification` (
  `id` int(11) NOT NULL,
  `hospitalId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hospitalName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ambulanceId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fcmId` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospitalnotification`
--

INSERT INTO `hospitalnotification` (`id`, `hospitalId`, `hospitalName`, `ambulanceId`, `message`, `fcmId`, `created_date`) VALUES
(2, '13', 'Rudra', '13', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'fy4AT3u0vEo:APA91bFtCPdi4Rf_0DqPebpyPYtPH53axDVgSczE4TnUK-C3saFPjKzueTBMuMI9PxgNbvHEemVON9ipkeSKAEybKeiUg9sB13M_3BOsNOWaqdpzVbFsXQqwsqz2bKtbHshAGlNIOvNE', '2020-02-18 09:51:53'),
(3, '13', 'rudra', '13', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'fy4AT3u0vEo:APA91bFtCPdi4Rf_0DqPebpyPYtPH53axDVgSczE4TnUK-C3saFPjKzueTBMuMI9PxgNbvHEemVON9ipkeSKAEybKeiUg9sB13M_3BOsNOWaqdpzVbFsXQqwsqz2bKtbHshAGlNIOvNE', '2020-02-18 09:54:44'),
(4, '13', 'rudra', '13', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'fy4AT3u0vEo:APA91bFtCPdi4Rf_0DqPebpyPYtPH53axDVgSczE4TnUK-C3saFPjKzueTBMuMI9PxgNbvHEemVON9ipkeSKAEybKeiUg9sB13M_3BOsNOWaqdpzVbFsXQqwsqz2bKtbHshAGlNIOvNE', '2020-02-19 10:35:46'),
(5, '13', 'rudra', '13', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'fy4AT3u0vEo:APA91bFtCPdi4Rf_0DqPebpyPYtPH53axDVgSczE4TnUK-C3saFPjKzueTBMuMI9PxgNbvHEemVON9ipkeSKAEybKeiUg9sB13M_3BOsNOWaqdpzVbFsXQqwsqz2bKtbHshAGlNIOvNE', '2020-02-19 10:36:40'),
(6, '7', 'Kd ', '13', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh', '2020-02-19 10:41:02'),
(7, '13', 'rudra', '13', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'fy4AT3u0vEo:APA91bFtCPdi4Rf_0DqPebpyPYtPH53axDVgSczE4TnUK-C3saFPjKzueTBMuMI9PxgNbvHEemVON9ipkeSKAEybKeiUg9sB13M_3BOsNOWaqdpzVbFsXQqwsqz2bKtbHshAGlNIOvNE', '2020-02-19 10:41:10'),
(8, '7', 'Kd ', '13', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh', '2020-02-19 11:23:18'),
(9, '7', 'Kd ', '13', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh', '2020-02-20 10:26:59'),
(10, '7', 'Kd ', '13', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh', '2020-02-20 10:28:56'),
(11, '9', 'civil', '12', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh', '2020-02-27 04:31:10'),
(12, '7', 'Kd ', '12', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh', '2020-02-27 04:32:50'),
(13, '7', 'Kd ', '12', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh', '2020-02-29 17:01:05'),
(14, '7', 'Kd ', '12', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh', '2020-03-16 03:23:06'),
(15, '7', 'Kd ', '12', 'Emergency Vehicle Coming With Patient. Please Preapare For Treatment', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh', '2020-12-30 08:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_user`
--

CREATE TABLE `hospital_user` (
  `id` int(11) NOT NULL,
  `contact` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fcmid` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospital_user`
--

INSERT INTO `hospital_user` (`id`, `contact`, `name`, `password`, `area`, `city`, `state`, `created_date`, `fcmid`) VALUES
(7, '7000167548', 'Kd ', 'Vihabg', '', '', '', '2020-01-01 05:22:24', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh'),
(8, '7600199723', 'viha', 'Vihang1', '', '', '', '2020-01-01 05:22:49', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh'),
(9, '9558790401', 'civil', '1234', '', '', '', '2020-01-03 05:41:38', 'foM27GLmG-E:APA91bFtCZF91Fe1IeYX-U3_wwV0dILaSPhqbWfgRS3GAe1XMCaL-Tc0LPg5sjgcgfrSyEyc3fp9G8jfFZG1kzgwy2zsCdr_XdKX4r8s14bPBwv7U2eNp8b3rXZo03xDonvVyGhDYGxh'),
(10, '7016878751', 'ambuja', 'sahil', '', '', '', '2020-01-24 05:45:26', 'fy4AT3u0vEo:APA91bFtCPdi4Rf_0DqPebpyPYtPH53axDVgSczE4TnUK-C3saFPjKzueTBMuMI9PxgNbvHEemVON9ipkeSKAEybKeiUg9sB13M_3BOsNOWaqdpzVbFsXQqwsqz2bKtbHshAGlNIOvNE'),
(13, '7567174979', 'rudra', '1234', 'Naranpura', 'Ahmedabad', 'Gujarat', '2020-02-18 09:48:13', 'fy4AT3u0vEo:APA91bFtCPdi4Rf_0DqPebpyPYtPH53axDVgSczE4TnUK-C3saFPjKzueTBMuMI9PxgNbvHEemVON9ipkeSKAEybKeiUg9sB13M_3BOsNOWaqdpzVbFsXQqwsqz2bKtbHshAGlNIOvNE');

-- --------------------------------------------------------

--
-- Table structure for table `police_user`
--

CREATE TABLE `police_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fcmId` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `police_user`
--

INSERT INTO `police_user` (`id`, `name`, `contact`, `password`, `area`, `city`, `state`, `fcmId`, `created_date`) VALUES
(15, 'abc', '9558790401', '1234', 'Paladi', 'Ahmedabad', 'Gujarat', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-14 10:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `created_date`) VALUES
(1, 'Gujarat', '2020-02-14 10:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `trafficnotification`
--

CREATE TABLE `trafficnotification` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trafficId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `areaName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fcmId` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trafficnotification`
--

INSERT INTO `trafficnotification` (`id`, `userId`, `trafficId`, `areaId`, `areaName`, `message`, `fcmId`, `created_date`) VALUES
(1, '1', '', '1', 'Incometax', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-14 10:34:54'),
(2, '1', '15', '1', 'Incometax', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-14 10:35:54'),
(3, '1', '15', '2', 'Paladi', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-14 10:36:43'),
(4, '12', '15', '1', 'Incometax', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-14 10:39:20'),
(5, '12', '15', '2', 'Paladi', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-14 10:39:51'),
(6, '12', '15', '2', 'Paladi', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-14 10:53:31'),
(7, '12', '15', '2', 'Paladi', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-14 22:48:40'),
(8, '12', '15', '11', 'Paladi', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-17 14:22:41'),
(9, '12', '15', '11', 'Paladi', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-27 04:32:04'),
(10, '12', '15', '11', 'Paladi', 'Please Clear Traffics For Emergency Vehicle', 'fZdLC8OJLvE:APA91bGgV9TCk26mva-hYraQCHLOy3xEIhUMzsNfiw6S9KE2a4jlgi52zCICE8L-gN2rSK8XzXAzSuTunZKwiREOD8y1IeO7FuQs_9qgejSyxJbvIV9exL8rxOYwiUOAjVlS_8cKTd-7', '2020-02-29 17:01:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulance_user`
--
ALTER TABLE `ambulance_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitalnotification`
--
ALTER TABLE `hospitalnotification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_user`
--
ALTER TABLE `hospital_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police_user`
--
ALTER TABLE `police_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trafficnotification`
--
ALTER TABLE `trafficnotification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulance_user`
--
ALTER TABLE `ambulance_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospitalnotification`
--
ALTER TABLE `hospitalnotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hospital_user`
--
ALTER TABLE `hospital_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `police_user`
--
ALTER TABLE `police_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trafficnotification`
--
ALTER TABLE `trafficnotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
