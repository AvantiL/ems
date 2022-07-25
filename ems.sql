-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 13.127.197.30
-- Generation Time: May 22, 2022 at 08:13 AM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int NOT NULL,
  `sevarth_id` varchar(100) NOT NULL,
  `date` varchar(12) NOT NULL,
  `description` varchar(200) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `application` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `hod_id` varchar(20) NOT NULL,
  `registrar_id` varchar(20) NOT NULL,
  `principal_id` varchar(20) NOT NULL,
  `status_id` varchar(11) NOT NULL,
  `application_type` varchar(5) NOT NULL,
  `to_dept` varchar(20) NOT NULL,
  `from_dept` varchar(20) NOT NULL,
  `applicant_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `sevarth_id`, `date`, `description`, `remark`, `application`, `title`, `hod_id`, `registrar_id`, `principal_id`, `status_id`, `application_type`, `to_dept`, `from_dept`, `applicant_name`) VALUES
(25, '123456789015', '2023-06-14', 'I am tester, but i want to apply for application.', '', 'Practical_2.1.pdf', 'Tester here.', '123456789013', '976789789987', '123456789012', '1', 'on', '', '', ''),
(26, '123456789015', '21-5-2022', 'desc', 'null', '0147.pdf', 'partb', '123456789013', '976789789987', '123456789012', '1', '1', '', '', ''),
(27, '123456789015', '2022-05-04', 'desc', 'dummy%20remark', 'ems_(2).sql', 'titlle', '123456789013', '976789789987', '123456789012', '1', 'on', '', '', ''),
(28, '123456789015', '2022-05-04', 'description', 'decline', 'ems_(2)1.sql', 'current ', '123456789013', '976789789987', '123456789012', '5', 'on', '', '', ''),
(30, '123456789015', '28-5-2022', 'djdj', 'sdfsd', '171155.pdf', 'traing', '123456789013', '976789789987', '123456789012', '2', '1', '', '', ''),
(31, '123456789765', '2022-05-21', 'gygduigiulqwd', 'Applied Application', '19CM019_Application4.pdf', 'cleanliness', 'GPAMTCM001', '976789789987', 'GPAMTOF001', '1', '1', '1', '1', 'sahil'),
(32, '123456789765', '2022-05-21', 'now', 'Applied Application', '19CM019_Application5.pdf', 'Ghusarkar', '178263567', 'not found', 'not found', '1', '1', '2', '1', 'Ajinkya'),
(33, 'GPAMTCM001', '2022-05-21', 'now', 'Applied Application', '', 'applying', 'GPAMTCM001', '976789789987', 'GPAMTOF001', '1', '1', '1', '1', 'Farhan'),
(34, 'GPAMTCM001', '2022-05-21', 'now', 'Applied Application', '', 'haoo', '567894123123', '976789789987', 'GPAMTOF001', '1', '1', '1', '1', 'sahil asole'),
(35, 'GPAMTCM001', '2022-05-21', 'now', 'Applied Application', '', 'haoo', '567894123123', '976789789987', 'GPAMTOF001', '1', '1', '1', '1', 'sahil asole'),
(36, '123456789765', '2022-05-21', 'now', 'Applied Application', '19CM019_Application6.pdf', 'applyingCM', '567894123123', '976789789987', '123654789963', '1', '1', '1', '1', 'farhan');

-- --------------------------------------------------------

--
-- Table structure for table `applications_status`
--

CREATE TABLE `applications_status` (
  `id` int NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications_status`
--

INSERT INTO `applications_status` (`id`, `status`) VALUES
(1, 'APPLIED'),
(2, 'APPROVED BY HOD'),
(3, 'APPROVED BY REGISTRAR'),
(4, 'APPROVED BY PRINCIPAL'),
(5, 'Declined By Hod'),
(6, 'Declined By Registrar'),
(7, 'Declined By Principle'),
(8, 'Applied By Hod'),
(9, 'Applied By Principal'),
(10, 'Applied By Registrar');

-- --------------------------------------------------------

--
-- Table structure for table `auth_key`
--

