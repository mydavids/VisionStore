-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2015 at 02:20 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_database`
--
CREATE DATABASE IF NOT EXISTS `store_database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `store_database`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CategoryId` int(10) NOT NULL,
  `CategoryName` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `CategoryName`) VALUES
(1, 'knitwear'),
(2, 'socks'),
(3, 'Jackets'),
(4, 'shoes'),
(5, 'Tops'),
(6, 'hats'),
(8, 'Jerseys');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_Id` int(10) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Street` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Postal_Code` int(5) NOT NULL,
  `Age` int(2) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Id`, `FName`, `LName`, `Phone`, `Email`, `Street`, `City`, `Postal_Code`, `Age`, `Password`) VALUES
(1, 'Gavin', 'Ackerman', '0216584856', 'sdfsdf@gmail.com', '14 peach ', 'cape town', 7780, 20, 'cxcxcv'),
(2, 'peter', 'johnson', '0127854621', 'ptj@gmail.com', '12 adams', 'joburg', 6654, 32, 'qwerty'),
(3, 'Brad', 'Adriaan', '0115486512', 'badr@yahoo.com', '65 ship', 'joburg', 9810, 25, 'bxdfsf'),
(4, 'Amy', 'peirce', '0124589584', 'AmyP@gmail.com', '84 kraal', 'cape town', 7740, 35, 'asdgs'),
(5, 'Moegie', 'Davids', '0128754632', 'DonkeyDavids@gmail.com', '53 lester', 'cape town', 7765, 21, 'xbxdd'),
(6, 'Qiyaam', 'sydow', '0854786521', 'qmsyd23@gmail.com', '24 angel', 'cape town', 7785, 24, 'shxbs'),
(7, 'andre', 'johnson', '072458985', 'aj43@yahoo.com', '103 clock', 'joburg', 9854, 57, 'xxgwe'),
(8, 'watheeqah', 'abrahams', '0756884123', 'monkeyA@gmail.com', '23 crow', 'cape town', 7780, 21, 'mxssd'),
(9, 'Genna', 'Martin', '0751468521', 'gennaM@hotmail.com', '23 clive ', 'cape town', 7781, 20, 'kdfgd'),
(10, 'Chad', 'Smith', '0487541259', 'chadchad@gmail.com', '87 circle', 'joburg', 9854, 22, 'sdxh'),
(11, 'zaheer', 'flanders', '0765841258', 'fatty@yahoo.com', '34 lucy', 'cape town', 7587, 22, 'otxhf'),
(12, 'Trevor', 'Noah', '0157895412', 'tNoah@gmail.com', '23 locke', 'pretoria', 4587, 25, 'dtydbvc'),
(13, 'Charlize', 'Theron', '0125898544', 'charT@gmail.com', '75 holly', 'joburg', 9856, 35, 'yercv'),
(14, 'Angelina ', 'Jolie', '0458987556', 'Angel@gmail.com', '55 lowkey', 'cape town', 3587, 45, 'xcmdf'),
(15, 'daniel', 'craig', '0587894521', 'dCraig@yahoo.com', '34 bond', 'joburg', 8756, 35, 'itdctr'),
(16, 'James ', 'Bond', '0000000007', 'theOne@gmail.com', '53 nowhere', 'cape town', 87452, 34, 'xnmyfd'),
(17, 'Peter', 'Cruz', '0487895421', 'Cruzing@gmail.com', '64 link', 'cape town', 6452, 25, 'cmdrd'),
(18, 'Peeta', 'Swanson', '0458855421', 'Swanny@yahoo.com', '18 wonder', 'cape town', 6974, 21, 'xswti'),
(19, 'Jason', 'Rider', '0588742149', 'JrIDER@gmail.com', '204 fast', 'cape town', 7765, 25, 'hfdrt'),
(20, 'Prince', 'John', '0257846512', 'PJOhn@gmail.com', '54 nock', 'cape town', 8456, 35, 'cjtdd'),
(21, 'jason', 'statham', '015879865', 'jStat@yahoo.com', '65 lake', 'joburg', 6421, 87, 'zitx'),
(22, 'Rebcecca', 'peterson', '0358894521', 'Rpt@gmail.com', '35 long', 'cape town', 65421, 26, 'itrxc'),
(23, 'lana', 'person', '0458756521', 'lPer@gmail.com ', '82 short ', 'cape town', 6714, 24, 'zxfdf'),
(24, 'johnny', 'lescott', '0187954215', 'Jless@yahoo.com', '43 gale', 'joburg', 6421, 68, 'xutds'),
(25, 'andy', 'davids', '0124587456', 'AdAV@yahoo.com', '25 market', 'cape town', 6412, 75, 'xidxb'),
(26, 'Garland', 'hale', '0487541231', 'gHale@gmail.com', '54 mont', 'cape town', 3245, 21, 'ufxhfd'),
(27, 'Nathan', 'paulse', '0245897542', 'NpAUL@yahoo.com', '63 tell', 'cape town', 6485, 25, 'crree'),
(28, 'Josh', 'Leck', '0128754875', 'Jleck@gmail.com', '23 weet', 'cape town', 5741, 28, 'zxurd'),
(29, 'Aj', 'Langston', '0458795412', 'AlANG@gmail.com', '62 wrong', 'cape town', 4687, 56, 'iychg'),
(30, 'Lester', 'Johnson', '0245865412', 'LesJ@gmail.com', '73 mantus', 'cape town', 4265, 36, 'itxcg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE IF NOT EXISTS `customer_order` (
  `Order_Id` int(10) NOT NULL,
  `Cus_Id` int(10) NOT NULL,
  `Prod_Id` int(10) NOT NULL,
  `Price` float NOT NULL,
  `Date` date NOT NULL,
  `Quantity` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`Order_Id`, `Cus_Id`, `Prod_Id`, `Price`, `Date`, `Quantity`) VALUES
(1, 1, 1, 520, '2015-10-21', 1),
(2, 2, 2, 840, '2015-10-20', 1),
(3, 3, 3, 240, '2015-10-22', 1),
(4, 4, 4, 540, '2015-10-31', 1),
(5, 5, 5, 620, '2015-10-24', 1),
(6, 6, 6, 820, '2015-10-29', 1),
(7, 7, 7, 250, '2015-10-31', 1),
(8, 8, 8, 650, '2015-10-31', 1),
(9, 9, 9, 870, '2015-10-29', 1),
(10, 10, 10, 250, '2015-10-28', 1),
(11, 11, 11, 173, '2015-10-30', 1),
(12, 12, 12, 510, '2015-10-27', 1),
(13, 13, 13, 260, '2015-10-30', 1),
(14, 14, 14, 540, '2015-10-30', 1),
(15, 15, 15, 610, '2015-10-23', 1),
(16, 16, 16, 540, '2015-10-31', 1),
(17, 17, 17, 612, '2015-10-31', 1),
(18, 18, 18, 680, '2015-10-29', 1),
(19, 19, 19, 630, '2015-10-23', 1),
(20, 20, 20, 530, '2015-10-23', 1),
(21, 21, 21, 910, '2015-10-31', 1),
(22, 22, 22, 420, '2015-10-29', 1),
(23, 23, 23, 870, '2015-10-31', 1),
(25, 25, 25, 620, '2015-10-30', 1),
(26, 26, 26, 210, '2015-10-28', 1),
(27, 27, 27, 210, '2015-10-31', 1),
(28, 28, 28, 640, '2015-10-31', 1),
(29, 29, 29, 410, '2015-10-31', 1),
(30, 30, 30, 510, '2015-10-30', 1),
(46, 4, 6, 34, '2015-10-22', 3);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
  `Delivery_Id` int(10) NOT NULL,
  `Ord_Id` int(10) NOT NULL,
  `Cus_Id` int(10) NOT NULL,
  `Delivery_Date` date NOT NULL,
  `Delivery_Quantity` int(5) NOT NULL,
  `Price` float NOT NULL,
  `Cus_Street` varchar(30) NOT NULL,
  `Cus_City` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`Delivery_Id`, `Ord_Id`, `Cus_Id`, `Delivery_Date`, `Delivery_Quantity`, `Price`, `Cus_Street`, `Cus_City`) VALUES
(1, 1, 1, '2015-10-31', 1, 520, '14 peach', 'cape town'),
(2, 2, 2, '2015-10-31', 1, 840, '13 adams', 'joburg'),
(3, 3, 3, '2015-10-31', 1, 240, '65 ship', 'joburg'),
(4, 4, 4, '2015-10-31', 1, 540, '84 kraal', 'cape town'),
(5, 5, 5, '2015-10-31', 1, 620, '53 Lester', 'cape town'),
(6, 6, 6, '2015-10-31', 1, 820, '24 angel', 'cape town'),
(7, 7, 7, '2015-10-31', 1, 250, '103 clock', 'joburg'),
(8, 8, 8, '2015-10-31', 1, 650, '23 crow', 'cape town'),
(9, 9, 9, '2015-10-31', 1, 870, '23 clive', 'cape town'),
(10, 10, 10, '2015-10-31', 1, 250, '87 circle', 'joburg'),
(11, 11, 11, '2015-10-31', 1, 173, '34 lucy', 'cape town'),
(12, 12, 12, '2015-10-31', 1, 510, '23 locke', 'pretoria'),
(13, 13, 13, '2015-10-31', 1, 260, '75 holly', 'joburg'),
(14, 14, 14, '2015-10-31', 1, 540, '55 lowkey', 'cape town'),
(15, 15, 15, '2015-10-31', 1, 610, '34 bond', 'joburg'),
(16, 16, 16, '2015-10-31', 1, 540, '53 nowhere', 'cape town'),
(17, 17, 17, '2015-10-31', 1, 612, '64 link', 'cape town'),
(18, 18, 18, '2015-10-31', 1, 680, '18 wonder', 'cape town'),
(19, 19, 19, '2015-10-31', 1, 630, '204 fast', 'cape town'),
(20, 20, 20, '2015-10-31', 1, 530, '54 nock', 'cape town'),
(21, 21, 21, '2015-10-31', 1, 910, '65 lake', 'joburg'),
(22, 22, 22, '2015-10-31', 1, 420, '35 long ', 'cape town'),
(23, 23, 23, '2015-10-31', 1, 870, '82 short', 'cape town'),
(25, 25, 25, '2015-10-31', 1, 620, '25 market', 'cape town'),
(26, 26, 26, '2015-10-31', 1, 210, '54 mont', 'cape town'),
(27, 27, 27, '2015-10-31', 1, 210, '63 tell', 'cape town'),
(28, 28, 28, '2015-10-31', 1, 640, '23 weet', 'cape town'),
(29, 29, 29, '2015-10-31', 1, 410, '62 wrong', 'cape town'),
(30, 30, 30, '2015-10-31', 1, 510, '73 mantus', 'cape town'),
(34, 3, 8, '2015-10-30', 34, 34, 'fhdf', 'hfh'),
(64, 5, 1, '2015-10-30', 24, 45, 'dfg', 'dfgd');

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE IF NOT EXISTS `order_line` (
  `Order_Line_Id` int(10) NOT NULL,
  `Prod_id` int(10) NOT NULL,
  `Order_Id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`Order_Line_Id`, `Prod_id`, `Order_Id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30),
(32, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `Product_Id` int(10) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Product_Name` varchar(20) NOT NULL,
  `Sup_Id` int(10) NOT NULL,
  `Product_Price` float NOT NULL,
  `refCategoryId` int(10) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `quantity` int(10) NOT NULL,
  `ImageLocation` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_Id`, `Description`, `Product_Name`, `Sup_Id`, `Product_Price`, `refCategoryId`, `active`, `featured`, `quantity`, `ImageLocation`) VALUES
(1, 'new black shoes', 'Adidas Sport shoes', 24, 520, 1, 1, 0, 24, 'images/run.jpg'),
(2, 'high top shoes', 'nike 64', 2, 840, 2, 1, 1, 3, 'images/air_jordan1-565x424_5.jpg'),
(3, 'green running shoes', 'Puma Run', 1, 240, 2, 1, 1, 17, 'images/puma-performance-9121-39525-1-detail.jpg'),
(4, 'luxury vest', 'lime vest', 3, 540, 5, 1, 1, 28, 'images/limevest.jpg'),
(5, 'blue comfort shoes', 'smooth 6', 5, 620, 5, 1, 1, 11, 'images/blue comfort.jpg'),
(6, ' blue slim jeans', 'slim j34', 6, 820, 4, 0, 0, 31, 'images/slimbluejeans.jpg'),
(7, 'new grey sling beanie', 'sling b43', 7, 250, 1, 1, 1, 40, 'images/Cable-Knit-Beanie-.jpg'),
(8, 'tight fit grey vest', 'run cool vest', 8, 650, 2, 1, 0, 26, 'images/grey vest.jpg'),
(9, 'boot leg black jeans', 'bootleg j36', 9, 870, 1, 1, 1, 16, 'images/bootlegblack.jpg'),
(10, 'long sleeve shirt blue', 'blue slimshirt', 10, 250, 5, 1, 0, 27, 'images/flannel-shirt-blue.jpg'),
(11, 'red and blue check shirt', 'stripecheck shirt', 11, 173, 6, 1, 1, 27, 'images/redandblue.jpg'),
(12, 'grey pattern tshirt', 'pattern tshirt', 12, 510, 5, 1, 0, 21, 'images/greypattern.jpg'),
(13, 'black low cut vest ', 'Low black', 13, 260, 4, 1, 1, 39, 'images/lowcutvest.jpg'),
(14, 'green low rise running shoes', 'green sprints', 14, 540, 6, 1, 1, 35, 'images/greens.jpg'),
(15, 'white j21 top', 'j21 low', 15, 610, 1, 0, 0, 23, 'images/j21.jpg'),
(16, 'red track shoes', 'go go', 16, 540, 3, 1, 0, 2, 'images/reds.jpg'),
(17, 'slim fit womens jeans', 'blue smlim', 17, 612, 8, 1, 1, 3, 'images/slimfitfemale.jpg'),
(18, 'grey running shorts', 'high greys', 18, 680, 3, 1, 1, 9, 'images/greyshorts.jpg'),
(19, 'blue hooded jersey', 'hood j', 19, 630, 6, 1, 0, 5, 'images/bluehood.jpg'),
(20, 'white v-neck', 'w vneck', 20, 530, 3, 0, 0, 6, 'images/pPOLO2-3131968_.jpg'),
(21, 'green high top sneaker', 'green highs', 21, 910, 6, 1, 0, 4, 'images/greenhightop.jpg'),
(22, 'light grey low tops', 'grey lows', 22, 420, 3, 0, 0, 11, 'images/greylowtop.jpg'),
(23, 'blue vest ', 'blue breeze', 23, 870, 4, 0, 0, 9, 'images/bluevest.jpg'),
(25, 'low cut shorts', 'low shorts', 25, 620, 8, 1, 1, 4, 'images/jorts.jpg'),
(26, 'lime tights', 'yoga tights', 26, 210, 3, 1, 1, 8, 'images/limeyoga.jpg'),
(27, 'blue socks', 'blue wings', 27, 210, 8, 0, 0, 7, 'images/smartwool-socks.jpg'),
(28, 'dark green high tops', 'spring jumps', 28, 640, 5, 1, 1, 6, 'images/darkgreenhigh.jpg'),
(29, 'purple overcoat', 'long coat', 29, 410, 3, 1, 0, 4, 'images/purple.jpg'),
(30, 'new White running shorts', 'Super brights', 30, 510, 3, 1, 1, 7, 'images/whiterun.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `Supplier_Id` int(10) NOT NULL,
  `Supplier_Name` varchar(20) NOT NULL,
  `Supplier_City` varchar(30) NOT NULL,
  `Supplier_Phone` varchar(10) NOT NULL,
  `Supplier_Email` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_Id`, `Supplier_Name`, `Supplier_City`, `Supplier_Phone`, `Supplier_Email`) VALUES
