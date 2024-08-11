-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 12:19 PM
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
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(10, 'admin1', 'admin', '788073cefde4b240873e1f52f5371d7d'),
(11, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(19, 'ddm07', 'ddm07', '46220907d8bd85cd3ec047f268437b6e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(11, 'Pizza', 'Food_Category_569.jpg', 'Yes', 'Yes'),
(12, 'Burger', 'Food_Category_976.jpg', 'Yes', 'Yes'),
(13, 'MoMos', 'Food_Category_51.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(5, 'pizza', 'best combo offers available*', 289.00, 'Food_name_8161.jpg', 11, 'Yes', 'Yes'),
(6, 'cheezy burger', 'veg delight cheesy burger with extra cheese slices!!..', 356.00, 'Food_name_4001.jpg', 12, 'Yes', 'Yes'),
(7, 'steam momos', 'best steam momos plate of 6, with tasty pickel!', 91.00, 'Food_Name_6368.jpg', 13, 'No', 'Yes'),
(8, 'pizza', 'Dhairya\'nozz\'s special extra loaded cheesy pizza with topanzo & veg delights', 799.00, 'Food_Name_6651.jfif', 11, 'Yes', 'Yes'),
(9, 'Indi Tandoori Paneer pizza ', 'Tandoori veg Panner Pizza, loaded with olives, extra cheese & mushrooms', 934.00, 'Food_Name_6057.jpg', 11, 'Yes', 'Yes'),
(10, 'Veggi Burger + (free)FrenchFries', 'Burger filled with cheese slice & veggie loaded !..', 429.00, 'Food_Name_4746.png', 12, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'pizza', 799.00, 2, 1598.00, '2024-06-02 08:45:04', 'Cancelled', 'Dhairya Modi', '8799504285', 'abcd@gmail.com', 'New Laxminagar society, Modasa'),
(2, 'Indi Tandoori Paneer pizza ', 934.00, 2, 1868.00, '2024-06-02 08:52:11', 'Delivered', 'Dhairy M', '9900990100', 'dhrya@gmail.com', 'Visat, Ahmedabad, India'),
(3, 'cheezy burger', 356.00, 1, 356.00, '2024-06-02 08:54:00', 'On Delivery', 'JOhn', '454789740', '1234@gmail.com', 'A7, Savlon Street, New Jersey'),
(4, 'pizza', 289.00, 2, 578.00, '2024-06-02 08:56:28', 'Ordered', 'Maria Doe', '7410147852', 'maria@gmail.com', 'Johnsberg Street 4, House.7'),
(5, 'Veggi Burger + (free)FrenchFries', 429.00, 2, 858.00, '2024-06-04 04:09:27', 'Delivered', 'Yashvi Modi', '1454789777', 'abcd@gmail.com', 'xyz street, Modasa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
