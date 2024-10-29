-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2024 at 09:05 PM
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
-- Database: `phpecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(1, 'Mobile  ', 'mobile', 'Stay connected and entertained on the go with our latest mobile, featuring cutting-edge technology, a sleek design, and an array of features to enhance your lifestyle.', 0, 1, '1729786779.jpg', 'Mobile', 'Stay connected and entertained on the go with our latest mobile, featuring cutting-edge technology, a sleek design, and an array of features to enhance your lifestyle', 'Stay connected and entertained on the go with our latest mobile, featuring cutting-edge technology, a sleek design, and an array of features to enhance your lifestyle', '2024-10-20 14:17:44'),
(15, 'Headpones', 'headpones', 'Immerse yourself in rich sound and crystal-clear audio with our headphones, designed for ultimate comfort and an unparalleled listening experience.', 0, 1, '1729540814.jpg', 'Headpones', 'Immerse yourself in rich sound and crystal-clear audio with our headphones, designed for ultimate comfort and an unparalleled listening experience.', 'Immerse yourself in rich sound and crystal-clear audio with our headphones, designed for ultimate comfort and an unparalleled listening experience.', '2024-10-21 20:00:14'),
(16, 'T-Shirt', 't-shirt', 'Express your unique style with our trendy T-shirts, crafted from soft, breathable fabric that keeps you comfortable while making a bold fashion statement', 0, 0, '1729774881.jpg', 'T-Shirt', 'Express your unique style with our trendy T-shirts, crafted from soft, breathable fabric that keeps you comfortable while making a bold fashion statement', 'Express your unique style with our trendy T-shirts, crafted from soft, breathable fabric that keeps you comfortable while making a bold fashion statement', '2024-10-24 13:01:21'),
(17, 'Jeans', 'jeans', 'Revamp your wardrobe with our classic jeans, blending timeless style and ultimate comfort for a perfect fit that complements any look.', 0, 0, '1729775013.jpg', 'Jeans', 'Revamp your wardrobe with our classic jeans, blending timeless style and ultimate comfort for a perfect fit that complements any look.', 'Revamp your wardrobe with our classic jeans, blending timeless style and ultimate comfort for a perfect fit that complements any look.', '2024-10-24 13:03:33'),
(18, 'Watch', 'watch', 'Elevate your style with our elegant watches, combining precision craftsmanship and sophisticated design to keep you on time and in fashion.', 0, 1, '1729775094.jpg', 'Watch', 'Elevate your style with our elegant watches, combining precision craftsmanship and sophisticated design to keep you on time and in fashion.', 'Elevate your style with our elegant watches, combining precision craftsmanship and sophisticated design to keep you on time and in fashion.', '2024-10-24 13:04:54'),
(19, 'Air buds', 'air buds', 'Experience true wireless freedom with our Air Buds, delivering immersive sound and a comfortable fit, perfect for music lovers on the go.', 0, 1, '1729775169.jpg', 'Air buds', 'Experience true wireless freedom with our Air Buds, delivering immersive sound and a comfortable fit, perfect for music lovers on the go.', 'Experience true wireless freedom with our Air Buds, delivering immersive sound and a comfortable fit, perfect for music lovers on the go.', '2024-10-24 13:06:09'),
(20, 'Shoes', 'shoes', 'Step into comfort and style with our premium shoes, designed for durability and fashion-forward looks that keep you ahead of the trend.', 0, 1, '1729786414.jpg', 'Shoes', 'Step into comfort and style with our premium shoes, designed for durability and fashion-forward looks that keep you ahead of the trend.', 'Step into comfort and style with our premium shoes, designed for durability and fashion-forward looks that keep you ahead of the trend.', '2024-10-24 16:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` mediumtext NOT NULL,
  `pincode` int(191) NOT NULL,
  `total_price` int(191) NOT NULL,
  `payment_mode` varchar(191) NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comments` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_no`, `user_id`, `name`, `email`, `phone`, `address`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `comments`, `created_at`) VALUES
