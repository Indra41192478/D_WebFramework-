-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05 Jul 2021 pada 11.46
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedding`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `acara_akad`
--

CREATE TABLE `acara_akad` (
  `acara_akad_id` int(11) NOT NULL,
  `nama` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `jam1` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `jam2` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal1` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal2` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `acara_akad`
--

INSERT INTO `acara_akad` (`acara_akad_id`, `nama`, `jam1`, `jam2`, `tanggal1`, `tanggal2`, `keterangan`) VALUES
(1, 'AKAD NIKAH', '08:00', '11:00', 'Sabtu 02', 'Agustus 2021', 'Jalan sultan Agung No. 106 Malang, Jawa Timur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `acara_resepsi`
--

CREATE TABLE `acara_resepsi` (
  `acara_resepsi_id` int(11) NOT NULL,
  `nama` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `jam1` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `jam2` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal1` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal2` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `acara_resepsi`
--

INSERT INTO `acara_resepsi` (`acara_resepsi_id`, `nama`, `jam1`, `jam2`, `tanggal1`, `tanggal2`, `keterangan`) VALUES
(1, 'RESEPSI', '12:00', '21:00', 'Sabtu 02', 'Agustus 2021', 'Gedung Serba Guna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `acara_title`
--

CREATE TABLE `acara_title` (
  `acara_title_id` int(11) NOT NULL,
  `title` varchar(115) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `acara_title`
--

INSERT INTO `acara_title` (`acara_title_id`, `title`) VALUES
(1, 'Jadwal acara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `nama1` varchar(115) NOT NULL,
  `nama2` varchar(115) NOT NULL,
  `title` varchar(115) NOT NULL,
  `waktu_mundur` varchar(115) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`banner_id`, `nama1`, `nama2`, `title`, `waktu_mundur`, `gambar`) VALUES
(1, 'Yunariah', 'Budi', 'Kami Merayakan Hari Pernikahan Kami', 'Juli 10, 2021 08:00:00', 'bar.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa_photo`
--

