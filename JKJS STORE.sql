-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2022 at 04:59 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`) VALUES
(1),
(2),
(21),
(2147483641),
(2147483642),
(2147483643),
(2147483645);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` varchar(255) NOT NULL,
  `status` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `status`) VALUES
('B346GG', 0),
('sdfasfa', 0),
('dsasdasf', 0),
('BDGDSDF', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(28),
(28),
(28),
(28),
(28);

-- --------------------------------------------------------

--
-- Table structure for table `order_main`
--

CREATE TABLE `order_main` (
  `order_id` bigint(20) NOT NULL,
  `buyer_address` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `buyer_phone` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `order_amount` decimal(19,2) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_main`
--

INSERT INTO `order_main` (`order_id`, `buyer_address`, `buyer_email`, `buyer_name`, `buyer_phone`, `create_time`, `order_amount`, `order_status`, `update_time`) VALUES
(2147483643, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:20', '100.00', 1, '2022-07-09 14:37:47'),
(2147483645, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:29', '4.00', 1, '2022-07-09 14:37:01'),
(2147483641, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:07', '180.00', 2, '2018-03-15 12:52:53'),
(2147483647, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:35', '2.00', 2, '2018-03-15 12:52:55'),
(2147483649, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:58:23', '150.00', 1, '2022-07-09 14:36:24'),
(2147483642, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:21', '4.00', 2, '2018-03-15 13:02:09'),
(2147483640, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:16', '20.00', 2, '2018-03-15 13:02:52'),
(2147483648, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:06', '134.00', 1, '2018-03-15 13:02:56'),
(7, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 14:31:01', '133.00', 2, '2022-07-09 14:36:20'),
(9, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 14:31:39', '140.00', 2, '2022-07-09 14:36:08'),
(11, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 14:32:16', '30.00', 1, '2022-07-09 14:36:06'),
(15, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 17:42:42', '20.00', 2, '2022-07-09 17:42:48'),
(17, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 17:47:33', '30.00', 1, '2022-07-09 17:47:55'),
(25, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-10 13:43:04', '202.00', 2, '2022-07-10 13:43:23'),
(27, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-10 13:50:10', '20.00', 1, '2022-07-10 13:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_type` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `category_name`, `category_type`, `create_time`, `update_time`) VALUES
(2147483641, 'Groceries', 0, '2018-03-09 23:03:26', '2018-03-10 00:15:27'),
(2147483642, 'Beauty', 2, '2018-03-10 00:15:02', '2018-03-10 00:15:21'),
(2147483644, 'Toys', 3, '2018-03-10 01:01:09', '2018-03-10 01:01:09'),
(2147483645, 'Pharmacy', 1, '2018-03-10 00:26:05', '2018-03-10 00:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `product_id` varchar(255) NOT NULL,
  `category_type` int(11) DEFAULT 0,
  `create_time` datetime DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_status` int(11) DEFAULT 0,
  `product_stock` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`product_id`, `category_type`, `create_time`, `product_description`, `product_icon`, `product_name`, `product_price`, `product_status`, `product_stock`, `update_time`) VALUES
('B0003', 0, '2018-03-10 10:37:39', 'Java EE', 'https://covers.oreillystatic.com/images/9780596516680/lrg.jpg', 'Head First', '10.00', 1, 200, '2018-03-10 19:42:02'),
('C0003', 2, '2018-03-10 12:12:46', 'Mans', 'https://img1.newchic.com/thumb/view/oaupload/newchic/images/00/30/df8a1f83-035c-4942-93d6-49933ac52a34.jpg', 'Coats', '22.00', 0, 222, '2018-03-10 12:12:46'),
('D0001', 3, '2018-03-10 06:51:03', 'Everyone likes it', 'https://www.thesun.co.uk/wp-content/uploads/2017/03/nintchdbpict000277254629.jpg?strip=all&w=676', 'Coca Cola', '1.00', 0, 100, '2018-03-10 12:04:13'),
('B0002', 0, '2018-03-10 10:35:43', 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'Spring In Action', '20.00', 0, 194, '2022-07-10 13:50:11'),
('C0001', 2, '2018-03-10 12:09:41', 'Under Armour', 'https://assets.academy.com/mgen/33/20088533.jpg?is=500,500', 'T-shirt', '10.00', 0, 109, '2018-03-10 12:09:41'),
('C0002', 2, '2018-03-10 12:11:51', 'Boys Clothes', 'https://d2ul0w83gls0j4.cloudfront.net/taxonomy/300/0102/20171024151632.jpg', 'Shirts', '13.00', 0, 108, '2022-07-09 14:36:20'),
('B0001', 0, '2018-03-10 06:44:25', 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'Core Java', '30.00', 0, 6, '2022-07-10 13:43:23'),
('B0004', 0, '2018-03-10 10:39:29', 'Java SE', 'https://www.pearsonhighered.com/assets/bigcovers/0/1/3/2/0132778041.jpg', 'Effective Java', '30.00', 0, 199, '2018-03-10 10:39:32'),
('B0005', 0, '2018-03-10 10:40:35', 'Java SE', 'https://images-na.ssl-images-amazon.com/images/I/51S8VRHA2FL._SX357_BO1,204,203,200_.jpg', 'Thinking in Java', '30.00', 0, 199, '2018-03-10 10:40:35'),
('D0002', 3, '2018-03-10 12:08:17', 'Awesome', 'https://starbuckssecretmenu.net/wp-content/uploads/2017/06/Starbucks-Violet-Drink.jpg', 'Starbucks Violet Drink', '2.00', 0, 200, '2022-07-10 13:43:23'),
('F0001', 1, '2018-03-10 12:15:05', 'Kids Party Food', 'http://asset1.marksandspencer.com/is/image/mands/MS_FD_F04C_00398503_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$', 'Chicken', '4.00', 0, 57, '2018-03-10 12:15:10'),
('F0002', 1, '2018-03-10 12:16:44', 'Family s', 'http://cdn1.thecomeback.com/wp-content/uploads/2017/05/mcdonalds_food-832x447.png', 'McDonald‘s Food', '20.00', 0, 22, '2018-03-10 12:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_in_order`
--

CREATE TABLE `product_in_order` (
  `id` bigint(20) NOT NULL,
  `category_type` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_stock` int(11) DEFAULT NULL,
  `cart_user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_in_order`
--

INSERT INTO `product_in_order` (`id`, `category_type`, `count`, `product_description`, `product_icon`, `product_id`, `product_name`, `product_price`, `product_stock`, `cart_user_id`, `order_id`) VALUES
(2147483642, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 96, NULL, 2147483641),
(2147483644, 0, 1, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 2147483643),
(2147483646, 1, 1, 'Kids Party Food', 'http://asset1.marksandspencer.com/is/image/mands/MS_FD_F04C_00398503_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$', 'F0001', 'Chicken', '4.00', 57, NULL, 2147483645),
(2147483648, 3, 1, 'Awesome', 'https://starbuckssecretmenu.net/wp-content/uploads/2017/06/Starbucks-Violet-Drink.jpg', 'D0002', 'Starbucks Violet Drink', '2.00', 200, NULL, 2147483647),
(2147483640, 1, 1, 'Kids Party Food', 'http://asset1.marksandspencer.com/is/image/mands/MS_FD_F04C_00398503_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$', 'F0001', 'Chicken', '4.00', 57, NULL, 2147483649),
(2147483641, 2, 1, 'Boys Clothes', 'https://d2ul0w83gls0j4.cloudfront.net/taxonomy/300/0102/20171024151632.jpg', 'C0002', 'Shirts', '13.00', 108, NULL, 2147483649),
(2147483632, 1, 1, 'Family s', 'http://cdn1.thecomeback.com/wp-content/uploads/2017/05/mcdonalds_food-832x447.png', 'F0002', 'McDonald‘s Food', '20.00', 22, NULL, 2147483649),
(2147483643, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 96, NULL, 2147483648),
(2147483634, 2, 1, 'Under Armour', 'https://assets.academy.com/mgen/33/20088533.jpg?is=500,500', 'C0001', 'T-shirt', '10.00', 109, NULL, 2147483649),
(2147483636, 0, 1, 'Java SE', 'https://images-na.ssl-images-amazon.com/images/I/51S8VRHA2FL._SX357_BO1,204,203,200_.jpg', 'B0005', 'Thinking in Java', '30.00', 199, NULL, 2147483645),
(2147483647, 3, 1, 'Awesome', 'https://starbuckssecretmenu.net/wp-content/uploads/2017/06/Starbucks-Violet-Drink.jpg', 'D0002', 'Starbucks Violet Drink', '2.00', 200, NULL, 2147483645),
(2147483638, 0, 1, 'Java SE', 'https://www.pearsonhighered.com/assets/bigcovers/0/1/3/2/0132778041.jpg', 'B0004', 'Effective Java', '30.00', 199, NULL, 2147483645),
(2147483649, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 96, NULL, 2147483645),
(2147483631, 1, 1, 'Family s', 'http://cdn1.thecomeback.com/wp-content/uploads/2017/05/mcdonalds_food-832x447.png', 'F0002', 'McDonald‘s Food', '20.00', 22, NULL, 2147483640),
(2147483633, 1, 1, 'Kids Party Food', 'http://asset1.marksandspencer.com/is/image/mands/MS_FD_F04C_00398503_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$', 'F0001', 'Chicken', '4.00', 57, NULL, 2147483642),
(4, 0, 4, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 8, NULL, 7),
(6, 2, 1, 'Boys Clothes', 'https://d2ul0w83gls0j4.cloudfront.net/taxonomy/300/0102/20171024151632.jpg', 'C0002', 'Shirts', '13.00', 108, NULL, 7),
(8, 0, 7, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 9),
(10, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 4, NULL, 11),
(13, 0, 6, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 7, NULL, NULL),
(14, 0, 1, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 15),
(16, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 7, NULL, 17),
(19, 0, 4, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 25),
(23, 0, 4, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 6, NULL, 25),
(24, 3, 1, 'Awesome', 'https://starbuckssecretmenu.net/wp-content/uploads/2017/06/Starbucks-Violet-Drink.jpg', 'D0002', 'Starbucks Violet Drink', '2.00', 200, NULL, 25),
(26, 0, 1, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 27);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `active`, `address`, `email`, `name`, `password`, `phone`, `role`) VALUES
(2147483641, b'1', '3200 West Road', 'customer1@email.com', 'customer1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123456789', 'ROLE_CUSTOMER'),
(2147483642, b'1', '2000 John Road', 'manager1@email.com', 'manager1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '987654321', 'ROLE_CUSTOMER'),
(2147483643, b'1', '222 East Drive ', 'employee1@email.com', 'employee1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123123122', 'ROLE_EMPLOYEE'),
(2147483645, b'1', '3100 Western Road A', 'customer2@email.com', 'customer2', '$2a$10$0oho5eUbDqKrLH026A2YXuCGnpq07xJpuG/Qu.PYb1VCvi2VMXWNi', '2343456', 'ROLE_CUSTOMER'),
(1, b'1', 'tilak nagar', 'um@gmail.com', 'Utsav Mori', '$2a$10$s9RYwvbn6HBGwgy35envW.ZV.V1fETe9MTKivc2pZOz6BqJNpl.hu', '9898989898', 'ROLE_MANAGER'),
(2, b'1', 'delhi', 'aman@gmail.com', 'aman singh', '$2a$10$SCaqKfufcZzTwzNeDqgNJe3uT0UVQ5T2sfcrR4cOK/PseHHX4JMui', '8871730228', 'ROLE_CUSTOMER'),
(21, b'1', 'I/D 469', 'sourabhduklan2000@gmail.com', 'Sourabh Duklan', '$2a$10$asFawkdDmbn2IvKT4Fs0hehB687f592yXLxeKFyc4FSC5sCgbwvMC', '+916266203069', 'ROLE_CUSTOMER');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `created_date`, `product_id`, `user_id`) VALUES
(3, '2022-07-09 14:21:09', 'B0001', 2),
(5, '2022-07-09 14:30:43', 'C0002', 2),
(12, '2022-07-09 17:42:22', 'B0001', 2),
(18, '2022-07-10 13:07:33', 'B0002', 2),
(20, '2022-07-10 13:07:43', 'F0002', 2),
(22, '2022-07-10 13:42:36', 'B0001', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_main`
--
ALTER TABLE `order_main`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `UK_6kq6iveuim6wd90cxo5bksumw` (`category_type`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_in_order`
--
ALTER TABLE `product_in_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhnivo3fl2qtco3ulm4mq0mbr5` (`cart_user_id`),
  ADD KEY `FKt0sfj3ffasrift1c4lv3ra85e` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_sx468g52bpetvlad2j9y0lptc` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKklfv8svemdde0od1rs6mgstb` (`product_id`),
  ADD KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
