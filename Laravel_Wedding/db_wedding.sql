composer install-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2021 pada 16.23
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wedding`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id_absen` int(30) NOT NULL,
  `nama_absen` varchar(30) NOT NULL,
  `email_absen` varchar(30) NOT NULL,
  `total_absen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_galery`
--

CREATE TABLE `tb_galery` (
  `id_galery` int(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pasangan`
--

CREATE TABLE `tb_pasangan` (
  `id_pasangan` int(20) NOT NULL,
  `nama_pasangan_L` varchar(30) NOT NULL,
  `nama_pasangan_P` varchar(30) NOT NULL,
  `nama_ortu_L` varchar(30) NOT NULL,
  `nama_ortu_P` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelaksana_akad`
--

CREATE TABLE `tb_pelaksana_akad` (
  `id_akad` int(30) NOT NULL,
  `waktu_tanggal` datetime NOT NULL,
  `tempat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelaksana_resepsi`
--

CREATE TABLE `tb_pelaksana_resepsi` (
  `id_resepsi` int(30) NOT NULL,
  `waktu_tanggal` datetime NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `maps` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_quotes`
--

CREATE TABLE `tb_quotes` (
  `isi_quotes_admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sponsor`
--

CREATE TABLE `tb_sponsor` (
  `id_sponsor` int(30) NOT NULL,
  `nama_sponsor` varchar(30) NOT NULL,
  `jenis_sponsor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_story`
--

CREATE TABLE `tb_story` (
  `id_story` int(30) NOT NULL,
  `event` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL,
  `waktu_tanggal` datetime NOT NULL,
  `isi_story` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_galery`
--
ALTER TABLE `tb_galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indeks untuk tabel `tb_pasangan`
--
ALTER TABLE `tb_pasangan`
  ADD PRIMARY KEY (`id_pasangan`);

--
-- Indeks untuk tabel `tb_pelaksana_akad`
--
ALTER TABLE `tb_pelaksana_akad`
  ADD PRIMARY KEY (`id_akad`);

--
-- Indeks untuk tabel `tb_pelaksana_resepsi`
--
ALTER TABLE `tb_pelaksana_resepsi`
  ADD PRIMARY KEY (`id_resepsi`);

--
-- Indeks untuk tabel `tb_sponsor`
--
ALTER TABLE `tb_sponsor`
  ADD PRIMARY KEY (`id_sponsor`);

--
-- Indeks untuk tabel `tb_story`
--
ALTER TABLE `tb_story`
  ADD PRIMARY KEY (`id_story`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