CREATE TABLE `jasa_photo` (
  `jasa_photo_id` int(11) NOT NULL,
  `nama` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jasa_photo`
--

INSERT INTO `jasa_photo` (`jasa_photo_id`, `nama`, `keterangan`) VALUES
(1, 'Rainbow Photoshoot', 'Jasa Photo berkhusus pada acara formal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa_rias`
--

CREATE TABLE `jasa_rias` (
  `jasa_rias_id` int(11) NOT NULL,
  `nama` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jasa_rias`
--

INSERT INTO `jasa_rias` (`jasa_rias_id`, `nama`, `keterangan`) VALUES
(1, 'Garnier Beauty Mark', 'sebuah jasa yang menawarkan produk mereka untuk merias khususnya untuk acara acara formal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa_tenda`
--

CREATE TABLE `jasa_tenda` (
  `jasa_tenda_id` int(11) NOT NULL,
  `nama` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jasa_tenda`
--

INSERT INTO `jasa_tenda` (`jasa_tenda_id`, `nama`, `keterangan`) VALUES
(1, 'JO\'s WeddingGo', 'Sebuah usaha yang menerima jasa dalam mendirikan tempat pernikahan dan menerima pesanan masakan untuk disajikan kepada para tamu.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa_title`
--

CREATE TABLE `jasa_title` (
  `jasa_title_id` int(11) NOT NULL,
  `title` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `video` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jasa_title`
--

INSERT INTO `jasa_title` (`jasa_title_id`, `title`, `video`) VALUES
(1, 'Jasa yang kami Gunakan', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nostayord@gmail.com', '$2y$10$N3dq.V5Wuzo0uhCvuFKsWOzS0H6hlP.SLAPbLJLXOIL4VzJFPx3PG', '2021-06-30 04:11:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penganten`
--

CREATE TABLE `penganten` (
  `penganten_id` int(11) NOT NULL,
  `salam` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `nama1` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan1` text COLLATE utf8_unicode_ci NOT NULL,
  `gambar1` text COLLATE utf8_unicode_ci NOT NULL,
  `nama2` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan2` text COLLATE utf8_unicode_ci NOT NULL,
  `gambar2` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `penganten`
--

INSERT INTO `penganten` (`penganten_id`, `salam`, `tanggal`, `title`, `nama1`, `keterangan1`, `gambar1`, `nama2`, `keterangan2`, `gambar2`) VALUES
(1, 'Puji Syukur kehadirat Allah Yang Maha Pengasih dan Maha Penyayang', '2 Agustus, 2021 Bamburia, Banyuwangi', 'Kami Mengundang Anda Untuk Datang dan Merayakan Pernikahan kami', 'Angel', 'seseorang yang terlair untuk mencintai serta terus berada di sisi orang tercintanya entah itu dalam suka maupun duka.', '36db5cf8-9a74-4910-99ca-976525df30e2.jpg', 'Budi', 'Seseorang yang setia dan rela melakukan apapun demi orang tercinta', 'pengantin-laki-laki.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `story`
--

CREATE TABLE `story` (
  `story_id` int(11) NOT NULL,
  `judul` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `story`
--

INSERT INTO `story` (`story_id`, `judul`, `tanggal`, `keterangan`, `gambar`) VALUES
(8, 'adsda', '2 July, 2021', 'adsada', 'pengantin-laki-laki.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `story_title`
--

CREATE TABLE `story_title` (
  `story_title_id` int(11) NOT NULL,
  `title1` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `title2` varchar(115) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `story_title`
--

INSERT INTO `story_title` (`story_title_id`, `title1`, `title2`) VALUES
(1, 'Romansa dan Kasih Sayang', 'Peristiwa Terindah Dalam Hidup Kami');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin', 'asasas', 'asasas', '2018-12-31 16:38:46', '2018-12-31 16:38:46'),
(3, 'indra', 'nostayord@gmail.com', '12345', '12345', '2021-06-09 06:14:47', '2021-06-09 06:14:47'),
(4, 'indra', 'indra@gmail.com', '$2y$10$XXZEST4AZ0bBs3u2wNosweN5TwbQrEJoPVoVLwTqmRF7oc/tstkXO', 'AaFr5yJMlK4ClBXy377xQrfYCgt7m4CJWVseVAriUGN1fzM7vZWOU9KlW0Gs', '2021-06-30 04:30:29', '2021-06-30 04:30:29'),
(5, 'ilmi', 'ilmi@gmail.com', '$2y$10$sr5MShMqhLWnRkNjL68xQORLRsP3VTQcj2Lv.88zanu6Dj1gSkR2e', 'Hobnq5vivusONpYqd3Sl3XVn3jDGM4AM0UbPnniacfW0vkHqMqmKjmrmYSzg', '2021-07-05 00:14:40', '2021-07-05 00:14:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara_akad`
--
ALTER TABLE `acara_akad`
  ADD PRIMARY KEY (`acara_akad_id`);

--
-- Indexes for table `acara_resepsi`
--
ALTER TABLE `acara_resepsi`
  ADD PRIMARY KEY (`acara_resepsi_id`);

--
-- Indexes for table `acara_title`
--
ALTER TABLE `acara_title`
  ADD PRIMARY KEY (`acara_title_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `jasa_photo`
--
ALTER TABLE `jasa_photo`
  ADD PRIMARY KEY (`jasa_photo_id`);

--
-- Indexes for table `jasa_rias`
--
ALTER TABLE `jasa_rias`
  ADD PRIMARY KEY (`jasa_rias_id`);

--
-- Indexes for table `jasa_tenda`
--
ALTER TABLE `jasa_tenda`
  ADD PRIMARY KEY (`jasa_tenda_id`);

--
-- Indexes for table `jasa_title`
--
ALTER TABLE `jasa_title`
  ADD PRIMARY KEY (`jasa_title_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penganten`
--
ALTER TABLE `penganten`
  ADD PRIMARY KEY (`penganten_id`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`story_id`);

--
-- Indexes for table `story_title`
--
ALTER TABLE `story_title`
  ADD PRIMARY KEY (`story_title_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara_akad`
--
ALTER TABLE `acara_akad`
  MODIFY `acara_akad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `acara_resepsi`
--
ALTER TABLE `acara_resepsi`
  MODIFY `acara_resepsi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `acara_title`
--
ALTER TABLE `acara_title`
  MODIFY `acara_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jasa_photo`
--
ALTER TABLE `jasa_photo`
  MODIFY `jasa_photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jasa_rias`
--
ALTER TABLE `jasa_rias`
  MODIFY `jasa_rias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jasa_tenda`
--
ALTER TABLE `jasa_tenda`
  MODIFY `jasa_tenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jasa_title`
--
ALTER TABLE `jasa_title`
  MODIFY `jasa_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penganten`
--
ALTER TABLE `penganten`
  MODIFY `penganten_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `story_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `story_title`
--
ALTER TABLE `story_title`
  MODIFY `story_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
