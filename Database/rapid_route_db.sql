-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 08:36 PM
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
-- Database: `rapid_route_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `is_deleted` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `is_deleted`) VALUES
(1, 'Bagerhat', 0),
(2, 'Barishal', 0),
(3, 'Bandarban', 0),
(4, 'Barguna', 0),
(5, 'Bhola', 0),
(6, 'Bogura', 0),
(7, 'Brahmanbaria', 0),
(8, 'Chandpur', 0),
(9, 'Chapainawabganj', 0),
(10, 'Chittagong', 0),
(11, 'Chuadanga', 0),
(12, 'Comilla', 0),
(13, 'Cox’s Bazar', 0),
(14, 'Dhaka', 0),
(15, 'Dinajpur', 0),
(16, 'Faridpur', 0),
(17, 'Feni', 0),
(18, 'Gaibandha', 0),
(19, 'Gazipur', 0),
(20, 'Gopalganj', 0),
(21, 'Hobigonj', 0),
(22, 'Jamalpur', 0),
(23, 'Jessore', 0),
(24, 'Jhalokathi', 0),
(25, 'Jhenaida', 0),
(26, 'Joypurhat', 0),
(27, 'Keranigonj', 0),
(28, 'Khagrachari', 0),
(29, 'Khulna', 0),
(30, 'Kishoreganj', 0),
(31, 'Kurigram', 0),
(32, 'Kushtia', 0),
(33, 'Lalmonirhat', 0),
(34, 'Laxmipur', 0),
(35, 'Madaripur', 0),
(36, 'Magura', 0),
(37, 'Manikganj', 0),
(38, 'Meherpur', 0),
(39, 'Naogaon', 0),
(40, 'Moulvibazar', 0),
(41, 'Munshiganj', 0),
(42, 'Mymensingh', 0),
(43, 'Narail', 0),
(44, 'Narayanganj', 0),
(45, 'Narsingdi', 0),
(46, 'Natore', 0),
(47, 'Netrokona', 0),
(48, 'Nilphamari', 0),
(49, 'Noakhali', 0),
(50, 'Pabna', 0),
(51, 'Panchagarh', 0),
(52, 'Patuakhali', 0),
(53, 'Pirojpur', 0),
(54, 'Rajbari', 0),
(55, 'Rajshahi', 0),
(56, 'Rangamati', 0),
(57, 'Rangpur', 0),
(58, 'Satkhira', 0),
(59, 'Savar', 0),
(60, 'Shariatpur', 0),
(61, 'Sherpur', 0),
(62, 'Sirajgonj', 0),
(63, 'Sunamganj', 0),
(64, 'Sylhet', 0),
(65, 'Tangail', 0),
(66, 'Thakurgaon', 0);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `is_deleted` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `is_deleted`) VALUES
(1, 'Motijhil, Dhaka', 0),
(2, 'Kashimpur, Gazipur', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `message`, `date_updated`) VALUES
(1, 'Monir Khan', 'monir@gmail.com', 'appreciation', 'Your exceptional service exceeded all expectations. Thank you for your outstanding support!', '2024-04-02 12:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` int(2) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_deleted` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `email`, `phone`, `nic`, `address`, `gender`, `password`, `is_deleted`) VALUES
(1, 'Mr. Kamal', 'kamal@gmail.com', '01766543322', '', 'Rangpur', 1, '111', 1),
(3, 'Monir Khan', 'monir@gmail.com', '01766543322', '', 'belkuchi', 1, '111', 0),
(4, 'Suborna Khatun', 'suborna@gmail.com', '01766543322', '', 'Dhaka', 2, '111', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `branch_id` int(255) NOT NULL,
  `role` enum('admin','staff') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `email`, `phone`, `address`, `gender`, `password`, `is_deleted`, `branch_id`, `role`) VALUES
(1, 'admin', 'admin', '01322034866', 'Motijhil,Dhaka', 'female', 'admin', 0, 1, 'admin'),
(3, 'Emp1', 'emp1@gmail.com', '01987654326', 'Dhaka', 'male', '222', 0, 1, 'staff'),
(6, 'Emp3', 'emp3@gmail.com', '01987654326', 'Dhaka', 'male', '222', 0, 2, 'staff'),
(7, 'Emp3', 'emp3@gmail.com', '01987654326', 'Dhaka', 'female', '222', 0, 1, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_image`) VALUES
(2, 'Gallery_04.jpg'),
(3, 'Gallery_06.jpg'),
(5, '3.jpg'),
(6, '4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `price_table`
--

CREATE TABLE `price_table` (
  `price_id` int(11) NOT NULL,
  `start_area` varchar(255) NOT NULL,
  `end_area` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `is_deleted` int(255) NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `price_table`
--

INSERT INTO `price_table` (`price_id`, `start_area`, `end_area`, `price`, `is_deleted`, `date_updated`) VALUES
(1, '19', '14', 80, 0, '2024-04-02 01:51:51'),
(2, '65', '14', 100, 0, '2024-04-02 23:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `sender_phone` int(255) NOT NULL,
  `weight` int(255) NOT NULL,
  `send_location` int(255) NOT NULL,
  `end_location` int(255) NOT NULL,
  `total_fee` int(255) NOT NULL,
  `res_phone` int(255) NOT NULL,
  `red_address` varchar(255) NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `tracking_status` int(10) NOT NULL,
  `res_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `customer_id`, `sender_phone`, `weight`, `send_location`, `end_location`, `total_fee`, `res_phone`, `red_address`, `is_deleted`, `date_updated`, `tracking_status`, `res_name`) VALUES
(1, 1, 1345678921, 2, 19, 14, 160, 1645378653, 'Kashimpur, Gazipur', 0, '2024-04-02 09:27:11', 1, 'Monir Sheikh'),
(2, 3, 1345678921, 2, 19, 14, 160, 1645378653, 'Kashimpur, Gazipur', 0, '2024-04-02 22:55:15', 3, 'kamal khan'),
(3, 4, 1345678921, 1, 65, 14, 100, 1645378653, 'Sakhipur, Tangail', 0, '2024-04-02 23:56:30', 2, 'Shubrato Saha');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `header_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `header_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `header_desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `about_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `about_desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `sub_image` varchar(255) NOT NULL,
  `about_image` varchar(255) NOT NULL,
  `link_facebook` varchar(255) NOT NULL,
  `link_twiiter` varchar(255) NOT NULL,
  `link_instragram` varchar(255) NOT NULL,
  `background_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`header_image`, `header_title`, `header_desc`, `about_title`, `about_desc`, `company_phone`, `company_email`, `company_address`, `sub_image`, `about_image`, `link_facebook`, `link_twiiter`, `link_instragram`, `background_image`) VALUES
('Gallery_01.jpg', 'Reliable Deliveries with-\"Rapid Route Services\"', '\"Delivering Excellence, Connecting Communities.\"', 'About Us', 'Rapid Route Services is your premier courier partner, committed to delivering excellence across Bangladesh. With a focus on speed, reliability, and customer satisfaction, we provide tailored courier solutions to meet your needs. Established with the vision to redefine logistics, Rapid Route Services has quickly become a trusted name in the industry. Our extensive network ensures swift and secure delivery of your parcels, whether it\'s documents, packages, or goods of any size. At Rapid Route Services, we prioritize transparency, efficiency, and accountability in every delivery. With our experienced team and advanced technology, we guarantee a seamless experience from pickup to drop-off. Join us and experience the difference with Rapid Route Services – where your satisfaction is our priority.', '+8801322034866', 'contact@rapidroute.com', 'No 224, ABC Road, Motijhil, Dhaka', 'Gallery_02.jpg', '5.jpg', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', 'Background.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `fk_employee_branch` (`branch_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `price_table`
--
ALTER TABLE `price_table`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `fk_request_customer` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `price_table`
--
ALTER TABLE `price_table`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_employee_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `fk_request_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
