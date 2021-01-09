-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2021 pada 03.11
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komber`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `aktivitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `nama`, `latitude`, `longitude`, `aktivitas`) VALUES
(1, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(2, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(3, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(4, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(5, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(6, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(7, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(8, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(9, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(10, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(11, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(12, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(13, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(14, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(15, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(16, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(17, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(18, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(19, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(20, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(21, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(22, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(23, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(24, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(25, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(26, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(27, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(28, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(29, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(30, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(31, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(32, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(33, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(34, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(35, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(36, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(37, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(38, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(39, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(40, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(41, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(42, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(43, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(44, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(45, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(46, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(47, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(48, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(49, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(50, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(51, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(52, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(53, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(54, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(55, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(56, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(57, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(58, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(59, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(60, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(61, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(62, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(63, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(64, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(65, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(66, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(67, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(68, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(69, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(70, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(71, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(72, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(73, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(74, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(75, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(76, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(77, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(78, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(79, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(80, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(81, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(82, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(83, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(84, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(85, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(86, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(87, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(88, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(89, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(90, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(91, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(92, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(93, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(94, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(95, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(96, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(97, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(98, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(99, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(100, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(101, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(102, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(103, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(104, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(105, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(106, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(107, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(108, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(109, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(110, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(111, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(112, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(113, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(114, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(115, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(116, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(117, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(118, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(119, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(120, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(121, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(122, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(123, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(124, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(125, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(126, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(127, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(128, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(129, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(130, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(131, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(132, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(133, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(134, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(135, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(136, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(137, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(138, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(139, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(140, 'Rizaldi', -8.13668, 113.227, 'Berlari'),
(141, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(142, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(143, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(144, 'Rizaldi', -8.13668, 113.227, 'Berjalan'),
(145, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(146, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(147, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(148, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(149, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(150, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(151, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(152, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(153, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(154, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(155, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(156, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(157, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(158, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(159, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(160, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(161, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(162, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(163, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(164, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(165, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(166, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(167, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(168, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(169, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(170, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(171, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(172, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(173, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(174, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(175, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(176, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(177, 'Rizaldi', -8.13668, 113.227, 'Berhenti'),
(178, 'Rizaldi', -8.13668, 113.227, 'Berhenti');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