CREATE TABLE `auth_key` (
  `id` int NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_key`
--

INSERT INTO `auth_key` (`id`, `value`) VALUES
(1, 'KEY');

-- --------------------------------------------------------

--
-- Table structure for table `cs_distribution`
--

CREATE TABLE `cs_distribution` (
  `Product_ID` int NOT NULL,
  `qty_distributed` int NOT NULL,
  `date_distributed` date NOT NULL,
  `head_initials` char(30) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cs_distribution`
--

INSERT INTO `cs_distribution` (`Product_ID`, `qty_distributed`, `date_distributed`, `head_initials`, `product_name`) VALUES
(1, 3, '2022-05-26', 'Mechanical', 'Laptop'),
(1, 4, '2022-05-20', 'Computer', ' Laptop'),
(1, 3, '2022-05-21', 'Computer', ' Laptop'),
(1, 1, '2022-06-22', 'IT', ' Laptop'),
(2, 5, '2022-06-09', 'Computer', ' AC'),
(1, 1, '2022-06-17', 'Computer', ' Laptop'),
(1, 1, '2022-06-09', 'Mechanical', ' Laptop'),
(1, 2, '2022-06-03', 'Electronics', ' Laptop'),
(3, 5, '2022-06-09', 'Boys Hostel', ' Projectors'),
(3, 4, '2022-05-30', 'Girls Hostel', ' Projectors'),
(3, 3, '2022-06-09', 'Office', ' Projectors'),
(3, 4, '2022-06-02', 'Library', ' Projectors'),
(3, 3, '2022-06-02', 'Electrical', ' Projectors'),
(3, 4, '2022-06-04', 'Plastic Polymer', ' Projectors'),
(3, 2, '2022-05-31', 'Civil', ' Projectors'),
(3, 2, '2022-06-03', 'Pharmacy', ' Projectors'),
(1, 1, '2022-05-29', 'Electrical', ' Laptop'),
(1, 1, '2022-05-22', 'IT', ' Laptop'),
(1, 1, '2022-06-12', 'Chemical', ' Laptop'),
(2, 5, '2022-05-26', 'Library', ' AC');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int NOT NULL,
  `dept_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`) VALUES
