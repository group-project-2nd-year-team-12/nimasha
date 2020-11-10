-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2020 at 02:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bodima`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `a_id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL DEFAULT 'administrator',
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `boarder`
--

CREATE TABLE `boarder` (
  `Bid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'boarder',
  `address` varchar(250) NOT NULL,
  `location_link` text NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boarder`
--

INSERT INTO `boarder` (`Bid`, `email`, `password`, `token`, `first_name`, `last_name`, `level`, `address`, `location_link`, `NIC`, `image`) VALUES
(1, 'lakshanamal100@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '9a8bb46e0aac76114827acd508909787ec251ec0c2aa2fb861412cf1689a4ddba70f506c9afa0643d93b24e44c472661643c', 'Ishan', 'Resmika', 'boarder', '310/1, Delgasduwa,Dodanduwa', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `boardings_owner`
--

CREATE TABLE `boardings_owner` (
  `BOid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `token` varchar(250) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'boardings_owner',
  `NIC` varchar(12) NOT NULL,
  `address` varchar(250) NOT NULL,
  `location_link` text NOT NULL,
  `image` text NOT NULL,
  `account_no` int(11) NOT NULL,
  `user_accepted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boardings_owner`
--

INSERT INTO `boardings_owner` (`BOid`, `email`, `password`, `token`, `first_name`, `last_name`, `level`, `NIC`, `address`, `location_link`, `image`, `account_no`, `user_accepted`) VALUES
(1, '2018cs092@stu.ucsc.cmb.ac.lk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'b6c351c2372493439a8aa6b377555ac4ab2a50d2c6a03fb88a8871c4e36ade089bcb431256df5c6c36ec92eadd77b4cb6c72', 'Amal', 'Lakshan', 'boardings_owner', '', '310/1 ,Delgasduwa, Dodanduwa', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `boarding_post`
--

CREATE TABLE `boarding_post` (
  `B_post_id` int(11) NOT NULL,
  `BOid` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `girlsBoys` varchar(255) DEFAULT NULL,
  `person_count` int(100) DEFAULT NULL,
  `cost_per_person` int(255) DEFAULT NULL,
  `rating` int(100) DEFAULT 20,
  `image` varchar(255) DEFAULT NULL,
  `house_num` varchar(255) DEFAULT NULL,
  `lane` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lifespan` int(255) DEFAULT NULL,
  `post_amount` int(255) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `keymoney` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boarding_post`
--

INSERT INTO `boarding_post` (`B_post_id`, `BOid`, `category`, `girlsBoys`, `person_count`, `cost_per_person`, `rating`, `image`, `house_num`, `lane`, `city`, `district`, `description`, `location`, `lifespan`, `post_amount`, `review`, `keymoney`) VALUES
(1, 1, 'individual', 'girls', 3, 6000, 45, '../resource/Images/h1.jpg', '4', 'mal mawatha', 'Dalthara', 'Colombo', 'near to university of Moratuwa', 'https://goo.gl/maps/LtzP1M2NrkFUHpMb6', 2, 2000, 'aada', 0),
(2, 1, 'individual', 'boys', 4, 5500, 30, '../resource/Images/h1.jpg', '12/A', 'kammalawaththa mawatha', 'kotuwa', 'Mathara', 'near to university of Ruhuna', 'https://goo.gl/maps/AUW3hP4ryNcxPEvDA', 3, 3000, ' xdgxtdh', 0),
(3, 1, 'room', 'girls', 2, 7000, 70, '../resource/Images/h1.jpg', '4', 'mal mawatha', 'Moratuwa', 'Colombo', 'near to university of Moratuwa', 'https://goo.gl/maps/LtzP1M2NrkFUHpMb6', 2, 2000, ' dfsdsfs', 0),
(4, 1, 'room', 'boys', 3, 6500, 60, '../resource/Images/h1.jpg', '111/A', 'kammalawaththa mawatha', 'Maharagama', 'Colombo', 'near to university of jayawardhanapura', 'https://goo.gl/maps/9Rj41yabhqRgW7Mx5', 3, 3000, ' vfgdth', 0),
(7, 1, 'RoomOrHome', 'Male', 4, 0, 0, 'WhatsApp Image 2020-11-03 at 7.48.01 AM.jpeg', 'ddddd', 'ffffffff', 'fffffff', 'fffffff', 'ccc', 'fff', 11, 1100, 'ishan', 0),
(8, 1, 'RoomOrHome', 'Female', 1, 0, 0, '', 'z', 'z', 'z', 'z', 'z', 'fff', 2, 200, 'ishan', 0),
(9, 1, 'RoomOrHome', 'Male', 1, 0, 0, '', 'nimasha', 'cccc', 'cccc', 'ccc', 'xxxxx', 'fff', 9, 900, 'ishan', 0),
(15, 1, 'RoomOrHome', 'Female', 6, 6000, 0, '231254.jpg', 'Pushpawila', 'asda', 'kananke', 'gg', 'mmmm', 'fff', 48, 4800, 'ishan', 6000),
(16, 1, 'RoomOrHome', 'Female', 5, 5000, 0, '231373.jpg', 'nima', 'asda', 'kananke', 'gg', '', 'fff', 55, 5500, 'ishan', 99999),
(17, 1, 'RoomOrHome', 'Male', 6, 6666, 0, '', 'anuki', 'asda', 'dcs', 'gg', 'mmmmm', 'fff', 50, 5000, 'ishan', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `complain_boarding`
--

CREATE TABLE `complain_boarding` (
  `Bid` int(11) NOT NULL,
  `B_post_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `action_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complain_food`
--

CREATE TABLE `complain_food` (
  `Bid` int(11) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `action_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `confirm_rent`
--

CREATE TABLE `confirm_rent` (
  `Bid` int(11) NOT NULL,
  `BOid` int(11) NOT NULL,
  `B_post_id` int(11) NOT NULL,
  `is_paid` int(11) NOT NULL,
  `keymoneyAmount` int(11) NOT NULL,
  `agreement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `confirm_rent_document`
--

CREATE TABLE `confirm_rent_document` (
  `Bid` int(11) NOT NULL,
  `BOid` int(11) NOT NULL,
  `B_post_id` int(11) NOT NULL,
  `document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `food_post`
--

CREATE TABLE `food_post` (
  `F_post_id` int(100) NOT NULL,
  `FSid` int(11) NOT NULL,
  `ad_title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `location` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `rating` int(255) NOT NULL,
  `ordering time deadline` time NOT NULL,
  `lifespan` int(31) NOT NULL,
  `post_amount` int(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_post`
--

INSERT INTO `food_post` (`F_post_id`, `FSid`, `ad_title`, `description`, `address`, `location`, `type`, `rating`, `ordering time deadline`, `lifespan`, `post_amount`, `image`) VALUES
(2, 2, 'Rasika Food Delivary Service', 'Food for breakfast,lunch and dinner deliver to your home', 'Old road,Maharagama', '', '', 30, '00:00:00', 3, 30000, '../resource/Images/uploaded_foodpost/rice-and-curry-organic.jpg'),
(3, 4, 'Sri Ragavas Restaurant', 'All tamil and indian food -vegetarian food', 'No 35,Highlevel road, Maharagama', '', '', 35, '00:00:20', 6, 6000, '../resource/Images/uploaded_foodpost/maxresdefault.jpg'),
(4, 1, 'Nelum Kole Food court', 'game kaama game rasata', 'Highlevel road, Nugegoda', '', '', 35, '00:00:18', 6, 6000, '../resource/Images/uploaded_foodpost/nelum kole.jpg'),
(5, 3, 'Ajith Hotel & Delivary', 'breakfast,lunch and dinner family restaurant', 'No 111,Nugegoda', '', '', 35, '00:00:20', 5, 5000, '../resource/Images/uploaded_foodpost/ajith hotel.jpg'),
(6, 1, 'Ranasiri Bakery', 'All bakery food dine in and delivary', 'sisil Mawatha,Wijayaraama', '', '', 35, '00:00:20', 6, 6000, '../resource/Images/uploaded_foodpost/bakery.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `food_request`
--

CREATE TABLE `food_request` (
  `request_id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `is_accepted` int(1) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(25) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `order_id` int(50) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_request`
--

INSERT INTO `food_request` (`request_id`, `email`, `address`, `first_name`, `last_name`, `is_accepted`, `product_name`, `quantity`, `F_post_id`, `order_id`, `total`) VALUES
(286, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Mixed Rice ', 1, 2, 1602417515, 850),
(287, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Chicken Rice ', 1, 2, 1602417515, 850),
(288, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Rice and Curry ', 1, 2, 1602417515, 850),
(289, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Chicken Rice ', 1, 2, 1602418606, 700),
(290, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Mixed Rice ', 1, 2, 1602418606, 700),
(291, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Mixed Rice ', 1, 2, 1602418884, 400),
(292, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Mixed Rice ', 1, 2, 1602419290, 699.98),
(293, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Chicken Rice ', 1, 2, 1602419290, 699.98),
(294, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Chicken Rice ', 1, 2, 1602419422, 699.98),
(295, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Mixed Rice ', 1, 2, 1602419422, 699.98),
(296, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Chicken Rice ', 1, 2, 1602419528, 849.97),
(297, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Rice and Curry ', 1, 2, 1602419528, 849.97),
(298, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Mixed Rice ', 1, 2, 1602419528, 849.97),
(299, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Mixed Rice ', 1, 2, 1602422235, 849.97),
(300, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Chicken Rice ', 1, 2, 1602422235, 849.97),
(301, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Rice and Curry ', 1, 2, 1602422235, 849.97),
(302, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Mixed Rice ', 1, 2, 1602422664, 699.98),
(303, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 1, 'Chicken Rice ', 1, 2, 1602422664, 699.98),
(304, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'Mixed Rice ', 1, 2, 1602423068, 849.97),
(305, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'Chicken Rice ', 1, 2, 1602423068, 849.97),
(306, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'Rice and Curry ', 1, 2, 1602423068, 849.97);

-- --------------------------------------------------------

--
-- Table structure for table `food_supplier`
--

CREATE TABLE `food_supplier` (
  `FSid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(250) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `level` varchar(25) NOT NULL DEFAULT 'food_supplier',
  `NIC` varchar(12) NOT NULL,
  `address` varchar(250) NOT NULL,
  `location_link` int(11) NOT NULL,
  `image` text NOT NULL,
  `user_accepted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_supplier`
--

INSERT INTO `food_supplier` (`FSid`, `email`, `password`, `token`, `first_name`, `last_name`, `level`, `NIC`, `address`, `location_link`, `image`, `user_accepted`) VALUES
(1, 'projectbodima4group12@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'e5d8bae050c5853900781845961896bdf61b4d0be5706ed79cb0e0011b4bc33a8b208918cdb57410f218123695b19841606b', 'nimasha', 'supunpraba', 'food_supplier', '0', '', 0, '', 1),
(2, 'fs1@gmail.com', '', '', 'Rasika', ' Mallikarachchi', 'food_supplier', '7834848513v', '44/4, old road, Maharagama', 0, '', 0),
(3, 'fs2@gmail.com', '', '', 'Ajith', 'Hettige', 'food_supplier', '8834342341v', 'No: 5, Mirihana', 0, '', 0),
(4, 'fs4@gmail.com', '', '', 'Bathiya', 'Gamahe', 'food_supplier', '765432123v', '98/B, dehiwala road, nugegoda', 0, '', 0),
(5, 'reshmikaediriweera1997@gmail.com', '3952f2832fd5e5c18296d49e20cbffe91d14e4ab', '3b67a8301cf67402af40298688d0582a37b2458aea546594657218c2e367ce124497e40e28bf3fb0638c83976fd52d69946e', 'dddd', 'fff', 'food_supplier', '970900918V', 'matara', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ordereditems`
--

CREATE TABLE `ordereditems` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `breakfast` int(11) NOT NULL,
  `lunch` int(11) NOT NULL,
  `dinner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderfoodboarder`
--

CREATE TABLE `orderfoodboarder` (
  `Bid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `FSid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderfoodboardingowner`
--

CREATE TABLE `orderfoodboardingowner` (
  `BOid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `FSid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `marchent_id` int(100) NOT NULL,
  `order_id` int(100) NOT NULL,
  `pay_amount` int(100) NOT NULL,
  `pay_currency` varchar(100) NOT NULL,
  `status_code` int(11) NOT NULL,
  `md5sig` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`marchent_id`, `order_id`, `pay_amount`, `pay_currency`, `status_code`, `md5sig`) VALUES
(456, 0, 0, '', 0, ''),
(456, 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `payfee`
--

CREATE TABLE `payfee` (
  `Bid` int(11) NOT NULL,
  `BOid` int(11) NOT NULL,
  `year/month` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cash/card` int(11) NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `FSid` int(11) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `breakfast` int(11) NOT NULL,
  `lunch` int(11) NOT NULL,
  `dinner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `FSid`, `F_post_id`, `product_name`, `image`, `price`, `breakfast`, `lunch`, `dinner`) VALUES
(1, 1, 4, 'Mixed Rice', '../resource/img/product/product1.png', 399.99, 0, 0, 0),
(2, 1, 4, 'Chicken Rice', '../resource/img/product/product2.jpg', 299.99, 0, 0, 0),
(3, 1, 6, 'Rice and Curry', '../resource/img/product/product3.jpg', 149.99, 0, 0, 0),
(4, 1, 6, 'Nasi goreng Rice', '../resource/img/product/product1.png\r\n', 430, 0, 1, 1),
(5, 2, 2, 'Cheese Kottu', '../resource/img/product/product1.png\r\n', 370, 0, 0, 1),
(6, 1, 6, 'Pastry', '../resource/img/product/product1.png\r\n', 60, 1, 0, 1),
(7, 3, 5, 'Chicken Rice large', '../resource/img/product/product1.png\r\n', 530, 0, 1, 1),
(8, 2, 2, 'Nasi goreng Rice', '../resource/img/product/product1.png\r\n', 430, 0, 1, 1),
(9, 3, 5, 'Biriani', '../resource/img/product/product1.png\r\n', 230, 0, 1, 1),
(10, 2, 2, 'Nasi goreng Rice', '../resource/img/product/product1.png\r\n', 430, 0, 1, 1),
(11, 3, 5, 'Parata', '../resource/img/product/product1.png\r\n', 65, 0, 0, 1),
(12, 4, 3, 'Idli', '../resource/img/product/product1.png\r\n', 130, 0, 1, 1),
(13, 4, 3, 'Paper Dosai', '../resource/img/product/product1.png\r\n', 260, 0, 1, 1),
(14, 4, 3, 'Pani Puri', '../resource/img/product/product1.png\r\n', 150, 0, 1, 1),
(15, 4, 3, 'Puri', '../resource/img/product/product1.png\r\n', 170, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(100) NOT NULL,
  `student_email` varchar(40) NOT NULL,
  `BOid` int(100) NOT NULL,
  `B_post_id` int(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `isAccept` tinyint(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `student_email`, `BOid`, `B_post_id`, `message`, `isAccept`, `date`) VALUES
(66, 'projectbodima4group12@gmail.com', 1, 2, 'I am nimasha.I  like to get the your kotuwa boarding place and would like to request  your boarding ', 1, '2020-10-26'),
(67, 'projectbodima4group12@gmail.com', 1, 1, 'I am nimasha.I  like to get the your Dalthara boarding place and would like to request  your boardin', 5, '2020-10-26'),
(69, 'lakshanamal100@gmail.com', 1, 1, 'I am Ishan.I  like to get the your Dalthara boarding place and would like to request  your boarding ', 1, '2020-10-28'),
(70, 'lakshanamal100@gmail.com', 1, 4, 'I am Ishan.I  like to get the your Maharagama boarding place and would like to request  your boardin', 2, '2020-10-29'),
(71, 'lakshanamal100@gmail.com', 1, 2, 'I am Ishan.I  like to get the your kotuwa boarding place and would like to request  your boarding ho', 1, '2020-10-29'),
(72, 'lakshanamal100@gmail.com', 1, 3, 'I am Ishan.I  like to get the your Moratuwa boarding place and would like to request  your boarding ', 1, '2020-10-29'),
(73, 'lakshanamal100@gmail.com', 1, 1, 'I am Ishan.I  like to get the your Dalthara boarding place and would like to request  your boarding ', 1, '2020-11-01'),
(74, 'lakshanamal100@gmail.com', 1, 1, 'I am Ishan.I  like to get the your Dalthara boarding place and would like to request  your boarding ', 1, '2020-11-01'),
(75, 'lakshanamal100@gmail.com', 1, 1, 'I am Ishan.I  like to get the your Dalthara boarding place and would like to request  your boarding ', 1, '2020-11-01'),
(76, 'lakshanamal100@gmail.com', 1, 1, 'I am Ishan.I  like to get the your Dalthara boarding place and would like to request  your boarding ', 1, '2020-11-01'),
(77, 'lakshanamal100@gmail.com', 1, 4, 'I am Ishan.I  like to get the your Maharagama boarding place and would like to request  your boardin', 2, '2020-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Reg_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'student',
  `nic` varchar(15) NOT NULL,
  `address` varchar(250) NOT NULL,
  `user_accepted` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Reg_id`, `email`, `first_name`, `last_name`, `password`, `token`, `level`, `nic`, `address`, `user_accepted`) VALUES
(28, 'lakshanamal100@gmail.com', 'Lakshan', 'Amal', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'e07a3d7cfe211c5f3d7bf716aeb1a413a02227f09a71b064f73e70dfa8026da0f36650c963e14a8357851655cbe33f2cf42c', 'student', '971741546V', '', 1),
(29, '2018cs030@stu.ucsc.cmb.ac.lk', 'ludo', 'gona', '7c4a8d09ca3762af61e59520943dc26494f8941b', '253ebf85d687a348f527b5cfafa2817273aeab6fa50ca2e1a497fe2cb351b47c91bc6d07e80b614ed69bd09da186fd90320c', 'student', '960900918v', '', 1),
(30, '2018cs139@stu.ucsc.cmb.ac.lk', 'ishan', 'reshmika', '3952f2832fd5e5c18296d49e20cbffe91d14e4ab', 'aea28aeb5a676812f5b132e36c17e2a9df4a637b4afb23f8cd19763560e32571f0d536cd766df17e9703faa1a8d12bd36291', 'student', '970900918V', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `boarder`
--
ALTER TABLE `boarder`
  ADD PRIMARY KEY (`Bid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `boardings_owner`
--
ALTER TABLE `boardings_owner`
  ADD PRIMARY KEY (`BOid`);

--
-- Indexes for table `boarding_post`
--
ALTER TABLE `boarding_post`
  ADD PRIMARY KEY (`B_post_id`),
  ADD KEY `BOid` (`BOid`);

--
-- Indexes for table `complain_boarding`
--
ALTER TABLE `complain_boarding`
  ADD KEY `Bid` (`Bid`),
  ADD KEY `B_post_id` (`B_post_id`);

--
-- Indexes for table `complain_food`
--
ALTER TABLE `complain_food`
  ADD KEY `a_id` (`a_id`),
  ADD KEY `Bid` (`Bid`),
  ADD KEY `F_post_id` (`F_post_id`);

--
-- Indexes for table `confirm_rent`
--
ALTER TABLE `confirm_rent`
  ADD KEY `Bid` (`Bid`),
  ADD KEY `BOid` (`BOid`),
  ADD KEY `B_post_id` (`B_post_id`);

--
-- Indexes for table `confirm_rent_document`
--
ALTER TABLE `confirm_rent_document`
  ADD KEY `Bid` (`Bid`),
  ADD KEY `BOid` (`BOid`),
  ADD KEY `B_post_id` (`B_post_id`);

--
-- Indexes for table `food_post`
--
ALTER TABLE `food_post`
  ADD PRIMARY KEY (`F_post_id`) USING BTREE,
  ADD KEY `FSid` (`FSid`);

--
-- Indexes for table `food_request`
--
ALTER TABLE `food_request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `F-post-id` (`F_post_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `food_supplier`
--
ALTER TABLE `food_supplier`
  ADD PRIMARY KEY (`FSid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ordereditems`
--
ALTER TABLE `ordereditems`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orderfoodboarder`
--
ALTER TABLE `orderfoodboarder`
  ADD KEY `Bid` (`Bid`),
  ADD KEY `FSid` (`FSid`),
  ADD KEY `F_post_id` (`F_post_id`);

--
-- Indexes for table `orderfoodboardingowner`
--
ALTER TABLE `orderfoodboardingowner`
  ADD KEY `BOid` (`BOid`),
  ADD KEY `FSid` (`FSid`),
  ADD KEY `F_post_id` (`F_post_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FSid` (`FSid`),
  ADD KEY `F-post-id` (`F_post_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `a_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boarder`
--
ALTER TABLE `boarder`
  MODIFY `Bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boardings_owner`
--
ALTER TABLE `boardings_owner`
  MODIFY `BOid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boarding_post`
--
ALTER TABLE `boarding_post`
  MODIFY `B_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `food_post`
--
ALTER TABLE `food_post`
  MODIFY `F_post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_request`
--
ALTER TABLE `food_request`
  MODIFY `request_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `food_supplier`
--
ALTER TABLE `food_supplier`
  MODIFY `FSid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boarding_post`
--
ALTER TABLE `boarding_post`
  ADD CONSTRAINT `boarding_post_ibfk_1` FOREIGN KEY (`BOid`) REFERENCES `boardings_owner` (`BOid`);

--
-- Constraints for table `complain_boarding`
--
ALTER TABLE `complain_boarding`
  ADD CONSTRAINT `complain_boarding_ibfk_1` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `complain_boarding_ibfk_2` FOREIGN KEY (`B_post_id`) REFERENCES `boarding_post` (`B_post_id`);

--
-- Constraints for table `complain_food`
--
ALTER TABLE `complain_food`
  ADD CONSTRAINT `complain_food_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `administrator` (`a_id`),
  ADD CONSTRAINT `complain_food_ibfk_2` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `complain_food_ibfk_3` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);

--
-- Constraints for table `confirm_rent`
--
ALTER TABLE `confirm_rent`
  ADD CONSTRAINT `confirm_rent_ibfk_1` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `confirm_rent_ibfk_2` FOREIGN KEY (`BOid`) REFERENCES `boardings_owner` (`BOid`),
  ADD CONSTRAINT `confirm_rent_ibfk_3` FOREIGN KEY (`B_post_id`) REFERENCES `boarding_post` (`B_post_id`);

--
-- Constraints for table `confirm_rent_document`
--
ALTER TABLE `confirm_rent_document`
  ADD CONSTRAINT `confirm_rent_document_ibfk_1` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `confirm_rent_document_ibfk_2` FOREIGN KEY (`BOid`) REFERENCES `boardings_owner` (`BOid`),
  ADD CONSTRAINT `confirm_rent_document_ibfk_3` FOREIGN KEY (`B_post_id`) REFERENCES `boarding_post` (`B_post_id`);

--
-- Constraints for table `food_post`
--
ALTER TABLE `food_post`
  ADD CONSTRAINT `food_post_ibfk_1` FOREIGN KEY (`FSid`) REFERENCES `food_supplier` (`FSid`);

--
-- Constraints for table `food_request`
--
ALTER TABLE `food_request`
  ADD CONSTRAINT `food_request_ibfk_1` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);

--
-- Constraints for table `ordereditems`
--
ALTER TABLE `ordereditems`
  ADD CONSTRAINT `ordereditems_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `orderfoodboarder`
--
ALTER TABLE `orderfoodboarder`
  ADD CONSTRAINT `orderfoodboarder_ibfk_1` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `orderfoodboarder_ibfk_2` FOREIGN KEY (`FSid`) REFERENCES `food_supplier` (`FSid`),
  ADD CONSTRAINT `orderfoodboarder_ibfk_3` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);

--
-- Constraints for table `orderfoodboardingowner`
--
ALTER TABLE `orderfoodboardingowner`
  ADD CONSTRAINT `orderfoodboardingowner_ibfk_1` FOREIGN KEY (`BOid`) REFERENCES `boardings_owner` (`BOid`),
  ADD CONSTRAINT `orderfoodboardingowner_ibfk_2` FOREIGN KEY (`FSid`) REFERENCES `food_supplier` (`FSid`),
  ADD CONSTRAINT `orderfoodboardingowner_ibfk_3` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
