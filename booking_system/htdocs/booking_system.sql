-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 11:48 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `cus_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_no` bigint(13) NOT NULL,
  `board_date` date NOT NULL,
  `train_no` int(3) NOT NULL,
  `seat_no` int(2) NOT NULL,
  `start_sta` int(2) NOT NULL,
  `end_sta` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation2`
--

CREATE TABLE `reservation2` (
  `cus_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_no` bigint(13) NOT NULL,
  `board_date` date NOT NULL,
  `train_no` int(3) NOT NULL,
  `seat_no` int(2) NOT NULL,
  `start_sta` int(2) NOT NULL,
  `end_sta` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `city_no` int(2) NOT NULL,
  `city_name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`city_no`, `city_name`) VALUES
(1, '台北站'),
(2, '新竹站'),
(3, '台中站'),
(4, '台南站'),
(5, '高雄站');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `train_no` int(3) NOT NULL,
  `board_date` date NOT NULL,
  `city_no` int(2) NOT NULL,
  `city_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_stop_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`train_no`, `board_date`, `city_no`, `city_name`, `city_stop_time`) VALUES
(1, '2019-06-01', 1, '台北', '08:00:00'),
(1, '2019-06-01', 2, '新竹', '09:00:00'),
(1, '2019-06-01', 3, '台中', '10:00:00'),
(1, '2019-06-01', 4, '台南', '11:00:00'),
(1, '2019-06-01', 5, '高雄', '12:00:00'),
(1, '2019-06-02', 1, '台北', '08:00:00'),
(1, '2019-06-02', 2, '新竹', '09:00:00'),
(1, '2019-06-02', 3, '台中', '10:00:00'),
(1, '2019-06-02', 4, '台南', '11:00:00'),
(1, '2019-06-02', 5, '高雄', '12:00:00'),
(1, '2019-06-03', 1, '台北', '08:00:00'),
(1, '2019-06-03', 2, '新竹', '09:00:00'),
(1, '2019-06-03', 3, '台中', '10:00:00'),
(1, '2019-06-03', 4, '台南', '11:00:00'),
(1, '2019-06-03', 5, '高雄', '12:00:00'),
(1, '2019-06-04', 1, '台北', '08:00:00'),
(1, '2019-06-04', 2, '新竹', '09:00:00'),
(1, '2019-06-04', 3, '台中', '10:00:00'),
(1, '2019-06-04', 4, '台南', '11:00:00'),
(1, '2019-06-04', 5, '高雄', '12:00:00'),
(1, '2019-06-05', 1, '台北', '08:00:00'),
(1, '2019-06-05', 2, '新竹', '09:00:00'),
(1, '2019-06-05', 3, '台中', '10:00:00'),
(1, '2019-06-05', 4, '台南', '11:00:00'),
(1, '2019-06-05', 5, '高雄', '12:00:00'),
(1, '2019-06-06', 1, '台北', '08:00:00'),
(1, '2019-06-06', 2, '新竹', '09:00:00'),
(1, '2019-06-06', 3, '台中', '10:00:00'),
(1, '2019-06-06', 4, '台南', '11:00:00'),
(1, '2019-06-06', 5, '高雄', '12:00:00'),
(1, '2019-06-07', 1, '台北', '08:00:00'),
(1, '2019-06-07', 2, '新竹', '09:00:00'),
(1, '2019-06-07', 3, '台中', '10:00:00'),
(1, '2019-06-07', 4, '台南', '11:00:00'),
(1, '2019-06-07', 5, '高雄', '12:00:00'),
(1, '2019-06-08', 1, '台北', '08:00:00'),
(1, '2019-06-08', 2, '新竹', '09:00:00'),
(1, '2019-06-08', 3, '台中', '10:00:00'),
(1, '2019-06-08', 4, '台南', '11:00:00'),
(1, '2019-06-08', 5, '高雄', '12:00:00'),
(1, '2019-06-09', 1, '台北', '08:00:00'),
(1, '2019-06-09', 2, '新竹', '09:00:00'),
(1, '2019-06-09', 3, '台中', '10:00:00'),
(1, '2019-06-09', 4, '台南', '11:00:00'),
(1, '2019-06-09', 5, '高雄', '12:00:00'),
(1, '2019-06-10', 1, '台北', '08:00:00'),
(1, '2019-06-10', 2, '新竹', '09:00:00'),
(1, '2019-06-10', 3, '台中', '10:00:00'),
(1, '2019-06-10', 4, '台南', '11:00:00'),
(1, '2019-06-10', 5, '高雄', '12:00:00'),
(2, '2019-06-01', 1, '台北', '09:00:00'),
(2, '2019-06-01', 2, '新竹', '10:00:00'),
(2, '2019-06-01', 3, '台中', '11:00:00'),
(2, '2019-06-01', 4, '台南', '12:00:00'),
(2, '2019-06-01', 5, '高雄', '13:00:00'),
(2, '2019-06-02', 1, '台北', '09:00:00'),
(2, '2019-06-02', 2, '新竹', '10:00:00'),
(2, '2019-06-02', 3, '台中', '11:00:00'),
(2, '2019-06-02', 4, '台南', '12:00:00'),
(2, '2019-06-02', 5, '高雄', '13:00:00'),
(2, '2019-06-03', 1, '台北', '09:00:00'),
(2, '2019-06-03', 2, '新竹', '10:00:00'),
(2, '2019-06-03', 3, '台中', '11:00:00'),
(2, '2019-06-03', 4, '台南', '12:00:00'),
(2, '2019-06-03', 5, '高雄', '13:00:00'),
(2, '2019-06-04', 1, '台北', '09:00:00'),
(2, '2019-06-04', 2, '新竹', '10:00:00'),
(2, '2019-06-04', 3, '台中', '11:00:00'),
(2, '2019-06-04', 4, '台南', '12:00:00'),
(2, '2019-06-04', 5, '高雄', '13:00:00'),
(2, '2019-06-05', 1, '台北', '09:00:00'),
(2, '2019-06-05', 2, '新竹', '10:00:00'),
(2, '2019-06-05', 3, '台中', '11:00:00'),
(2, '2019-06-05', 4, '台南', '12:00:00'),
(2, '2019-06-05', 5, '高雄', '13:00:00'),
(2, '2019-06-06', 1, '台北', '09:00:00'),
(2, '2019-06-06', 2, '新竹', '10:00:00'),
(2, '2019-06-06', 3, '台中', '11:00:00'),
(2, '2019-06-06', 4, '台南', '12:00:00'),
(2, '2019-06-06', 5, '高雄', '13:00:00'),
(2, '2019-06-07', 1, '台北', '09:00:00'),
(2, '2019-06-07', 2, '新竹', '10:00:00'),
(2, '2019-06-07', 3, '台中', '11:00:00'),
(2, '2019-06-07', 4, '台南', '12:00:00'),
(2, '2019-06-07', 5, '高雄', '13:00:00'),
(2, '2019-06-08', 1, '台北', '09:00:00'),
(2, '2019-06-08', 2, '新竹', '10:00:00'),
(2, '2019-06-08', 3, '台中', '11:00:00'),
(2, '2019-06-08', 4, '台南', '12:00:00'),
(2, '2019-06-08', 5, '高雄', '13:00:00'),
(2, '2019-06-09', 1, '台北', '09:00:00'),
(2, '2019-06-09', 2, '新竹', '10:00:00'),
(2, '2019-06-09', 3, '台中', '11:00:00'),
(2, '2019-06-09', 4, '台南', '12:00:00'),
(2, '2019-06-09', 5, '高雄', '13:00:00'),
(2, '2019-06-10', 1, '台北', '09:00:00'),
(2, '2019-06-10', 2, '新竹', '10:00:00'),
(2, '2019-06-10', 3, '台中', '11:00:00'),
(2, '2019-06-10', 4, '台南', '12:00:00'),
(2, '2019-06-10', 5, '高雄', '13:00:00'),
(3, '2019-06-01', 1, '台北', '10:00:00'),
(3, '2019-06-01', 2, '新竹', '11:00:00'),
(3, '2019-06-01', 3, '台中', '12:00:00'),
(3, '2019-06-01', 4, '台南', '13:00:00'),
(3, '2019-06-01', 5, '高雄', '14:00:00'),
(3, '2019-06-02', 1, '台北', '10:00:00'),
(3, '2019-06-02', 2, '新竹', '11:00:00'),
(3, '2019-06-02', 3, '台中', '12:00:00'),
(3, '2019-06-02', 4, '台南', '13:00:00'),
(3, '2019-06-02', 5, '高雄', '14:00:00'),
(3, '2019-06-03', 1, '台北', '10:00:00'),
(3, '2019-06-03', 2, '新竹', '11:00:00'),
(3, '2019-06-03', 3, '台中', '12:00:00'),
(3, '2019-06-03', 4, '台南', '13:00:00'),
(3, '2019-06-03', 5, '高雄', '14:00:00'),
(3, '2019-06-04', 1, '台北', '10:00:00'),
(3, '2019-06-04', 2, '新竹', '11:00:00'),
(3, '2019-06-04', 3, '台中', '12:00:00'),
(3, '2019-06-04', 4, '台南', '13:00:00'),
(3, '2019-06-04', 5, '高雄', '14:00:00'),
(3, '2019-06-05', 1, '台北', '10:00:00'),
(3, '2019-06-05', 2, '新竹', '11:00:00'),
(3, '2019-06-05', 3, '台中', '12:00:00'),
(3, '2019-06-05', 4, '台南', '13:00:00'),
(3, '2019-06-05', 5, '高雄', '14:00:00'),
(3, '2019-06-06', 1, '台北', '10:00:00'),
(3, '2019-06-06', 2, '新竹', '11:00:00'),
(3, '2019-06-06', 3, '台中', '12:00:00'),
(3, '2019-06-06', 4, '台南', '13:00:00'),
(3, '2019-06-06', 5, '高雄', '14:00:00'),
(3, '2019-06-07', 1, '台北', '10:00:00'),
(3, '2019-06-07', 2, '新竹', '11:00:00'),
(3, '2019-06-07', 3, '台中', '12:00:00'),
(3, '2019-06-07', 4, '台南', '13:00:00'),
(3, '2019-06-07', 5, '高雄', '14:00:00'),
(3, '2019-06-08', 1, '台北', '10:00:00'),
(3, '2019-06-08', 2, '新竹', '11:00:00'),
(3, '2019-06-08', 3, '台中', '12:00:00'),
(3, '2019-06-08', 4, '台南', '13:00:00'),
(3, '2019-06-08', 5, '高雄', '14:00:00'),
(3, '2019-06-09', 1, '台北', '10:00:00'),
(3, '2019-06-09', 2, '新竹', '11:00:00'),
(3, '2019-06-09', 3, '台中', '12:00:00'),
(3, '2019-06-09', 4, '台南', '13:00:00'),
(3, '2019-06-09', 5, '高雄', '14:00:00'),
(3, '2019-06-10', 1, '台北', '10:00:00'),
(3, '2019-06-10', 2, '新竹', '11:00:00'),
(3, '2019-06-10', 3, '台中', '12:00:00'),
(3, '2019-06-10', 4, '台南', '13:00:00'),
(3, '2019-06-10', 5, '高雄', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `train2`
--

CREATE TABLE `train2` (
  `train_no` int(3) NOT NULL,
  `board_date` date NOT NULL,
  `city_no` int(2) NOT NULL,
  `city_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_stop_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `train2`
