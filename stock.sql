-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2018 at 08:45 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

DROP TABLE IF EXISTS `attribute_value`;
CREATE TABLE IF NOT EXISTS `attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(1, 'Samsung', 1),
(2, 'Nokia', 1),
(3, 'HP', 1),
(4, 'Maharaja', 1),
(5, 'Mi', 1),
(6, 'vivo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(1, 'Home', 1),
(2, 'Phone', 1),
(3, 'LCD', 1),
(4, 'LED', 1),
(5, 'speaker', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Abridge Mart', '13', '0', 'Online', '9457768999', 'India', 'hello everyone one', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(2, 'Store Manager', 'a:15:{i:0;s:8:\"viewUser\";i:1;s:11:\"createGroup\";i:2;s:9:\"viewGroup\";i:3;s:11:\"createBrand\";i:4;s:11:\"updateBrand\";i:5;s:9:\"viewBrand\";i:6;s:11:\"deleteBrand\";i:7;s:14:\"createCategory\";i:8;s:14:\"deleteCategory\";i:9;s:9:\"viewStore\";i:10;s:15:\"createAttribute\";i:11;s:13:\"createProduct\";i:12;s:9:\"viewOrder\";i:13;s:11:\"viewReports\";i:14;s:11:\"viewProfile\";}'),
(3, 'User', 'a:10:{i:0;s:8:\"viewUser\";i:1;s:9:\"viewGroup\";i:2;s:9:\"viewBrand\";i:3;s:12:\"viewCategory\";i:4;s:9:\"viewStore\";i:5;s:13:\"viewAttribute\";i:6;s:11:\"viewProduct\";i:7;s:9:\"viewOrder\";i:8;s:11:\"viewReports\";i:9;s:11:\"viewProfile\";}'),
(4, 'Accoutant', 'a:4:{i:0;s:11:\"createOrder\";i:1;s:11:\"updateOrder\";i:2;s:9:\"viewOrder\";i:3;s:11:\"viewReports\";}'),
(5, 'CA', 'a:3:{i:0;s:11:\"updateOrder\";i:1;s:9:\"viewOrder\";i:2;s:11:\"viewReports\";}'),
(6, 'knmiet', 'a:1:{i:0;s:11:\"viewReports\";}'),
(7, 'ANR', 'a:14:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:9:\"viewGroup\";i:5;s:9:\"viewBrand\";i:6;s:12:\"viewCategory\";i:7;s:11:\"updateStore\";i:8;s:15:\"createAttribute\";i:9;s:13:\"updateProduct\";i:10;s:11:\"createOrder\";i:11;s:13:\"updateCompany\";i:12;s:11:\"viewProfile\";i:13;s:13:\"updateSetting\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(1, 'BILPR-F235', 'Vaibhav Yadav', '217, Yadav Nagar', '4545454545', '1523939362', '5445.00', '13', '707.85', '0', '0', '6151.85', '1', 2, 1),
(2, 'BILPR-1B09', 'Rajat', 'bgfgf', '9898998988', '1523952053', '279980.00', '13', '36397.40', '0', '0', '316327.40', '50', 1, 1),
(3, 'BILPR-8568', 'Aliyash', 'djbsdnbnbd', '454545', '1523955808', '40000.00', '13', '5200.00', '0', '0', '43200.00', '2000', 1, 1),
(4, 'BILPR-1319', 'neha', 'ghgh', '545454545', '1523961947', '167988.00', '13', '21838.44', '0', '0', '189381.44', '445', 1, 1),
(5, 'BILPR-D439', 'Tushar', 'nbbnb', '7376603535', '1525692876', '13999.00', '13', '1819.87', '0', '0', '15318.87', '500', 1, 1),
(6, 'BILPR-B92D', 'Sunil Kumar', 'jhghghgh', '8899889988', '1525704916', '39998.00', '13', '5199.74', '0', '0', '44697.74', '500', 1, 1),
(7, 'BILPR-183B', 'Pawan', 'shgyf', '454545454', '1525805851', '41997.00', '13', '5459.61', '0', '0', '46956.61', '500', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

DROP TABLE IF EXISTS `orders_item`;
CREATE TABLE IF NOT EXISTS `orders_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(1, 1, 1, '1', '5445', '5445.00'),
(3, 2, 2, '20', '13999', '279980.00'),
(5, 3, 4, '2', '20000', '40000.00'),
(7, 4, 2, '12', '13999', '167988.00'),
(9, 5, 2, '1', '13999', '13999.00'),
(11, 6, 3, '2', '19999', '39998.00'),
(12, 7, 2, '3', '13999', '41997.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(1, 'Irisq', '5', '5445', '20', 'assets/images/product_image/5ad577f86bf3b.jpg', '<p>hghf  </p>', 'null', '[\"1\"]', '[\"1\"]', 1, 1),
(2, 'Mi Note 5 Pro', '20', '13999', '63', 'assets/images/product_image/5ad5a98cf0d39.png', '<p>gsfghdfhgsfdghdsfgh</p>', 'null', '[\"5\"]', '[\"2\"]', 2, 1),
(3, 'i Phone 4S', '2', '19999', '48', '<p>You did not select a file to upload.</p>', '<p>iphone bdbsnbs bsjabsb dshbnb </p>', 'null', '[\"3\"]', '[\"2\"]', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(1, 'Vishal Mega Mart', 1),
(2, 'Big Bazar', 1),
(3, 'opulant', 1),
(4, 'Oppo Store Modinagar', 1),
(5, 'NFC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'vaibhav', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@abridgemart.com', 'Vaibhav', 'Yadav', '9457768999', 1),
(2, 'shankar', '$2y$10$oHEA4ykCrw8VKHd6ryInV.uUJKCjm.arEJwBLUBK6U5TYwJkzHGui', 'shankar@abridgemart.com', 'Shankar', 'Prasad', '8888888888', 1),
(3, 'unkown', '$2y$10$UOJMbH5kv47/KY0auV9.P.Ray.xwJzBG.S6gc8LlgYMr4xfe4T9yO', 'unkown@abridgemart.com', 'unkown', 'kumar', '9798384916', 1),
(4, 'ankur', '$2y$10$CfcXr.OBv48naYghXAp9P.2RVXV6zMvzQweIyc76P9Fl21dtqfhge', 'ankur@abridgemart.com', 'Ankur', 'Shrivastava', '44545454545', 1),
(5, 'sufiyan', '$2y$10$oMoCSQrtgh5AzAgN0T6QCe9pHedfyVZe7CZoPXhsSHouK7YjMVgvW', 'sufiyan@abridgemart.com', 'Sufiyan', 'Khan', '8888888888', 1),
(6, 'Pawan', '$2y$10$wvQhHY/yubVgrpEpSLhzKuJ8FAP5DKbUe3hcCn3kLJBKnqbR6EVPW', 'pk@gmail.com', 'Pawan', 'Kmar', '8888888888', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 3),
(4, 4, 4),
(5, 5, 3),
(6, 6, 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