(25, 'macoder91353456789', 12, 'Check', 'check@gmail.com', '123456789', 'Checking', 12345, 155999, 'COD', '', 0, NULL, '2024-10-24 23:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int(11) NOT NULL,
  `order_id` int(191) NOT NULL,
  `prod_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(19, 25, 13, 1, 155999, '2024-10-24 23:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(7, 1, 'Realme C25', 'realme', 'Elevate your everyday with the Realme C25, offering exceptional battery life and impressive performance for seamless multitasking and entertainment.', 'Elevate your everyday with the Realme C25, offering exceptional battery life and impressive performance for seamless multitasking and entertainment.', 30000, 25000, '1729461658.jpg', 100, 0, 1, 'Realme C25', 'Elevate your everyday with the Realme C25, offering exceptional battery life and impressive performance for seamless multitasking and entertainment.', 'Elevate your everyday with the Realme C25, offering exceptional battery life and impressive performance for seamless multitasking and entertainment.', '2024-10-20 22:00:58'),
(12, 15, 'Sony Headpones', 'sony headpones', 'Immerse yourself in premium sound with Sony Headphones, delivering crystal-clear audio and unmatched noise cancellation for a superior listening experience.', 'Immerse yourself in premium sound with Sony Headphones, delivering crystal-clear audio and unmatched noise cancellation for a superior listening experience.', 3000, 2000, '1729786728.jpg', 100, 0, 1, 'Headpones', 'sony headphone', 'Immerse yourself in premium sound with Sony Headphones, delivering crystal-clear audio and unmatched noise cancellation for a superior listening experience.', '2024-10-21 20:01:41'),
(13, 1, 'Iphone 15 pro max', 'Iphone 15 pro max', 'Discover the future with the iPhone 15 Pro Max, featuring groundbreaking performance, a pro-level camera system, and an ultra-sleek design for the ultimate smartphone experience.', 'Discover the future with the iPhone 15 Pro Max, featuring groundbreaking performance, a pro-level camera system, and an ultra-sleek design for the ultimate smartphone experience.', 157999, 155999, '1729810210.png', 98, 0, 1, 'Iphone 15 pro max', 'Iphone 15 pro max', 'Discover the future with the iPhone 15 Pro Max, featuring groundbreaking performance, a pro-level camera system, and an ultra-sleek design for the ultimate smartphone experience.', '2024-10-24 16:16:15'),
(14, 15, 'Apple Headphone', 'apple headphone', 'Experience unparalleled sound quality and seamless integration with Apple Headphones, designed to deliver crisp, immersive audio in every beat.', 'Experience unparalleled sound quality and seamless integration with Apple Headphones, designed to deliver crisp, immersive audio in every beat.', 9, 8000, '1729786946.jpg', 100, 0, 0, 'Apple Headphone', 'Apple Headphone', 'Experience unparalleled sound quality and seamless integration with Apple Headphones, designed to deliver crisp, immersive audio in every beat.', '2024-10-24 16:22:26'),
(15, 18, 'Hublot Watch', 'hublot watch', 'Exude luxury and precision with a Hublot watch, where cutting-edge innovation meets timeless design for those who demand the extraordinary', 'Exude luxury and precision with a Hublot watch, where cutting-edge innovation meets timeless design for those who demand the extraordinary', 15000, 1400, '1729787644.jpg', 100, 0, 1, 'Hublot Watch', 'Hublot Watch', 'Exude luxury and precision with a Hublot watch, where cutting-edge innovation meets timeless design for those who demand the extraordinary', '2024-10-24 16:25:00'),
(16, 16, 'T-Shirt', 't-shirt', 'Upgrade your wardrobe with our stylish shirts, crafted from premium fabrics for a perfect blend of comfort and sophistication', 'Upgrade your wardrobe with our stylish shirts, crafted from premium fabrics for a perfect blend of comfort and sophistication', 2000, 1500, '1729788189.jpg', 100, 0, 1, 'T-Shirt', 'T-Shirt', 'Upgrade your wardrobe with our stylish shirts, crafted from premium fabrics for a perfect blend of comfort and sophistication', '2024-10-24 16:26:57'),
(17, 17, 'Jeans', 'jeans', 'Redefine your everyday look with our comfortable and durable jeans, designed to offer a perfect fit and timeless style for any occasion', 'Redefine your everyday look with our comfortable and durable jeans, designed to offer a perfect fit and timeless style for any occasion', 2500, 2000, '1729787314.jpg', 100, 0, 0, 'Jeans', 'Jeans', 'Redefine your everyday look with our comfortable and durable jeans, designed to offer a perfect fit and timeless style for any occasion', '2024-10-24 16:28:34'),
(18, 19, 'Apple AirPods', 'apple airPods', 'Experience wireless audio at its best with Apple AirPods, delivering rich, immersive sound and effortless connectivity for a seamless listening experience', 'Experience wireless audio at its best with Apple AirPods, delivering rich, immersive sound and effortless connectivity for a seamless listening experience', 45000, 40000, '1729787422.jpg', 100, 0, 1, 'Apple AirPods', 'Apple AirPods', 'Experience wireless audio at its best with Apple AirPods, delivering rich, immersive sound and effortless connectivity for a seamless listening experience', '2024-10-24 16:30:22'),
(19, 20, 'Jordan Shoes', 'jordan hoes', 'Step up your game with Jordan Shoes, where iconic style meets unbeatable comfort for a look that dominates both on and off the court', 'Step up your game with Jordan Shoes, where iconic style meets unbeatable comfort for a look that dominates both on and off the court', 7000, 6000, '1729810292.png', 99, 0, 1, 'Jordan Shoes', 'Jordan Shoes', 'Step up your game with Jordan Shoes, where iconic style meets unbeatable comfort for a look that dominates both on and off the court', '2024-10-24 16:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` int(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role_as`, `created_at`) VALUES
(11, 'Momin', 'momin@gmail.com', 1111111111, 111, 1, '2024-10-19 13:53:17'),
(12, 'check', 'check@gmail.com', 1111111112, 111, 0, '2024-10-19 14:37:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
