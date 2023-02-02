-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 02:42 AM
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
-- Table structure for table `list_surah`
--

CREATE TABLE `list_surah` (
  `id` int(11) NOT NULL,
  `nama_surah` varchar(100) NOT NULL
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
('3M7NrzfYTzJao6a0lHaky3DHnj7ZLx9A', '2023-02-01 05:33:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"1da8c02d-b41b-4af4-acc5-9c8ed05640f8\"}', '2023-01-30 14:06:03', '2023-01-31 05:33:46'),
('ByWS5UcfNEJGTNBpMM87HvI9rqV8MboT', '2023-02-01 06:29:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-01-31 06:29:42', '2023-01-31 06:29:42'),
('Em9gPNZLCUPmfffewsuIqV-dgg2JKZZ3', '2023-02-01 06:30:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-01-31 06:29:44', '2023-01-31 06:30:01'),
('FpJnuckLtj4pgHeEYu2X7N4bAy8efRTU', '2023-02-01 05:32:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-01-31 05:32:26', '2023-01-31 05:32:26'),
('GCcEhs4XzapBnK9Qql5av3nGLJ9aqS0d', '2023-01-31 14:07:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"1da8c02d-b41b-4af4-acc5-9c8ed05640f8\"}', '2023-01-30 14:06:38', '2023-01-30 14:07:14'),
('jnOtGLvmg3Yz7gkZ0y-ocj01PHBvrJXe', '2023-02-01 06:29:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-01-31 06:29:15', '2023-01-31 06:29:15'),
('jRBGckB_6aljKAJUxALdJSTcEuSwan-o', '2023-02-01 06:29:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-01-31 06:29:44', '2023-01-31 06:29:44'),
('wdNjNe4xIHvYWtbl2xWxWm5Zg6k6fp0a', '2023-01-31 14:18:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-01-30 14:18:05', '2023-01-30 14:18:05'),
('wRoy3hwEZD0zv2n7uShphNSB6Kee4k8q', '2023-02-01 06:29:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-01-31 06:29:06', '2023-01-31 06:29:06');

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
  `ayat` int(10) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `uuid`, `name`, `kelas`, `hafalan`, `ayat`, `userId`, `createdAt`, `updatedAt`) VALUES
(12, '748b718a-b1e9-400b-abe3-ea7279567e08', 'Farid Wahid', '7B', '6- Al An\'am', 0, 1, '2023-01-03 06:28:59', '2023-01-23 05:40:18'),
(37, 'de2cb297-d40c-4aee-9473-c79366cb69b7', 'Firza Wahid', '8A', '42- Asy-Syura ', 41, 15, '2023-01-03 13:54:14', '2023-01-24 03:12:09'),
(49, '750f51c2-563d-4843-a115-37105e07de6a', 'Fikri', '9A', '5- Al Ma\'idah', 12, 1, '2023-01-24 03:09:34', '2023-01-24 03:11:38'),
(51, 'd6a5c8a1-f141-49bf-9796-3d86436d49f8', 'Fadil Riskiyansyah', '9A', '5- Al Ma\'idah', 34, 21, '2023-01-24 03:15:24', '2023-01-24 03:15:24'),
(53, '1f734687-29a6-420d-8d9a-25af5b1c4a25', 'Alfad Sandi RIyanto', '9A', '110- An-Nasr', 3, 21, '2023-01-25 06:28:28', '2023-01-25 06:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
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
(1, '1da8c02d-b41b-4af4-acc5-9c8ed05640f8', 'Admin', 'Admin', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$dyJZOTLuuDpoMkYQyiID5g$aP5ojB0Mk79TntQGGS5ZBKpLOcH4UTQbPZY+Acr0Mn4', 'admin', '2023-01-01 10:58:34', '2023-01-23 11:24:34'),
(15, 'f9bae5f0-97f5-41f9-84ea-a86c70a70a3f', 'Fathur', 'Ahmad Fathur Roji', 'fatur@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$Tin3/hmgS66k6rvhHiaKHQ$/YXziDOfsGdZUCiTslZYehtyapMa1PpQtQEINqIKXHM', 'user', '2023-01-03 10:24:40', '2023-01-25 06:31:13'),
(16, 'c4f41a7b-644b-4f06-91c2-a4262ae0b4c5', 'Rino', 'Rino,S.Pd', 'rino@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$wUNZAh7wPgXTUlCLtiv4Bw$2hXssp6dS9Irx8zHw2EUdJ1E6BgaM1kJ0dTYToct7Sg', 'user', '2023-01-04 00:38:57', '2023-01-04 00:38:57'),
(17, '09210f79-8201-4f18-bf54-2d650e689c3c', 'Musa', 'M.Musa Harahap', 'musa@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$AG3VrhGOPDfuuZgkNF6yPw$QP1EPTFzAeE9n1J17AmSHWK8ifw8mv4zdRnv9xz7fRk', 'user', '2023-01-23 11:28:08', '2023-01-23 11:28:08'),
(18, '4551b7ba-a3d6-4f72-a014-dcd3b88fa3c4', 'Mursalin', 'Mursalin,S.E', 'mursalin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$m0BeNo29TugFn8dfqHM0/A$s6e4msjdvlSVpyFKFUsrhsFQMgNXFqrzEDMop0IPCWA', 'user', '2023-01-23 12:44:28', '2023-01-24 02:49:06'),
(21, 'd9b30ac7-43f0-4628-bf59-91f49a60f190', 'Zainuddin', 'Zainuddin,S.Sos', 'zai@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$OU6YzMhb33ryLeknW8M0gQ$0a2QiuFXl7OzZEMMMNFszsCIr08qh4Np7b6kl+EyGmY', 'user', '2023-01-24 02:49:51', '2023-01-24 02:49:51');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `list_surah`
--
ALTER TABLE `list_surah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
