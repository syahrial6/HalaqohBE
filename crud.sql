-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 06:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `hafalan` varchar(255) NOT NULL,
  `ayat` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `siswaId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `uuid`, `name`, `kelas`, `hafalan`, `ayat`, `createdAt`, `updatedAt`, `siswaId`) VALUES
(23, 'f7f14f36-963b-4e8f-940a-7f001b143365', 'Hirzi', '9A', '6- Al An\'am', 40, '2023-02-09 02:59:41', '2023-02-09 02:59:41', NULL),
(24, 'a6f4af13-530c-4af0-9925-5e2b46744a05', 'Hirzi', '9A', '6- Al An\'am', 50, '2023-02-09 02:59:46', '2023-02-09 02:59:46', NULL),
(25, '968025e7-913e-4fde-a9b3-cbf437fe0d31', 'Hirzi', '9A', '6- Al An\'am', 60, '2023-02-09 03:01:10', '2023-02-09 03:01:10', NULL),
(26, '6ececf85-553f-4b0f-9751-6f6f8061023a', 'Hirzi', '9A', '6- Al An\'am', 70, '2023-02-09 03:01:15', '2023-02-09 03:01:15', NULL),
(27, '7cd234a8-e403-4480-8160-a2f353c7ad06', 'Hirzi', '9A', '6- Al An\'am', 75, '2023-02-09 03:31:59', '2023-02-09 03:31:59', NULL),
(28, 'ae88e746-c148-42e2-a15e-5ee02a63bf13', 'Hirzi', '9A', '6- Al An\'am', 100, '2023-02-09 03:54:22', '2023-02-09 03:54:22', NULL),
(29, 'bc81659a-f9e1-4717-bab8-a6ee21d0848a', 'Hirzi', '9A', '6- Al An\'am', 105, '2023-02-09 08:10:32', '2023-02-09 08:10:32', NULL),
(30, '8dc74250-53eb-4e8e-a7ae-bfa39075a001', 'Ahmad', '8A', '2- Al Baqarah', 45, '2023-02-12 10:36:53', '2023-02-12 10:36:53', NULL),
(31, '04e8a7b3-c2a4-48d8-b71f-ebc5589eb670', 'Ahmad', '8A', '2- Al Baqarah', 40, '2023-02-12 10:36:59', '2023-02-12 10:36:59', NULL),
(32, 'c0aa1b74-081f-44ea-b63a-848916d977dd', 'Ahmad', '8A', '2- Al Baqarah', 56, '2023-02-12 10:37:05', '2023-02-12 10:37:05', NULL),
(33, '2218d297-cf1c-4994-84b4-18538fc410e2', 'Ahmad', '8A', '2- Al Baqarah', 70, '2023-02-12 10:37:11', '2023-02-12 10:37:11', NULL),
(34, '0ccc23d2-764e-4124-94a4-422d11a228eb', 'Ahmad', '8A', '2- Al Baqarah', 80, '2023-02-12 10:37:16', '2023-02-12 10:37:16', NULL),
(36, '6661f998-497e-431a-a91e-ca815c158e78', 'Akbar', '8B', '101- Al-Qari\'ah', 12, '2023-02-14 14:55:51', '2023-02-14 14:55:51', NULL),
(37, 'd3869ade-343e-4b2e-abe3-50d0a5c7041f', 'Akbar', '8B', '101- Al-Qari\'ah', 12, '2023-02-14 14:56:23', '2023-02-14 14:56:23', NULL),
(38, '7806ccb8-71b9-4808-a9e1-fa25ec482e9a', 'Akbar', '8B', '101- Al-Qari\'ah', 12, '2023-02-14 14:57:58', '2023-02-14 14:57:58', NULL),
(39, 'fe9a19b9-a833-4cb5-a20b-023c3657d12b', 'Ahmad', '8A', '2- Al Baqarah', 80, '2023-02-14 15:02:43', '2023-02-14 15:02:43', NULL),
(40, '6218e5e0-0c13-4322-b9ef-4864e3fd73ff', 'Ahmad', '8A', '2- Al Baqarah', 80, '2023-02-14 15:04:08', '2023-02-14 15:04:08', NULL),
(41, '89c9a769-cd1c-464a-958a-dca39578ae43', 'Ahmad', '8A', '2- Al Baqarah', 80, '2023-02-14 15:05:34', '2023-02-14 15:05:34', NULL),
(42, '265b9d3f-1d12-4c6f-b3dc-119894064525', 'Ahmad', '8A', '2- Al Baqarah', 80, '2023-02-14 15:05:41', '2023-02-14 15:05:41', NULL),
(43, 'b1fa98b3-9110-4808-82fb-c6df7edf2903', 'Akbar', '8B', '101- Al-Qari\'ah', 12, '2023-02-14 15:07:32', '2023-02-14 15:07:32', NULL),
(44, '03f9f1ea-5507-4bf9-9378-289204db212e', 'Wahyu Ramadhani', '8B', '1 - Al-Fatihah', 1, '2023-02-15 03:50:20', '2023-02-15 03:50:20', 140),
(45, '4d3dce28-7de3-4534-b0f8-43bcb0cc203b', 'Naufal Fadhil Rifa\'i', '8B', '1 - Al-Fatihah', 1, '2023-02-15 03:50:36', '2023-02-15 03:50:36', 134),
(46, '7fed31a0-6767-4470-b99c-1c0d1981570a', 'Muhammad Zidane Attala', '8B', '1 - Al-Fatihah', 1, '2023-02-15 03:50:43', '2023-02-15 03:50:43', 132),
(47, 'eeca647e-e5b3-49ec-b693-57acc815e6d4', 'Muhammad Qhadafy Afzalurrahman', '8B', '1 - Al-Fatihah', 1, '2023-02-15 03:50:55', '2023-02-15 03:50:55', 130),
(48, '6baf4a14-7dd9-421c-9bf9-c6c3ded090eb', 'Meigan Imeralgi', '8B', '1 - Al-Fatihah', 1, '2023-02-15 03:51:04', '2023-02-15 03:51:04', 126),
(49, '94785ef4-c229-43a5-b625-d598455407ba', 'Faris Ammar Adilah', '8B', '1 - Al-Fatihah', 1, '2023-02-15 03:51:15', '2023-02-15 03:51:15', 121),
(50, 'e19a31cd-5891-426e-a84c-19e735a06b7a', 'Alfath Anugrah Harafat', '8B', '1 - Al-Fatihah', 1, '2023-02-15 03:51:26', '2023-02-15 03:51:26', 116),
(51, '2601f3b5-ac28-4fc4-a129-c726f96e7025', 'Abdurrahman', '8B', '1 - Al-Fatihah', 1, '2023-02-15 03:51:39', '2023-02-15 03:51:39', 113),
(52, '263735e9-8ab3-458a-9292-a05bfbe168e0', 'Rezqi Fachri Ramadhan', '8B', '1 - Al-Fatihah', 1, '2023-02-15 04:04:50', '2023-02-15 04:04:50', 139),
(53, 'e343f8e7-0921-4691-b3f3-489d7c9a3ef0', 'Regian Giovanni Djong', '8B', '1 - Al-Fatihah', 1, '2023-02-15 04:04:54', '2023-02-15 04:04:54', 138),
(54, 'e7f45b6b-8a24-4584-9a94-94a98b0e4070', 'Rangga Alfiansyah', '8B', '1 - Al-Fatihah', 1, '2023-02-15 04:04:59', '2023-02-15 04:04:59', 137),
(55, 'c9286a4d-a11c-42c7-8cfa-b90b7836f088', 'Rafi Akbar Fatihudin', '8B', '1 - Al-Fatihah', 1, '2023-02-15 04:05:03', '2023-02-15 04:05:03', 136),
(56, '18e2263c-44be-4011-9e4f-ce90fabdc364', 'Nawaf Rasyad Basalim', '8B', '1 - Al-Fatihah', 1, '2023-02-15 04:05:08', '2023-02-15 04:05:08', 135),
(57, '1eb5d8a9-a39c-4a33-aea3-a36b4070ec56', 'Naufal Ardiona Fayyadh Ferdian', '8B', '1 - Al-Fatihah', 1, '2023-02-15 04:05:13', '2023-02-15 04:05:13', 133),
(58, '2ea60a26-b7e4-4d22-82a0-d50fbf21c07d', 'Muhammad Shulhan Azmi', '8B', '1 - Al-Fatihah', 1, '2023-02-15 04:05:19', '2023-02-15 04:05:19', 131),
(59, 'f991e961-a503-4e0f-b308-8ecef93cbcbe', 'Muhammad Nabil Azizi', '8B', '1 - Al-Fatihah', 1, '2023-02-15 04:05:25', '2023-02-15 04:05:25', 129),
(60, 'f3fb4328-2fea-422d-92c5-b5f08a21501c', 'Muhammad Addurrunnafis', '8B', '1 - Al-Fatihah', 1, '2023-02-15 04:05:30', '2023-02-15 04:05:30', 128);

-- --------------------------------------------------------

--
-- Table structure for table `list_surah`
--

CREATE TABLE `list_surah` (
  `id` int(11) NOT NULL,
  `nama_surah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_surah`
--

INSERT INTO `list_surah` (`id`, `nama_surah`) VALUES
(1, '1- Al Fatihah'),
(2, '2- Al Baqarah'),
(3, '3- Ali Imran'),
(4, '4- An Nisa'),
(5, '5- Al Ma\'idah'),
(6, '6- Al An\'am'),
(7, '7- Al-A\'raf '),
(8, '8- Al-Anfal'),
(9, '9- At-Taubah'),
(10, '10- Yunus '),
(11, '11- Hud '),
(12, '12- Yusuf '),
(13, '13- Ar-Ra\'d '),
(14, '14- Ibrahim '),
(15, '15- Al-Hijr'),
(16, '16- An-Nahl'),
(17, '17- Al-Isra\' '),
(18, '18- Al-Kahf '),
(19, '19- Maryam '),
(20, '20- Ta Ha'),
(21, '21- Al-Anbiya'),
(22, '22- Al-Hajj'),
(23, '23- Al-Mu\'minun '),
(24, '24- An-Nur'),
(25, '25- Al-Furqan '),
(26, '26- Asy-Syu\'ara\''),
(27, '27- An-Naml '),
(28, '28- Al-Qasas'),
(29, '29- Al-\'Ankabut'),
(30, '30- Ar-Rum '),
(31, '31- Luqman '),
(32, '32- As-Sajdah '),
(33, '33- Al-Ahzab '),
(34, '34- Saba\' '),
(35, '35- Fatir'),
(36, '36- Ya Sin'),
(37, '37- As-Saffat '),
(38, '38- Sad'),
(39, '39- Az-Zumar '),
(40, '40- Ghafir'),
(41, '41- Fussilat'),
(42, '42- Asy-Syura '),
(43, '43- Az-Zukhruf '),
(44, '44- Ad-Dukhan '),
(45, '45- Al-Jasiyah '),
(46, '46- Al-Ahqaf'),
(47, '47- Muhammad'),
(48, '48- Al-Fath '),
(49, '49- Al-Hujurat '),
(50, '50- Qaf '),
(51, '51- Az-Zariyat '),
(52, '52- At-Tur'),
(53, '53- An-Najm'),
(54, '54- Al-Qamar '),
(55, '55- Ar-Rahman '),
(56, '56- Al-Waqi\'ah '),
(57, '57- Al-Hadid '),
(58, '58- Al-Mujadilah'),
(59, '59- Al-Hasyr'),
(60, '60- Al-Mumtahanah'),
(61, '61- As-Saff '),
(62, '62- Al-Jumu\'ah '),
(63, '63- Al-Munafiqun '),
(64, '64- At-Tagabun '),
(65, '65- At-Tahrim'),
(66, '66- At-Talaq '),
(67, '67- Al-Mulk'),
(68, '68- Al-Qalam '),
(69, '69- Al-Haqqah'),
(70, '70- Al-Ma\'arij'),
(71, '71- Nuh '),
(72, '72- Al-Jinn '),
(73, '73- Al-Muzzammil'),
(74, '74- Al-Muddassir '),
(75, '75- Al-Qiyamah '),
(76, '76- Al-Insan'),
(77, '77- Al-Mursalat '),
(78, '78- An-Naba\''),
(79, '79- An-Nazi\'at'),
(80, '80- \'Abasa'),
(81, '81- At-Takwir '),
(82, '82-Al-Infitar '),
(83, '83- Al-mutaffifin'),
(84, '84- Al-Insyiqaq'),
(85, '85- Al-Buruj '),
(86, '86- At-Tariq'),
(87, '87- Al-A\'la '),
(88, '88- Al-Gasyiyah'),
(89, '89- Al-Fajr'),
(90, '90- Al-Balad'),
(91, '91- Asy-Syams '),
(92, '92- Al-Lail'),
(93, '93- Ad-Duha'),
(94, '94- Al-Insyirah '),
(95, '95- At-Tin '),
(96, '96- Al-\'Alaq '),
(97, '97- Al-Qadr '),
(98, '98- Al-Bayyinah'),
(99, '99- Az-Zalzalah'),
(100, '100- Al-\'Adiyat '),
(101, '101- Al-Qari\'ah'),
(102, '102- At-Takasur'),
(103, '103- Al-\'Asr'),
(104, '104- Al-Humazah '),
(105, '105- Al-Fil '),
(106, '106- Quraisy'),
(107, '107- Al-Ma\'un '),
(108, '108- Al-Kausar '),
(109, '109- Al-Kafirun'),
(110, '110- An-Nasr'),
(111, '111- Al-Lahab'),
(112, '112- Al-Ikhlas'),
(113, '113- Al-Falaq'),
(114, '114-An-Nas ');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-qYhwG1QU6c6Q2mIqdTB9A4ptHdpoN9o', '2023-02-15 10:38:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:38:46', '2023-02-14 10:38:46'),
('-z_dDq9zFa-DZ5b_bavSUIfLoFJ8Vs-5', '2023-02-15 15:17:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:17:12', '2023-02-14 15:17:12'),
('09oi4jNGnAJdKSBmRQvA-xtTDbY3DVZa', '2023-02-15 15:04:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:04:08', '2023-02-14 15:04:08'),
('0DD8te8vdNSgkLsuWEdAvOa6o0CJ4Ilx', '2023-02-15 08:54:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 08:54:36', '2023-02-14 08:54:36'),
('0ZgHYmp6mQbJka2a2NqMh6wVlGRr0rU7', '2023-02-16 03:50:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:50:36', '2023-02-15 03:50:36'),
('1WeXFjLwQ7Mu51zljblIPYvXTYVPrzQH', '2023-02-16 03:51:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:55', '2023-02-15 03:51:55'),
('2a2CQ2kRjjrvjWusA1D0hPB4SLF_U7SE', '2023-02-15 09:22:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:22:03', '2023-02-14 09:22:03'),
('2mihTzxEW0YMPKiHr-GIvkABrWw3w0Oi', '2023-02-15 14:38:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:38:29', '2023-02-14 14:38:29'),
('2s6uzk7bDyhmXw_vwl3-M5eIz9WxM5So', '2023-02-15 14:38:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:38:29', '2023-02-14 14:38:29'),
('2snb-3IwAsGY-ojCQzg4ohEy9lF6Bdwx', '2023-02-15 14:38:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:38:40', '2023-02-14 14:38:40'),
('3EPRrtOhvTGCqWgHgpRFv-b4uBHLDKSo', '2023-02-15 15:05:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:05:41', '2023-02-14 15:05:41'),
('3nO-LdFPp61Co1I6dpCQNe-_lCGwebCx', '2023-02-15 15:05:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:05:34', '2023-02-14 15:05:34'),
('4gPeyRJwF7fZR2GeOJwPs50JLUrlMi_y', '2023-02-15 15:02:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:02:43', '2023-02-14 15:02:43'),
('4nBLLkIm2UBFxGXmDuPVTlMOrU3zpUfu', '2023-02-15 14:37:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:37:04', '2023-02-14 14:37:04'),
('5pU5Vfzci3PaqpfmB7dLYrJJbUammGBD', '2023-02-15 10:37:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:37:09', '2023-02-14 10:37:09'),
('6A6Wz50wYqIGiF3Avfz9p9RfXgsDDmu9', '2023-02-15 14:55:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:55:51', '2023-02-14 14:55:51'),
('6wV3tcr__pjX1fF3mXCSIk6MGsxaNDnJ', '2023-02-15 10:37:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:37:00', '2023-02-14 10:37:00'),
('6_3_1fxUMRL5Ma0bkGM4hEHNwE7R8zkp', '2023-02-15 09:17:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:17:12', '2023-02-14 09:17:12'),
('7tnOCE0P4L1qAlsVCrlC6qbMZR_Xg8r0', '2023-02-15 08:57:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 08:57:57', '2023-02-14 08:57:57'),
('8HKRA3ib3scf2NZki9AdW-RVyIqJasu6', '2023-02-16 03:50:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:50:43', '2023-02-15 03:50:43'),
('8HO3LG50EunKjRydusNjdzPzrtVlir1R', '2023-02-16 03:50:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:50:20', '2023-02-15 03:50:20'),
('8sWbstA_y3tuU1YUdY5hzgdy4UzDArVg', '2023-02-15 10:41:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:41:11', '2023-02-14 10:41:11'),
('91cD9gmo5Ge7EotqTtMuriGPZPgBEYHy', '2023-02-15 08:53:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 08:53:04', '2023-02-14 08:53:04'),
('9azFpba_9AvZ8pFUtrwG4I9qpnc4cNIy', '2023-02-15 10:36:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:36:54', '2023-02-14 10:36:54'),
('9loRAc-UkM3BDWk473RHJ8FSy6wizPL4', '2023-02-15 09:00:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:00:45', '2023-02-14 09:00:45'),
('9S9Cuf0pUpbD2ZoQTF43paNArxQF5D3O', '2023-02-15 14:56:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:56:23', '2023-02-14 14:56:23'),
('9Xhls9yX29F2wBRHqtfo9MuQ-ny4_LLI', '2023-02-15 14:56:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:56:23', '2023-02-14 14:56:23'),
('a9johZx0XF6vhmnT3c148fAQ2KCUXXqk', '2023-02-15 10:13:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:13:16', '2023-02-14 10:13:16'),
('AFFbDYu_uqdMFMNeQYGFP6ZOZWjoxE6G', '2023-02-16 04:05:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:30', '2023-02-15 04:05:30'),
('AvhOGYMWPrSwwz65_kmzvI3EWLSQvS-D', '2023-02-15 10:36:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:36:18', '2023-02-14 10:36:18'),
('axddhGZi6HbMrobYFcGRcVNIowIbqoMd', '2023-02-15 09:18:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:18:59', '2023-02-14 09:18:59'),
('bePnX17Bw6QO9Hf_OLMJP_-PrI1lLm54', '2023-02-16 03:53:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:53:58', '2023-02-15 03:53:58'),
('bVR2cEOVMKlE2_CslwsF-9XEzXeVUTC0', '2023-02-15 09:08:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:08:48', '2023-02-14 09:08:48'),
('bw90wrEp7a0GiiZotSb53n4jpSWD15FF', '2023-02-16 04:06:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:06:29', '2023-02-15 04:06:29'),
('BZalnf3OZsW0ekppvxN-ul2FZtscOlYZ', '2023-02-15 15:07:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:07:10', '2023-02-14 15:07:10'),
('bZbFTCVapRhwwND-Dy6S2d7-yRzk7P__', '2023-02-15 09:22:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:22:38', '2023-02-14 09:22:38'),
('C2h0dUO6qOssbvWF4baqeS8UGoz0lXsd', '2023-02-15 10:36:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:36:03', '2023-02-14 10:36:03'),
('CT19045kn1fGDcV2R4O_7SxZEfa0vXxV', '2023-02-16 03:51:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:57', '2023-02-15 03:51:57'),
('DDzt4sambw9-3xJRZUazneuuED8qtaGI', '2023-02-16 04:05:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:08', '2023-02-15 04:05:08'),
('dlDdXUWWk-JVrSVyRzlksJvl8An1U0XA', '2023-02-15 15:07:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:07:32', '2023-02-14 15:07:32'),
('DPJ_H_zQ0eC7PLyoBqrggMJBlb6S3Uqk', '2023-02-15 08:53:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 08:53:42', '2023-02-14 08:53:42'),
('DrJCMCVo28RK8sIjyc6SGNsW_xXy-uu2', '2023-02-16 03:33:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:33:03', '2023-02-15 03:33:03'),
('dvHMy1QxKyqnHkPJiyyw9z4cWjBUphcx', '2023-02-15 10:19:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:19:50', '2023-02-14 10:19:50'),
('EbvvU5uv0uiJ6Dc3HSUC7HBaJwOHCAiu', '2023-02-15 15:16:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:16:04', '2023-02-14 15:16:04'),
('erbX1NMG8M68rtbuG2uMadTMbb9OELsU', '2023-02-16 03:51:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:26', '2023-02-15 03:51:26'),
('f1uECTTpuKC-faIpISsGpEpXegBVkW4B', '2023-02-15 10:40:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:40:07', '2023-02-14 10:40:07'),
('F3jJ74HK4y4CCxUaVD1XINWtRUF0XtQL', '2023-02-15 09:08:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:08:40', '2023-02-14 09:08:40'),
('f64APku6Ii_IjfyoyUZsYGDY5YdpARC-', '2023-02-15 10:41:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:41:12', '2023-02-14 10:41:12'),
('F9R9u_54MIlLKO1I2kE6zqoHmtkWwpD1', '2023-02-16 04:05:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:08', '2023-02-15 04:05:08'),
('FesQlCuc96UQpWeHJlsHgAI1EdR8VUAG', '2023-02-16 04:04:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:04:50', '2023-02-15 04:04:50'),
('FUKSU0NFgz8EyAqCISD35y10zsKssnBl', '2023-02-15 10:38:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:38:55', '2023-02-14 10:38:55'),
('fx1ILK2Xcoq6oDPFJl4f_xn8uf3p2D8X', '2023-02-16 03:50:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:50:55', '2023-02-15 03:50:55'),
('fxfbk9pwrcUJ9sqsyMX6yI6Rrke1M2Xy', '2023-02-15 09:01:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:01:43', '2023-02-14 09:01:43'),
('Fzmbczw8KTtvw-ky3-INaxfiu-wX1IZ3', '2023-02-15 10:29:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:29:39', '2023-02-14 10:29:39'),
('GEPg29sb9tpMnjO5PhyNk_oZTkvlOeIQ', '2023-02-16 04:04:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:04:59', '2023-02-15 04:04:59'),
('Gfxd6saFe4vY876sgYpSEOys1wskJFpH', '2023-02-15 10:38:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:38:55', '2023-02-14 10:38:55'),
('GO8Mf_7Q8TkiC5JyIOJ0oJJNjaD1YV7p', '2023-02-15 13:49:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 13:49:20', '2023-02-14 13:49:20'),
('Gr7mclRm-xGYAnsvbXM4RP1iwAFjIEi9', '2023-02-15 10:42:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:42:00', '2023-02-14 10:42:00'),
('GXbNMH23OGLw6wQWk6KephWlxNYKbO64', '2023-02-16 03:48:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"529a20e3-8927-4521-85c3-faaf55022bfb\"}', '2023-02-15 02:11:20', '2023-02-15 03:48:35'),
('h29xa5EAchtOFyw0C7aZEmWKg_0Nay1o', '2023-02-15 14:38:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:38:40', '2023-02-14 14:38:40'),
('HdHIUL0izhQFcDrgcIFrh61bEGAwXIXc', '2023-02-15 10:29:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:29:14', '2023-02-14 10:29:14'),
('hixoC4IelPcrUTc2dmubRmX9q4-ZANZ0', '2023-02-15 15:05:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:05:41', '2023-02-14 15:05:41'),
('HqrzDM9sBeXiLMJu_NIwkfpCiF5r3uz5', '2023-02-15 10:38:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:38:44', '2023-02-14 10:38:44'),
('HU7ADJkh2Od7GQ-A0ct5DEsuCbW8DvKd', '2023-02-15 14:37:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:37:36', '2023-02-14 14:37:36'),
('If11tWRYanQ2coMisNiZCr_HhBzrBSbF', '2023-02-16 04:06:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"529a20e3-8927-4521-85c3-faaf55022bfb\"}', '2023-02-15 03:51:57', '2023-02-15 04:06:51'),
('iGgtd5ZkzdczuqCBlW3rcwlC-VdC_Kj1', '2023-02-15 10:24:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:24:11', '2023-02-14 10:24:11'),
('ii49bdp4fG-jU-MkbV4NKY_pyEKIwAiP', '2023-02-15 15:17:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:17:04', '2023-02-14 15:17:04'),
('In9gnK_aINB9y10K1T4-IB1xUglipvpa', '2023-02-16 04:05:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:03', '2023-02-15 04:05:03'),
('IPcFtxblVA98VqW8nnYevsBDJfRVLpmy', '2023-02-16 03:51:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:04', '2023-02-15 03:51:04'),
('IuA8JpgcyH7rhc-ssOGuwqp4-XPyGazv', '2023-02-15 09:15:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:15:46', '2023-02-14 09:15:46'),
('kf44xqQt6DuIpLf90rOqxcClEckE54OU', '2023-02-15 10:27:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:27:46', '2023-02-14 10:27:46'),
('kJD4CJ-8YXgAKWlGlEbeXN-damN2CFLl', '2023-02-16 04:05:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:25', '2023-02-15 04:05:25'),
('KLYUbERIex0LgdYr5zwTYCtFzdpUj87x', '2023-02-15 10:38:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:38:55', '2023-02-14 10:38:55'),
('Km5zUsrolT4W9HlAzPXTAsaCEIR89aM2', '2023-02-15 15:07:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:07:32', '2023-02-14 15:07:32'),
('KtMJHBIULm4iS4vrX4vu_Z7hnV1HQ2u9', '2023-02-15 16:21:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"529a20e3-8927-4521-85c3-faaf55022bfb\"}', '2023-02-14 16:07:57', '2023-02-14 16:21:44'),
('l8sDycRse9OFtWIlhJpiR7R6Wz1Ql6ed', '2023-02-15 08:54:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 08:54:43', '2023-02-14 08:54:43'),
('l9rVMwDFTQX6ezzLOOdedTee6H5QpcU7', '2023-02-15 10:41:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:41:28', '2023-02-14 10:41:28'),
('Lc6bhVKaQPuRb3h_i4kDOhHK7MVHdVU2', '2023-02-15 15:12:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:12:24', '2023-02-14 15:12:24'),
('Ley-fu3QoAoBNQmHgPomsoFPRSm--n5Q', '2023-02-16 04:05:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:19', '2023-02-15 04:05:19'),
('m6UuE6tuCUlC775unk-v54GlzEXxppgg', '2023-02-15 08:54:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 08:54:19', '2023-02-14 08:54:19'),
('mAHhoFTI8BgXwONrNfQAKNmtg2MCcpNk', '2023-02-15 10:40:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:40:23', '2023-02-14 10:40:23'),
('MF0RE6yHROrA-0Pnu-91Fu0oVxeN1pVz', '2023-02-16 03:50:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:50:20', '2023-02-15 03:50:20'),
('mIbacu5Ui3pCaS7XvDyjmTSY5DZKu402', '2023-02-16 03:51:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:04', '2023-02-15 03:51:04'),
('MxCuoieqECvAIiMvi09KW2TEShRCUxHk', '2023-02-15 10:12:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:12:58', '2023-02-14 10:12:58'),
('NGmHl50OtFarszPA3MU_ElzW7dV8m_tu', '2023-02-15 10:14:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:14:07', '2023-02-14 10:14:07'),
('NNQPNhSn3lNy47uIeGg00SxNya0CZHu3', '2023-02-15 09:26:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:26:35', '2023-02-14 09:26:35'),
('NTSO06aAjgyJzrQj_vJDUueYPn5NP43m', '2023-02-16 03:51:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:15', '2023-02-15 03:51:15'),
('O0-kYPrM0XiBprt4UpfTvL4Yn8ejury_', '2023-02-16 03:51:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:39', '2023-02-15 03:51:39'),
('o59qrHv_2rvM0tFcna8D4esiY-L7wrBm', '2023-02-15 15:05:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:05:34', '2023-02-14 15:05:34'),
('o82f2uvFUdq5fW-k3RPQVNHAGQeCc5ts', '2023-02-16 03:50:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:50:36', '2023-02-15 03:50:36'),
('o9eLqhmmdls5UT1dPJIzlTDkWDLZZVxg', '2023-02-15 10:37:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:37:09', '2023-02-14 10:37:09'),
('ob8Qi-R35P-TsHgSv1ppRBLD19JU6ydR', '2023-02-15 14:37:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:37:04', '2023-02-14 14:37:04'),
('onVNZmhl-FLTSTv4rg_DM8J-4qD-mrAA', '2023-02-16 04:05:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:30', '2023-02-15 04:05:30'),
('OOKkJaPro_rwlSNAg72s-iBz1iXqJSDC', '2023-02-15 14:57:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:57:58', '2023-02-14 14:57:58'),
('pF_Z8cICQSPHHWDRiiK8UC86bxiZFI_s', '2023-02-15 15:02:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:02:42', '2023-02-14 15:02:42'),
('pNWdcAfcMXIl0EJmnVnW8CXznEl7ANGU', '2023-02-15 15:04:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:04:08', '2023-02-14 15:04:08'),
('pR6RO2usQZZiLm2oG3uCoazrS_ST7oq8', '2023-02-15 13:49:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 13:49:26', '2023-02-14 13:49:26'),
('PRSQ3V5Qk2vbd83bN3WuOtBAXR5x5RLV', '2023-02-15 10:36:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:36:24', '2023-02-14 10:36:24'),
('pWnWA_NnEEcNTRSPbAaZXyH54oX0WV8-', '2023-02-16 03:54:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:54:11', '2023-02-15 03:54:11'),
('p_q7z4CoGSCkbGv8a7CXyUoFOx8cipVQ', '2023-02-15 10:40:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:40:51', '2023-02-14 10:40:51'),
('q87Bz76y_nNJ7HlVwADB2JP8ICNVr-ES', '2023-02-15 10:40:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:40:49', '2023-02-14 10:40:49'),
('Qh39SRq0aez4IxFDCzWyr_HuaJi10zmt', '2023-02-15 09:20:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:20:37', '2023-02-14 09:20:37'),
('qQVH0SXBVsvutkPjYAwYYRJtHyCT_x7o', '2023-02-16 04:05:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:25', '2023-02-15 04:05:25'),
('qzIDkg6ifF47g1Ct186bnlS-5JW_J5rT', '2023-02-16 03:50:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:50:55', '2023-02-15 03:50:55'),
('q_cajdMUUTMApcZHTPHUeB8-IL_fT5MX', '2023-02-16 04:04:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:04:59', '2023-02-15 04:04:59'),
('R3WeSNp2skhhineDwv_SN-VOPbNi6Qaq', '2023-02-15 10:18:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:18:24', '2023-02-14 10:18:24'),
('rBp41Nh5fWJ47gGqHKEend9AvFNW5jjm', '2023-02-15 15:14:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:14:24', '2023-02-14 15:14:24'),
('RSPSXOYX1Cp4wvVAQM7FxD-5G2qC9xWZ', '2023-02-15 10:24:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:24:50', '2023-02-14 10:24:50'),
('rV2W6oA1liMXHCYKeLaHLJDDIAq0RSz3', '2023-02-15 10:36:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:36:18', '2023-02-14 10:36:18'),
('Syc5zZapkdvnrhTduz4dt44B2JW4FubX', '2023-02-16 04:05:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:13', '2023-02-15 04:05:13'),
('sYLVLYo75WI1mbJ3jQvkuTArr2fu02zT', '2023-02-16 04:05:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:05:19', '2023-02-15 04:05:19'),
('tBGbxmV5yXfIL43Ue4mjxp7v72tLJSFS', '2023-02-16 03:49:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:49:58', '2023-02-15 03:49:58'),
('TeG6DeqhpmEfvPkw7ORqslf1mU1btQAS', '2023-02-15 10:41:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:41:35', '2023-02-14 10:41:35'),
('tI4SUznGRFcTqbMEiIyhtB0b5TGmEFpF', '2023-02-16 04:04:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:04:50', '2023-02-15 04:04:50'),
('tjN_TEHFEAUYJ2Zl8vBk5zdCuxM8rEaH', '2023-02-15 09:17:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:17:48', '2023-02-14 09:17:48'),
('tQyrqjhC_8HlCwh-7j5rFUvxpilwik3d', '2023-02-15 14:37:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:37:36', '2023-02-14 14:37:36'),
('tT8bWmZ51zdCS4KmQs6yEC2cTCxQngqL', '2023-02-16 04:04:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:04:11', '2023-02-15 04:04:11'),
('ub3nF02BRYsBsH3B47hNUWbqlWA1mpxo', '2023-02-16 04:06:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:06:35', '2023-02-15 04:06:35'),
('UD8zXZbDWwsohn2gvCE3LPheqGKREsyS', '2023-02-16 03:50:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:50:43', '2023-02-15 03:50:43'),
('UtB3W8RyFkyBgX-1gfNr7KwdqQ4aBdno', '2023-02-15 10:37:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:37:09', '2023-02-14 10:37:09'),
('VxiMP0ySl24WiStH3RJHznBKJZoEsGAM', '2023-02-15 10:36:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:36:26', '2023-02-14 10:36:26'),
('w-0no1JgIx7lRREVxr6ZWGhynfK-FyfY', '2023-02-15 09:20:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:20:14', '2023-02-14 09:20:14'),
('wKh8DW7rk0UBRP8OgwSyhAmckTcfFN_G', '2023-02-15 08:52:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 08:52:51', '2023-02-14 08:52:51'),
('wMitr2CeDFRgMlpIVInOn7kizElj15q0', '2023-02-15 10:17:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:17:28', '2023-02-14 10:17:28'),
('X16sYKPPzCqiXL5uecvhbP8f5-iaMZGm', '2023-02-15 10:36:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:36:59', '2023-02-14 10:36:59'),
('x80QWR2ZSmCRafqyDv7lCmzSbKhh4FLI', '2023-02-16 03:49:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:49:16', '2023-02-15 03:49:16'),
('XotqhoMlNum9d0r7rE4oKyZvzc95BexU', '2023-02-15 14:57:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:57:58', '2023-02-14 14:57:58'),
('xOYtVcLrQXYow2-By0S4W9q88_Fb_m1Y', '2023-02-15 15:14:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:14:17', '2023-02-14 15:14:17'),
('xtp1K4QpR-JADLHpvlKb-b_y-mhPLF05', '2023-02-16 03:51:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:39', '2023-02-15 03:51:39'),
('xYL-6HFj_n4YmNMOX_4FkbMfWQimld_Y', '2023-02-15 10:11:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:11:25', '2023-02-14 10:11:25'),
('y6e39FZzu2LzzZn1Nx3FWxe9ML4D7_H8', '2023-02-16 03:51:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:15', '2023-02-15 03:51:15'),
('YhW4BTb-r3kGWenJ_o3QYfT7IQNEn-PM', '2023-02-16 04:04:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:04:54', '2023-02-15 04:04:54'),
('YkegLvDPZDSDJRvV3fPhTWUkyhFGy3dR', '2023-02-15 15:16:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 15:16:10', '2023-02-14 15:16:10'),
('yle2gGZ8XixrSeiz9pXI4OkhJfGy_hsn', '2023-02-15 14:55:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:55:51', '2023-02-14 14:55:51'),
('yUO7GOStxecUv76wILDJAfruZ3VLfMqn', '2023-02-15 10:29:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:29:58', '2023-02-14 10:29:58'),
('ZHcQYj83igP1dGQXjBh8vza1yWOGuNKL', '2023-02-15 09:24:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 09:24:18', '2023-02-14 09:24:18'),
('zhhGKKW7-D8w7XyqiLMHavAhbtQbUlg7', '2023-02-16 04:04:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:04:31', '2023-02-15 04:04:31'),
('ZuJKr2DxsU9Y-0eKy-ZjJG5FsHHCVtZV', '2023-02-16 04:06:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 04:06:12', '2023-02-15 04:06:12'),
('_6ojIlIcfRFcCTzyZVSqQIIwEXPON62k', '2023-02-15 15:17:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"529a20e3-8927-4521-85c3-faaf55022bfb\"}', '2023-02-14 15:17:12', '2023-02-14 15:17:14'),
('_MOFz5ShuGM4vNGeA3UN6ifo4Hv0WQiw', '2023-02-15 14:55:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 14:55:22', '2023-02-14 14:55:22'),
('_qe-wmwFf1t3EerjuCMy9hxeT1gS5I2l', '2023-02-15 10:36:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-14 10:36:18', '2023-02-14 10:36:18'),
('_QJ9JUbQWuricLEk59vPFvffEAnZjuZ4', '2023-02-16 03:51:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-02-15 03:51:26', '2023-02-15 03:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `hafalan` varchar(255) NOT NULL,
  `ayat` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `uuid`, `name`, `kelas`, `hafalan`, `ayat`, `userId`, `createdAt`, `updatedAt`) VALUES
(113, 'a1a1f94c-6475-4cf7-9426-748186c693b3', 'Abdurrahman', '8B', '1 - Al-Fatihah', 1, 2, '2023-02-15 03:48:32', '2023-02-15 03:51:39'),
(114, '628af2e2-b1a8-4577-b029-44b6340d5749', 'Achmad Syafiq Ramadhan', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(115, '1a8d503e-b216-404f-9c46-17c0e4040705', 'Achmad Syauqy Ramadhan', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(116, '68da8e05-9113-4d28-b1b7-a199b98e8883', 'Alfath Anugrah Harafat', '8B', '1 - Al-Fatihah', 1, 2, '2023-02-15 03:48:33', '2023-02-15 03:51:26'),
(117, '732f12b2-c5d3-485e-867c-404860276914', 'Alqahfi Fitra Ramadhan', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(118, 'af4c361d-4c7f-4bed-b0d8-6c84299b205c', 'Annas Dzakwan', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(119, 'f82d160a-c164-4e11-8b93-86bfe1ee083c', 'Arif Anugrah Etno Pratama', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(120, '070f378a-3b4b-4279-a517-58df8afeb136', 'Danish Arrafi Fausri', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(121, 'cd630164-625a-49fc-bb58-72c0f1f8545c', 'Faris Ammar Adilah', '8B', '1 - Al-Fatihah', 1, 2, '2023-02-15 03:48:33', '2023-02-15 03:51:15'),
(122, 'f10d5490-445d-455d-8a39-241f3d78ebba', 'Farras Alfatih', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(123, '77781b69-6c6b-488d-b315-22333e2ba1d5', 'Ghiffari Zikry Fathir Rahma', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(124, '031dd74b-0a3a-442c-8a70-51cbe8e52490', 'Hani Suharyono', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(125, '5b8c4914-7ba4-438c-8d9d-850a18425372', 'Maulana Muhammad Syauqi', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:33', '2023-02-15 03:48:33'),
(126, 'cfaa4457-d2ea-4523-a03f-315e9d674dfc', 'Meigan Imeralgi', '8B', '1 - Al-Fatihah', 1, 2, '2023-02-15 03:48:33', '2023-02-15 03:51:04'),
(127, '190fc6e0-5e08-4875-b218-0305270151e2', 'Muhammad Akbar Firmansyah', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:34', '2023-02-15 03:48:34'),
(128, '5b8d1318-73a5-45af-9210-e12fc869f155', 'Muhammad Addurrunnafis', '8B', '1 - Al-Fatihah', 1, 3, '2023-02-15 03:48:34', '2023-02-15 04:05:30'),
(129, '07723f85-d0c5-41ca-a615-b4ae1c031871', 'Muhammad Nabil Azizi', '8B', '1 - Al-Fatihah', 1, 3, '2023-02-15 03:48:34', '2023-02-15 04:05:25'),
(130, '5e9b660f-0cb8-4d23-bc18-eb14f46fa1db', 'Muhammad Qhadafy Afzalurrahman', '8B', '1 - Al-Fatihah', 1, 2, '2023-02-15 03:48:34', '2023-02-15 03:50:55'),
(131, '997568a1-9fe2-4774-9926-10f6de94dfe3', 'Muhammad Shulhan Azmi', '8B', '1 - Al-Fatihah', 1, 3, '2023-02-15 03:48:34', '2023-02-15 04:05:19'),
(132, '55681a4c-b738-4ca5-8b8f-7126e7d8e9c1', 'Muhammad Zidane Attala', '8B', '1 - Al-Fatihah', 1, 2, '2023-02-15 03:48:34', '2023-02-15 03:50:43'),
(133, '319c214a-c8f6-44f5-bc7f-275d1e1908ea', 'Naufal Ardiona Fayyadh Ferdian', '8B', '1 - Al-Fatihah', 1, 3, '2023-02-15 03:48:34', '2023-02-15 04:05:13'),
(134, '60b23503-56f1-42ef-b13c-a47a976ff677', 'Naufal Fadhil Rifa\'i', '8B', '1 - Al-Fatihah', 1, 2, '2023-02-15 03:48:34', '2023-02-15 03:50:36'),
(135, '216dc06a-aacc-4f9f-adc7-c0c9979a6433', 'Nawaf Rasyad Basalim', '8B', '1 - Al-Fatihah', 1, 3, '2023-02-15 03:48:34', '2023-02-15 04:05:08'),
(136, '952d99f9-1f67-4926-8c28-5d9aadc16e7f', 'Rafi Akbar Fatihudin', '8B', '1 - Al-Fatihah', 1, 3, '2023-02-15 03:48:34', '2023-02-15 04:05:03'),
(137, '80616f68-9fc5-40e6-933d-457c42fb848d', 'Rangga Alfiansyah', '8B', '1 - Al-Fatihah', 1, 3, '2023-02-15 03:48:34', '2023-02-15 04:04:59'),
(138, 'a9ce9023-2511-4e90-8ea5-327df20b0440', 'Regian Giovanni Djong', '8B', '1 - Al-Fatihah', 1, 3, '2023-02-15 03:48:34', '2023-02-15 04:04:54'),
(139, 'ac9a107c-9903-4a2e-a402-d1f01201f1c2', 'Rezqi Fachri Ramadhan', '8B', '1 - Al-Fatihah', 1, 3, '2023-02-15 03:48:34', '2023-02-15 04:04:50'),
(140, 'b90c8753-5a31-430c-a0cb-80d54d227084', 'Wahyu Ramadhani', '8B', '1 - Al-Fatihah', 1, 2, '2023-02-15 03:48:35', '2023-02-15 03:50:20'),
(141, 'bfdee178-f792-4a10-8698-bcb175700cc0', 'Zaidan Hafidz', '8B', '1 - Al-Fatihah', 1, 1, '2023-02-15 03:48:35', '2023-02-15 03:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `nama_lengkap`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '529a20e3-8927-4521-85c3-faaf55022bfb', 'Admin', 'admin', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$d4KMDSZB31n+dx9r5QtzVQ$0CfUyjmMsODM90rRqxL8wo5OFBxnmWpULLqSU7JG8+U', 'admin', '2023-02-08 06:51:31', '2023-02-08 06:51:31'),
(2, '8b00f227-0ceb-4e6a-a874-571b56a7e013', 'Muamar', 'Muhammad Muamar', '1@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$gTTZTJVzRcyxoOF5BGXfOg$qPXJnfJEqwmgEeUxT2NxMkpMz0XKokbfOJwbAM/2lnI', 'user', '2023-02-08 07:18:52', '2023-02-15 03:49:58'),
(3, '5e57b455-7639-4dcd-9413-da813c3bc0b8', 'Syahrial', 'Muhammad Syahrial', '2@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$W4csIVWNZNeEaPLEGYE3wQ$FDo676JCGRSKuWDLxxqvj+QD98qDlLVDtRU9u4ELBLc', 'user', '2023-02-14 08:54:19', '2023-02-15 04:04:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswaId` (`siswaId`);

--
-- Indexes for table `list_surah`
--
ALTER TABLE `list_surah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `list_surah`
--
ALTER TABLE `list_surah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`siswaId`) REFERENCES `siswa` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
