-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 03:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jajanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat_user`
--

CREATE TABLE `alamat_user` (
  `id_alamat` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `nama_prov` varchar(255) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(255) NOT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `alamat_lengkap` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alamat_user`
--

INSERT INTO `alamat_user` (`id_alamat`, `id_user`, `no_telp`, `nama_penerima`, `id_provinsi`, `nama_prov`, `id_kota`, `nama_kota`, `kode_pos`, `alamat_lengkap`, `created_at`, `updated_at`) VALUES
(3, 2, '08117807970', 'Ari Dwiantoro', 33, 'Sumatera Selatan', 327, 'Palembang', '30151', 'jl. Suka bangun 2', '2022-11-07 18:32:21', '2022-11-07 18:32:21'),
(4, 3, '081218113193', 'tere', 32, 'Sumatera Barat', 318, 'Padang', '30151', 'jl. suka bangun', '2022-11-20 14:36:01', '2022-11-20 14:36:01'),
(5, 4, '08123456789', 'Philip Okta', 10, 'Jawa Tengah', 398, 'Semarang', '50232', 'Jl. Tanah mas 4 no 110. RT13/RW 07, Kel. Bulu lor, Kec. Semarang Barat, Kota Semarang', '2024-07-19 06:28:36', '2024-07-19 06:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id_pesan` bigint(20) UNSIGNED NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id_pesan`, `from_id`, `to_id`, `pesan`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'hai admin', 'on read', '2022-11-12 19:09:46', '2024-07-19 06:22:24'),
(2, 1, 2, 'iya ada apa', 'on read', '2022-11-12 19:09:46', '2022-11-12 20:41:16'),
(3, 2, 1, 'saya mau minta tolong', 'on read', '2022-11-12 19:13:57', '2024-07-19 06:22:24'),
(4, 3, 1, 'good night admin', 'on read', '2022-11-12 20:17:48', '2024-07-24 18:36:30'),
(5, 1, 2, 'boleh', 'off read', '2022-11-12 20:17:48', '2022-11-12 20:41:16'),
(6, 1, 3, 'good night to', 'off read', '2022-11-12 20:38:12', '2022-11-12 20:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi_kategori` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deskripsi_kategori`, `created_at`, `updated_at`) VALUES
(4, 'nastar nanas', NULL, '2022-11-05 17:33:08', '2022-11-05 17:33:08'),
(7, 'Lauk', NULL, '2024-07-22 08:03:55', '2024-07-22 08:03:55'),
(8, 'Nasi', NULL, '2024-07-22 08:04:26', '2024-07-22 08:04:26'),
(11, 'Lalapan', NULL, '2024-07-22 10:17:32', '2024-07-22 10:17:32'),
(12, 'Minuman', NULL, '2024-07-22 10:17:44', '2024-07-22 10:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_user`, `id_produk`, `quantity`, `created_at`, `updated_at`) VALUES
(15, 4, 13, 1, '2024-07-22 10:28:57', '2024-07-22 10:28:57'),
(16, 4, 12, 1, '2024-07-22 10:29:11', '2024-07-22 10:29:11'),
(17, 4, 7, 1, '2024-07-22 10:29:21', '2024-07-22 10:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `komentar_produk` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_user`, `id_produk`, `komentar_produk`, `created_at`, `updated_at`) VALUES
(2, 4, 4, 'Produk Memuaskan Sekali', '2024-07-19 07:05:54', '2024-07-19 07:05:54'),
(3, 4, 5, 'Produk Memuaskan Sekali', '2024-07-24 14:03:20', '2024-07-24 14:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_11_05_235950_create_kategori_table', 2),
(16, '2022_11_06_104923_create_produk_table', 3),
(17, '2022_11_07_192142_create_keranjang_table', 4),
(18, '2022_11_07_225304_create_alamat_user_table', 5),
(19, '2022_11_08_024919_create_rekening_table', 6),
(21, '2022_11_12_044210_create_resi_table', 8),
(22, '2022_11_13_013057_create_chat_table', 9),
(24, '2022_11_08_162750_create_pesanan_table', 10),
(25, '2022_11_29_234224_create_komentar_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` bigint(20) UNSIGNED NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga_total_bayar` int(11) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `total_ongkir` int(11) NOT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `total_dp` bigint(20) DEFAULT NULL,
  `bukti_bayar_dp` text DEFAULT NULL,
  `bukti_bayar_dp_lunas` text DEFAULT NULL,
  `dp_status` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tipe_pembayaran` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_produk`, `id_user`, `quantity`, `harga_total_bayar`, `ongkir`, `total_ongkir`, `bukti_bayar`, `total_dp`, `bukti_bayar_dp`, `bukti_bayar_dp_lunas`, `dp_status`, `status`, `tipe_pembayaran`, `created_at`, `updated_at`) VALUES
(5, 4, 4, 1, 10000, 9000, 19000, 'alamatAdidas.PNG', NULL, NULL, NULL, NULL, '4', 'lunas', '2024-07-19 06:33:20', '2024-07-19 07:05:54'),
(7, 5, 4, 3, 54000, 9000, 63000, 'aa.PNG', NULL, NULL, NULL, NULL, '4', 'lunas', '2024-07-23 15:41:13', '2024-07-24 14:03:20'),
(8, 12, 4, 2, 14000, 9000, 23000, 'ankiCoffee.JPG', NULL, NULL, NULL, NULL, '3', 'lunas', '2024-07-24 19:01:08', '2024-07-24 19:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `berat` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `foto_produk` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `id_kategori`, `berat`, `stok`, `harga_produk`, `deskripsi_produk`, `foto_produk`, `created_at`, `updated_at`) VALUES
(5, 'Ayam Goreng', 7, '100', 97, 18000, '<p>Ayam Goreng dengan lalapan dan sambal khas Lamongan</p>', 'ayamGoreng.webp', '2024-07-22 08:38:16', '2024-07-23 15:47:23'),
(6, 'Ayam Bakar', 7, '100', 100, 20000, '<p>Ayam bakar dengan lalapan dan sambal khas Lamongan</p>', 'ayamBakar.JPG', '2024-07-22 08:40:17', '2024-07-22 08:40:17'),
(7, 'Bebek Goreng 1/2 ekor', 7, '300', 50, 35000, '<p>Bebek goreng 1/2 ekor dengan lalapan dan sambal khas Lamongan</p>', 'bebekGoreng.JPG', '2024-07-22 09:03:42', '2024-07-22 09:03:42'),
(8, 'Lele Goreng', 7, '100', 100, 18000, '<p>Lele goreng (2 ekor) dengan lalapan dan sambal khas Lamongan</p>', 'leleGoreng.JPG', '2024-07-22 09:09:53', '2024-07-22 09:09:53'),
(12, 'Tempe Penyet', 7, '100', 98, 7000, '<p>4 potong tempe goreng dengan lalapan dan sambal khas Lamongan</p>', 'tempePenyet.jpg', '2024-07-22 10:02:04', '2024-07-24 19:02:08'),
(13, 'Nasi Putih', 8, '100', 100, 3000, '<p>Nasi putih hangat</p>', 'nasiPutih.jpg', '2024-07-22 10:14:09', '2024-07-22 10:14:09'),
(14, 'Es Teh Manis', 12, '100', 100, 3000, '<p>Es teh yang dingin dan manis</p>', 'esTeh.JPG', '2024-07-22 10:25:54', '2024-07-22 10:25:54'),
(15, 'Es Jeruk', 12, '100', 100, 5000, '<p>Es Jeruk yang segar dan manis</p>', 'esJeruk.JPG', '2024-07-22 10:26:51', '2024-07-22 10:26:51'),
(16, 'Sambal Terong', 11, '100', 100, 7000, '<p>Terong goreng dengan sambal khas Lamongan</p>', 'sambalTerong.JPG', '2024-07-22 10:28:04', '2024-07-22 10:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` bigint(20) UNSIGNED NOT NULL,
  `nama_rek` varchar(255) NOT NULL,
  `jenis_rekening` varchar(255) NOT NULL,
  `no_rek` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_rek`, `jenis_rekening`, `no_rek`, `created_at`, `updated_at`) VALUES
(1, 'rizki ratih 2', 'bni', '081877236012', '2022-11-07 20:48:11', '2022-11-07 21:13:35'),
(2, 'ari', 'bca', '90232839743', '2022-11-08 08:22:21', '2022-11-08 08:22:21'),
(3, 'Risa', 'bri', '2893938', '2022-11-08 08:22:34', '2024-07-22 07:46:05'),
(4, 'tata', 'mandiri', '232893841', '2022-11-08 08:22:52', '2022-11-08 08:22:52'),
(5, 'sina', 'bsi', '12828723', '2022-11-08 08:23:04', '2022-11-08 08:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `resi`
--

CREATE TABLE `resi` (
  `id_resi` bigint(20) UNSIGNED NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `no_resi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resi`
--

INSERT INTO `resi` (`id_resi`, `id_pesanan`, `no_resi`, `created_at`, `updated_at`) VALUES
(6, 5, 743899, '2024-07-19 06:35:39', '2024-07-19 06:35:39'),
(7, 7, 809798, '2024-07-23 15:55:46', '2024-07-23 15:55:46'),
(8, 8, 123456, '2024-07-24 19:02:27', '2024-07-24 19:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `foto_profile` text DEFAULT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `foto_profile`, `hp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin anita', 'admin@admin.com', '2022-11-05 07:44:53', '$2y$10$aDJc9xYb11Udc98ri0GYuehzI8XrpiOV2lMgr3Je7/2d3xRSHoRpm', 'admin', '086593900_1553668873-LISA_BLACKPINK_1.jpg', '081218113193', 'ch4UlLc0RN1efUPIbV1CWkMxH5bu5nCxP1HF1qAZo0vOzBVq9YJPa0NXUUTX', '2022-11-05 07:44:53', '2022-11-05 16:47:45'),
(2, 'ari dwiantoro', 'aridwiantoro09@gmail.com', NULL, '$2y$10$P5fnR9z1t000WTyB6hUfcufzLZ6cuyJi7XIhpAmIAPf/UyMgqakdm', 'customer', NULL, '08117807970', NULL, '2022-11-07 06:47:02', '2022-11-07 06:48:45'),
(3, 'tere', 'tere@tere.com', NULL, '$2y$10$Yv70.czYAJsd5F0in9J.fOKPOp9w6gRS1eGboiGqVnhJ5DxVvH1J6', 'customer', NULL, NULL, NULL, '2022-11-08 06:35:18', '2022-11-08 06:35:18'),
(4, 'Philip Okta', 'philippus@gmail.com', NULL, '$2y$10$Gp4AVXAe6YO5gMrs111i2.2xgXM6Eg45ZcTgCNF.COR39i.Lxkc2O', 'customer', NULL, '08123456789', NULL, '2024-07-19 06:25:38', '2024-07-19 07:15:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat_user`
--
ALTER TABLE `alamat_user`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `resi`
--
ALTER TABLE `resi`
  ADD PRIMARY KEY (`id_resi`);

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
-- AUTO_INCREMENT for table `alamat_user`
--
ALTER TABLE `alamat_user`
  MODIFY `id_alamat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id_pesan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resi`
--
ALTER TABLE `resi`
  MODIFY `id_resi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