--

INSERT INTO `train2` (`train_no`, `board_date`, `city_no`, `city_name`, `city_stop_time`) VALUES
(901, '2019-06-01', 1, '台北', '12:00:00'),
(901, '2019-06-01', 2, '新竹', '11:00:00'),
(901, '2019-06-01', 3, '台中', '10:00:00'),
(901, '2019-06-01', 4, '台南', '09:00:00'),
(901, '2019-06-01', 5, '高雄', '08:00:00'),
(901, '2019-06-02', 1, '台北', '12:00:00'),
(901, '2019-06-02', 2, '新竹', '11:00:00'),
(901, '2019-06-02', 3, '台中', '10:00:00'),
(901, '2019-06-02', 4, '台南', '09:00:00'),
(901, '2019-06-02', 5, '高雄', '08:00:00'),
(901, '2019-06-03', 1, '台北', '12:00:00'),
(901, '2019-06-03', 2, '新竹', '11:00:00'),
(901, '2019-06-03', 3, '台中', '10:00:00'),
(901, '2019-06-03', 4, '台南', '09:00:00'),
(901, '2019-06-03', 5, '高雄', '08:00:00'),
(901, '2019-06-04', 1, '台北', '12:00:00'),
(901, '2019-06-04', 2, '新竹', '11:00:00'),
(901, '2019-06-04', 3, '台中', '10:00:00'),
(901, '2019-06-04', 4, '台南', '09:00:00'),
(901, '2019-06-04', 5, '高雄', '08:00:00'),
(901, '2019-06-05', 1, '台北', '12:00:00'),
(901, '2019-06-05', 2, '新竹', '11:00:00'),
(901, '2019-06-05', 3, '台中', '10:00:00'),
(901, '2019-06-05', 4, '台南', '09:00:00'),
(901, '2019-06-05', 5, '高雄', '08:00:00'),
(901, '2019-06-06', 1, '台北', '12:00:00'),
(901, '2019-06-06', 2, '新竹', '11:00:00'),
(901, '2019-06-06', 3, '台中', '10:00:00'),
(901, '2019-06-06', 4, '台南', '09:00:00'),
(901, '2019-06-06', 5, '高雄', '08:00:00'),
(901, '2019-06-07', 1, '台北', '12:00:00'),
(901, '2019-06-07', 2, '新竹', '11:00:00'),
(901, '2019-06-07', 3, '台中', '10:00:00'),
(901, '2019-06-07', 4, '台南', '09:00:00'),
(901, '2019-06-07', 5, '高雄', '08:00:00'),
(901, '2019-06-08', 1, '台北', '12:00:00'),
(901, '2019-06-08', 2, '新竹', '11:00:00'),
(901, '2019-06-08', 3, '台中', '10:00:00'),
(901, '2019-06-08', 4, '台南', '09:00:00'),
(901, '2019-06-08', 5, '高雄', '08:00:00'),
(901, '2019-06-09', 1, '台北', '12:00:00'),
(901, '2019-06-09', 2, '新竹', '11:00:00'),
(901, '2019-06-09', 3, '台中', '10:00:00'),
(901, '2019-06-09', 4, '台南', '09:00:00'),
(901, '2019-06-09', 5, '高雄', '08:00:00'),
(901, '2019-06-10', 1, '台北', '12:00:00'),
(901, '2019-06-10', 2, '新竹', '11:00:00'),
(901, '2019-06-10', 3, '台中', '10:00:00'),
(901, '2019-06-10', 4, '台南', '09:00:00'),
(901, '2019-06-10', 5, '高雄', '08:00:00'),
(902, '2019-06-01', 1, '台北', '13:00:00'),
(902, '2019-06-01', 2, '新竹', '12:00:00'),
(902, '2019-06-01', 3, '台中', '11:00:00'),
(902, '2019-06-01', 4, '台南', '10:00:00'),
(902, '2019-06-01', 5, '高雄', '09:00:00'),
(902, '2019-06-02', 1, '台北', '13:00:00'),
(902, '2019-06-02', 2, '新竹', '12:00:00'),
(902, '2019-06-02', 3, '台中', '11:00:00'),
(902, '2019-06-02', 4, '台南', '10:00:00'),
(902, '2019-06-02', 5, '高雄', '09:00:00'),
(902, '2019-06-03', 1, '台北', '13:00:00'),
(902, '2019-06-03', 2, '新竹', '12:00:00'),
(902, '2019-06-03', 3, '台中', '11:00:00'),
(902, '2019-06-03', 4, '台南', '10:00:00'),
(902, '2019-06-03', 5, '高雄', '09:00:00'),
(902, '2019-06-04', 1, '台北', '13:00:00'),
(902, '2019-06-04', 2, '新竹', '12:00:00'),
(902, '2019-06-04', 3, '台中', '11:00:00'),
(902, '2019-06-04', 4, '台南', '10:00:00'),
(902, '2019-06-04', 5, '高雄', '09:00:00'),
(902, '2019-06-05', 1, '台北', '13:00:00'),
(902, '2019-06-05', 2, '新竹', '12:00:00'),
(902, '2019-06-05', 3, '台中', '11:00:00'),
(902, '2019-06-05', 4, '台南', '10:00:00'),
(902, '2019-06-05', 5, '高雄', '09:00:00'),
(902, '2019-06-06', 1, '台北', '13:00:00'),
(902, '2019-06-06', 2, '新竹', '12:00:00'),
(902, '2019-06-06', 3, '台中', '11:00:00'),
(902, '2019-06-06', 4, '台南', '10:00:00'),
(902, '2019-06-06', 5, '高雄', '09:00:00'),
(902, '2019-06-07', 1, '台北', '13:00:00'),
(902, '2019-06-07', 2, '新竹', '12:00:00'),
(902, '2019-06-07', 3, '台中', '11:00:00'),
(902, '2019-06-07', 4, '台南', '10:00:00'),
(902, '2019-06-07', 5, '高雄', '09:00:00'),
(902, '2019-06-08', 1, '台北', '13:00:00'),
(902, '2019-06-08', 2, '新竹', '12:00:00'),
(902, '2019-06-08', 3, '台中', '11:00:00'),
(902, '2019-06-08', 4, '台南', '10:00:00'),
(902, '2019-06-08', 5, '高雄', '09:00:00'),
(902, '2019-06-09', 1, '台北', '13:00:00'),
(902, '2019-06-09', 2, '新竹', '12:00:00'),
(902, '2019-06-09', 3, '台中', '11:00:00'),
(902, '2019-06-09', 4, '台南', '10:00:00'),
(902, '2019-06-09', 5, '高雄', '09:00:00'),
(902, '2019-06-10', 1, '台北', '13:00:00'),
(902, '2019-06-10', 2, '新竹', '12:00:00'),
(902, '2019-06-10', 3, '台中', '11:00:00'),
(902, '2019-06-10', 4, '台南', '10:00:00'),
(902, '2019-06-10', 5, '高雄', '09:00:00'),
(903, '2019-06-01', 1, '台北', '14:00:00'),
(903, '2019-06-01', 2, '新竹', '13:00:00'),
(903, '2019-06-01', 3, '台中', '12:00:00'),
(903, '2019-06-01', 4, '台南', '11:00:00'),
(903, '2019-06-01', 5, '高雄', '10:00:00'),
(903, '2019-06-02', 1, '台北', '14:00:00'),
(903, '2019-06-02', 2, '新竹', '13:00:00'),
(903, '2019-06-02', 3, '台中', '12:00:00'),
(903, '2019-06-02', 4, '台南', '11:00:00'),
(903, '2019-06-02', 5, '高雄', '10:00:00'),
(903, '2019-06-03', 1, '台北', '14:00:00'),
(903, '2019-06-03', 2, '新竹', '13:00:00'),
(903, '2019-06-03', 3, '台中', '12:00:00'),
(903, '2019-06-03', 4, '台南', '11:00:00'),
(903, '2019-06-03', 5, '高雄', '10:00:00'),
(903, '2019-06-04', 1, '台北', '14:00:00'),
(903, '2019-06-04', 2, '新竹', '13:00:00'),
(903, '2019-06-04', 3, '台中', '12:00:00'),
(903, '2019-06-04', 4, '台南', '11:00:00'),
(903, '2019-06-04', 5, '高雄', '10:00:00'),
(903, '2019-06-05', 1, '台北', '14:00:00'),
(903, '2019-06-05', 2, '新竹', '13:00:00'),
(903, '2019-06-05', 3, '台中', '12:00:00'),
(903, '2019-06-05', 4, '台南', '11:00:00'),
(903, '2019-06-05', 5, '高雄', '10:00:00'),
(903, '2019-06-06', 1, '台北', '14:00:00'),
(903, '2019-06-06', 2, '新竹', '13:00:00'),
(903, '2019-06-06', 3, '台中', '12:00:00'),
(903, '2019-06-06', 4, '台南', '11:00:00'),
(903, '2019-06-06', 5, '高雄', '10:00:00'),
(903, '2019-06-07', 1, '台北', '14:00:00'),
(903, '2019-06-07', 2, '新竹', '13:00:00'),
(903, '2019-06-07', 3, '台中', '12:00:00'),
(903, '2019-06-07', 4, '台南', '11:00:00'),
(903, '2019-06-07', 5, '高雄', '10:00:00'),
(903, '2019-06-08', 1, '台北', '14:00:00'),
(903, '2019-06-08', 2, '新竹', '13:00:00'),
(903, '2019-06-08', 3, '台中', '12:00:00'),
(903, '2019-06-08', 4, '台南', '11:00:00'),
(903, '2019-06-08', 5, '高雄', '10:00:00'),
(903, '2019-06-09', 1, '台北', '14:00:00'),
(903, '2019-06-09', 2, '新竹', '13:00:00'),
(903, '2019-06-09', 3, '台中', '12:00:00'),
(903, '2019-06-09', 4, '台南', '11:00:00'),
(903, '2019-06-09', 5, '高雄', '10:00:00'),
(903, '2019-06-10', 1, '台北', '14:00:00'),
(903, '2019-06-10', 2, '新竹', '13:00:00'),
(903, '2019-06-10', 3, '台中', '12:00:00'),
(903, '2019-06-10', 4, '台南', '11:00:00'),
(903, '2019-06-10', 5, '高雄', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `train_seat`
--

CREATE TABLE `train_seat` (
  `train_no` int(2) NOT NULL,
  `board_date` date NOT NULL,
  `city_no` int(2) NOT NULL,
  `seat_amount` int(2) NOT NULL,
  `1` bigint(13) NOT NULL,
  `2` bigint(13) NOT NULL,
  `3` bigint(13) NOT NULL,
  `4` bigint(13) NOT NULL,
  `5` bigint(13) NOT NULL,
  `6` bigint(13) NOT NULL,
  `7` bigint(13) NOT NULL,
  `8` bigint(13) NOT NULL,
  `9` bigint(13) NOT NULL,
  `10` bigint(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `train_seat`
--

INSERT INTO `train_seat` (`train_no`, `board_date`, `city_no`, `seat_amount`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`) VALUES
(1, '2019-06-01', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-01', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-01', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-01', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-01', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-02', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-02', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-02', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-02', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-02', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-03', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-03', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-03', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-03', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-03', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-04', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-04', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-04', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-04', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-04', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-05', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-05', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-05', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-05', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-05', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-06', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-06', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-06', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-06', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-06', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-07', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-07', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-07', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-07', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-07', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-08', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-08', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-08', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-08', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-08', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-09', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-09', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-09', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-09', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-09', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-10', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-10', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-10', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-10', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '2019-06-10', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-01', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-01', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-01', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-01', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-01', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-02', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-02', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-02', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-02', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-02', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-03', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-03', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-03', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-03', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-03', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-04', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-04', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-04', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-04', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-04', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-05', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-05', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-05', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-05', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-05', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-06', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-06', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-06', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-06', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-06', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-07', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-07', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-07', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-07', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-07', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-08', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-08', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-08', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-08', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-08', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-09', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-09', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-09', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-09', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-09', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-10', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-10', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-10', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-10', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2019-06-10', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-01', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-01', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-01', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-01', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-01', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-02', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-02', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-02', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-02', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-02', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-03', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-03', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-03', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-03', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-03', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-04', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-04', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-04', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-04', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-04', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-05', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-05', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-05', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-05', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-05', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-06', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-06', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-06', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-06', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-06', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-07', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-07', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-07', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-07', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-07', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-08', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-08', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-08', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-08', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-08', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-09', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-09', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-09', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-09', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-09', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-10', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-10', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-10', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-10', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2019-06-10', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `train_seat2`
--

CREATE TABLE `train_seat2` (
  `train_no` int(2) NOT NULL,
  `board_date` date NOT NULL,
  `city_no` int(2) NOT NULL,
  `seat_amount` int(2) NOT NULL,
  `1` bigint(13) NOT NULL,
  `2` bigint(13) NOT NULL,
  `3` bigint(13) NOT NULL,
  `4` bigint(13) NOT NULL,
  `5` bigint(13) NOT NULL,
  `6` bigint(13) NOT NULL,
  `7` bigint(13) NOT NULL,
  `8` bigint(13) NOT NULL,
  `9` bigint(13) NOT NULL,
  `10` bigint(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `train_seat2`
--

INSERT INTO `train_seat2` (`train_no`, `board_date`, `city_no`, `seat_amount`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`) VALUES
(901, '2019-06-01', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-01', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-01', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-01', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-01', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-02', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-02', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-02', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-02', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-02', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-03', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-03', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-03', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-03', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-03', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-04', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-04', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-04', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-04', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-04', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-05', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-05', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-05', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-05', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-05', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-06', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-06', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-06', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-06', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-06', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-07', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-07', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-07', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-07', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-07', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-08', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-08', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-08', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-08', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-08', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-09', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-09', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-09', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-09', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-09', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-10', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-10', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-10', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-10', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, '2019-06-10', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-01', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-01', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-01', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-01', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-01', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-02', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-02', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-02', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-02', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-02', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-03', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-03', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-03', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-03', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-03', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-04', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-04', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-04', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-04', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-04', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-05', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-05', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-05', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-05', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-05', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-06', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-06', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-06', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-06', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-06', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-07', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-07', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-07', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-07', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-07', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-08', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-08', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-08', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-08', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-08', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-09', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-09', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-09', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-09', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-09', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-10', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-10', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-10', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-10', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(902, '2019-06-10', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-01', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-01', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-01', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-01', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-01', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-02', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-02', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-02', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-02', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-02', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-03', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-03', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-03', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-03', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-03', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-04', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-04', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-04', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-04', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-04', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-05', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-05', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-05', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-05', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-05', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-06', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-06', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-06', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-06', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-06', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-07', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-07', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-07', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-07', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-07', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-08', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-08', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-08', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-08', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-08', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-09', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-09', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-09', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-09', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-09', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-10', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-10', 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-10', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-10', 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, '2019-06-10', 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`re_no`);

--
-- Indexes for table `reservation2`
--
ALTER TABLE `reservation2`
  ADD PRIMARY KEY (`re_no`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`city_no`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`train_no`,`board_date`,`city_no`);

--
-- Indexes for table `train2`
--
ALTER TABLE `train2`
  ADD PRIMARY KEY (`train_no`,`board_date`,`city_no`);

--
-- Indexes for table `train_seat`
--
ALTER TABLE `train_seat`
  ADD PRIMARY KEY (`train_no`,`board_date`,`city_no`);

--
-- Indexes for table `train_seat2`
--
ALTER TABLE `train_seat2`
  ADD PRIMARY KEY (`train_no`,`board_date`,`city_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
