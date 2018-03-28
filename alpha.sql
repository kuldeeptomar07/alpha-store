-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2018 at 11:25 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alpha`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin'),
(2, 'kuldeeptomar07@gmail.com', 'kuldeeptomar07'),
(3, 'abcde@gmail.com', 'e8fc1482d55b4324579a1150b72e7ddac9db9ddc'),
(4, 'kuldeeptomar21@gmail.com', 'ffcee5d6a86f6d960316cecea2eb56387d7b9bc9'),
(5, 'johncena@gmail.com', 'e13ad9bbb16fad6d59fb336ab84ce058fc7e9f4a'),
(6, 'ramkumar312@gmail.com', 'b783d9b627f7fdcc7e59d8338cfe010b62449ed6'),
(8, 'pradeeptomar@gmail.com', '108f05642d0ea6c18c06b555f89d8f2d4f87d394');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(255) UNSIGNED NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(4, 'Management'),
(3, 'Medical'),
(2, 'Engineering '),
(1, 'School');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expenses_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `purchase_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expenses_id`, `product_id`, `product_name`, `price`, `purchase_date`) VALUES
(37, 43, 'Data Structures with C ', 4520, '2018-03-03 22:30:33'),
(38, 44, 'Operating System Principles', 5790, '2018-03-03 22:40:00'),
(39, 45, 'Operating System ', 5790, '2018-03-03 22:40:40'),
(40, 46, 'Artificial Intelligence', 960, '2018-03-03 22:45:51'),
(41, 47, '	Microwave & Radar Engineering', 1125, '2018-03-03 22:50:03'),
(42, 48, '	Electronic Devices', 530, '2018-03-03 22:52:35'),
(43, 47, '	Microwave & Radar Engineering', 0, '2018-03-03 22:54:03'),
(44, 49, '	A Course in Electrical Technology Vol. II', 495, '2018-03-03 22:55:28'),
(45, 50, '	THEORY & PRACTICE OF ELECTRICAL MACHINE DESIGN', 2475, '2018-03-03 22:57:56'),
(46, 50, '	THEORY & PRACTICE OF ELECTRICAL MACHINE DESIGN', 0, '2018-03-03 22:58:19'),
(47, 51, 'A Textbook of Machine Design', 8628, '2018-03-03 23:01:50'),
(48, 52, 'Engg Hydorlogy,3E', 12000, '2018-03-03 23:04:51'),
(49, 53, 'Financial Accounting', 1000, '2018-03-03 23:07:25'),
(50, 54, 'HUMAN ANATOMY FOR STUDENTS 2nd Edition ', 880, '2018-03-03 23:17:56'),
(51, 55, 'QRS for BDS 4th Year: Oral Medicine & Radiology', 3350, '2018-03-03 23:32:20'),
(52, 56, 'Chemistry Textbook Part - 2 for Class - 12', 2300, '2018-03-03 23:36:54'),
(53, 57, 'Chemistry Textbook Part - 1 for Class - 12', 3140, '2018-03-03 23:38:32'),
(54, 58, 'Physics Text Book Part 1 for Class 12', 1800, '2018-03-03 23:40:29'),
(55, 59, 'Physics Text Book Part - 2 for Class - 12', 2850, '2018-03-03 23:42:03'),
(56, 60, 'Business Studies Part - 1 for Class - 12', 475, '2018-03-03 23:45:01'),
(57, 61, 'An Introduction to Indian Art Part 1', 447, '2018-03-03 23:47:30'),
(58, 62, 'ff', 121, '2018-03-06 14:03:26'),
(59, 53, 'Financial Accounting', 10000, '2018-03-12 15:11:00'),
(60, 63, 'mechancis', 1000, '2018-03-12 15:12:18'),
(61, 64, 'Data Structures with C', 9040, '2018-03-12 15:25:59'),
(62, 65, 'Data Structures with C', 9040, '2018-03-12 15:46:21'),
(63, 66, 'Data Structures with C', 9040, '2018-03-12 15:53:34'),
(64, 67, 'Operating System Principles', 3000, '2018-03-12 16:00:36'),
(65, 68, 'Discrete Mathematics', 4930, '2018-03-12 16:11:09'),
(66, 69, 'Discrete Maths', 2220, '2018-03-12 16:16:35'),
(67, 70, 'Electrical Technology', 1200, '2018-03-12 16:21:18'),
(68, 71, 'Microwave and Radar Engg.', 2500, '2018-03-12 16:24:20'),
(69, 72, 'Machine Design', 1800, '2018-03-12 16:27:30'),
(70, 73, 'Engg Hydorlogy,3E', 950, '2018-03-12 16:30:42'),
(71, 74, 'Electrical Machine Design', 1200, '2018-03-12 16:33:25'),
(72, 75, 'Elecronic Devices', 2500, '2018-03-12 16:36:11'),
(73, 76, 'Physics Text Book Part - 2 for Class - 12', 540, '2018-03-12 16:39:09'),
(74, 77, 'An Introduction to Indian Art Part 1', 240, '2018-03-12 16:48:30'),
(75, 78, 'Chemistry Textbook Part - 2 for Class - 12', 1320, '2018-03-12 16:51:33'),
(76, 79, 'Physics Text Book Part 1 for Class 12', 80, '2018-03-12 16:53:30'),
(77, 66, 'Data Structures with C', 9040, '2018-03-13 15:25:33'),
(78, 80, 'Oral Medicine and Radiology', 9000, '2018-03-13 15:52:55'),
(79, 77, 'An Introduction to Indian Art Part 1', 720, '2018-03-13 16:44:06'),
(80, 79, 'Physics Text Book Part 1 for Class 12', 960, '2018-03-13 16:44:26'),
(81, 69, 'Discrete Maths', 888, '2018-03-13 16:44:42'),
(82, 73, 'Engg Hydorlogy,3E', 1140, '2018-03-13 16:44:56'),
(83, 81, 'Data Structure (SIE)', 9980, '2018-03-25 22:07:49'),
(84, 82, 'Data Structure (SIE)', 12475, '2018-03-25 22:09:31'),
(85, 83, 'Operating System Principles', 10500, '2018-03-25 22:13:01'),
(86, 84, 'Compilers Principles Techniques and Tools', 9000, '2018-03-25 22:15:39'),
(87, 85, 'System Software: An Introduction to Systems Programming', 5460, '2018-03-25 22:17:45'),
(88, 86, 'Java: The Complete Reference', 15200, '2018-03-25 22:24:09'),
(89, 87, 'Signal and Systems', 10080, '2018-03-25 22:27:48'),
(90, 88, 'Digital Electronics', 6640, '2018-03-25 22:29:51'),
(91, 89, '	Microwave & Radar Engineering', 10100, '2018-03-25 22:32:12'),
(92, 90, 'Electrical Engineering', 7100, '2018-03-25 22:36:39'),
(93, 91, 'POWER SYSTEM ANALYSIS', 70000, '2018-03-25 22:38:36'),
(94, 92, 'Engineering Mechanics', 5076, '2018-03-25 22:42:47'),
(95, 93, 'Machine Design', 35950, '2018-03-25 22:45:49'),
(96, 94, 'Fluid Mechanics', 13250, '2018-03-25 22:47:57'),
(97, 95, 'Strength of Material', 12500, '2018-03-25 22:50:15'),
(98, 96, 'Physics Class 12th Part 2', 3600, '2018-03-25 22:52:37'),
(99, 97, 'An Introduction to Indian Arts class 11th', 6500, '2018-03-25 22:54:30'),
(100, 98, 'Chemistry Part 2 Class 12th ', 7500, '2018-03-25 22:56:07'),
(101, 99, 'Business Studies Part 1 class 12th', 3600, '2018-03-25 22:58:10'),
(102, 100, 'Financial Accounting', 28000, '2018-03-25 22:59:54'),
(103, 101, 'Human Analogy for Students', 25000, '2018-03-25 23:01:45'),
(104, 102, 'Mission MBA', 42500, '2018-03-25 23:03:29'),
(105, 103, 'Oral Medicine and Radiology', 25000, '2018-03-25 23:05:14'),
(106, 104, 'Chemistry Part 1 Class 12th ', 6000, '2018-03-27 22:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image-id` int(10) UNSIGNED NOT NULL,
  `image-name` varchar(255) NOT NULL,
  `product-name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image-id`, `image-name`, `product-name`) VALUES
