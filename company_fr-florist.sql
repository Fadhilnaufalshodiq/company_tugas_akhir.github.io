-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 01:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_fr-florist`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `subjudul` varchar(255) NOT NULL,
  `deskripsi_1` varchar(255) NOT NULL,
  `deskripsi_2` varchar(255) NOT NULL,
  `kelebihan_1` varchar(255) NOT NULL,
  `kelebihan_2` varchar(255) NOT NULL,
  `kelebihan_3` varchar(255) NOT NULL,
  `kelebihan_4` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `judul`, `subjudul`, `deskripsi_1`, `deskripsi_2`, `kelebihan_1`, `kelebihan_2`, `kelebihan_3`, `kelebihan_4`, `created_at`, `updated_at`) VALUES
(1, 'Siapa Kami?', 'Penyedia Jasa Sewa Tanaman Indoor dan Outdoor', 'Kami merupakan perusahaan berpengalaman lebih dari 20 tahun yang bergerak di bidang jasa penyediaan, pemeliharaan, dan perawatan tanaman baik indoor maupun outdoor. Obyek layanan kami meliputi area perkantoran, area publik, hingga rumah tangga.', 'Motivasi kami adalah meningkatkan kapasitas ruang hijau di dalam maupun luar ruang (open space), sekaligus meningkatkan nilai estetika dalam penataan ruang. Keberadaan tanaman menambah kenyamanan dan kualitas udara dengan meningkatkan suplai oksigen.', 'Lebih dari 20 tahun pengalaman dalam layanan tanaman', 'Layanan untuk berbagai jenis ruang, baik perkantoran, publik, maupun rumah tangga', 'Penyediaan tanaman berkualitas dengan perawatan yang optimal', 'Peningkatan estetika dan kenyamanan dengan ruang hijau yang seimbang', '2022-06-11 16:38:55', '2024-11-22 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Client 1', 'Bekerja sama dalam penghijauan taman halaman utama', 'Client 1.jpeg', '2022-06-11 19:51:30', '2024-11-24 05:10:28'),
(2, 'Client 2', 'Bekerja sama untuk mengelola tata ruang rapat', 'Client 2.png', '2022-06-11 19:51:49', '2024-11-24 05:11:01'),
(3, 'Client 3', 'Bekerja sama untuk mengelola tata ruang kerja', 'Client 3.png', '2022-06-11 19:52:27', '2024-11-24 05:11:47'),
(4, 'Client 4', 'Mengelola penghijauan disekitar kantor pusat', 'Client 4.jpeg', '2022-06-11 19:52:52', '2024-11-24 05:12:18'),
(5, 'Client 5', 'Bekerja sama untuk mengelola pengjiauan kantor pusat dan sekitarnya', 'Client 5.jpeg', '2022-06-11 19:53:14', '2024-11-24 05:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `maps_embed` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `telepon_wawan` varchar(255) DEFAULT NULL,
  `telepon_asti` varchar(255) DEFAULT NULL,
  `telepon_adang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `description`, `logo`, `alamat`, `email`, `telepon`, `maps_embed`, `created_at`, `updated_at`, `telepon_wawan`, `telepon_asti`, `telepon_adang`) VALUES
