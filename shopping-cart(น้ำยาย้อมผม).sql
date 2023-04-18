-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 02:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping-cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'L’Oréal Paris', NULL, NULL),
(2, 'Schwarzkopf', NULL, NULL),
(3, 'Dcash ', NULL, NULL),
(4, 'Garnier', NULL, NULL),
(5, 'NIGAO', NULL, NULL),
(6, 'Liese', NULL, NULL),
(7, 'Lolane', NULL, NULL),
(8, 'Bigen', NULL, NULL),
(9, 'Berina', NULL, NULL),
(10, 'Farger', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'น้ำยาย้อมผม สีน้ำตาลเชสท์นัทบราวน์ ', NULL, NULL),
(2, 'น้ำยาย้อมผม สีน้ำตาลช็อกโกแลต', NULL, NULL),
(3, 'น้ำยาย้อมผม สีน้ำเงิน ', NULL, NULL),
(4, 'น้ำยาย้อมผม สีเทาควันบุหรี่', NULL, NULL),
(5, 'น้ำยาย้อมผม สีชมพูพาสเทล', NULL, NULL),
(6, 'น้ำยาย้อมผม สีม่วง', NULL, NULL),
(7, 'น้ำยาย้อมผม สีดำ', NULL, NULL),
(8, 'น้ำยาย้อมผม สีแดง', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_03_023230_create_products_table', 1),
(6, '2023_02_17_020508_create_sale_table', 2),
(7, '2023_02_17_021150_create_sale_detail_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_stock` int(11) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`brand_id`, `category_id`, `product_stock`, `id`, `name`, `price`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 15, 1, 'น้ำยาย้อมผม สีน้ำตาลเชสท์นัทบราวน์', 89, 'เริ่มต้นด้วยสีผมโทนสีน้ำตาลเชสท์นัทบราวน์ เปลี่ยนสีผมเป็นสีน้ำตาลธรรมชาติ แต่ยังคงมีความเป็นแฟชั่น ให้ลุคคุณหนูดูแพง เข้าได้กับทุกสีผิว ช่วยให้หน้าดูสว่าง', 'https://th-test-11.slatic.net/p/1d33e4f27c882d4ef176ce1cd8f0b2fb.png', NULL, NULL),
(3, 3, 10, 2, 'น้ำยาย้อมผม สีน้ำตาลช็อกโกแลต', 119, 'สำหรับใครที่อยากได้สีผมธรรมชาติ แต่เบื่อผมสีดำแบบเดิม ๆ ลองเปลี่ยนลุคมาย้อมผมสีน้ำตาลช็อกโกแลต ก็ช่วยให้ได้สีผมธรรมชาติ ดูอ่อนโยน เหมาะกับทุกสีผิว หน้าดูสว่างมากขึ้น', 'https://img.salehere.co.th/p/1200x0/2023/01/14/fdeklyndbsjm.jpg', NULL, NULL),
(3, 6, 5, 3, 'น้ำยาย้อมผม สีน้ำเงิน ', 150, 'สี P38 แม่สีน้ำเงิน ของ LOLANE รุ่น Pixxel color cream จะให้สีน้ำเงินที่มีความคมเข้มเป็นอย่างมาก ด้วยการใช้เทคโนโลยี ', 'https://th-live-01.slatic.net/p/77a5d5ed201e999770dd73eccbfdd44a.png', NULL, NULL),
(4, 1, 9, 4, 'น้ำยาย้อมผม สีเทาควันบุหรี่', 90, 'แม้จะเป็นลูกชิ้นหมูยังคงเป็นสีผมที่ได้รับความนิยมอย่างต่อเนื่อง กับสีเทาควันบุหรี่ ที่ทำแล้วเปลี่ยนลุคเป็นสาวชิค ทันสมัยมาก ๆ', 'https://cf.shopee.co.th/file/058f111608f877f7cc3a66450c8b8cce', NULL, NULL),
(2, 1, 12, 5, 'น้ำยาย้อมผม สีชมพูพาสเทล', 99, 'สีชมพูพาสเทลเป็นโทนสีพาสเทลที่ไม่ว่าเวลาจะผ่านไปนานเท่าไรก็ไม่ตกเทรนด์เลยสักนิด และยังเป็นที่นิยมหรือเป็นกระแสอยู่ตลอดเวลา ', 'https://lzd-img-global.slatic.net/g/p/2542f78691b67dc582bdb1201dda34fc.jpg_720x720q80.jpg_.webp', NULL, NULL),
(2, 5, 14, 6, 'น้ำยาย้อมผม สีม่วง', 120, 'ยาย้อมผมสีม่วงเข้ม คือ ยาย้อมผมที่จะให้โทนสีค่อนข้างเข้ม มีเฉดของสีดำผสมอยู่ค่อนข้างเยอะ เช่น สีม่วงองุ่น (Grape) และ ม่วงเข้ม (Deep Purple) ใครที่มีผิวค่อนข้างเข้ม ยังไม่กล้าย้อมผมสีม่วง แนะนำให้เลือกสีโทนนี้', 'https://th-live-01.slatic.net/p/671424d0e36c8f1aa1fba1cf80d3849e.jpg', NULL, NULL),
(6, 4, 13, 7, 'น้ำยาย้อมผม สีดำ', 69, 'ครีมเปลี่ยนสีผมที่ได้รับความนิยมอย่างมากในปัจจุบัน นั่นคือ “Berina Hair Color Cream” มีราคาถูกมาก ให้สีสวยไม่เพี้ยนและติดทนนาน เป็นครีมย้อมผมที่ไร้ส่วนผสมของแอมโมเนีย ช่วยปกป้องเส้นผมของคุณจากการถูกทำร้าย สีติดทนนาน และสามารถปิดผมขาวได้ดี ', 'https://th-test-11.slatic.net/p/100de8fb6cdeebac4629f75caf378f7f.png', NULL, NULL),
(7, 5, 18, 8, 'น้ำยาย้อมผม สีแดง', 149, 'ผมสีแดงทับทิม จะอยู่ในเฉดสีแดงเข้ม ไปทางสีแดงสด หรือ สีแดงเลือดนก ผมสีแดงโทนนี้จะมีความเข้มอยู่มาก ย้อมแล้วสีผมจะยังดูเป็นธรรมชาติอยู่ แต่แฝงประกายสีแดงสดใสเอาไว้ ใครที่ผมเสียแล้วย้อมผมสีนี้ เส้นผมจะดูสุขภาพดีขึ้นทันที', 'https://cf.shopee.co.th/file/36c14fa4d3035c8e542af1f1f62892c9', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sale_user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `sumtotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `amount` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'ทรียา หมู่ทอง', '6314421007@rbru.ac.th', NULL, '$2y$10$FFOZ/Wxuag/qVGnIZfEbmOKijitARiIwkcH85dce/9Y91f0c.vWFm', NULL, '2023-04-18 05:15:18', '2023-04-18 05:15:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_sale_user_id_foreign` (`sale_user_id`);

--
-- Indexes for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_detail_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_detail_pro_id_foreign` (`pro_id`);

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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_sale_user_id_foreign` FOREIGN KEY (`sale_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD CONSTRAINT `sale_detail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_detail_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