(202, 'uploads/681632471978-93-5014-545-6.jpg', '	Microwave & Radar Engineering'),
(203, 'uploads/351930758978-93-5014-622-4.jpg', 'Electrical Engineering'),
(204, 'uploads/259976141978-93-5014-105-2.jpg', 'POWER SYSTEM ANALYSIS'),
(205, 'uploads/1790022419788184121810 (1).jpg', 'Engineering Mechanics'),
(206, 'uploads/49982155951Z0xA2EwFL._SX352_BO1,204,203,200_.jpg', 'Machine Design'),
(200, 'uploads/820362856Schaum-Signals_Systems.JPG', 'Signal and Systems'),
(201, 'uploads/740429986download.jpg', 'Digital Electronics'),
(199, 'uploads/71101366351QkOLwKuZL._SX399_BO1,204,203,200_.jpg', 'Java: The Complete Reference'),
(191, 'uploads/72693769151gOcNM4yDL._SX366_BO1,204,203,200_.jpg', 'Data Structure (SIE)'),
(192, 'uploads/96180465881HAMIBtAjL.jpg', 'Data Structure (SIE)'),
(193, 'uploads/457176469413Nwx4UyML._SX318_BO1,204,203,200_.jpg', 'Operating System Principles'),
(194, 'uploads/163871004815ZMtvzQ-L.jpg', 'Operating System Principles'),
(195, 'uploads/60290944141opySjIuqL._SX425_BO1,204,203,200_.jpg', 'Compilers Principles Techniques and Tools'),
(196, 'uploads/18145371451VNfgbqvFL._SX360_BO1,204,203,200_.jpg', 'System Software: An Introduction to Systems Programming'),
(207, 'uploads/67855817download (1).jpg', 'Fluid Mechanics'),
(208, 'uploads/71980954151x8LrqWuKL._SX258_BO1204203200_.jpg', 'Strength of Material'),
(209, 'uploads/81826548241gYORwoBqL._SX369_BO1,204,203,200_.jpg', 'Physics Class 12th Part 2'),
(210, 'uploads/11468425551d5SU4qV4L._SX379_BO1,204,203,200_.jpg', 'An Introduction to Indian Arts class 11th'),
(217, 'uploads/87899538151YBSXapfbL._SX379_BO1,204,203,200_.jpg', 'Chemistry Part 1 Class 12th '),
(212, 'uploads/41373197551LzM6-Oa0L._SX356_BO1,204,203,200_.jpg', 'Business Studies Part 1 class 12th'),
(213, 'uploads/31750793011165223391424168099.JPG', 'Financial Accounting'),
(214, 'uploads/483420189human-anatomy-for-students-original-imadg37qmhjtcpte.jpeg', 'Human Analogy for Students'),
(215, 'uploads/292458146mission-mba-original-imaewhjgwjyzrqnu.jpeg', 'Mission MBA'),
(216, 'uploads/404645678qrs-for-bds-4th-year-oral-medicine-radiology-original-imaegwj9zhkzcbd6.jpeg', 'Oral Medicine and Radiology'),
(218, 'uploads/64532052451YBSXapfbL._SX379_BO1,204,203,200_.jpg', 'Chemistry Part 1 Class 12th ');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('pending','approved','delivered') NOT NULL,
  `shippers_name` varchar(30) NOT NULL,
  `address` varchar(120) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `shippers_email` varchar(45) NOT NULL,
  `ordered_On` datetime NOT NULL,
  `total_order_price` double(10,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `status`, `shippers_name`, `address`, `mobile_number`, `shippers_email`, `ordered_On`, `total_order_price`) VALUES