(2, 'FR-Florist', 'Tanaman Hias', 'updated_logo.png', 'Jalan sasak 2 dalam Nomor 25B Kebon Jeruk, Jakarta Barat 11550', 'fr.florist@yahoo.com', 'Wawan : 081323101985, Asti : 085775590100, Adang : 085280746748', 'https://maps.app.goo.gl/MyutU8Bqrkkvb1ym7', '2024-11-21 23:59:27', '2024-11-24 05:27:53', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(46, '2014_10_12_000000_create_users_table', 1),
(47, '2014_10_12_100000_create_password_resets_table', 1),
(48, '2019_08_19_000000_create_failed_jobs_table', 1),
(49, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(50, '2022_06_05_100211_create_sliders_table', 1),
(51, '2022_06_06_081220_create_services_table', 1),
(52, '2022_06_06_125858_create_testimonials_table', 1),
(53, '2022_06_06_134920_create_portfolios_table', 1),
(54, '2022_06_06_145053_create_clients_table', 1),
(55, '2022_06_06_153233_create_teams_table', 1),
(57, '2022_06_06_224917_create_contact_table', 2),
(58, '2022_06_11_232006_create_about_table', 3),
(59, '2024_11_22_070505_add_telepon_columns_to_contact_table', 4),
(60, '2024_11_22_070529_add_telepon_columns_to_contact_table', 4),
(61, '2024_11_22_071052_add_telepon_columns_to_contacts_table', 5);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'P1', 'lorem ipsum dolor sit amet', 'p1.jpg', '2022-06-11 19:39:56', '2022-06-11 19:39:56'),
(2, 'P2', 'lorem ipsum dolor sit amet', 'p2.jpg', '2022-06-11 19:40:18', '2022-06-11 19:40:18'),
(3, 'P3', 'lorem ipsum dolor sit amet', 'p3.jpg', '2022-06-11 19:40:41', '2022-06-11 19:40:41'),
(4, 'P4', 'lorem ipsum dolor sit amet', 'p4.jpg', '2022-06-11 19:41:01', '2022-06-11 19:41:01'),
(5, 'P5', 'lorem ipsum dolor sit amet', 'p5.jpg', '2022-06-11 19:41:22', '2022-06-11 19:41:22'),
(6, 'P6', 'lorem ipsum dolor sit amet', 'p6.jpg', '2022-06-11 19:41:51', '2022-06-11 19:41:51'),
(7, 'P7', 'lorem ipsum dolor sit amet', 'p7.jpg', '2022-06-11 19:42:30', '2022-06-11 19:42:30'),
(8, 'P8', 'lorem ipsum dolor sit amet', 'p8.jpg', '2022-06-11 19:42:56', '2022-06-11 19:42:56'),
(9, 'P9', 'lorem ipsum dolor sit amet', 'p9.jpg', '2022-06-11 19:43:20', '2022-06-11 19:43:20'),
(10, 'P10', 'lorem ipsum dolor sit amet', 'p10.jpg', '2022-06-11 19:43:56', '2022-06-11 19:43:56'),
(11, 'P11', 'lorem ipsum dolor sit amet', 'p11.jpg', '2022-06-11 19:44:24', '2022-06-11 19:44:24'),
(13, 'P12', 'lorem ipsum dolor sit amet', 'p12.jpg', '2022-06-11 19:50:12', '2022-06-11 19:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Paket Minimalis', 'Paket ini ideal digunakan untuk kantor maupun ruang kerja ukuran kecil atau lobby dengan ukuran luasan 50m2.\r\n\r\n5 pot kecil\r\n10 pot sedang\r\n5 pot besar', '1.jpg', '2022-06-11 19:26:09', '2024-11-21 23:35:39'),
(2, 'Paket Standar', 'Paket sering digunakan di ruang pelayanan publik (RS, Bank, dll) dengan hiasan tanaman aglonema dan germani.\r\n\r\n10 pot kecil\r\n20 pot sedang\r\n10 pot besar', '2.jpeg', '2022-06-11 19:26:34', '2024-11-21 23:40:21'),
(3, 'Paket Favorit', 'Paket ini favorit digunakan untuk area perkantoran yang menginginkan suasana hijau, karena tanaman yang kami gunakan secara dominan menggunakan daun yang lebar dan panjang (jenis palem, dll).\r\n\r\n20 pot kecil\r\n30 pot sedang\r\n20 pot besar', '3.jpg', '2022-06-11 19:26:55', '2024-11-21 23:40:35'),
(4, 'Paket Natural', 'Paket ini digunakan untuk luasan area 100m2 dengan dominasi tanaman eksklusif (anthurium, gelombang cinta, germani black beauty, dll).\r\n\r\n20 pot kecil\r\n40 pot sedang\r\n20 pot besar', '4.jpg', '2022-06-11 19:28:16', '2024-11-21 23:40:47'),
(5, 'Paket Eksklusif', 'Paket ini biasanya digunakan di ruang kantor dengan model terbuka dan menginginkan suasana teduh dan hijau. Tipe tanaman sebagian besar eksklusif.\r\n\r\n25 pot kecil\r\n50 pot sedang\r\n25 pot besar', '2.jpeg', '2022-06-11 19:28:39', '2024-11-21 23:41:00'),
(6, 'Paket Dekorasi Indoor/Outdoor', 'Paket ini biasa digunakan untuk menghiasi pelaksanaan acara formal/informal. Harga yang ditawarkan mulai dari Rp. 400.000/meter tergantung jenis tanaman.\r\n\r\n0 pot kecil\r\n0 pot sedang\r\n0 pot besar', '3.jpg', '2022-06-11 19:29:12', '2024-11-21 23:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Slider 1', 'Lorem ipsum dolor sit amet', 'c1.jpg', '2022-06-11 19:11:26', '2022-06-11 19:11:26'),
(2, 'Slider 2', 'Lorem ipsum dolor sit amet', 'c2.jpg', '2022-06-11 19:11:52', '2022-06-11 19:11:52'),
(3, 'Slider 3', 'Lorem ipsum dolor sit amet', 'c3.jpg', '2022-06-11 19:12:18', '2022-06-11 19:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Directur 1', 'Pemilik Utama', 'team1.jpeg', '2022-06-11 19:56:05', '2024-11-24 05:05:24'),
(2, 'Directur 2', 'Pengelola Dan Owner', 'team2.jpeg', '2022-06-11 19:56:27', '2024-11-24 05:06:02'),
(3, 'Sekretari', 'Mengatur Berjalannya Oprasional', 'team3.png', '2022-06-11 19:56:48', '2024-11-24 05:06:53'),
(4, 'Bendahara', 'Pengelola Keuangan Perusahaan', 'team4.jpeg', '2022-06-11 19:57:13', '2024-11-24 05:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ketua Tata ruang client 1', 'Atas kerja sama yang kami lakukan dengan FR-Florist kami merasa puas atas penghijauan dikantor kami', 'a1.jpg', '2022-06-11 19:36:26', '2024-11-24 05:14:53'),
(2, 'Bendahara Client 3', 'Terima kasih telah membuat kantor saya bekerja menjadi asri', 'a2.jpg', '2022-06-11 19:36:47', '2024-11-24 05:15:47'),
(3, 'Pengelola Tata Ruang Client 4', 'Rapih, Bersih dan Indah. Terima Kasih', 'a3.jpg', '2022-06-11 19:37:38', '2024-11-24 05:17:44'),
(4, 'Sekretaris Client 2', 'Goodd', 'a4.jpg', '2022-06-11 19:38:06', '2024-11-24 05:18:18');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Listiani', 'listiani@gmail.com', NULL, '$2y$10$wMdNNqTh0V.unv7PBDFal.ZdzTiiD3YoDc7CPxy93lKxDadR.hZvq', NULL, '2022-06-11 16:41:07', '2022-06-11 16:41:07'),
(2, 'Bioskopy', 'bioskopy@gmail.com', NULL, '$2y$10$55IqColH/RQICcgi9V7co.srYSYilU7E6VGa.aUM1O3vP5/UmdKN.', NULL, '2022-06-11 16:43:19', '2022-06-11 16:43:19'),
(3, 'Syaidah', 'Syaidah@gmail.com', NULL, '$2y$10$kVWxHXeXXHeSOKN2ikcMNuZteuAi8zv9e33hWk.HGdecGSI2xYqsq', NULL, '2024-11-21 23:32:13', '2024-11-21 23:32:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