(1, 'CM'),
(2, 'IT'),
(3, 'ME'),
(4, 'EXTC'),
(5, 'CE'),
(6, 'EE'),
(7, 'PP');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `sevarth_id` varchar(12) NOT NULL,
  `org_id` int DEFAULT NULL,
  `dept_id` varchar(10) DEFAULT NULL,
  `role_id` varchar(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `hint_question` varchar(200) NOT NULL,
  `hint_answer` varchar(200) NOT NULL,
  `is_verified` varchar(3) NOT NULL DEFAULT '0',
  `hod_id` varchar(12) NOT NULL,
  `principle_id` varchar(12) NOT NULL,
  `director_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`sevarth_id`, `org_id`, `dept_id`, `role_id`, `email`, `password`, `name`, `hint_question`, `hint_answer`, `is_verified`, `hod_id`, `principle_id`, `director_id`) VALUES
('-1', -1, '-1', '-1', 'admin@gmail.com', 'adminpassword', 'admin', 'admin question', 'admin answer', '1', '-1', '-1', ''),
('123456789013', 1, '3', '2', 'hodmech@gmail.com', 'hodmech', 'HODMECH', 'what is your name?', 'hod', '1', '-1', '123456789012', '444444444444'),
('123456789123', 1, '1', '-1', 'emp@gmail.com', 'emppass', 'emp', 'WHAT IS YOUR NAME?', 'emp', '1', '-1', '-1', ''),
('123456789765', 1, '1', '-1', 'employee123@gmail.com', 'employee123', 'employee', 'what is your name?', 'emp', '1', '-1', '-1', ''),
('123456987456', 1, '1', '1', 'empp@gmail.com', 'emppass', 'empp', 'WHAT IS YOUR NAME?', 'employee', '1', '567894123123', 'GPAMTOF001', '444444444444'),
('123654789852', 1, '1', '-1', 'principal1@gmail.com', 'principalpass', 'Principal', 'WHAT IS YOUR NAME?', 'principal', '1', '-1', '-1', ''),
('123654789963', 1, '1', '3', 'principal2@gmail.com', 'password', 'Principal', 'WHAT IS YOUR NAME', 'principal', '1', '-1', '-1', ''),
('178263567', 1, '2', '2', 'hodit@gmail.com', 'hodit', 'hodit', 'what is your name?', 'hodit', '1', '-1', '2134567890', '6666666666'),
('444444444444', 1, '1', '6', 'director@gmail.com', 'director', 'Director', 'what is your name?', 'director', '1', '-1', '-1', ''),
('567894123123', 1, '1', '2', 'hodd@gmail.com', 'hodpass', 'hod', 'WHAT IS YOUR NAME', 'hod', '1', '-1', 'GPAMTOF001', '444444444444'),
('777777777777', 1, '1', '5', 'jointdirector@gmail.com', 'jointdirector', 'joint_director', 'what is your name?', 'jointdirector', '1', '-1', '-1', ''),
('786904532664', 1, '1', '-1', 'neha123@gmail.com', 'neha34', 'neha', 'WHAT IS YOUR NAME?', 'neha', '1', '-1', '-1', ''),
('786904532667', 1, '1', '-1', 'employe123@gmail.com', 'emp123', 'emp', 'WHAT IS YOUR NAME?', 'emp', '1', '-1', '-1', ''),
('976789789987', 1, '1', '4', 'regitrar@gmail.com', 'registrar', 'Registrar', 'what is your name?', 'Registrar', '1', '-1', '-1', ''),
('GPA456789234', 1, '1', '1', 'abhijet@gmail.com', 'abhijet', 'abhijet', 'what is your name?', 'abhijet', '1', 'GPAMTCM001', 'GPAMTOF001', '444444444444'),
('GPAMTCM001', 1, '1', '2', 'hodcm@gmail.com', 'hodcm', 'P.R.Satav', 'what is your name?', 'hodcom', '1', '-1', '123456789012', '55555555555'),
('GPAMTCM005', 1, '1', '1', 'employee@gmail.com', 'employee', 'Steve Smith', 'WHAT IS YOUR NAME?', 'employee', '1', '123456789014', '123456789012', '444444444444'),
('GPAMTOF001', 1, '1', '3', 'principal@gmail.com', 'principal', 'V R Mankar', 'what is your name?', 'Principle', '1', '-1', '-1', '444444444444');

-- --------------------------------------------------------

--
-- Table structure for table `employees_details`
--

CREATE TABLE `employees_details` (
  `id` int NOT NULL,
  `sevarth_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `qualification` varchar(25) NOT NULL,
  `department_id` varchar(100) NOT NULL,
  `cast` varchar(15) NOT NULL,
  `subcast` varchar(15) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `retirement_date` varchar(20) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `pan_no` varchar(15) NOT NULL,
  `blood_grp` varchar(5) NOT NULL,
  `identification_mark` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `alternative_contact_no` varchar(20) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pin_code` varchar(20) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `org_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees_details`
--

INSERT INTO `employees_details` (`id`, `sevarth_id`, `first_name`, `middle_name`, `last_name`, `dob`, `qualification`, `department_id`, `cast`, `subcast`, `designation`, `retirement_date`, `experience`, `aadhar_no`, `pan_no`, `blood_grp`, `identification_mark`, `photo`, `contact_no`, `alternative_contact_no`, `address`, `city`, `pin_code`, `state`, `country`, `gender`, `org_id`) VALUES
(19, '123456789015', 'jack', 'james', 'william', '1978-06-17', '', '1', 'OPEN', 'OPEN', '345ep', '2022-05-28', '', '213456798654', 'abcd123456', 'A+', 'XYZ', '', '9021808433', '9021808433', 'XYZ', 'AMRAVATI', '444605', 'MAHARASHTRA', 'INDIA', 'male', '1'),
(20, 'GPAMTOF001', 'Abhishek', 'B', 'Wankhade', '21-5-1995', 'SELECTION GRADE', '', 'indian', 'indian', 'Principal', '2045', '20', '2580973416', 'abc123456789', 'o+', 'til', '', '9307801730', '9307801730', 'gpa amravati', 'Amravati', '444603', 'Maharashtra', 'India', 'Male', ''),
(21, 'GPAMTCM001', 'Abhinav', 'Dinesh', 'Kale', '12-4-1995', 'P.H.D ', '', 'Abc', 'abs', 'HOD', '2055', '5', '971184082', '22456771334', 'AB+', 'Healthy ', '', '9146510960', '9146510960', 'Gadge nagar , Amravti , Maharashtra ', 'Pusad', '444604', 'Maharashtra', 'India', 'Male', ''),
(22, 'GPA456789234', 'Abhijet', 'Suresh', 'Wankhade', '21-5-1999', 'M.  Tech', '', 'Indian', 'Hindu', 'employee', '2059', '5', '426359752583', '13578897899', 'A+', 'Healthy ', '', '9146510960', '9146510960', 'Amravati , Maharashtra', 'Pusad', '444705', 'Maharashtra', 'India', 'Male', ''),
(23, 'GPAMTCM005', 'Vaibhav', 'Ganesh', 'Jadhav', '21-5-1998', 'M. Tech', '', 'Indian', 'Hindu', 'employee', '2058', '8', '256348528374', '157897543689', 'A+', 'Tall', '', '9146510960', '9146510960', 'Rathi Nagar , Amravati, Maharashtra ', 'Pusad', '444604', 'Maharashtra', 'India', 'Male', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `sevarth_id` varchar(50) NOT NULL,
  `org_id` int NOT NULL,
  `joining_date` date DEFAULT NULL,
  `leaving_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `id` int NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forgot_password`
--

INSERT INTO `forgot_password` (`id`, `question`, `answer`, `emp_id`) VALUES
(1, 'What is your pet name?', 'moti', '');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `status` int NOT NULL DEFAULT '0',
  `Id` int NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Middlename` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Age` int NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `DOJ` date NOT NULL,
  `EmployeeCode` varchar(255) NOT NULL,
  `Branch` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Taluka` varchar(255) NOT NULL,
  `Village` varchar(255) NOT NULL,
  `Pincode` int NOT NULL,
  `Probession` date NOT NULL,
  `GRNo` int NOT NULL,
  `InstituteName` varchar(255) NOT NULL,
  `ServiceStartDate` varchar(255) NOT NULL,
  `ServiceEndDate` varchar(255) NOT NULL,
  `Proof` varchar(255) NOT NULL,
  `TrainingName` varchar(255) NOT NULL,
  `SponsoredBy` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Duration` varchar(255) NOT NULL,
  `StartDate` varchar(255) NOT NULL,
  `EndDate` varchar(255) NOT NULL,
  `CRStartDate` varchar(255) NOT NULL,
  `CREndDate` varchar(255) NOT NULL,
  `Grade` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`status`, `Id`, `Surname`, `Firstname`, `Middlename`, `Email`, `Phone`, `Designation`, `DOB`, `Age`, `Gender`, `DOJ`, `EmployeeCode`, `Branch`, `Address`, `State`, `City`, `Taluka`, `Village`, `Pincode`, `Probession`, `GRNo`, `InstituteName`, `ServiceStartDate`, `ServiceEndDate`, `Proof`, `TrainingName`, `SponsoredBy`, `Type`, `Duration`, `StartDate`, `EndDate`, `CRStartDate`, `CREndDate`, `Grade`, `text`) VALUES
(1, 1, 'patil', 'Arpit', 'Jaivant', 'arpitpatilap122833@gmail.com', '8788', 'Computer', '0000-00-00', 0, '', '0000-00-00', '', '', '', '', '', '', '', 0, '0000-00-00', 0, '', '', '', 'Logo_10.png', '', '', '', '', '', '', '', '', '', 'rejected by principal'),
(0, 2, 'patil', 'Arpit', 'Jaivant', 'arpitpatilap122833@gmail.com', '8788', 'Computer', '2000-12-24', 0, '', '0000-00-00', '', '', '', '', '', '', '', 0, '0000-00-00', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `leave_application`
--

CREATE TABLE `leave_application` (
  `application_id` int NOT NULL,
  `sevarth_id` varchar(50) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `leave_type` varchar(100) DEFAULT NULL,
  `leave_reason` varchar(100) DEFAULT NULL,
  `leave_status` varchar(15) DEFAULT 'Pending',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `duration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_application`
--

INSERT INTO `leave_application` (`application_id`, `sevarth_id`, `full_name`, `leave_type`, `leave_reason`, `leave_status`, `start_date`, `end_date`, `duration`) VALUES
(9, '123456789013', 'Tony Howard Stark ', 'Casual Leave', 'hhh', 'Approved', '2022-05-20', '2022-05-26', 7),
(10, '123456789013', 'Tony Howard Stark ', 'Casual Leave', 'hjhj', 'Rejected', '2022-05-20', '2022-05-21', 2),
(11, '123456789013', 'Tony Howard Stark ', 'Casual Leave', 'hv,jh', 'Rejected', '2022-05-21', '2022-05-28', 8),
(12, '123456789013', 'Tony Howard Stark ', 'Casual Leave', 'ghcgh', 'Rejected', '2022-05-21', '2022-05-25', 5),
(13, '123456789013', 'Tony Howard Stark ', 'Casual Leave', 'kkkk', 'Rejected', '2022-05-20', '2022-05-24', 5),
(14, '123456789013', 'Tony Howard Stark ', 'Casual Leave', 'gmcmh', 'Rejected', '2022-05-20', '2022-05-23', 4),
(15, '123456789013', 'Tony Howard Stark ', 'Encashment Leave', 'kkkkk', 'Approved', '2022-05-20', '2022-05-24', 5),
(16, '123456789013', 'Tony Howard Stark ', 'Casual Leave', 'saxasc', 'Rejected', '2022-05-21', '2022-05-27', 7),
(18, '123456789015', 'Om Ganesh Panchwate ', 'Encashment Leave', 'lllll', 'Rejected', '2022-05-21', '2022-05-24', 4),
(19, '123456789015', 'Om Ganesh Panchwate ', 'Encashment Leave', 'ascsc', 'Approved', '2022-05-21', '2022-05-24', 4),
(20, '123456789014', 'Ayush Shashikant Bulbule ', 'Encashment Leave', 'hbv h', 'Approved', '2022-05-21', '2022-05-26', 6),
(21, '123456789015', 'Om Ganesh Panchwate ', 'Casual Leave', 'www', 'Rejected', '2022-05-21', '2022-05-21', 1),
(23, '123456789015', 'Om Ganesh Panchwate ', 'Encashment Leave', 'hchcj', 'Pending', '2022-05-21', '2022-05-24', 4),
(24, 'GPAMTCM005', 'Steve Smith ', 'Casual Leave', 'ghgj', 'Pending', '2022-05-23', '2022-05-25', 3),
(25, 'GPAMTCM005', 'Steve Smith  ', 'Casual Leave', 'casual ', 'Pending', '2022-05-21', '2022-05-24', 4),
(26, 'GPAMTCM005', 'Steve Smith  ', 'Casual Leave', 'casual ', 'Pending', '2022-05-22', '2022-05-27', 6),
(27, 'GPAMTCM005', 'Steve Smith  ', 'Casual Leave', 'casual ', 'Pending', '2022-05-22', '2022-05-27', 6),
(28, 'GPAMTCM005', 'Steve Smith  ', 'Encashment Leave', '  hkbk', 'Pending', '2022-05-21', '2022-05-21', 1),
(29, 'GPAMTCM005', 'Steve Smith  ', 'Encashment Leave', 'ncgn', 'Pending', '2022-05-21', '2022-05-29', 9),
(30, 'GPAMTCM005', 'Steve Smith  ', 'Encashment Leave', 'ncgn', 'Pending', '2022-05-21', '2022-05-29', 9),
(31, 'GPAMTCM005', 'Steve Smith  ', 'Encashment Leave', 'ncgn', 'Pending', '2022-05-21', '2022-05-29', 9),
(32, 'GPAMTCM005', 'Steve Smith  ', 'Encashment Leave', 'dvrrv', 'Pending', '2022-05-27', '2022-05-29', 3),
(33, 'GPAMTCM005', 'Steve Smith  ', 'Encashment Leave', 'dvrrv', 'Pending', '2022-05-27', '2022-05-29', 3),
(34, 'GPAMTCM005', 'Steve Smith  ', 'Encashment Leave', 'uukjbvfd', 'Pending', '2022-05-21', '2022-05-22', 2),
(35, 'GPAMTCM005', 'Steve Smith  ', 'Encashment Leave', 'ncgn', 'Pending', '2022-05-21', '2022-05-29', 9),
(36, 'GPAMTCM005', 'Steve Smith  ', 'Casual Leave', 'hjvhj', 'Pending', '2022-05-22', '2022-05-29', 8),
(37, 'GPAMTCM001', 'P.R.Satav ', 'Encashment Leave', 'nn b', 'Approved', '2022-05-21', '2022-05-25', 5),
(38, 'GPAMTCM005', 'Steve Smith  ', 'Casual Leave', 'dsdjhghh', 'Approved', '2022-05-22', '2022-05-25', 4),
(39, 'GPAMTCM005', 'Steve Smith  ', 'casual', 'jb', 'Pending', '2022-05-21', '2022-05-29', 9),
(40, 'GPAMTCM005', 'Steve Smith  ', 'casual', 'jnb', 'Pending', '2022-05-21', '2022-05-22', 2),
(41, 'GPAMTCM005', 'Steve Smith  ', 'casual', 'b', 'Pending', '2022-05-21', '2022-05-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_available`
--

CREATE TABLE `leave_available` (
  `sevarth_id` varchar(255) NOT NULL,
  `Casual Leave` varchar(255) DEFAULT NULL,
  `Encashment Leave` varchar(255) DEFAULT NULL,
  `training leave` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_available`
--

INSERT INTO `leave_available` (`sevarth_id`, `Casual Leave`, `Encashment Leave`, `training leave`) VALUES
('123456789013', '39', '37', '25'),
('GPAMTCM001', '33', '27', '25'),
('GPAMTCM005', '24', '20', '25');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `leave_id` int NOT NULL,
  `leave_type` varchar(100) NOT NULL,
  `leave_description` varchar(255) NOT NULL,
  `total_leaves` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`leave_id`, `leave_type`, `leave_description`, `total_leaves`, `start_date`, `end_date`) VALUES
(1, 'Casual Leave', 'just casual', 52, '2022-05-20', '2023-05-20'),
(2, 'Encashment Leave', 'EL', 42, '2022-05-20', '2023-05-20'),
(4, 'training leave', 'vhbs', 25, '2022-05-21', '2023-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `master_cs`
--

CREATE TABLE `master_cs` (
  `Oraganization_ID` varchar(20) NOT NULL,
  `DSR_no` int NOT NULL,
  `Product_ID` int NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_authority` char(50) NOT NULL,
  `supplier_name` char(100) NOT NULL,
  `Supplier_Address` char(255) NOT NULL,
  `product_name` char(100) NOT NULL,
  `product_desc` char(255) NOT NULL,
  `qty` int NOT NULL,
  `Price_Per_Quantity` double NOT NULL,
  `Quantity_Distributed` int NOT NULL,
  `remarks` char(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `last_edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` double GENERATED ALWAYS AS ((`qty` * `Price_Per_Quantity`)) VIRTUAL,
  `qty_remaining` int GENERATED ALWAYS AS ((`qty` - `Quantity_Distributed`)) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_cs`
--

INSERT INTO `master_cs` (`Oraganization_ID`, `DSR_no`, `Product_ID`, `purchase_date`, `purchase_authority`, `supplier_name`, `Supplier_Address`, `product_name`, `product_desc`, `qty`, `Price_Per_Quantity`, `Quantity_Distributed`, `remarks`, `last_edited`) VALUES
('1001', 1, 1, '2022-05-20', 'Principal', 'Maroon 5', 'Los Angeles', 'Laptop', 'Dell Laptop', 20, 70000, 18, 'None', '2022-05-19 17:52:49'),
('1002', 1, 2, '2022-05-18', 'DTE', 'Arijit Singh', 'Mumbai', 'AC', 'Godrej AC', 50, 70000, 10, 'None', '2022-05-19 19:49:53'),
('1001', 1, 3, '2022-05-28', 'Principal', 'Akshay Shah', 'Pune', 'Projectors', 'HP Projectors', 27, 10000, 27, 'None', '2022-05-20 15:08:29'),
('1004', 1, 4, '2022-05-27', 'DTE', 'Emma Watson', 'England', 'Speakers', 'iBall Speakers', 30, 4000, 0, 'None', '2022-05-20 15:18:03'),
('1005', 4, 5, '2022-05-21', 'Principal', 'Abhijeet', 'Amt', 'Laptop', 'HP Laptop', 5, 10000, 0, 'none', '2022-05-21 11:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `nominee`
--

CREATE TABLE `nominee` (
  `nominee_id` int NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `middle_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `qualification` varchar(150) NOT NULL,
  `aadhar` varchar(200) NOT NULL,
  `pan` varchar(50) NOT NULL,
  `blood_grp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_table`
--

CREATE TABLE `notification_table` (
  `sr_no` int NOT NULL,
  `message` varchar(255) NOT NULL,
  `msg_from` varchar(70) NOT NULL,
  `msg_to` varchar(70) NOT NULL,
  `view_details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_table`
--

INSERT INTO `notification_table` (`sr_no`, `message`, `msg_from`, `msg_to`, `view_details`) VALUES
(1, 'Request for 20 computers', 'Computer', 'Principle', 'Request to 20 computers from computer department to IT department'),
(2, 'Request for 5 Coolers', 'Computer', 'Principle', 'For Labs'),
(5, '5 computers', 'IT', 'computer', 'none'),
(6, '10 Water Cooler', 'Computer', 'Principle', 'For Computer Department'),
(7, 'Wireless Keyboards', 'IT', 'Principle', 'For Programming Labs'),
(8, '5 Projectors', 'Computer', 'electronics', 'For Teaching Purpose'),
(9, '2 Cup Tea', 'IT', 'computer', 'Mithi chai with adrak'),
(10, 'pc', 'Computer', 'mechanical', '2 pc'),
(11, 'Request for 5 PC', 'Computer', 'computer', 'For Practical Labs'),
(12, 'Request for 2 Projectors', 'Computer', 'computer', 'For Teaching Purpose'),
(13, 'Request for 3 Laptops', 'Computer', 'Principle', 'For Staff use');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `org_id` int NOT NULL,
  `org_name` varchar(100) DEFAULT NULL,
  `organization_type` int DEFAULT NULL,
  `department_counts` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`org_id`, `org_name`, `organization_type`, `department_counts`) VALUES
(1, 'Government Polytechnic Amravati', 1, 10),
(2, 'Government Polytechnic, Arvi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organization_type`
--

CREATE TABLE `organization_type` (
  `type_id` int NOT NULL,
  `type_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organization_type`
--

INSERT INTO `organization_type` (`type_id`, `type_name`) VALUES
(1, 'INSTITUTE');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `email`, `otp`) VALUES
(1, 'arpitpatilap122833@gmail.com', 479108);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` varchar(20) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
('-1', 'Admin'),
('1', 'Employee'),
('2', 'Head of Department'),
('3', 'Principle'),
('4', 'Registrar'),
('5', 'Joint Director'),
('6', 'Director'),
('7', 'Faculty'),
('8', 'Non Teaching Officials'),
('9', 'Non Teaching Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id` int NOT NULL,
  `sevarth_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `start_date` varchar(20) DEFAULT NULL,
  `end_date` varchar(20) DEFAULT NULL,
  `org_name` varchar(100) NOT NULL,
  `organized_by` varchar(200) NOT NULL,
  `apply_letter` varchar(200) NOT NULL,
  `comp_certificate` varchar(200) NOT NULL,
  `training_status_id` int NOT NULL,
  `hod_id` varchar(15) NOT NULL,
  `principal_id` varchar(15) NOT NULL,
  `training_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id`, `sevarth_id`, `name`, `duration`, `start_date`, `end_date`, `org_name`, `organized_by`, `apply_letter`, `comp_certificate`, `training_status_id`, `hod_id`, `principal_id`, `training_type`) VALUES
(56, '125412541254', 'employeeApplyHod1', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 1, '123456789013', '123456789012', '1'),
(57, '125412541254', 'employeeApplyHOD2', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 1, '123456789013', '123456789012', '1'),
(58, '125412541254', 'employeeApplyPrincipal1', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 2, '123456789013', '123456789012', '1'),
(59, '125412541254', 'employeeApplyPrincipal2', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 2, '123456789013', '123456789012', '1'),
(60, '125412541254', 'employeeApprovedPrincipal1', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 5, '123456789013', '123456789012', '1'),
(61, '125412541254', 'employeeApprovedPrincipal2', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 5, '123456789013', '123456789012', '1'),
(62, '125412541254', 'employeeApprovedHOD1', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 3, '123456789013', '123456789012', '1'),
(63, '125412541254', 'employeeApprovedHOD2', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 3, '123456789013', '123456789012', '1'),
(64, '125412541254', 'employeeDeclineHod1', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 4, '123456789013', '123456789012', '1'),
(65, '125412541254', 'employeeDeclineHOD2', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 4, '123456789013', '123456789012', '1'),
(66, '125412541254', 'employeeDeclinePrincipal1', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 6, '123456789013', '123456789012', '1'),
(67, '125412541254', 'employeeDeclinePrincipal2', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '', 6, '123456789013', '123456789012', '1'),
(68, '125412541254', 'employeeCompleted1', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '71.pdf', 7, '123456789013', '123456789012', '1'),
(69, '125412541254', 'employeeCompleted2', '56', '11-5-2022', '11-5-2022', 'jskdk', 'hdjdj', '171737.pdf', '25.pdf', 7, '123456789013', '123456789012', '1'),
(71, '125412541254', 'new apply training', '20', '11-05-2022', '11-05-2022', 'Organization Name', 'BY', 'ems_(5)1.sql', '', 1, '123456789013', '123456789012', '1'),
(72, '125412541254', 'completed training', '20', '2-0-2', '2-0-2', 'Organization Name', 'BY', '', 'ems_(5).sql', 7, '123456789013', '123456789012', '1'),
(73, '123456789014', 'parth Taglpallewar', '67', '20-05-2022', '20-05-2022', 'Organization Name', 'BY', '', '', 2, '-1', '123456789012', '1'),
(74, '123456789014', 'parth Taglpallewar', '67', '20-05-2022', '20-05-2022', 'Organization Name', 'BY', '', '', 2, '-1', '123456789012', '1'),
(75, '123456789014', 'parth Taglpallewar', '67', '20-05-2022', '20-05-2022', 'Organization Name', 'BY', '', '', 2, '-1', '123456789012', '1'),
(76, '123456789014', 'parth Taglpallewar', '67', '20-05-2022', '20-05-2022', 'Organization Name', 'BY', '', '', 2, '-1', '123456789012', '1'),
(78, '123456789014', 'Web Development', '2', '22-05-2022', '24-05-2022', 'gpa', 'gpa', '', '', 2, '-1', '123456789012', '1'),
(79, '123456789014', 'new apply', '123', '21-05-2022', '27-05-2022', 'asdf', 'asdf', '', '', 2, '-1', '123456789012', '1'),
(81, '123456789015', 'WEB', '2', '22-05-2022', '24-05-2022', 'GPA', 'GPA', '', '', 4, '123456789014', '123456789012', '1'),
(82, 'GPAMTCM005', 'Web application ', '2', '21-05-2022', '19-05-2022', 'gpa', 'gpa', '', '', 1, '123456789014', '123456789012', '1'),
(83, 'GPAMTCM005', 'Android', '2', '21-05-2022', '23-05-2022', 'gpa', 'gpa', '', '', 1, '123456789014', '123456789012', '1'),
(84, 'GPAMTCM005', 'Python', '2', '23-05-2022', '25-05-2022', 'GPA', 'GPA', '', '', 1, '123456789014', '123456789012', '1'),
(85, 'GPAMTCM005', 'JAVA', '3', '26-05-2022', '30-05-2022', 'GPA', 'GPA', '', '', 1, '123456789014', '123456789012', '1'),
(86, 'GPAMTCM005', 'Web application ', '10', '10-05-2022', '02-06-2022', 'gpa', 'GPA', '', '', 1, '123456789014', '123456789012', '1'),
(87, 'GPAMTCM005', 'Web', '2', '21-05-2022', '23-05-2022', 'gpa', 'gpa', '', '', 1, '123456789014', '123456789012', '1'),
(88, '123456987456', 'Web', '1', '21-05-2022', '22-05-2022', 'gpa', 'gpa', '', '', 3, '567894123123', 'GPAMTOF001', '1'),
(89, '123456987456', 'Android', '5', '22-05-2022', '25-05-2022', 'gpa', 'gpa', '', '', 3, '567894123123', 'GPAMTOF001', '1'),
(90, '123456987456', 'Web', '2', '2-0-2', '2-0-2', 'gpa', 'gpa', '', '', 7, '567894123123', 'GPAMTOF001', '1'),
(91, '123456987456', 'web', '4', '2-0-2', '2-0-2', 'gpa', 'gpa', '', '', 7, '567894123123', 'GPAMTOF001', '1'),
(92, '567894123123', 'Web Application', '2', '21-05-2022', '23-05-2022', 'gpa', 'gpa', '', '', 2, '-1', 'GPAMTOF001', '1');

-- --------------------------------------------------------

--
-- Table structure for table `training_status`
--

CREATE TABLE `training_status` (
  `id` int NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_status`
--

INSERT INTO `training_status` (`id`, `status`) VALUES
(1, 'APPLIED TO HOD\r\n'),
(2, 'APPLIED TO PRINCIPAL'),
(3, 'APPROVED BY HOD'),
(4, 'DECLINE BY HOD'),
(5, 'APPROVED BY PRINCIPAL'),
(6, 'DECLINED BY PRINCIPAL'),
(7, 'COMPLETED');

-- --------------------------------------------------------

--
-- Table structure for table `training_type`
--

CREATE TABLE `training_type` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_type`
--

INSERT INTO `training_type` (`id`, `name`) VALUES
(1, 'type_1'),
(2, 'type_2');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_table`
--

CREATE TABLE `transfer_table` (
  `Product_ID` int NOT NULL,
  `qty_transfer` int NOT NULL,
  `transfer_date` date NOT NULL,
  `transfer_to` varchar(50) NOT NULL,
  `transfer_from` varchar(50) NOT NULL,
  `msg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfer_table`
--

INSERT INTO `transfer_table` (`Product_ID`, `qty_transfer`, `transfer_date`, `transfer_to`, `transfer_from`, `msg`) VALUES
(6, 4, '2022-05-19', 'IT', 'plastic_polymer', 'no'),
(1, 0, '0000-00-00', 'select', 'select', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications_status`
--
ALTER TABLE `applications_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_key`
--
ALTER TABLE `auth_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cs_distribution`
--
ALTER TABLE `cs_distribution`
  ADD KEY `fk_csdistribution` (`Product_ID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`sevarth_id`),
  ADD KEY `fr_key_org` (`org_id`),
  ADD KEY `fr_key_dept` (`dept_id`),
  ADD KEY `fr_key_role` (`role_id`);

--
-- Indexes for table `employees_details`
--
ALTER TABLE `employees_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fr_key_empid` (`sevarth_id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD KEY `fr_key_emp_history` (`sevarth_id`),
  ADD KEY `fr_key_org_his` (`org_id`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `leave_application`
--
ALTER TABLE `leave_application`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `leave_available`
--
ALTER TABLE `leave_available`
  ADD PRIMARY KEY (`sevarth_id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `master_cs`
--
ALTER TABLE `master_cs`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `nominee`
--
ALTER TABLE `nominee`
  ADD PRIMARY KEY (`nominee_id`);

--
-- Indexes for table `notification_table`
--
ALTER TABLE `notification_table`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `organization_type`
--
ALTER TABLE `organization_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_status`
--
ALTER TABLE `training_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_type`
--
ALTER TABLE `training_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `applications_status`
--
ALTER TABLE `applications_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_key`
--
ALTER TABLE `auth_key`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees_details`
--
ALTER TABLE `employees_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_application`
--
ALTER TABLE `leave_application`
  MODIFY `application_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `leave_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_cs`
--
ALTER TABLE `master_cs`
  MODIFY `Product_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nominee`
--
ALTER TABLE `nominee`
  MODIFY `nominee_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_table`
--
ALTER TABLE `notification_table`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `organization_type`
--
ALTER TABLE `organization_type`
  MODIFY `type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `training_status`
--
ALTER TABLE `training_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `training_type`
--
ALTER TABLE `training_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