(7, 607, 'delivered', 'John Cena', 'janakpuri', '7701925620', 'johncena@gmail.com', '2018-03-13 15:55:15', 300.00),
(8, 607, 'delivered', 'John Cena', 'janapuri', '7701925620', 'johncena@gmail.com', '2018-03-13 15:57:25', 452.00),
(9, 602, 'delivered', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI', '7701925620', 'kuldeeptomar21@gmail.com', '2018-03-26 02:52:31', 1259.00),
(10, 602, 'delivered', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI', '7701925620', 'kuldeeptomar21@gmail.com', '2018-03-26 02:54:36', 250.00),
(11, 602, 'delivered', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI', '7701925620', 'kuldeeptomar21@gmail.com', '2018-03-26 02:55:45', 1750.00),
(12, 602, 'delivered', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI', '7701925620', 'kuldeeptomar21@gmail.com', '2018-03-26 02:57:26', 850.00),
(13, 602, 'delivered', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI', '7701925620', 'kuldeeptomar21@gmail.com', '2018-03-26 03:00:39', 260.00),
(14, 608, 'approved', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI DELHI 110084', '8467878250', 'kuldeeptomar12@gmail.com', '2018-03-27 00:21:22', 499.00),
(15, 608, 'pending', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI DELHI 110084', '8467878250', 'kuldeeptomar12@gmail.com', '2018-03-27 00:21:43', 202.00),
(16, 608, 'pending', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI DELHI 110084', '8467878250', 'kuldeeptomar12@gmail.com', '2018-03-27 00:21:57', 760.00),
(17, 608, 'pending', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI DELHI 110084', '8467878250', 'kuldeeptomar12@gmail.com', '2018-03-27 00:22:07', 350.00),
(18, 608, 'delivered', 'Kuldeep Tomar', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI DELHI 110084', '8467878250', 'kuldeeptomar12@gmail.com', '2018-03-27 22:29:46', 499.00);

-- --------------------------------------------------------

--
-- Table structure for table `product-company`
--

CREATE TABLE `product-company` (
  `company-id` int(10) UNSIGNED NOT NULL,
  `company-name` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product-company`
--

INSERT INTO `product-company` (`company-id`, `company-name`) VALUES
(41, 'Pearson'),
(40, 'NCERT'),
(39, ' Elsevier Health Sciences'),
(38, 'Jaypee Brothers Medical Publihsers'),
(37, 'Petiwala Book Depot'),
(36, 'S. Chand'),
(35, 'Katson Books'),
(34, 'Wiley India Pvt. Ltd.'),
(33, 'McGraw-Hill Education'),
(46, 'Asians Books');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product-name` varchar(60) NOT NULL,
  `sub-category-name` varchar(40) NOT NULL,
  `category-name` varchar(40) NOT NULL,
  `company-name` varchar(40) NOT NULL,
  `price` double(10,2) UNSIGNED NOT NULL,
  `summary` text,
  `tags` varchar(255) NOT NULL,
  `product_qty` int(11) UNSIGNED NOT NULL,
  `lastUpdated` datetime NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product-name`, `sub-category-name`, `category-name`, `company-name`, `price`, `summary`, `tags`, `product_qty`, `lastUpdated`, `hits`) VALUES
(84, 'Compilers Principles Techniques and Tools', 'Computer/IT', 'Engineering ', 'Pearson', 300.00, 'Regarded as the classic definitive compiler technology text, Compilers Principles Techniques And Tools is a science textbook by Alfred V. Aho, Monica S. Lam, Ravi Sethi and D. Jeffrey Ullman.\r\n\r\nThe research and techniques that have been developed have led to this updated coverage of compilers. The book covers topics such as fine state machines, context-free grammars and syntax-directed translations. It also contains an introduction to the compiler design.\r\n\r\nCompilers Principles Techniques And Tools is affectionately known as the Dragon Book to a generation of computer scientists. The book was published in 2008 and is available in paperback.', 'Compilers ', 30, '2018-03-25 22:15:39', 3),
(85, 'System Software: An Introduction to Systems Programming', 'Computer/IT', 'Engineering ', 'Pearson', 260.00, 'In this third edition of his classic title, Leland Beck provides a complete introduction to the design and implementation of various types of system software. A core text for undergraduate/graduate software students, it stresses on the relationship between system software and the architecture of the machine it is designed to support, presenting the fundamental concepts of each type of software lucidly.', 'System Software', 20, '2018-03-25 22:17:45', 5),
(86, 'Java: The Complete Reference', 'Computer/IT', 'Engineering ', 'McGraw-Hill Education', 760.00, 'A step-by-step guide by the famous computing author Herbert Schildt, Java: The Complete Reference, Seventh Edition is an introductory book to Java. Whether a person is a rookie or a pro programmer, this book is for everyone. Introducing the readers to Java from the scratch to its importance and contribution to the web, the book has it all.\r\n\r\nThe book is a gateway to the entire Java language, which includes steps required to learn Java in the easiest way. The comprehensive edition is a treasure of detailed yet fast-paced introduction to Java, its syntax, keywords, and fundamental programming principles to help people master this computer language.\r\n\r\nOther perks include detailed information on main constituents of Java API library and demonstration of JavaBeans, servlets, applets, and Swing with live examples. The book is a detailed compilation of a list of Java key ingredients, like classes, methods, and APIs and step-by-step instructions to help readers learn assembling them in a complete code. Detailed code examples and conversations explain how and why each step is important.\r\n\r\nAbout the Author:\r\nA leading authority on computer programming languages, Herbert Schildt has authored numerous books on computer languages with over 3.5 million copies being sold worldwide. His books have been translated into many foreign languages.', 'Java', 18, '2018-03-25 22:24:09', 8),
(82, 'Data Structure (SIE)', 'Computer/IT', 'Engineering ', 'McGraw-Hill Education', 499.00, 'True to the ideology of the Schaumâ??s Outlines, the present version of this book includes the discussion onbasics of data structures supplemented with solved examples and programming problems. The classicand popular text is back with refreshed pedagogy and programming problems helps the students to havean upper hand on the practical understanding of the subject.', 'Data Structure ', 22, '2018-03-25 22:09:31', 18),
(83, 'Operating System Principles', 'Computer/IT', 'Engineering ', 'Wiley India Pvt. Ltd.', 350.00, 'Operating System Concept is the best-selling introduction in the market, continues to provide a solid theoretical foundation for understanding operating systems. The seventh edition has been updated to offer coverage of the most current topics and applications, improved conceptual coverage and additional content to bridge the gap between concepts and actual implementations. The new two-color design allows for easier navigation and motivation. New exercises, lab projects and review questions help to further reinforce important concepts.\r\nTable of Contents:\r\n\r\nPart I: Overview\r\n\r\nIntroduction\r\nSystem Structures\r\nPart II: Process Management\r\n\r\nProcess-Concept\r\nMultithreaded Programming\r\nProcess Scheduling\r\nPart III: Process Coordination\r\n\r\nSynchronization\r\nDeadlocks\r\nPart IV: Memory Management\r\n\r\nMemory-Management Strategies\r\nVirtual-Memory Management\r\nPart V: Storage Management\r\n\r\nFile System\r\nImplementing File Systems\r\nSecondary-Storage Structure\r\nI/O Systems\r\nPart VI: Distributed Systems\r\n\r\nDistributed Operating Systems\r\nDistributed File Systems\r\nDistributed System Structures\r\nPart VII: Protection and Security\r\n\r\nSystem Protection\r\nSystem Security\r\nPart VIII: Special-Purpose Systems\r\n\r\nReal-Time Systems\r\nMultimedia Systems\r\nThe Linux System\r\nWindows XP\r\nInfluential Operating Systems\r\nAppendix A: Unix BSD\r\nAppendix B: The Mach System\r\nAppendix C: Windows 2000', 'Operating System ', 29, '2018-03-25 22:13:01', 11),
(87, 'Signal and Systems', 'Electronics ', 'Engineering ', 'McGraw-Hill Education', 360.00, 'Contents:\r\nSignals and Systems\r\nLinear Time-Invariant Systems\r\nLaplace Transform and Continuous-Time LTI Systems\r\nThe z-Transform and Discrete-Time LTI Systems\r\nFourier Analysis of Continuous-Time Signals and Systems\r\nFourier analysis of Discrete-Time Signals and Systems\r\nState Space Analysis\r\nAppendix A. Review of Matrix Theory\r\nAppendix B. Properties of Linear Time-Invariant Systems and Various Transforms\r\nAppendix C. Review of Complex Numbers\r\nAppendix D. Useful Mathematical Formulas\r\n', 'Signal and Systems', 28, '2018-03-25 22:27:48', 0),
(88, 'Digital Electronics', 'Electronics ', 'Engineering ', 'Katson Books', 166.00, 'Unit I : Fundamental of Digital Techniques\r\nâ?¢ Fundamental of Digital Techniques\r\nUnit II : Combinational Design Using Gates\r\nâ?¢ Combinational Design using Gates\r\nUnit III : Combinational Design Using MSI Devices\r\nâ?¢ Combinational Design using MSI Devices\r\nUnit IV : Sequential Circuits\r\nâ?¢ Sequential Circuits\r\nUnit V : Digital Logic Families\r\nâ?¢ Digital Logic Families\r\nUnit VI : A/D Converter and D/A Converter\r\nâ?¢ A/D Converter and D/A Converter\r\nUnit VII : Programmable Logic Devices\r\nâ?¢ Programmable Logic Devices\r\nUnit VIII : Sequential Logic Design\r\nâ?¢ Sequential Logic Design\r\nExperiments\r\nPapers\r\nQuestion Bank\r\nModel Test Papers\r\nIndex', 'Digital Electronics', 40, '2018-03-25 22:29:51', 0),
(89, '	Microwave & Radar Engineering', 'Electronics ', 'Engineering ', 'Katson Books', 202.00, 'â?¢ Introduction to Microwave\r\nâ?¢ Microwave Devices\r\nâ?¢ Waveguides\r\nâ?¢ Microwave Components\r\nâ?¢ Microwave Antenna\r\nâ?¢ Microwave Communication System\r\nâ?¢ Radar\r\nâ?¢ Satellite Communication\r\nExperiments\r\nPrevious Year Question Papers\r\nIndex', '	Microwave & Radar Engineering', 49, '2018-03-25 22:32:12', 1),
(90, 'Electrical Engineering', 'Electrical', 'Engineering ', 'Jaypee Brothers Medical Publihsers', 355.00, 'Contents\r\n\r\nâ?¢ Introductory Concepts\r\nUnit-I: Electrical Circuit Analysis\r\nâ?¢ DC Circuit Analysis\r\nâ?¢ AC Fundamentals\r\nUnit-II: Steady-State Analysis of Single Phase AC Circuits\r\nâ?¢ Single Phase Series Circuits\r\nâ?¢ Complex Notations and Circuit Analysis\r\nâ?¢ Single Phase Parallel and Series-Parallel Circuits\r\nâ?¢ Resonance in R-L-C Circuits\r\nâ?¢ Network Theorems (DC and AC)\r\nUnit-III: Three-Phase AC Circuits and Measuring Instruments\r\nâ?¢ Three-Phase AC Circuits\r\nâ?¢ Measuring Instruments\r\nUnit-IV: Magnetic Circuits and Single-Phase Transformers\r\nâ?¢ Magnetic Circuits\r\nâ?¢ Single-Phase Transformers\r\nUnit-V: Electrical Machines\r\nâ?¢ DC Machines-I (Generators)\r\nâ?¢ DC Machines-II (Motors)\r\nâ?¢ Three-Phase Induction Motors\r\nâ?¢ Single-Phase Motors\r\nâ?¢ Three-Phase Synchronous Machines\r\nâ?¢ Experiments\r\nâ?¢ Examination Pa', 'Electrical Engineering', 20, '2018-03-25 22:36:39', 1),
(91, 'POWER SYSTEM ANALYSIS', 'Electrical', 'Engineering ', 'Katson Books', 350.00, 'Contents\r\n\r\nUnit-I : Representation of Power System Concepts\r\nâ?¢ Introductory\r\nâ?¢ Representation of Power System Components\r\nâ?¢ Symmetrical Components\r\nâ?¢ Symmetrical Fault Analysis\r\nUnit-II: Unsymmetrical Faults Analysis\r\nâ?¢ Unsymmetrical Faults Analysis\r\nUnit-III: Load Flows\r\nâ?¢ Load Flows\r\nUnit-IV: Power System Stability\r\nâ?¢ Power System Stability\r\nUnit-V : Travelling Waves\r\nâ?¢ Travelling Waves\r\nâ?¢ Protection Against Traveling Waves\r\nâ?¢ University Examination Papers\r\nâ?¢ Index', 'POWER SYSTEM ANALYSIS', 200, '2018-03-25 22:38:36', 0),
(92, 'Engineering Mechanics', 'Mechanical', 'Engineering ', 'Asians Books', 423.00, 'About The Books:-ENGINEERING MECHANICS STATICS AND DEYNAMIC S IS AN IDEAL TEXTBOOK DESIGNED ESSENTIALLY FOR ENGINEERING STUDENTS AND EACH HAS BEEN TREATED FROM THE FUNDAMENTALS PRINCIPLES AND HAS VCTORIAL CHAPTERS. THE BOOK HAS BEEN WRITTEN TO MEET A SYSTEMATIC CONSISTENT AND CLEAR ORESENTATIONS OF CONCEPTS THROUGH EXPLANATORY NOTES AND FIGURES AND WORKED OUT PROBLEMS. MECHANICS IS INHERENTLY A SUBJECT THAT DEPENDS ON GEOMETRIC AND PHYSICAL PERCEPTIONS AND EFFORTS HAVE BEENMADE TO DEVELOP THIS ABILITY . MOST OF THE WORKED OUT PROBLEMS HAVE FREE BODY DIAGRAMS SEPARATELY DRAWN WITH THE COORDINATE AXES. STRONG EFFORT HAS BEEN MADE TO SHOW BOTH THE COHESIVENESS OF THE RELATIVELY FEW FUNDAMENTALS IDEAS AND GREAT VARIETY OF PROBLEMS THAT THESE FEW IDEAS WILL SOLVE. THE AIM OF THIS BOOK IS TO DEVELOP IN THE ENGINEERING STUDENTS THE ADBILITY TO ANALYZE AND PROBLEM IN A SIMPLE AND LOGICAL MANNER AND THEM TO APPLY TO ITS SO9LUTION TO A FEW WELLUNDERSTOOD AND BASIC PRINCIPLES. GRADED UNSOLVED PROBLEMS ARE INCLUDED AT THE END OF EACH CHAPTER TO GIVE THE STUDENTS AN OPPORTUNITY TO CHECK THEIR PROGRESS.', 'Engineering Mechanics', 12, '2018-03-25 22:42:47', 0),
(93, 'Machine Design', 'Mechanical', 'Engineering ', 'S. Chand', 719.00, 'The person who designs the solution for different engineering problems has to go through the various stages of the design process to arrive at an optimal solution. â??A Textbook of Machine Designâ?? studies these design aspects with relevance to machines. It begins with an introduction to the machine design process and engineering materials (with their properties) and goes on to discuss major topics such as manufacturing considerations in machine design, simple stresses in machine parts and internal combustion engine parts. \r\nA book which has seen, foreseen and incorporated changes in the subject for close to 40 years, it continues to be one of the most sought after texts by the students while also helping professionals as well as aspirants of various entrance examinations to really grasp the core concepts of the subject.', 'Machine Design', 50, '2018-03-25 22:45:49', 0),
(94, 'Fluid Mechanics', 'Civil', 'Engineering ', 'Katson Books', 265.00, 'Contents\r\n\r\nâ?¢ Introduction\r\nâ?¢ Physical Properties of Fluids\r\nâ?¢ Fluid Statics\r\nâ?¢ Fluid Kinematics\r\nâ?¢ Fluid Dynamics (Momentum and Energy Principles)\r\nâ?¢ Dimensional Analysis and Model Similitude\r\nâ?¢ Potential Flow\r\nâ?¢ Laminar Viscous Flow\r\nâ?¢ Turbulence and Turbulent Flow through Pipes\r\nâ?¢ Laminar and Turbulent Boundary Layer Flows\r\nâ?¢ Flow Around Immersed Bodies: Drag and Lift\r\nâ?¢ Fluid Meaurements\r\nPrevious Year Question Papers\r\nIndex', 'Fluid Mechanics', 50, '2018-03-25 22:47:57', 0),
(95, 'Strength of Material', 'Civil', 'Engineering ', 'Katson Books', 250.00, 'To be filled later.', 'Strength of Material', 50, '2018-03-25 22:50:15', 0),
(96, 'Physics Class 12th Part 2', 'Science', 'School', 'NCERT', 120.00, 'To be filled later.', 'Physics Class 12th Part 2', 29, '2018-03-25 22:52:37', 1),
(97, 'An Introduction to Indian Arts class 11th', 'Arts', 'School', 'NCERT', 130.00, 'To be filled later.', 'An Introduction to Indian Arts class 11th', 49, '2018-03-25 22:54:30', 1),
(104, 'Chemistry Part 1 Class 12th ', 'Science', 'School', 'NCERT', 120.00, 'To be filled later.', 'Chemistry Part 1 Class 12th ', 50, '2018-03-27 22:45:16', 0),
(99, 'Business Studies Part 1 class 12th', 'Commerce', 'School', 'NCERT', 120.00, 'To be filled later.', 'Business Studies Part 1 class 12th', 30, '2018-03-25 22:58:10', 1),
(100, 'Financial Accounting', 'BBA', 'Management', 'Petiwala Book Depot', 560.00, 'To be filled later.', 'Financial Accounting', 50, '2018-03-25 22:59:54', 0),
(101, 'Human Analogy for Students', 'MBBS', 'Medical', 'Jaypee Brothers Medical Publihsers', 1250.00, 'To be filled later.', 'Human Analogy for Students', 19, '2018-03-25 23:01:45', 0),
(102, 'Mission MBA', 'MBA', 'Management', 'Petiwala Book Depot', 850.00, 'To be filled later.', 'Mission MBA', 49, '2018-03-25 23:03:29', 0),
(103, 'Oral Medicine and Radiology', 'BDS', 'Medical', ' Elsevier Health Sciences', 500.00, 'To be filled later.', 'Oral Medicine and Radiology', 49, '2018-03-25 23:05:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(10) UNSIGNED NOT NULL,
  `sold_on` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `sold_on`, `user_id`) VALUES
(4, 7, 67, 'Operating System Principles', 300.00, 1, '2018-03-13 15:55:15', 607),
(5, 8, 66, 'Data Structures with C', 452.00, 1, '2018-03-13 15:57:25', 607),
(6, 9, 82, 'Data Structure (SIE)', 499.00, 1, '2018-03-26 02:52:31', 602),
(7, 9, 86, 'Java: The Complete Reference', 760.00, 1, '2018-03-26 02:52:31', 602),
(8, 10, 96, 'Physics Class 12th Part 2', 120.00, 1, '2018-03-26 02:54:37', 602),
(9, 10, 97, 'An Introduction to Indian Arts class 11th', 130.00, 1, '2018-03-26 02:54:37', 602),
(10, 11, 101, 'Human Analogy for Students', 1250.00, 1, '2018-03-26 02:55:45', 602),
(11, 11, 103, 'Oral Medicine and Radiology', 500.00, 1, '2018-03-26 02:55:45', 602),
(12, 12, 102, 'Mission MBA', 850.00, 1, '2018-03-26 02:57:26', 602),
(13, 13, 85, 'System Software: An Introduction to Systems Programming', 260.00, 1, '2018-03-26 03:00:39', 602),
(14, 14, 82, 'Data Structure (SIE)', 499.00, 1, '2018-03-27 00:21:22', 608),
(15, 15, 89, '	Microwave & Radar Engineering', 202.00, 1, '2018-03-27 00:21:43', 608),
(16, 16, 86, 'Java: The Complete Reference', 760.00, 1, '2018-03-27 00:21:57', 608),
(17, 17, 83, 'Operating System Principles', 350.00, 1, '2018-03-27 00:22:07', 608),
(18, 18, 82, 'Data Structure (SIE)', 499.00, 1, '2018-03-27 22:29:46', 608);

-- --------------------------------------------------------

--
-- Table structure for table `sub-category`
--

CREATE TABLE `sub-category` (
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `sub-category_name` varchar(30) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub-category`
--

INSERT INTO `sub-category` (`subcategory_id`, `sub-category_name`, `category_name`) VALUES
(40, 'BDS', 'Medical'),
(39, 'MBBS', 'Medical'),
(34, 'Mechanical', 'Engineering '),
(33, 'Electrical', 'Engineering '),
(29, 'Science', 'School'),
(30, 'Computer/IT', 'Engineering '),
(27, 'Arts', 'School'),
(28, 'Commerce', 'School'),
(31, 'Civil', 'Engineering '),
(32, 'Electronics ', 'Engineering '),
(37, 'BBA', 'Management'),
(38, 'MBA', 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `registeredOn` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `pass`, `registeredOn`) VALUES
(607, 'johncena@gmail.com', 'e13ad9bbb16fad6d59fb336ab84ce058fc7e9f4a', '2018-03-13 15:40:03'),
(606, 'pradeeptomar@gmail.com', '108f05642d0ea6c18c06b555f89d8f2d4f87d394', '2018-03-13 00:25:13'),
(605, 'chaitanyasharma@gmail.com', 'eedca23d6a26d52a95f2399dc09d1e9f8526d08b', '2018-03-12 14:58:24'),
(604, 'tomarbhai21@gmail.com', '8f3ec57e39cda70cf1137630b5dc668e3af6254b', '2018-03-11 21:52:05'),
(603, 'ramkumar312@gmail.com', 'b783d9b627f7fdcc7e59d8338cfe010b62449ed6', '2018-03-06 14:56:16'),
(602, 'kuldeeptomar21@gmail.com', 'ffcee5d6a86f6d960316cecea2eb56387d7b9bc9', '2018-03-06 11:27:23'),
(601, 'abcde@gmail.com', 'e8fc1482d55b4324579a1150b72e7ddac9db9ddc', '2018-03-06 11:00:36'),
(1, 'kuldeeptomar07@gmail.com', 'kuldeeptomar07', '2018-03-03 00:00:00'),
(608, 'kuldeeptomar12@gmail.com', '09a489e46a780303e70c0641157502ba9f31e6ab', '2018-03-26 23:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `user-details`
--

CREATE TABLE `user-details` (
  `userDetail_Id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `userImage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user-details`
--

INSERT INTO `user-details` (`userDetail_Id`, `user_id`, `username`, `mobile_no`, `address`, `gender`, `userImage`) VALUES
(1, 1, 'Kuldeep Tomar', '8467878250', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE Burari Delhi 110084', 'male', ''),
(2, 602, 'Kuldeep Tomar', '7701925620', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI', 'male', ''),
(3, 601, 'Vasu', '8010801178', 'badli delhi', 'male', ''),
(4, 603, 'Ram Kumar', '895623147', 'sonipat', 'male', ''),
(5, 606, 'Pradeep', '9821131598', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI', 'male', ''),
(6, 607, 'John Cena', '7701925620', 'janapuri', 'male', ''),
(7, 608, 'Kuldeep Tomar', '8467878250', 'H NO 68A B BLOCK GALI NO 20 KAUSHIK ENCLAVE BURARI DELHI 110084', 'male', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenses_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image-id`),
  ADD UNIQUE KEY `image-name` (`image-name`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product-company`
--
ALTER TABLE `product-company`
  ADD PRIMARY KEY (`company-id`),
  ADD UNIQUE KEY `company-name` (`company-name`),
  ADD UNIQUE KEY `company-name_2` (`company-name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product-name` (`product-name`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sub-category`
--
ALTER TABLE `sub-category`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD UNIQUE KEY `sub-category_name` (`sub-category_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user-details`
--
ALTER TABLE `user-details`
  ADD PRIMARY KEY (`userDetail_Id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenses_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image-id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product-company`
--
ALTER TABLE `product-company`
  MODIFY `company-id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sub-category`
--
ALTER TABLE `sub-category`
  MODIFY `subcategory_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;

--
-- AUTO_INCREMENT for table `user-details`
--
ALTER TABLE `user-details`
  MODIFY `userDetail_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
