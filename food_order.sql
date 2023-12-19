-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 12:14 PM
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
-- Database: `food_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `ID` varchar(10) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`ID`, `Fullname`, `Username`, `Password`) VALUES
('Admin@1', 'Sathishkumar', 'ErenYeager', 'Sathish');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Featured` varchar(100) NOT NULL,
  `Active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`ID`, `Title`, `Image`, `Featured`, `Active`) VALUES
(1, 'Biriyani', 'Food_Category_287.jpg', 'Yes', 'Yes'),
(9, 'Fish', 'Food_Category_540.jpg', 'No', 'Yes'),
(13, 'Parotta', 'Food_Category_102.jpg', 'Yes', 'Yes'),
(15, 'Pizza', 'Food_Category_183.jpg', 'No', 'Yes'),
(16, 'Burger', 'Food_Category_364.jpg', 'Yes', 'Yes'),
(24, 'Momo', 'Food_Category_439.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Category_ID` int(10) UNSIGNED NOT NULL,
  `Featured` varchar(100) NOT NULL,
  `Active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`ID`, `Title`, `Description`, `Price`, `Image`, `Category_ID`, `Featured`, `Active`) VALUES
(5, 'Chicken Biriyani', 'chicken', 130.00, 'Food_Name_21.jpg', 1, 'Yes', 'Yes'),
(6, 'Egg Biriyani', 'sparkles', 100.00, 'Food_Name_173.jpg', 1, 'Yes', 'Yes'),
(7, 'Veg Biriyani', 'Veg', 120.00, 'Food_Name_718.jpg', 1, 'Yes', 'Yes'),
(8, 'BBQ Biriyani', 'BBQ Chicken', 200.00, 'Food_Name_206.jpg', 1, 'Yes', 'Yes'),
(9, 'Fish Fry', 'Fish', 120.00, 'Food_Name_494.jpg', 9, 'Yes', 'Yes'),
(10, 'Naan', 'Butter Naan', 35.00, 'Food_Name_582.jpg', 13, 'Yes', 'Yes'),
(11, 'Parotta', 'maida', 20.00, 'Food_Name_184.jpg', 13, 'Yes', 'Yes'),
(12, 'momo', 'momo', 130.00, 'Food_Name_496.jpg', 24, 'Yes', 'Yes'),
(13, 'Veg Pizza', 'Veggies', 200.00, 'Food_Name_90.jpg', 15, 'Yes', 'Yes'),
(15, 'Cheese Burger', 'Cheese', 150.00, 'Food_Name_803.jpg', 16, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Food` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Orderdate` datetime NOT NULL,
  `Status` varchar(50) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `CustomerContact` varchar(20) NOT NULL,
  `CustomerEmail` varchar(150) NOT NULL,
  `CustomerAddress` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`ID`, `Food`, `Price`, `Quantity`, `Total`, `Orderdate`, `Status`, `CustomerName`, `CustomerContact`, `CustomerEmail`, `CustomerAddress`) VALUES
(1, 'Chicken Biriyani', 130.00, 3, 390.00, '2023-10-07 09:09:58', 'Delivered', 'Sathishkumar', '9123581594', 'sathis2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet.'),
(2, 'Fish Fry', 120.00, 1, 120.00, '2023-10-07 09:14:37', 'Cancelled', 'Sathishkumar', '9123581594', 'sathis2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet.'),
(3, 'BBQ Biriyani', 200.00, 1, 200.00, '2023-10-07 09:15:42', 'Delivered', 'Sathishkumar', '9123581594', 'sathis2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet.'),
(4, 'Chicken Biriyani', 130.00, 2, 260.00, '2023-10-08 10:57:00', 'Ordered', 'Sathishkumar S A', '9976773332', 'sathish2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet, 642126.'),
(5, 'Veg Biriyani', 120.00, 1, 120.00, '2023-10-26 01:13:40', 'Cancelled', 'sachin', '90879745', 'kjhsekjfjeiugr@gmail.com', 'iohseogfoe\r\n'),
(6, 'Chicken Biriyani', 130.00, 1, 130.00, '2023-11-03 07:01:26', 'Ordered', 'Sathishkumar', '9123581594', 'sathis2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet.'),
(7, 'Chicken Biriyani', 130.00, 1, 130.00, '2023-11-08 05:20:08', 'Ordered', 'Sathishkumar', '6787856', 'sathis2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet.'),
(8, 'Chicken Biriyani', 130.00, 1, 130.00, '2023-11-16 02:19:23', 'Ordered', 'Sathishkumar', '9123581594', 'sathis2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet.'),
(9, 'Chicken Biriyani', 130.00, 1, 130.00, '2023-11-16 02:21:12', 'Ordered', 'Sathishkumar', '9123581594', 'sathis2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet.'),
(10, 'Chicken Biriyani', 130.00, 2, 260.00, '2023-11-16 02:29:30', 'Ordered', 'Sathishkumar', '9123581594', 'sathis2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet.'),
(11, 'Chicken Biriyani', 130.00, 2, 260.00, '2023-11-16 02:30:15', 'Delivered', 'Sathishkumar', '9123581594', 'sathis2461@gmail.com', '25/11, Vinayagar kovil lane, Udumalpet.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `PhoneNo` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `OTP` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`ID`, `Name`, `PhoneNo`, `Password`, `OTP`) VALUES
(1, 'Sathish', '9123581594', '', 1825),
(2, 'Sathish', '9123581594', '', 7299),
(3, 'Sathish', '9123581594', '', 9124),
(4, 'Sathish', '9976773332', '', 3991),
(5, 'Sathish', '9976773332', '', 3991),
(6, 'Sathish', '9123581594', '', 3649),
(7, 'Sathish', '9123581594', '', 5474);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
