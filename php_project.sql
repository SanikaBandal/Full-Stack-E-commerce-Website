-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 06:26 AM
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
-- Database: `php_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cost` decimal(6,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_image4` varchar(255) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_special_offer` int(2) NOT NULL,
  `product_material` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `product_special_offer`, `product_material`) VALUES
(1, 'Furniture Style Ganesha Murti - 18 Inches', 'My Eco', 'Eco-Friendly Murti\r\nMurti is Sturdy and Durable\r\nEasily Immersible in Water\r\nCan be Immersed at Home', 'eco1.jpg', 'eco1.jpg', 'eco1.jpg', 'eco1.jpg', 3900.00, 0, 'Shadu Maati – Clay'),
(2, 'Lalbaug Style Ganesha Murti - 17 Inches', 'My Eco', '100% Eco-Friendly Murti\r\nMurti is Sturdy and Durable\r\nEasily Immersible in Water\r\nCan be Immersed at Home', 'eco2.jpg', 'eco2.jpg', 'eco2.jpg', 'eco2.jpg', 3900.00, 0, 'Shadu Maati – Clay'),
(3, 'Jaswanda Ganesha Murti - 18 Inches', 'My Eco', 'Murti is Sturdy and Durable\r\nImmersible in Flowing Water Only', 'eco3.jpg', 'eco3.jpg', 'eco3.jpg', 'eco3.jpg', 3999.00, 0, 'POP'),
(4, 'Bal Ganesha Murti – 18 Inches', 'My Eco', 'Murti is Sturdy and Durable\r\nImmersible in Flowing Water Only', 'eco4.jpg', 'eco4.jpg', 'eco4.jpg', 'eco4.jpg', 3600.00, 0, 'POP'),
(5, 'Long Trunk Ganesh Murti – 18 Inches', 'My Green', '100% Eco-Friendly Murti\r\nMurti is Sturdy and Durable\r\nEasily Immersible in Water\r\nCan be Immersed at Home', 'gre1.jpg', 'gre1.jpg', 'gre1.jpg', 'gre1.jpg', 4400.00, 0, 'Plant Red Soil – Lal Maati'),
(6, 'Titwala Ganesh Murti – 18 Inches', 'My Green', '100% Eco-Friendly Murti\r\nMurti is Sturdy and Durable\r\nEasily Immersible in Water\r\nCan be Immersed at Home', 'gre2.jpg', 'gre2.jpg', 'gre2.jpg', 'gre2.jpg', 4400.00, 0, 'Plant Red Soil – Lal Maati'),
(7, 'Aasan Maandi Ganesh Murti – 18 Inches', 'My Green', '100% Eco-Friendly Murti\r\nMurti is Sturdy and Durable\r\nEasily Immersible in Water\r\nCan be Immersed at Home', 'gre3.jpg', 'gre3.jpg', 'gre3.jpg', 'gre3.jpg', 4200.00, 0, 'Plant Red Soil – Lal Maati'),
(8, 'Dagdusheth Style Ganpati Murti – 06 Inches', 'My Green', '100% Eco-Friendly Murti\r\nMurti is Sturdy and Durable\r\nEasily Immersible in Water\r\nCan be Immersed at Home', 'gre4.jpg', 'gre4.jpg', 'gre4.jpg', 'gre4.jpg', 1600.00, 0, 'Plant Red Soil – Lal Maati'),
(9, 'Furniture Style Ganesha Murti – 18 Inches', 'My Designer', 'Murti is Sturdy and Durable\r\nMurti can be used as decorative product in house', 'des1.jpg', 'des1.jpg', 'des1.jpg', 'des1.jpg', 3900.00, 0, 'POP'),
(10, 'Single Load Ganesh Murti – 18 Inches', 'My Designer', 'Murti is Sturdy and Durable\r\nMurti can be used as decorative product in house', 'des2.jpg', 'des2.jpg', 'des2.jpg', 'des2.jpg', 3600.00, 0, 'POP'),
(11, 'Titwala Book Ganesh Murti – 24 Inches', 'My Designer', 'Murti is Sturdy and Durable\r\nImmersible in Flowing Water Only', 'des3.jpg', 'des3.jpg', 'des3.jpg', 'des3.jpg', 4800.00, 0, 'POP'),
(12, 'Sinhasan Ganesh Murti – 18 Inches', 'My Designer', 'Murti is Sturdy and Durable\r\nImmersible in Flowing Water Only', 'des4.jpg', 'des4.jpg', 'des4.jpg', 'des4.jpg', 3800.00, 0, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UX_Constraint` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
