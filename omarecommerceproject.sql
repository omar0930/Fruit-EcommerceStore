-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2025 at 01:41 AM
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
-- Database: `omarecommerceproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `imagepath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `imagepath`) VALUES
(1, 'Devil Fruits', 'A rare and mysterious fruit that grants unimaginable power to those who dare to eat it—at the cost of never being able to swim again. Choose wisely! ⚡🍏', 'assets\\img\\project pictures\\Devil Fruits\\Bomu_Bomu_no_Mi_Infobox.png'),
(2, 'Citrus Fruits', 'Refreshing and tangy, packed with vitamin C for a healthy boost. 🍊🍋', 'assets\\img\\project pictures\\Citrus Fruits\\360_F_285953794_Aufu90PPcaOk59DQLSbSMRkLQumniBXi.jpg'),
(3, 'Tropical Fruits', 'Sweet and juicy flavors straight from paradise. 🍍🥭', 'assets\\img\\project pictures\\Tropical Fruits\\Mangos_-_single_and_halved.jpg\r\n'),
(4, 'Exotic Fruits', 'Unique flavors from around the world for adventurous taste buds. 🐉🥭', 'assets\\img\\project pictures\\Exotic Fruits\\Rambutan.jpg'),
(5, 'Berries Fruits', 'Tiny, delicious, and loaded with antioxidants. 🍓🫐', 'assets\\img\\project pictures\\Berries Fruits\\GettyImages_154514873-1024x683.jpg\r\n'),
(6, 'Dried Fruits', ' A sweet and chewy treat packed with nutrients. 🍇🌞', 'assets\\img\\project pictures\\Dried Fruits\\figs.jpg');

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
(7, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(8, '2019_08_19_000000_create_failed_jobs_table', 2),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(10, '2025_02_25_000915_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `imagepath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `categorie_id`, `imagepath`) VALUES
(7, 'Bara_Bara_no_Mi', 'The Bara Bara no Mi is a Paramecia-type Devil Fruit that allows the user to split their own body into pieces and control said pieces.', 1000000, 1, 1, 'assets\\img\\project pictures\\Devil Fruits\\Bara_Bara_no_Mi_Infobox.png'),
(8, 'Bomu_Bomu_no_Mi', 'he Bomu Bomu no Mi (Bomb-Bomb Fruit) is a Capped/UnCapped Paramecia-type Devil fruit which allows the user to make any part of their body explode.', 500000, 1, 1, 'assets\\img\\project pictures\\Devil Fruits\\Bomu_Bomu_no_Mi_Infobox.png'),
(9, 'Gomu_Gomu_no_Mi', 'The Gomu Gomu no Mi[2] is a Paramecia-type Devil Fruit[4] that grants the user\'s body the properties of rubber, effectively making them a Rubber Human.', 300000000, 1, 1, 'assets\\img\\project pictures\\Devil Fruits\\Gomu_Gomu_no_Mi_Infobox.png'),
(10, 'Hobi_Hobi_no_Mi', 'is a Paramecia-type Devil Fruit that allows the user to turn people into toys by touching them.', 4500000, 1, 1, 'assets\\img\\project pictures\\Devil Fruits\\Hobi_Hobi_no_Mi_Infobox.png'),
(11, 'Kiro_Kiro_no_Mi', 'The Kiro Kiro no Mi (Pound-Pound Fruit) is a Capped/UnCapped Paramecia-type Devil fruit which allows the user to change their weight from 1 to 10,000 kilograms without, in any way, affecting the overall size of their body.', 800000, 1, 1, 'assets\\img\\project pictures\\Devil Fruits\\Kiro_Kiro_no_Mi_Infobox.png'),
(12, 'Blackberries', '250gm is 5$ Cost.', 5, 20000, 5, 'assets\\img\\project pictures\\Berries Fruits\\Blackberries.jpg'),
(13, 'Blueberries', '250gm is 8$ Cost.', 8, 200000, 5, 'assets\\img\\project pictures\\Berries Fruits\\Blueberries.jpg'),
(14, 'Raspberries', '250gm is 10$ Cost.', 10, 2000, 5, 'assets\\img\\project pictures\\Berries Fruits\\Raspberries-02-4bc2ac6.jpg'),
(15, 'Strawberries', '250gm is 1$ Cost.', 1, 20000, 5, 'assets\\img\\project pictures\\Berries Fruits\\GettyImages_154514873-1024x683.jpg'),
(16, 'Rambutan', 'The Price For Each Piece.', 99, 675, 4, 'assets\\img\\project pictures\\Exotic Fruits\\Rambutan.jpg'),
(17, 'lychee', 'The Price For Each Piece.', 12, 3000, 4, 'assets\\img\\project pictures\\Exotic Fruits\\lychee-fruits-Southeast-Asia.jpg'),
(18, 'Dragon Fruit', 'The Price For Each Piece.', 80, 1200, 4, 'assets\\img\\project pictures\\Exotic Fruits\\Pitaya_cross_section_ed2.jpg'),
(19, 'Durian', 'The Price For Each Piece.', 15, 800, 4, 'assets\\img\\project pictures\\Exotic Fruits\\Durian.jpg'),
(20, 'Grapefruit', '250gm For The Price Below.', 18, 20000, 2, 'assets\\img\\project pictures\\Citrus Fruits\\Grapefruit.jpg'),
(21, 'Oranges', '250gm For The Price Below.', 3, 800000, 2, 'assets\\img\\project pictures\\Citrus Fruits\\Navel-Oranges-1-Pcs-The-Orchard-Fruit-72137770_4276x.jpg'),
(22, 'Lemon', '250gm For The Price Below.', 2, 800000, 2, 'assets\\img\\project pictures\\Citrus Fruits\\360_F_285953794_Aufu90PPcaOk59DQLSbSMRkLQumniBXi.jpg'),
(23, 'Dates', '500gm For The Price Below.', 27, 200000000, 6, 'assets\\img\\project pictures\\Dried Fruits\\Basically_Medjool-Dates.jpg'),
(24, 'Figs', '500gm For The Price Below.', 18, 200000000, 6, 'assets\\img\\project pictures\\Dried Fruits\\figs.jpg'),
(25, 'Raisins', '500gm For The Price Below.', 1, 1000000000, 6, 'assets\\img\\project pictures\\Dried Fruits\\Raisins.jpg'),
(26, 'Dried Apricots', '500gm For The Price Below.', 22, 100000000, 6, 'assets\\img\\project pictures\\Dried Fruits\\dried apricots.jpg'),
(27, 'Bananas', 'The Price Below Is For 1 Piece.', 2, 1000000, 3, 'assets\\img\\project pictures\\Tropical Fruits\\Bunch-of-bananas-67e91d5.jpg'),
(28, 'Pineapple', 'The Price Below Is For 1 Piece.', 4, 2000000, 3, 'assets\\img\\project pictures\\Tropical Fruits\\images.jpg'),
(29, 'Mango', 'The Price Below Is For 1 Piece.', 6, 2000000, 3, 'assets\\img\\project pictures\\Tropical Fruits\\Mangos_-_single_and_halved.jpg'),
(30, '', 'The Price Below Is For 1 Piece.', 19, 200000000, 3, 'assets\\img\\project pictures\\Tropical Fruits\\papaya.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
