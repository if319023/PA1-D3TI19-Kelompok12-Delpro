-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Jun 2020 pada 17.36
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyekakhir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `nama_admin` char(50) DEFAULT NULL,
  `id_delpro` char(20) NOT NULL,
  `kata_sandi` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`nama_admin`, `id_delpro`, `kata_sandi`) VALUES
('ketua', '001', 'e202wqa202002'),
('wakil_ketua', '002', 'e202wqa202002'),
('sekretaris', '003', 'e202wqa202002'),
('bendahara', '004', 'e202wqa202002'),
('editor', '005', 'e202wqa202002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `nama_anggota` char(50) DEFAULT NULL,
  `id_delpro` char(20) NOT NULL,
  `kata_sandi` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`nama_anggota`, `id_delpro`, `kata_sandi`) VALUES
('asido', '11319001', 'e202wqa202002'),
('rahul', '11319002', 'e202wqa202002'),
('andre', '11319003', 'e202wqa202002'),
('loise', '11319004', 'e202wqa202002'),
('daud', '11319005', 'e202wqa202002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `isi_komentar` varchar(550) NOT NULL,
  `nama_komentar` varchar(100) NOT NULL,
  `judul_modul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `isi_komentar`, `nama_komentar`, `judul_modul`) VALUES
(4, 'ASIDO TAMPAN', 'Arief Muhammad', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `waktu_pengumuman` varchar(120) NOT NULL,
  `judul_pengumuman` varchar(225) DEFAULT NULL,
  `isi_pengumuman` text,
  `id_peng` int(11) NOT NULL,
  `tempat_pengumuman` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`waktu_pengumuman`, `judul_pengumuman`, `isi_pengumuman`, `id_peng`, `tempat_pengumuman`) VALUES
('2020-06-04', 'Quarantine Days', 'Gass, kuliah dirumah, jangan nongkrong diluar, jangan keluyuran, jaga kesehatan ya, love you\r\nregards, Asido Panjaitan &lt;3', 3, 'Sitoluama, Toba Samosir'),
('0034-02-21', 'MOBILE LEGENDS', 'Daftarkan diri anda turnamen mobile legends se- ITDEL', 4, 'Sitoluama, Toba Samosir'),
('1238-10-20', 'ASIDO GANTENG KALI', 'MANTAP', 5, 'Porsea');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perlombaan`
--

CREATE TABLE `perlombaan` (
  `id_perlombaan` int(11) NOT NULL,
  `nama_perlombaan` varchar(255) NOT NULL,
  `isi_perlombaan` varchar(500) NOT NULL,
  `file_pendukung` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perlombaan`
--

INSERT INTO `perlombaan` (`id_perlombaan`, `nama_perlombaan`, `isi_perlombaan`, `file_pendukung`) VALUES
(2, 'ICPC', 'www.youtube.com', 'd629990f8c60d7891da0b91d45d43f51.docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `role_id` int(1) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tools`
--

CREATE TABLE `tools` (
  `id_tools` int(11) NOT NULL,
  `nama_tools` varchar(50) NOT NULL,
  `isi_tools` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tools`
--

INSERT INTO `tools` (`id_tools`, `nama_tools`, `isi_tools`) VALUES
(1, 'Notepad++', 'https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.6/npp.7.8.6.Installer.exe'),
(5, 'Dev C--', 'https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.6/npp.7.8.6.Installer.exe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE `upload` (
  `id_upload` int(11) NOT NULL,
  `judul_upload` varchar(255) NOT NULL,
  `isi_upload` text NOT NULL,
  `nama_upload` varchar(255) NOT NULL,
  `kapan_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`id_upload`, `judul_upload`, `isi_upload`, `nama_upload`, `kapan_upload`) VALUES
(1, 'aku', 'ganteng ', '6151b6f01f3e3afc5950afe511e6d594.docx', '2020-06-09 05:13:49'),
(5, 'MODUL ENGLISH', 'GASS', '697f6b4c7eff3cb51800863f5f7d8eb9.docx', '2020-06-09 05:50:43'),
(6, 'Asido', 'Tutorial menjadi Asido Ganteng', '1a607f2042816e154d56ab6f305d135b.docx', '2020-06-10 15:22:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nim` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(1) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `motivasi` text NOT NULL,
  `foto` varchar(500) NOT NULL,
  `angkatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nim`, `password`, `email`, `role_id`, `prodi`, `nama`, `user_id`, `motivasi`, `foto`, `angkatan`) VALUES
('11319002', 'e202wqa202002', 'asidopanjaitan67@gmail.com', 1, 'D3 Teknologi Informasi', 'Asido Panjaitan', 6, 'Ingin menjadi seorang Olahragawan', '', '2019'),
('11319007', 'e202wqa202002', 'arifemuh@gmail.com', 2, 'S1 Informatika', 'Arief Muhammad', 9, 'Mantap Gan', '', '2020'),
('1131', 'e202wqa202002', 'awak@gmail.com', 2, 'Pilih prodi', 'Mabar', 12, 'sdsadad', '', '21231'),
('12345', 'e202wqa202002', 'kekeyi@gmail.com', 3, 'Pilih prodi', 'Kekeyi12', 13, 'Aku bukan bonekamu', '', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_delpro`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_delpro`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_peng`);

--
-- Indexes for table `perlombaan`
--
ALTER TABLE `perlombaan`
  ADD PRIMARY KEY (`id_perlombaan`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id_tools`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id_upload`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_peng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `perlombaan`
--
ALTER TABLE `perlombaan`
  MODIFY `id_perlombaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id_tools` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
