-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 02:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(50) NOT NULL,
  `admin_user_name` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `student_id` int(50) NOT NULL,
  `attendance_status` varchar(30) NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(30) NOT NULL,
  `attendance_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`student_id`, `attendance_status`, `attendance_date`, `teacher_id`, `attendance_id`) VALUES
(3, 'Present', '2020-06-02', 4, 0),
(4, 'Present', '2020-06-02', 4, 0),
(7, 'Present', '2020-06-02', 4, 0),
(9, 'Present', '2020-06-02', 4, 0),
(10, 'Present', '2020-06-02', 4, 0),
(11, 'Present', '2020-06-02', 4, 0),
(3, 'Present', '2020-06-03', 4, 0),
(4, 'Absent', '2020-06-03', 4, 0),
(7, 'Present', '2020-06-03', 4, 0),
(9, 'Present', '2020-06-03', 4, 0),
(10, 'Present', '2020-06-03', 4, 0),
(11, 'Absent', '2020-06-03', 4, 0),
(3, 'Present', '2020-06-05', 4, 0),
(4, 'Absent', '2020-06-05', 4, 0),
(7, 'Present', '2020-06-05', 4, 0),
(9, 'Present', '2020-06-05', 4, 0),
(10, 'Present', '2020-06-05', 4, 0),
(11, 'Present', '2020-06-05', 4, 0),
(3, 'Absent', '2020-06-06', 4, 0),
(4, 'Present', '2020-06-06', 4, 0),
(7, 'Present', '2020-06-06', 4, 0),
(9, 'Present', '2020-06-06', 4, 0),
(10, 'Present', '2020-06-06', 4, 0),
(11, 'Absent', '2020-06-06', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `grade_id` int(11) NOT NULL,
  `grade_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_grade`
--

INSERT INTO `tbl_grade` (`grade_id`, `grade_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'E'),
(7, 'C'),
(8, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` varchar(150) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_grade_id`) VALUES
(1, 'Kapil Chakama', '162-15-8131', '1994-05-01', '2'),
(2, 'Musfiq raihan', '162-15-7656', '1994-05-25', '7'),
(3, 'Asik rahman', '162-15-7877', '1994-03-25', '1'),
(4, 'Moriom', '172-13-4884', '1994-05-25', '1'),
(5, 'Latifur rahman', '181-12-4432', '1994-05-01', '2'),
(6, 'JOTON mia', '181-12-3333', '1994-03-25', '7'),
(7, 'Kanta sharma', '131-12-2333', '1994-03-25', '1'),
(8, 'Efaz talukdar', '122-12-3323', '1994-03-25', '8'),
(9, 'Kabir sign', '141-12-4343', '1994-05-25', '1'),
(10, 'Sarma vai', '151-33-3333', '1994-05-01', '1'),
(11, 'Sarma vai', '122-21-2222', '1994-03-25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(5000) NOT NULL,
  `teacher_grade_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `teacher_image`, `teacher_grade_id`) VALUES
(1, 'MD. Amin', 'Dhanmondi, Dhaka-1206', 'amin12@gmail.com', '$2y$10$g9YU2v1MPhJKVtGi6Cqp.edH3mQHO2ZYrqluvA66O6RLMtdOPXNWW', 'B.Sc in CSE', '2020-06-02', '5ed564e3cfd60.jpg', '1'),
(2, 'Aiyesha parvin', 'mohammadpur, dhaka', 'aiyesha12@gmail.com', '$2y$10$dYZvjZUMHWZ8nlJcm8kYXe0PTDz76FBL8e9W0tH44GhjbtD0l/c06', 'B.Sc in CSE', '2020-06-03', '5ed566746a57f.jpg', '2'),
(3, 'sakib', 'dhaka', 'sakib@gmail.com', '$2y$10$wwbjI9g4YwzYkSh59CPQnOrOFm0wmIUrz.EPiKwLZn6pYWH1.FULS', 'B.Sc in CSE', '2020-06-02', '5ed57606015f3.jpg', '2'),
(4, 'Mr. Teacher', 'Dhaka', 'teacher@gmail.com', '$2y$10$qGhhNj2LzSO2o9.x6rrvF.u7F5SmoFAfvwPrKQoIUdmtyP1asSBYC', 'B.Sc in CSE', '2020-06-02', '5ed62aa9a4bc2.jpg', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