(1, 'puma', 'cape town', '0145875413', 'pumC@gmail.com'),
(2, 'nike', 'pretoria', '0125789855', 'nike54@gmail.com'),
(3, 'Ascis', 'joburg', '0458768521', 'asc1@gmail.com'),
(4, 'gucci', 'cape town', '0658741235', 'gucci24@gmail.com'),
(5, 'balenciaga', 'cape town', '0235478974', 'balaga32@yahoo.com'),
(6, 'prada', 'joburg', '0124578987', 'prada54@gmail.com'),
(7, 'marc jacobs', 'pretoria', '0458789654', 'mjS@gmail.com'),
(8, 'hi-tech', 'cape town', '0145879563', 'hitech32@yahoo.com'),
(9, 'reebok', 'joburg', '0354789751', 'reeboky@gmail.com'),
(10, 'shado', 'cape town', '0459876521', 'shadow2@gmail.com'),
(11, 'superga', 'pretoria', '0254879321', 'superG@gmail.com'),
(12, 'tracer', 'cape town', '0487512485', 'tracerrrr@gmail.com'),
(13, 'petron', 'joburg', '0345218976', 'petron54@yahoo.com'),
(14, 'letchko', 'pretoria', '0789456123', 'letchko64@gmail.com'),
(15, 'Run-Pro', 'cape town', '048765123', 'runner54@gmail.com'),
(16, 'clima-smooth', 'joburg', '0547898452', 'clima74@gmail.com'),
(17, 'tackle', 'cape town', '0547895412', 'tackleHard@gmail.com'),
(18, 'lessismore', 'cape town', '0657841235', 'lessismore@gmail.com'),
(19, 'lugo', 'cape town', '0784513258', 'lugo64@gmail.com'),
(20, 'layton', 'cape town', '0487974412', 'layton74@gmail.com'),
(21, 'portay', 'pretoria', '0547898513', 'portay@gmail.com'),
(22, 'wesglow', 'pretoria', '0654789411', 'wesglow@yahoo.com'),
(23, 'locke-smith', 'joburg', '0657841235', 'lockey@gmail.com'),
(24, 'adidas', 'cape town', '0218754695', 'adi11@gmail.com'),
(25, 'one-way', 'joburg', '0547898451', 'oneyway@gmail.com'),
(26, 'tony-mark', 'cape town', '0354897412', 'tony24@gmail.com'),
(27, 'redbat', 'pretoria', '6875321458', 'redbat@gmail.com'),
(28, 'lexi', 'pretoria', '0248756512', 'lexi83@gmail.com'),
(29, 'longlong', 'cape town', '0241657894', 'longy@gmail.com'),
(30, 'blue', 'cape town', '0147851265', 'bluey@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`Order_Id`),
  ADD KEY `Cus_Id` (`Cus_Id`),
  ADD KEY `Prod_Id` (`Prod_Id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`Delivery_Id`),
  ADD KEY `Ord_Id` (`Ord_Id`),
  ADD KEY `Cus_Id` (`Cus_Id`),
  ADD KEY `Cus_Street` (`Cus_Street`),
  ADD KEY `Cus_City` (`Cus_City`),
  ADD KEY `Price` (`Price`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`Order_Line_Id`),
  ADD KEY `Prod_id` (`Prod_id`),
  ADD KEY `Order_Id` (`Order_Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_Id`),
  ADD UNIQUE KEY `Sup_Id` (`Sup_Id`),
  ADD KEY `Cat_Id` (`refCategoryId`),
  ADD KEY `Cat_Id_2` (`refCategoryId`),
  ADD KEY `Sup_Id_2` (`Sup_Id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryId` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `Order_Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `Delivery_Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `Order_Line_Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `Supplier_Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`Cus_Id`) REFERENCES `customer` (`Customer_Id`),
  ADD CONSTRAINT `customer_order_ibfk_2` FOREIGN KEY (`Prod_Id`) REFERENCES `product` (`Product_Id`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`Ord_Id`) REFERENCES `customer_order` (`Order_Id`),
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`Cus_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `order_line_ibfk_1` FOREIGN KEY (`Prod_id`) REFERENCES `product` (`Product_Id`),
  ADD CONSTRAINT `order_line_ibfk_2` FOREIGN KEY (`Order_Id`) REFERENCES `customer_order` (`Order_Id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`refCategoryId`) REFERENCES `category` (`CategoryId`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Sup_Id`) REFERENCES `supplier` (`Supplier_Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
