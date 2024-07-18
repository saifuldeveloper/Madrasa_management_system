-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 12:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `madrasa_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `icon_upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `upload_id`, `icon_upload_id`, `description`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Special Campus Tour', 64, 65, 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Graduation', 66, 67, 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', 1, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'Powerful Alumni', 68, 69, 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', 2, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `about_translates`
--

CREATE TABLE `about_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_translates`
--

INSERT INTO `about_translates` (`id`, `about_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Special Campus Tour', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 2, 'en', 'Graduation', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 3, 'en', 'Powerful Alumni', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 1, 'bn', 'বিশেষ ক্যাম্পাস সফর', 'তারা খুব নরম এবং কোথাও কোন ব্যথা আছে ছেড়ে না. তিনি তার পরিবারের যত্ন নিতে পছন্দ করেন। অনুশীলন ফলপ্রসূ হবে। কারণ সে নরম হতে চায়। অনুশীলন ফলপ্রসূ হবে। কারণ সে নরম হতে চায়। অনুশীলন ফলপ্রসূ হবে। অনুশীলন ফলপ্রসূ হবে। কারণ সে নরম হতে চায়। অনুশীলন ফলপ্রসূ হবে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 2, 'bn', 'স্নাতক', 'তারা খুব নরম এবং কোথাও কোন ব্যথা আছে ছেড়ে না. তিনি তার পরিবারের যত্ন নিতে পছন্দ করেন। অনুশীলন ফলপ্রসূ হবে। কারণ সে নরম হতে চায়। অনুশীলন ফলপ্রসূ হবে। কারণ সে নরম হতে চায়। অনুশীলন ফলপ্রসূ হবে। অনুশীলন ফলপ্রসূ হবে। কারণ সে নরম হতে চায়। অনুশীলন ফলপ্রসূ হবে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 3, 'bn', 'শক্তিশালী প্রাক্তন ছাত্র', 'তারা খুব নরম এবং কোথাও কোন ব্যথা আছে ছেড়ে না. তিনি তার পরিবারের যত্ন নিতে পছন্দ করেন। অনুশীলন ফলপ্রসূ হবে। কারণ সে নরম হতে চায়। অনুশীলন ফলপ্রসূ হবে। কারণ সে নরম হতে চায়। অনুশীলন ফলপ্রসূ হবে। অনুশীলন ফলপ্রসূ হবে। কারণ সে নরম হতে চায়। অনুশীলন ফলপ্রসূ হবে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `account_heads`
--

CREATE TABLE `account_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_heads`
--

INSERT INTO `account_heads` (`id`, `name`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'স্টুডেন্টস   ফি', 1, 1, '2024-06-30 03:30:36', '2024-06-30 03:30:36'),
(2, 'স্টুডেন্টস   ফি', 2, 1, '2024-06-30 04:26:45', '2024-06-30 04:26:45'),
(3, 'এককালীন দান', 1, 1, '2024-06-30 04:27:22', '2024-06-30 04:27:22'),
(4, 'যাকাত', 1, 1, '2024-06-30 04:29:59', '2024-06-30 04:29:59'),
(5, 'ফিতরা', 1, 1, '2024-06-30 04:30:13', '2024-06-30 04:30:13'),
(6, 'চামড়া বিক্রয়', 1, 1, '2024-06-30 04:30:34', '2024-06-30 04:30:34'),
(7, 'মানতের টাকা', 1, 1, '2024-06-30 04:31:42', '2024-06-30 04:31:42'),
(8, 'পুরাতন বই খাতা  বিক্রয়', 1, 1, '2024-06-30 04:32:07', '2024-06-30 04:32:07'),
(9, 'মানতের ছাগল', 1, 1, '2024-06-30 04:32:20', '2024-06-30 04:32:20'),
(10, 'মানতের মুরগী', 1, 1, '2024-06-30 04:32:33', '2024-06-30 04:32:33'),
(11, 'মানতের  হাঁস', 1, 1, '2024-06-30 04:32:43', '2024-06-30 04:32:43'),
(13, 'Daily Bazar', 2, 1, '2024-07-17 00:20:36', '2024-07-17 00:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_exam_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `result` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answer_childrens`
--

CREATE TABLE `answer_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `question_bank_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text DEFAULT NULL,
  `evaluation_mark` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `classes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `roll` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendance` tinyint(4) DEFAULT 3 COMMENT '1=present, 2=late, 3=absent, 4=half_day',
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A+', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'A-', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'B+', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'B-', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'O+', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 'O-', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 'AB+', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 'AB-', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `rack_no` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `top_text` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `logo_show` tinyint(1) NOT NULL DEFAULT 1,
  `bg_image` bigint(20) UNSIGNED DEFAULT NULL,
  `bottom_left_signature` bigint(20) UNSIGNED DEFAULT NULL,
  `bottom_left_text` longtext NOT NULL,
  `bottom_right_signature` bigint(20) UNSIGNED DEFAULT NULL,
  `bottom_right_text` longtext NOT NULL,
  `logo` tinyint(1) NOT NULL DEFAULT 1,
  `name` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'one', 1, '2024-06-27 00:54:55', '2024-06-27 00:54:55'),
(2, 'two', 1, '2024-06-27 00:55:02', '2024-06-27 00:55:02'),
(3, 'Three', 1, '2024-06-27 00:55:13', '2024-06-27 00:55:13'),
(4, 'Four', 1, '2024-06-27 00:55:21', '2024-06-27 00:55:21'),
(5, 'Five', 1, '2024-06-27 00:55:28', '2024-06-27 00:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_no` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `room_no`, `capacity`, `status`, `created_at`, `updated_at`) VALUES
(1, 101, 50, 1, '2024-06-27 04:07:13', '2024-06-27 04:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `class_routines`
--

CREATE TABLE `class_routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `day` tinyint(4) DEFAULT NULL COMMENT 'sat=1, fri=7',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_routines`
--

INSERT INTO `class_routines` (`id`, `session_id`, `classes_id`, `section_id`, `shift_id`, `day`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, '2024-06-30 03:40:55', '2024-06-30 03:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine_childrens`
--

CREATE TABLE `class_routine_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_routine_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `time_schedule_id` bigint(20) UNSIGNED NOT NULL,
  `class_room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_routine_childrens`
--

INSERT INTO `class_routine_childrens` (`id`, `class_routine_id`, `subject_id`, `time_schedule_id`, `class_room_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2024-06-30 03:40:55', '2024-06-30 03:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `class_section_translates`
--

CREATE TABLE `class_section_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_setups`
--

CREATE TABLE `class_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_setups`
--

INSERT INTO `class_setups` (`id`, `session_id`, `classes_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-06-27 00:56:35', '2024-06-27 00:56:35'),
(2, 1, 2, 1, '2024-06-27 00:56:46', '2024-06-27 00:56:46'),
(3, 1, 3, 1, '2024-07-16 21:52:17', '2024-07-16 21:52:17'),
(4, 1, 4, 1, '2024-07-16 21:52:26', '2024-07-16 21:52:26'),
(5, 1, 5, 1, '2024-07-16 21:52:37', '2024-07-16 21:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `class_setup_childrens`
--

CREATE TABLE `class_setup_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_setup_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_setup_childrens`
--

INSERT INTO `class_setup_childrens` (`id`, `class_setup_id`, `section_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-06-27 00:56:35', '2024-06-27 00:56:35'),
(2, 1, 2, 1, '2024-06-27 00:56:35', '2024-06-27 00:56:35'),
(3, 2, 1, 1, '2024-06-27 00:56:46', '2024-06-27 00:56:46'),
(4, 2, 2, 1, '2024-06-27 00:56:46', '2024-06-27 00:56:46'),
(5, 3, 1, 1, '2024-07-16 21:52:17', '2024-07-16 21:52:17'),
(6, 4, 1, 1, '2024-07-16 21:52:26', '2024-07-16 21:52:26'),
(7, 5, 1, 1, '2024-07-16 21:52:37', '2024-07-16 21:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `class_translates`
--

CREATE TABLE `class_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `upload_id`, `name`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 56, 'Our School', '222, Tower Building, Country Hall, California 777, United States', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 57, 'Our School', '222, Tower Building, Country Hall, California 777, United States', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 58, 'Our School', '222, Tower Building, Country Hall, California 777, United States', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 59, 'Our School', '222, Tower Building, Country Hall, California 777, United States', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info_translates`
--

CREATE TABLE `contact_info_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_info_translates`
--

INSERT INTO `contact_info_translates` (`id`, `contact_info_id`, `locale`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Our School', '222, Tower Building, Country Hall, California 777, United States', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 2, 'en', 'Our School', '222, Tower Building, Country Hall, California 777, United States', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 3, 'en', 'Our School', '222, Tower Building, Country Hall, California 777, United States', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 4, 'en', 'Our School', '222, Tower Building, Country Hall, California 777, United States', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 1, 'bn', 'আমাদের পাঠশালা', '222, টাওয়ার বিল্ডিং, কান্ট্রি হল, ক্যালিফোর্নিয়া 777, মার্কিন যুক্তরাষ্ট্র', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 2, 'bn', 'আমাদের পাঠশালা', '222, টাওয়ার বিল্ডিং, কান্ট্রি হল, ক্যালিফোর্নিয়া 777, মার্কিন যুক্তরাষ্ট্র', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 3, 'bn', 'আমাদের পাঠশালা', '222, টাওয়ার বিল্ডিং, কান্ট্রি হল, ক্যালিফোর্নিয়া 777, মার্কিন যুক্তরাষ্ট্র', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 4, 'bn', 'আমাদের পাঠশালা', '222, টাওয়ার বিল্ডিং, কান্ট্রি হল, ক্যালিফোর্নিয়া 777, মার্কিন যুক্তরাষ্ট্র', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_count` int(11) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `name`, `total_count`, `upload_id`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Curriculum', 0, 14, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Students', 45, 15, 1, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'Expert Teachers', 90, 16, 2, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'User', 135, 17, 3, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'Parents', 180, 18, 4, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `counter_translates`
--

CREATE TABLE `counter_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `counter_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `total_count` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counter_translates`
--

INSERT INTO `counter_translates` (`id`, `counter_id`, `locale`, `name`, `total_count`, `serial`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Curriculum', '0', '0', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 2, 'en', 'Students', '45', '1', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 3, 'en', 'Expert Teachers', '90', '2', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 4, 'en', 'User', '135', '3', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 5, 'en', 'Parents', '180', '4', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 1, 'bn', 'পাঠ্যক্রম', '০', '০', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 2, 'bn', 'ছাত্ররা', '৪৫', '১', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 3, 'bn', 'বিশেষজ্ঞ শিক্ষক', '৯০', '২', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 4, 'bn', 'ব্যবহারকারী', '১৩৫', '৩', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 5, 'bn', 'পিতামাতা', '১৮০', '৪', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `decimal_digits` int(11) DEFAULT 2,
  `decimal_point_separator` varchar(255) DEFAULT NULL,
  `thousand_separator` varchar(255) DEFAULT NULL,
  `with_space` tinyint(4) DEFAULT 0,
  `position` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 => Suffix, 1 => Prefix',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency`, `code`, `symbol`, `decimal_digits`, `decimal_point_separator`, `thousand_separator`, `with_space`, `position`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Canadian Dollar', 'CAD', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'Euro', 'EUR', '€', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'UAE Dirham', 'AED', 'د.إ.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'Afghan Afghani', 'AFN', '؋', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 'Albanian Lek', 'ALL', 'Lek', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 'Armenian Dram', 'AMD', 'դր.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 'Argentine Peso', 'ARS', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 'Australian Dollar', 'AUD', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 'Azerbaijani Manat', 'AZN', 'ман.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, 'Bangladeshi Taka', 'BDT', '৳', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(13, 'Bulgarian Lev', 'BGN', 'лв.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(15, 'Burundian Franc', 'BIF', 'FBu', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(16, 'Brunei Dollar', 'BND', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(18, 'Brazilian Real', 'BRL', 'R$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(19, 'Botswanan Pula', 'BWP', 'P', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(20, 'Belarusian Ruble', 'BYN', 'руб.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(21, 'Belize Dollar', 'BZD', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(22, 'Congolese Franc', 'CDF', 'FrCD', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(23, 'Swiss Franc', 'CHF', 'CHF', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(24, 'Chilean Peso', 'CLP', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(25, 'Chinese Yuan', 'CNY', 'CN¥', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(26, 'Colombian Peso', 'COP', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(27, 'Costa Rican Colón', 'CRC', '₡', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(28, 'Cape Verdean Escudo', 'CVE', 'CV$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(31, 'Danish Krone', 'DKK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(32, 'Dominican Peso', 'DOP', 'RD$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(34, 'Estonian Kroon', 'EEK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(35, 'Egyptian Pound', 'EGP', 'ج.م.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(37, 'Ethiopian Birr', 'ETB', 'Br', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(38, 'British Pound Sterling', 'GBP', '£', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(39, 'Georgian Lari', 'GEL', 'GEL', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(40, 'Ghanaian Cedi', 'GHS', 'GH₵', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(41, 'Guinean Franc', 'GNF', 'FG', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(43, 'Hong Kong Dollar', 'HKD', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(44, 'Honduran Lempira', 'HNL', 'L', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(45, 'Croatian Kuna', 'HRK', 'kn', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(46, 'Hungarian Forint', 'HUF', 'Ft', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(48, 'Indian Rupee', 'INR', '₹', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(49, 'Iraqi Dinar', 'IQD', 'د.ع.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(50, 'Iranian Rial', 'IRR', '﷼', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(51, 'Icelandic Króna', 'ISK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(52, 'Jamaican Dollar', 'JMD', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(53, 'Jordanian Dinar', 'JOD', 'د.أ.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(54, 'Japanese Yen', 'JPY', '￥', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(55, 'Kenyan Shilling', 'KES', 'Ksh', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(56, 'Cambodian Riel', 'KHR', '៛', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(57, 'Comorian Franc', 'KMF', 'FC', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(58, 'South Korean Won', 'KRW', '₩', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(59, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(60, 'Kazakhstani Tenge', 'KZT', 'тңг.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(61, 'Lebanese Pound', 'LBP', 'ل.ل.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(62, 'Sri Lankan Rupee', 'LKR', 'SL Re', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(63, 'Lithuanian Litas', 'LTL', 'Lt', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(64, 'Latvian Lats', 'LVL', 'Ls', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(65, 'Libyan Dinar', 'LYD', 'د.ل.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(66, 'Moroccan Dirham', 'MAD', 'د.م.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(67, 'Moldovan Leu', 'MDL', 'MDL', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(68, 'Malagasy Ariary', 'MGA', 'MGA', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(69, 'Macedonian Denar', 'MKD', 'MKD', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(70, 'Myanma Kyat', 'MMK', 'K', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(71, 'Macanese Pataca', 'MOP', 'MOP$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(72, 'Mauritian Rupee', 'MUR', 'MURs', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(73, 'Mexican Peso', 'MXN', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(74, 'Malaysian Ringgit', 'MYR', 'RM', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(75, 'Mozambican Metical', 'MZN', 'MTn', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(76, 'Namibian Dollar', 'NAD', 'N$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(77, 'Nigerian Naira', 'NGN', '₦', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(78, 'Nicaraguan Córdoba', 'NIO', 'C$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(79, 'Norwegian Krone', 'NOK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(80, 'Nepalese Rupee', 'NPR', 'नेरू', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(81, 'New Zealand Dollar', 'NZD', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(82, 'Omani Rial', 'OMR', 'ر.ع.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(83, 'Panamanian Balboa', 'PAB', 'B/.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(84, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(85, 'Philippine Peso', 'PHP', '₱', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(86, 'Pakistani Rupee', 'PKR', '₨', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(87, 'Polish Zloty', 'PLN', 'zł', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(88, 'Paraguayan Guarani', 'PYG', '₲', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(89, 'Qatari Rial', 'QAR', 'ر.ق.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(90, 'Romanian Leu', 'RON', 'RON', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(91, 'Serbian Dinar', 'RSD', 'дин.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(92, 'Russian Ruble', 'RUB', '₽.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(93, 'Rwandan Franc', 'RWF', 'FR', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(94, 'Saudi Riyal', 'SAR', 'ر.س.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(95, 'Sudanese Pound', 'SDG', 'SDG', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(96, 'Swedish Krona', 'SEK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(97, 'Singapore Dollar', 'SGD', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(98, 'Somali Shilling', 'SOS', 'Ssh', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(99, 'Syrian Pound', 'SYP', 'ل.س.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(100, 'Thai Baht', 'THB', '฿', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(101, 'Tunisian Dinar', 'TND', 'د.ت.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(102, 'Tongan Pa\'anga', 'TOP', 'T$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(103, 'Turkish Lira', 'TRY', 'TL', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(104, 'Trinidad and Tobago Dollar', 'TTD', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(105, 'New Taiwan Dollar', 'TWD', 'NT$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(106, 'Tanzanian Shilling', 'TZS', 'TSh', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(107, 'Ukrainian Hryvnia', 'UAH', '₴', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(108, 'Ugandan Shilling', 'UGX', 'USh', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(109, 'Uruguayan Peso', 'UYU', '$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(110, 'Uzbekistan Som', 'UZS', 'UZS', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(111, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(112, 'Vietnamese Dong', 'VND', '₫', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(113, 'CFA Franc BEAC', 'XAF', 'FCFA', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(114, 'CFA Franc BCEAO', 'XOF', 'CFA', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(115, 'Yemeni Rial', 'YER', 'ر.ي.‏', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(116, 'South African Rand', 'ZAR', 'R', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(117, 'Zambian Kwacha', 'ZMK', 'ZK', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(118, 'Zimbabwean Dollar', 'ZWL', 'ZWL$', 2, NULL, NULL, 0, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'History', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Science', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'Arch', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `department_contacts`
--

CREATE TABLE `department_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_contacts`
--

INSERT INTO `department_contacts` (`id`, `upload_id`, `name`, `phone`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 60, 'Admission', '+883459783849', 'admission@mail.Com', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 61, 'Examination', '+883459783849', 'examination@mail.Com', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 62, 'Library', '+883459783849', 'library@mail.Com', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 63, 'media', '+883459783849', 'media@mail.Com', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `department_contact_translates`
--

CREATE TABLE `department_contact_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_contact_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_contact_translates`
--

INSERT INTO `department_contact_translates` (`id`, `department_contact_id`, `locale`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Admission', '+883459783849', 'admission@mail.Com', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 2, 'en', 'Examination', '+883459783849', 'examination@mail.Com', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 3, 'en', 'Library', '+883459783849', 'library@mail.Com', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 4, 'en', 'media', '+883459783849', 'media@mail.Com', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 1, 'bn', 'ভর্তি', '+৮৮৩৪৫৯৭৮৩৮৪৯', 'এডমিশন@মেইল.কম', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 2, 'bn', 'পরীক্ষা', '+৮৮৩৪৫৯৭৮৩৮৪৯', 'এক্সামিনেশন@মেইল.কম', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 3, 'bn', 'লাইব্রেরি', '+৮৮৩৪৫৯৭৮৩৮৪৯', 'লাইব্রেরি@মেইল.কম', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 4, 'bn', 'মিডিয়া', '+৮৮৩৪৫৯৭৮৩৮৪৯', 'মিডিয়া@মেইল.কম', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HRM', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Admin', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'Accounts', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'Development', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'Software', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `tenant_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donars`
--

CREATE TABLE `donars` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `parmanent_address` text DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donars`
--

INSERT INTO `donars` (`id`, `name`, `mobile`, `email`, `present_address`, `parmanent_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sejom@mailinator.com', 'tagubeqyd@mailinator.com', 'tokis@mailinator.com', 'heguqoweb@mailinator.com', 'medaqopuwy@mailinator.com', '1', '2024-07-16 23:40:26', '2024-07-16 23:40:26'),
(2, 'saiful', '014545432', 'saiful@gamil.com', 'Mirpur 10', '', '3', '2024-07-17 00:15:53', '2024-07-17 00:15:53'),
(3, 'dyxazi@mailinator.com', 'xunejah@mailinator.com', 'mofo@mailinator.com', 'kiryd@mailinator.com', 'rala@mailinator.com', '1', '2024-07-17 01:08:03', '2024-07-17 01:08:03'),
(4, 'Rasel sarkar h', '', 'velup@mailinator.com', 'togucuwik@mailinator.com', 'taqyji@mailinator.com', '1', '2024-07-17 02:06:03', '2024-07-17 02:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `session_id`, `title`, `description`, `date`, `start_time`, `end_time`, `address`, `upload_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '15-Dec-2020', NULL, '1979-10-09', '09:45:00', '12:17:00', '24-Feb-2001', 79, 1, '2024-06-30 06:09:18', '2024-06-30 06:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `event_translates`
--

CREATE TABLE `event_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_translates`
--

INSERT INTO `event_translates` (`id`, `event_id`, `locale`, `title`, `description`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', '15-Dec-2020', NULL, '24-Feb-2001', '2024-06-30 06:09:18', '2024-06-30 06:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `examination_results`
--

CREATE TABLE `examination_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exam_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `classes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL COMMENT 'Failed',
  `grade_name` varchar(255) DEFAULT NULL,
  `grade_point` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examination_settings`
--

CREATE TABLE `examination_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_assigns`
--

CREATE TABLE `exam_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `exam_type_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `total_mark` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_assign_childrens`
--

CREATE TABLE `exam_assign_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_assign_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mark` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routines`
--

CREATE TABLE `exam_routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_childrens`
--

CREATE TABLE `exam_routine_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_routine_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `time_schedule_id` bigint(20) UNSIGNED NOT NULL,
  `class_room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expense_head` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `quantity` decimal(16,2) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fees_expence_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `session_id`, `name`, `expense_head`, `date`, `invoice_number`, `quantity`, `unit`, `amount`, `upload_id`, `description`, `fees_expence_id`, `created_at`, `updated_at`) VALUES
(12, 1, 'chal', 13, '2024-07-17', '1', 5.00, 1, 1000.00, NULL, '10', NULL, '2024-07-17 00:22:16', '2024-07-17 01:02:14'),
(14, 1, 'tel', 13, '2024-07-17', '', 12.00, 2, 2000.00, NULL, NULL, NULL, '2024-07-17 01:04:08', '2024-07-17 01:04:08'),
(15, 1, 'Farhan Ahamed 01', 2, '2024-07-18', NULL, NULL, NULL, 500.00, NULL, NULL, 55, '2024-07-18 04:32:39', '2024-07-18 04:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_assigns`
--

CREATE TABLE `fees_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fees_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_assigns`
--

INSERT INTO `fees_assigns` (`id`, `session_id`, `classes_id`, `section_id`, `category_id`, `gender_id`, `fees_group_id`, `created_at`, `updated_at`) VALUES
(7, 1, 1, 1, NULL, 1, 3, '2024-07-16 22:02:30', '2024-07-16 22:02:30'),
(8, 1, 1, 1, NULL, NULL, 1, '2024-07-16 22:02:48', '2024-07-16 22:02:48'),
(9, 1, 2, 1, NULL, NULL, 3, '2024-07-16 22:03:11', '2024-07-16 22:03:11'),
(10, 1, 2, 1, NULL, NULL, 1, '2024-07-16 22:03:38', '2024-07-16 22:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `fees_assign_childrens`
--

CREATE TABLE `fees_assign_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fees_assign_id` bigint(20) UNSIGNED NOT NULL,
  `fees_master_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_assign_childrens`
--

INSERT INTO `fees_assign_childrens` (`id`, `fees_assign_id`, `fees_master_id`, `student_id`, `created_at`, `updated_at`) VALUES
(19, 7, 4, 11, '2024-07-16 22:02:30', '2024-07-16 22:02:30'),
(20, 8, 5, 11, '2024-07-16 22:02:48', '2024-07-16 22:02:48'),
(21, 9, 6, 12, '2024-07-16 22:03:11', '2024-07-16 22:03:11'),
(22, 10, 7, 12, '2024-07-16 22:03:38', '2024-07-16 22:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `fees_collects`
--

CREATE TABLE `fees_collects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `payment_method` tinyint(4) DEFAULT NULL,
  `payment_gateway` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `fees_assign_children_id` bigint(20) UNSIGNED NOT NULL,
  `fees_collect_by` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(16,2) DEFAULT NULL COMMENT 'total amount + fine',
  `paid_amount` decimal(16,2) DEFAULT NULL,
  `donation_amount` decimal(16,2) DEFAULT NULL,
  `fine_amount` decimal(16,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_collects`
--

INSERT INTO `fees_collects` (`id`, `date`, `payment_method`, `payment_gateway`, `transaction_id`, `fees_assign_children_id`, `fees_collect_by`, `student_id`, `session_id`, `amount`, `paid_amount`, `donation_amount`, `fine_amount`, `created_at`, `updated_at`) VALUES
(52, '2024-07-18', 1, NULL, NULL, 19, 1, 11, 1, 500.00, 500.00, 0.00, 0.00, '2024-07-18 02:49:47', '2024-07-18 02:49:47'),
(53, '2024-07-18', 1, NULL, NULL, 19, 1, 11, 1, 500.00, 500.00, 0.00, 0.00, '2024-07-18 02:59:06', '2024-07-18 02:59:06'),
(55, '2024-07-18', 1, NULL, NULL, 20, 1, 11, 1, 1000.00, 500.00, 500.00, 0.00, '2024-07-18 04:32:39', '2024-07-18 04:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `fees_groups`
--

CREATE TABLE `fees_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `online_admission_fees` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_groups`
--

INSERT INTO `fees_groups` (`id`, `name`, `description`, `status`, `online_admission_fees`, `created_at`, `updated_at`) VALUES
(1, 'Monthly Fee', 'mm', 1, 0, '2024-06-29 22:42:50', '2024-06-29 22:42:50'),
(2, 'Exam Fee', 'Exam fee', 1, 0, '2024-06-29 22:43:04', '2024-06-29 22:43:04'),
(3, 'Admission fee', NULL, 1, 0, '2024-07-16 21:57:34', '2024-07-16 21:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `fees_masters`
--

CREATE TABLE `fees_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `fees_group_id` bigint(20) UNSIGNED NOT NULL,
  `fees_type_id` bigint(20) UNSIGNED NOT NULL,
  `class_setup_id` bigint(20) UNSIGNED NOT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT 0.00,
  `fine_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = none, 1 = percentage, 2 = fixed',
  `percentage` int(11) DEFAULT 0,
  `fine_amount` decimal(16,2) DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_masters`
--

INSERT INTO `fees_masters` (`id`, `session_id`, `fees_group_id`, `fees_type_id`, `class_setup_id`, `due_date`, `amount`, `fine_type`, `percentage`, `fine_amount`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 3, 1, 1, '2024-07-17', 500.00, 0, 0, 0.00, 1, '2024-07-16 21:59:50', '2024-07-16 21:59:50'),
(5, 1, 1, 1, 1, '2024-07-17', 1000.00, 0, 0, 0.00, 1, '2024-07-16 22:00:10', '2024-07-16 22:00:10'),
(6, 1, 3, 1, 2, '2024-07-18', 1000.00, 0, 0, 0.00, 1, '2024-07-16 22:01:24', '2024-07-16 22:01:24'),
(7, 1, 1, 1, 2, '2024-07-17', 2000.00, 0, 0, 0.00, 1, '2024-07-16 22:01:56', '2024-07-16 22:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `fees_master_childrens`
--

CREATE TABLE `fees_master_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fees_master_id` bigint(20) UNSIGNED NOT NULL,
  `fees_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_types`
--

CREATE TABLE `fees_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_types`
--

INSERT INTO `fees_types` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'January', 'january', NULL, 1, '2024-06-29 22:44:13', '2024-06-29 22:44:13'),
(2, 'Febuary', 'Febuary', 'Febuary', 1, '2024-06-29 22:44:28', '2024-06-29 22:44:28'),
(3, 'March', 'March', 'march', 1, '2024-06-29 22:44:42', '2024-06-29 22:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `flag_icons`
--

CREATE TABLE `flag_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flag_icons`
--

INSERT INTO `flag_icons` (`id`, `icon_class`, `title`, `created_at`, `updated_at`) VALUES
(1, 'flag-icon flag-icon-ad', 'ad', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'flag-icon flag-icon-ae', 'ae', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'flag-icon flag-icon-af', 'af', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'flag-icon flag-icon-ag', 'ag', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'flag-icon flag-icon-ai', 'ai', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 'flag-icon flag-icon-al', 'al', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 'flag-icon flag-icon-am', 'am', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 'flag-icon flag-icon-ao', 'ao', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 'flag-icon flag-icon-aq', 'aq', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 'flag-icon flag-icon-ar', 'ar', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 'flag-icon flag-icon-as', 'as', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, 'flag-icon flag-icon-at', 'at', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(13, 'flag-icon flag-icon-au', 'au', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(14, 'flag-icon flag-icon-aw', 'aw', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(15, 'flag-icon flag-icon-ax', 'ax', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(16, 'flag-icon flag-icon-az', 'az', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(17, 'flag-icon flag-icon-ba', 'ba', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(18, 'flag-icon flag-icon-bb', 'bb', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(19, 'flag-icon flag-icon-bd', 'bd', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(20, 'flag-icon flag-icon-be', 'be', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(21, 'flag-icon flag-icon-bf', 'bf', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(22, 'flag-icon flag-icon-bg', 'bg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(23, 'flag-icon flag-icon-bh', 'bh', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(24, 'flag-icon flag-icon-bi', 'bi', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(25, 'flag-icon flag-icon-bj', 'bj', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(26, 'flag-icon flag-icon-bl', 'bl', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(27, 'flag-icon flag-icon-bm', 'bm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(28, 'flag-icon flag-icon-bn', 'bn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(29, 'flag-icon flag-icon-bo', 'bo', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(30, 'flag-icon flag-icon-bq', 'bq', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(31, 'flag-icon flag-icon-br', 'br', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(32, 'flag-icon flag-icon-bs', 'bs', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(33, 'flag-icon flag-icon-bt', 'bt', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(34, 'flag-icon flag-icon-bv', 'bv', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(35, 'flag-icon flag-icon-bw', 'bw', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(36, 'flag-icon flag-icon-by', 'by', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(37, 'flag-icon flag-icon-bz', 'bz', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(38, 'flag-icon flag-icon-ca', 'ca', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(39, 'flag-icon flag-icon-cc', 'cc', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(40, 'flag-icon flag-icon-cd', 'cd', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(41, 'flag-icon flag-icon-cf', 'cf', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(42, 'flag-icon flag-icon-cg', 'cg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(43, 'flag-icon flag-icon-ch', 'ch', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(44, 'flag-icon flag-icon-ci', 'ci', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(45, 'flag-icon flag-icon-ck', 'ck', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(46, 'flag-icon flag-icon-cl', 'cl', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(47, 'flag-icon flag-icon-cm', 'cm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(48, 'flag-icon flag-icon-cn', 'cn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(49, 'flag-icon flag-icon-co', 'co', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(50, 'flag-icon flag-icon-cr', 'cr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(51, 'flag-icon flag-icon-cu', 'cu', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(52, 'flag-icon flag-icon-cv', 'cv', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(53, 'flag-icon flag-icon-cw', 'cw', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(54, 'flag-icon flag-icon-cx', 'cx', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(55, 'flag-icon flag-icon-cy', 'cy', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(56, 'flag-icon flag-icon-cz', 'cz', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(57, 'flag-icon flag-icon-de', 'de', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(58, 'flag-icon flag-icon-dj', 'dj', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(59, 'flag-icon flag-icon-dk', 'dk', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(60, 'flag-icon flag-icon-dm', 'dm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(61, 'flag-icon flag-icon-do', 'do', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(62, 'flag-icon flag-icon-dz', 'dz', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(63, 'flag-icon flag-icon-ec', 'ec', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(64, 'flag-icon flag-icon-ee', 'ee', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(65, 'flag-icon flag-icon-eg', 'eg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(66, 'flag-icon flag-icon-eh', 'eh', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(67, 'flag-icon flag-icon-er', 'er', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(68, 'flag-icon flag-icon-es', 'es', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(69, 'flag-icon flag-icon-et', 'et', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(70, 'flag-icon flag-icon-fi', 'fi', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(71, 'flag-icon flag-icon-fj', 'fj', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(72, 'flag-icon flag-icon-fk', 'fk', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(73, 'flag-icon flag-icon-fm', 'fm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(74, 'flag-icon flag-icon-fo', 'fo', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(75, 'flag-icon flag-icon-fr', 'fr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(76, 'flag-icon flag-icon-ga', 'ga', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(77, 'flag-icon flag-icon-gb', 'gb', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(78, 'flag-icon flag-icon-gd', 'gd', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(79, 'flag-icon flag-icon-ge', 'ge', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(80, 'flag-icon flag-icon-gf', 'gf', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(81, 'flag-icon flag-icon-gg', 'gg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(82, 'flag-icon flag-icon-gh', 'gh', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(83, 'flag-icon flag-icon-gi', 'gi', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(84, 'flag-icon flag-icon-gl', 'gl', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(85, 'flag-icon flag-icon-gm', 'gm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(86, 'flag-icon flag-icon-gn', 'gn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(87, 'flag-icon flag-icon-gp', 'gp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(88, 'flag-icon flag-icon-gq', 'gq', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(89, 'flag-icon flag-icon-gr', 'gr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(90, 'flag-icon flag-icon-gs', 'gs', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(91, 'flag-icon flag-icon-gt', 'gt', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(92, 'flag-icon flag-icon-gu', 'gu', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(93, 'flag-icon flag-icon-gw', 'gw', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(94, 'flag-icon flag-icon-gy', 'gy', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(95, 'flag-icon flag-icon-hk', 'hk', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(96, 'flag-icon flag-icon-hm', 'hm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(97, 'flag-icon flag-icon-hn', 'hn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(98, 'flag-icon flag-icon-hr', 'hr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(99, 'flag-icon flag-icon-ht', 'ht', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(100, 'flag-icon flag-icon-hu', 'hu', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(101, 'flag-icon flag-icon-id', 'id', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(102, 'flag-icon flag-icon-ie', 'ie', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(103, 'flag-icon flag-icon-il', 'il', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(104, 'flag-icon flag-icon-im', 'im', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(105, 'flag-icon flag-icon-in', 'in', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(106, 'flag-icon flag-icon-io', 'io', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(107, 'flag-icon flag-icon-iq', 'iq', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(108, 'flag-icon flag-icon-ir', 'ir', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(109, 'flag-icon flag-icon-is', 'is', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(110, 'flag-icon flag-icon-it', 'it', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(111, 'flag-icon flag-icon-je', 'je', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(112, 'flag-icon flag-icon-jm', 'jm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(113, 'flag-icon flag-icon-jo', 'jo', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(114, 'flag-icon flag-icon-jp', 'jp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(115, 'flag-icon flag-icon-ke', 'ke', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(116, 'flag-icon flag-icon-kg', 'kg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(117, 'flag-icon flag-icon-kh', 'kh', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(118, 'flag-icon flag-icon-ki', 'ki', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(119, 'flag-icon flag-icon-km', 'km', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(120, 'flag-icon flag-icon-kn', 'kn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(121, 'flag-icon flag-icon-kp', 'kp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(122, 'flag-icon flag-icon-kr', 'kr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(123, 'flag-icon flag-icon-kw', 'kw', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(124, 'flag-icon flag-icon-ky', 'ky', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(125, 'flag-icon flag-icon-kz', 'kz', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(126, 'flag-icon flag-icon-la', 'la', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(127, 'flag-icon flag-icon-lb', 'lb', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(128, 'flag-icon flag-icon-lc', 'lc', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(129, 'flag-icon flag-icon-li', 'li', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(130, 'flag-icon flag-icon-lk', 'lk', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(131, 'flag-icon flag-icon-lr', 'lr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(132, 'flag-icon flag-icon-ls', 'ls', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(133, 'flag-icon flag-icon-lt', 'lt', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(134, 'flag-icon flag-icon-lu', 'lu', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(135, 'flag-icon flag-icon-lv', 'lv', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(136, 'flag-icon flag-icon-ly', 'ly', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(137, 'flag-icon flag-icon-ma', 'ma', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(138, 'flag-icon flag-icon-mc', 'mc', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(139, 'flag-icon flag-icon-md', 'md', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(140, 'flag-icon flag-icon-me', 'me', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(141, 'flag-icon flag-icon-mf', 'mf', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(142, 'flag-icon flag-icon-mg', 'mg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(143, 'flag-icon flag-icon-mh', 'mh', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(144, 'flag-icon flag-icon-mk', 'mk', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(145, 'flag-icon flag-icon-ml', 'ml', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(146, 'flag-icon flag-icon-mm', 'mm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(147, 'flag-icon flag-icon-mn', 'mn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(148, 'flag-icon flag-icon-mo', 'mo', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(149, 'flag-icon flag-icon-mp', 'mp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(150, 'flag-icon flag-icon-mq', 'mq', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(151, 'flag-icon flag-icon-mr', 'mr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(152, 'flag-icon flag-icon-ms', 'ms', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(153, 'flag-icon flag-icon-mt', 'mt', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(154, 'flag-icon flag-icon-mu', 'mu', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(155, 'flag-icon flag-icon-mv', 'mv', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(156, 'flag-icon flag-icon-mw', 'mw', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(157, 'flag-icon flag-icon-mx', 'mx', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(158, 'flag-icon flag-icon-my', 'my', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(159, 'flag-icon flag-icon-mz', 'mz', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(160, 'flag-icon flag-icon-na', 'na', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(161, 'flag-icon flag-icon-nc', 'nc', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(162, 'flag-icon flag-icon-ne', 'ne', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(163, 'flag-icon flag-icon-nf', 'nf', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(164, 'flag-icon flag-icon-ng', 'ng', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(165, 'flag-icon flag-icon-ni', 'ni', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(166, 'flag-icon flag-icon-nl', 'nl', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(167, 'flag-icon flag-icon-no', 'no', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(168, 'flag-icon flag-icon-np', 'np', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(169, 'flag-icon flag-icon-nr', 'nr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(170, 'flag-icon flag-icon-nu', 'nu', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(171, 'flag-icon flag-icon-nz', 'nz', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(172, 'flag-icon flag-icon-om', 'om', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(173, 'flag-icon flag-icon-pa', 'pa', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(174, 'flag-icon flag-icon-pe', 'pe', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(175, 'flag-icon flag-icon-pf', 'pf', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(176, 'flag-icon flag-icon-pg', 'pg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(177, 'flag-icon flag-icon-ph', 'ph', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(178, 'flag-icon flag-icon-pk', 'pk', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(179, 'flag-icon flag-icon-pl', 'pl', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(180, 'flag-icon flag-icon-pm', 'pm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(181, 'flag-icon flag-icon-pn', 'pn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(182, 'flag-icon flag-icon-pr', 'pr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(183, 'flag-icon flag-icon-ps', 'ps', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(184, 'flag-icon flag-icon-pt', 'pt', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(185, 'flag-icon flag-icon-pw', 'pw', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(186, 'flag-icon flag-icon-py', 'py', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(187, 'flag-icon flag-icon-qa', 'qa', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(188, 'flag-icon flag-icon-re', 're', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(189, 'flag-icon flag-icon-ro', 'ro', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(190, 'flag-icon flag-icon-rs', 'rs', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(191, 'flag-icon flag-icon-ru', 'ru', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(192, 'flag-icon flag-icon-rw', 'rw', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(193, 'flag-icon flag-icon-sa', 'sa', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(194, 'flag-icon flag-icon-sb', 'sb', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(195, 'flag-icon flag-icon-sc', 'sc', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(196, 'flag-icon flag-icon-sd', 'sd', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(197, 'flag-icon flag-icon-se', 'se', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(198, 'flag-icon flag-icon-sg', 'sg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(199, 'flag-icon flag-icon-sh', 'sh', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(200, 'flag-icon flag-icon-si', 'si', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(201, 'flag-icon flag-icon-sj', 'sj', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(202, 'flag-icon flag-icon-sk', 'sk', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(203, 'flag-icon flag-icon-sl', 'sl', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(204, 'flag-icon flag-icon-sm', 'sm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(205, 'flag-icon flag-icon-sn', 'sn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(206, 'flag-icon flag-icon-so', 'so', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(207, 'flag-icon flag-icon-sr', 'sr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(208, 'flag-icon flag-icon-ss', 'ss', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(209, 'flag-icon flag-icon-st', 'st', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(210, 'flag-icon flag-icon-sv', 'sv', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(211, 'flag-icon flag-icon-sx', 'sx', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(212, 'flag-icon flag-icon-sy', 'sy', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(213, 'flag-icon flag-icon-sz', 'sz', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(214, 'flag-icon flag-icon-tc', 'tc', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(215, 'flag-icon flag-icon-td', 'td', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(216, 'flag-icon flag-icon-tf', 'tf', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(217, 'flag-icon flag-icon-tg', 'tg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(218, 'flag-icon flag-icon-th', 'th', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(219, 'flag-icon flag-icon-tj', 'tj', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(220, 'flag-icon flag-icon-tk', 'tk', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(221, 'flag-icon flag-icon-tl', 'tl', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(222, 'flag-icon flag-icon-tm', 'tm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(223, 'flag-icon flag-icon-tn', 'tn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(224, 'flag-icon flag-icon-to', 'to', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(225, 'flag-icon flag-icon-tr', 'tr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(226, 'flag-icon flag-icon-tt', 'tt', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(227, 'flag-icon flag-icon-tv', 'tv', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(228, 'flag-icon flag-icon-tw', 'tw', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(229, 'flag-icon flag-icon-tz', 'tz', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(230, 'flag-icon flag-icon-ua', 'ua', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(231, 'flag-icon flag-icon-ug', 'ug', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(232, 'flag-icon flag-icon-um', 'um', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(233, 'flag-icon flag-icon-us', 'us', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(234, 'flag-icon flag-icon-uy', 'uy', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(235, 'flag-icon flag-icon-uz', 'uz', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(236, 'flag-icon flag-icon-va', 'va', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(237, 'flag-icon flag-icon-vc', 'vc', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(238, 'flag-icon flag-icon-ve', 've', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(239, 'flag-icon flag-icon-vg', 'vg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(240, 'flag-icon flag-icon-vi', 'vi', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(241, 'flag-icon flag-icon-vn', 'vn', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(242, 'flag-icon flag-icon-vu', 'vu', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(243, 'flag-icon flag-icon-wf', 'wf', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(244, 'flag-icon flag-icon-ws', 'ws', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(245, 'flag-icon flag-icon-ye', 'ye', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(246, 'flag-icon flag-icon-yt', 'yt', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(247, 'flag-icon flag-icon-za', 'za', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(248, 'flag-icon flag-icon-zm', 'zm', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(249, 'flag-icon flag-icon-zw', 'zw', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_category_id` bigint(20) UNSIGNED NOT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery_category_id`, `upload_id`, `status`, `created_at`, `updated_at`) VALUES
(25, 1, 70, 1, '2024-06-27 03:29:03', '2024-06-27 03:29:03'),
(26, 2, 71, 1, '2024-06-27 03:29:16', '2024-06-27 03:29:16'),
(27, 2, 72, 1, '2024-06-27 03:29:27', '2024-06-27 03:29:27'),
(28, 3, 73, 1, '2024-06-27 03:30:08', '2024-06-27 03:30:08'),
(29, 4, 74, 1, '2024-06-27 03:30:23', '2024-06-27 03:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admission', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Annual Program', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'Awards', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'Curriculum', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category_translates`
--

CREATE TABLE `gallery_category_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_category_translates`
--

INSERT INTO `gallery_category_translates` (`id`, `gallery_category_id`, `locale`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Admission', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 2, 'en', 'Annual Program', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 3, 'en', 'Awards', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 4, 'en', 'Curriculum', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 1, 'bn', 'ভর্তি', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 2, 'bn', 'বার্ষিক প্রোগ্রাম', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 3, 'bn', 'পুরস্কার', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 4, 'bn', 'পাঠ্যক্রম', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Male', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Female', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `gender_translates`
--

CREATE TABLE `gender_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmeets`
--

CREATE TABLE `gmeets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `gmeet_link` varchar(255) NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `graves`
--

CREATE TABLE `graves` (
  `id` int(11) NOT NULL,
  `grave_row` varchar(255) DEFAULT NULL,
  `grave_no` int(11) DEFAULT NULL,
  `frist_name` varchar(150) NOT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_bural` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `father_name` varchar(200) DEFAULT NULL,
  `mother_name` varchar(200) DEFAULT NULL,
  `husband_name` varchar(255) DEFAULT NULL,
  `blood_group` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `old` varchar(200) DEFAULT NULL,
  `relative_frist_name` varchar(200) NOT NULL,
  `relative_second_name` varchar(200) DEFAULT NULL,
  `relative_mobile` varchar(200) NOT NULL,
  `relative_email` varchar(200) DEFAULT NULL,
  `name_of_the_relationship` varchar(200) DEFAULT NULL,
  `relative_present_address` text DEFAULT NULL,
  `relative_parmanent_address` text DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` timestamp NULL DEFAULT NULL,
  `updated_by` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `graves`
--

INSERT INTO `graves` (`id`, `grave_row`, `grave_no`, `frist_name`, `last_name`, `gender`, `date_of_birth`, `date_of_bural`, `address`, `father_name`, `mother_name`, `husband_name`, `blood_group`, `note`, `old`, `relative_frist_name`, `relative_second_name`, `relative_mobile`, `relative_email`, `name_of_the_relationship`, `relative_present_address`, `relative_parmanent_address`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, '6', 99, 'Vladimir', 'Snyder', '', '1993-11-21', '1991-07-18', 'Commodi eum explicab', 'Perry', 'Moses', NULL, '', 'Ut et in aut pariatu', NULL, 'Townsend', 'Crawford', '8', 'giryd@mailinator.com', 'Fernandez', 'Tempore ad autem au', 'Ea enim eligendi ut', '2024-07-02 10:55:07', '2024-07-02 04:55:07', NULL, NULL),
(3, '6', 72, 'Amelia', 'Cleveland', '', '2011-03-12', '1970-07-18', 'Eaque ea eveniet de', 'Snow', 'Goodwin', NULL, '', 'Quas proident tempo', NULL, 'Kirk', 'Alvarez', '64', 'juziqe@mailinator.com', 'Solis', 'Ipsam sint voluptas', 'Aut sequi obcaecati', '2024-07-02 10:55:36', '2024-07-02 04:55:36', NULL, NULL),
(5, '5', 79, 'Kim', 'Dolan', '', '2006-06-20', '2004-08-04', '', 'Joelle', 'Wendy', NULL, '', 'Nam alias aut et tem', NULL, 'Kim', 'Dolan', '', '', 'Maya', '', '', '2024-07-03 04:19:58', '2024-07-02 22:19:58', NULL, NULL),
(6, '5', 58, 'Cameron', 'Jenna', '', '1988-09-25', '2019-06-14', 'Quidem dolorem quis', 'Caldwell', 'Lars', NULL, '2', 'Nulla in et accusant', NULL, 'Uriah', 'Dacey', '63', 'kekyq@mailinator.com', 'Colleen', 'Ex incidunt dolor q', 'Aspernatur beatae pr', '2024-07-03 04:21:38', '2024-07-02 22:21:38', NULL, NULL),
(7, '5', 16, 'Geoffrey', 'Howard', '', '2014-08-14', '2009-09-08', 'Minus doloremque dol', 'Natalie', 'Hedda', NULL, '', 'Vance', NULL, 'Lester', 'Britanney', '74', 'vazysyje@mailinator.com', 'Talon', 'Sint quos sed sint', 'Eveniet enim enim d', '2024-07-03 04:34:35', '2024-07-02 22:34:35', NULL, NULL),
(8, '5', 88, 'Hall', 'Portia', '2', '2008-03-31', '1996-02-04', 'In odio do anim quia', 'Alika', 'Lucian', NULL, '', 'Mia', NULL, 'Kai', 'Oscar', '8', 'joci@mailinator.com', 'Melvin', 'Nobis placeat volup', 'Nam occaecat nobis e', '2024-07-03 04:47:36', '2024-07-02 22:47:36', NULL, NULL),
(12, NULL, NULL, 'Chandler', NULL, '1', NULL, '1996-12-03', 'Perspiciatis fugit', 'Bo', 'Bo', 'Bethany', NULL, 'Zahir', NULL, 'Hayfa', NULL, '29', 'merote@mailinator.com', 'Dylan', 'Ea adipisicing anim', 'Assumenda est volupt', '2024-07-17 09:59:32', '2024-07-17 03:59:32', NULL, NULL),
(13, NULL, NULL, 'Jonas', NULL, '', NULL, '2019-11-25', 'Laboriosam voluptat', 'Xandra', 'Mira', 'Wallace', NULL, 'Marny', NULL, 'Ramona', NULL, '72', 'jawe@mailinator.com', 'Hyatt', 'Ea et esse et sint', 'Ut quo obcaecati ad', '2024-07-17 09:59:59', '2024-07-17 03:59:59', NULL, NULL),
(14, NULL, NULL, 'Vernon', NULL, '1', NULL, '1982-12-06', 'Est quis accusamus f', 'Fritz', 'Carol', 'Kessie', NULL, 'Stacy', NULL, 'Uma', NULL, '32', 'tyqyvet@mailinator.com', 'Patricia', 'Ducimus necessitati', 'Qui in et sed cum ha', '2024-07-17 10:01:24', '2024-07-17 04:01:24', NULL, NULL),
(15, NULL, NULL, 'Thaddeus', NULL, '', NULL, '2024-07-17', 'Corporis itaque fugi', 'Sigourney', 'Britanney', 'Rhiannon', NULL, 'Nola', NULL, 'Deanna', NULL, '11', 'puxe@mailinator.com', 'Sandra', 'Molestiae adipisci e', 'Et recusandae Ut il', '2024-07-17 10:12:57', '2024-07-17 04:12:57', NULL, NULL),
(16, NULL, NULL, 'Bell', NULL, '1', NULL, '2024-07-18', 'asdfads', 'Carlson', 'Lowe', 'Tiger45', NULL, 'Mollit facere aliqui', NULL, 'Hatfield', NULL, '3888744653', 'dev.sheraziit@gmail.com', 'Nur amin', 'Nobis est autem amet', 'Necessitatibus non c', '2024-07-18 03:53:58', '2024-07-17 21:53:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grave_rows`
--

CREATE TABLE `grave_rows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grave_rows`
--

INSERT INTO `grave_rows` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(5, 'B', 1, '2024-07-01 04:30:38', '2024-07-01 04:30:38'),
(6, 'C', 1, '2024-07-01 04:30:45', '2024-07-01 04:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `submission_date` date DEFAULT NULL,
  `marks` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `document_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homework_students`
--

CREATE TABLE `homework_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `homework_id` bigint(20) UNSIGNED NOT NULL,
  `homework` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `marks` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `id_cards`
--

CREATE TABLE `id_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `expired_date` date DEFAULT NULL,
  `frontside_bg_image` bigint(20) UNSIGNED DEFAULT NULL,
  `backside_bg_image` bigint(20) UNSIGNED DEFAULT NULL,
  `signature` bigint(20) UNSIGNED DEFAULT NULL,
  `qr_code` bigint(20) UNSIGNED DEFAULT NULL,
  `backside_description` text DEFAULT NULL,
  `student_name` tinyint(1) NOT NULL DEFAULT 1,
  `admission_no` tinyint(1) NOT NULL DEFAULT 1,
  `roll_no` tinyint(1) NOT NULL DEFAULT 1,
  `class_name` tinyint(1) NOT NULL DEFAULT 1,
  `section_name` tinyint(1) NOT NULL DEFAULT 1,
  `blood_group` tinyint(1) NOT NULL DEFAULT 1,
  `dob` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `id_cards`
--

INSERT INTO `id_cards` (`id`, `title`, `expired_date`, `frontside_bg_image`, `backside_bg_image`, `signature`, `qr_code`, `backside_description`, `student_name`, `admission_no`, `roll_no`, `class_name`, `section_name`, `blood_group`, `dob`, `created_at`, `updated_at`) VALUES
(2, 'on', '2024-06-30', NULL, NULL, NULL, NULL, 'https://bennettfeely.com/clippy/pics/pittsburgh.jpg\r\nhttps://bennettfeely.com/clippy/pics/pittsburgh.jpghttps://bennettfeely.com/clippy/pics/pittsburgh.jpg', 0, 1, 1, 1, 1, 1, 1, '2024-06-29 22:58:59', '2024-06-29 22:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `donar_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `income_head` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fees_collect_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `session_id`, `donar_id`, `name`, `income_head`, `date`, `invoice_number`, `amount`, `upload_id`, `description`, `fees_collect_id`, `created_at`, `updated_at`) VALUES
(44, 1, 2, NULL, 4, '2024-07-17', '1', 1000.00, NULL, '00', NULL, '2024-07-17 00:21:02', '2024-07-17 00:21:02'),
(45, 1, NULL, '19', 1, '2024-07-18', NULL, 500.00, NULL, NULL, 53, '2024-07-18 02:59:06', '2024-07-18 02:59:06'),
(47, 1, NULL, '20', 1, '2024-07-18', NULL, 1000.00, NULL, NULL, 55, '2024-07-18 04:32:39', '2024-07-18 04:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"333387a3-9e9b-4aa6-aa87-7701c7f8e69d\",\"displayName\":\"App\\\\Jobs\\\\SendMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailJob\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\SendMailJob\\\":2:{s:7:\\\"\\u0000*\\u0000body\\\";s:226:\\\"Dear Super Admin,\\n                         Justin Langley admitted on class : one , section : A on 27 Jun 2024. Thank You বাইতুল হিকমাহ মারকাযুল  কুরআন  মাদরাসা .\\\";s:15:\\\"\\u0000*\\u0000email_config\\\";a:6:{s:6:\\\"driver\\\";s:4:\\\"smtp\\\";s:13:\\\"reciver_email\\\";s:15:\\\"admin@gmail.com\\\";s:13:\\\"receiver_name\\\";s:11:\\\"Super Admin\\\";s:11:\\\"sender_name\\\";s:43:\\\"Sherazi Schooled - School Management System\\\";s:12:\\\"sender_email\\\";s:20:\\\"Sherazi103@gmail.com\\\";s:7:\\\"subject\\\";s:24:\\\"Student Online Admission\\\";}}\"}}', 0, NULL, 1719483697, 1719483697),
(2, 'default', '{\"uuid\":\"38b4ad44-2e17-4044-902d-68364b9a18c6\",\"displayName\":\"App\\\\Jobs\\\\SendMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailJob\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\SendMailJob\\\":2:{s:7:\\\"\\u0000*\\u0000body\\\";s:226:\\\"Dear Super Admin,\\n                         Justin Langley admitted on class : one , section : A on 27 Jun 2024. Thank You বাইতুল হিকমাহ মারকাযুল  কুরআন  মাদরাসা .\\\";s:15:\\\"\\u0000*\\u0000email_config\\\";a:6:{s:6:\\\"driver\\\";s:4:\\\"smtp\\\";s:13:\\\"reciver_email\\\";s:15:\\\"admin@gmail.com\\\";s:13:\\\"receiver_name\\\";s:11:\\\"Super Admin\\\";s:11:\\\"sender_name\\\";s:43:\\\"Sherazi Schooled - School Management System\\\";s:12:\\\"sender_email\\\";s:20:\\\"Sherazi103@gmail.com\\\";s:7:\\\"subject\\\";s:24:\\\"Student Online Admission\\\";}}\"}}', 0, NULL, 1719483703, 1719483703),
(3, 'default', '{\"uuid\":\"19f0c8c3-5a4c-4930-947c-934c0c195ef9\",\"displayName\":\"App\\\\Jobs\\\\NotificationSendJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\NotificationSendJob\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\NotificationSendJob\\\":4:{s:10:\\\"\\u0000*\\u0000purpose\\\";s:16:\\\"Online_Admission\\\";s:11:\\\"\\u0000*\\u0000user_ids\\\";a:1:{i:0;i:1;}s:7:\\\"\\u0000*\\u0000data\\\";a:5:{s:12:\\\"student_name\\\";s:14:\\\"Justin Langley\\\";s:5:\\\"class\\\";s:3:\\\"one\\\";s:7:\\\"section\\\";s:1:\\\"A\\\";s:14:\\\"admission_date\\\";s:11:\\\"27 Jun 2024\\\";s:3:\\\"url\\\";s:46:\\\"http:\\/\\/127.0.0.1:8000\\/online-admissions\\/edit\\/1\\\";}s:7:\\\"\\u0000*\\u0000role\\\";a:1:{i:0;s:11:\\\"Super Admin\\\";}}\"}}', 0, NULL, 1719483705, 1719483705);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon_class`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 'bn', 'flag-icon flag-icon-bd', 'ltr', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'English', 'en', 'flag-icon flag-icon-us', 'ltr', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `marks_grades`
--

CREATE TABLE `marks_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent_from` double(8,2) NOT NULL,
  `percent_upto` double(8,2) NOT NULL,
  `point` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks_registers`
--

CREATE TABLE `marks_registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `exam_type_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks_register_childrens`
--

CREATE TABLE `marks_register_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marks_register_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mark` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_categories`
--

CREATE TABLE `member_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_08_03_072002_create_uploads_table', 1),
(2, '2013_08_03_072003_create_roles_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2022_07_19_045514_create_flag_icons_table', 1),
(7, '2022_08_08_043550_create_permissions_table', 1),
(8, '2022_08_16_103633_create_settings_table', 1),
(9, '2022_08_17_092623_create_languages_table', 1),
(10, '2022_10_04_044255_create_searches_table', 1),
(11, '2022_10_13_064230_create_designations_table', 1),
(12, '2023_02_20_101104_create_genders_table', 1),
(13, '2023_02_22_044252_create_religions_table', 1),
(14, '2023_02_22_053608_create_blood_groups_table', 1),
(15, '2023_02_22_070416_create_sessions_table', 1),
(16, '2023_02_22_100221_create_classes_table', 1),
(17, '2023_02_22_102118_create_student_categories_table', 1),
(18, '2023_02_22_115507_create_sections_table', 1),
(19, '2023_02_23_042918_create_shifts_table', 1),
(20, '2023_02_23_081806_create_subjects_table', 1),
(21, '2023_02_23_095042_create_parent_guardians_table', 1),
(22, '2023_02_24_124400_create_students_table', 1),
(23, '2023_02_25_052716_create_class_rooms_table', 1),
(24, '2023_02_25_071052_create_fees_groups_table', 1),
(25, '2023_02_25_091226_create_fees_types_table', 1),
(26, '2023_02_25_102359_create_fees_masters_table', 1),
(27, '2023_02_26_113001_create_departments_table', 1),
(28, '2023_02_27_045430_create_staff_table', 1),
(29, '2023_02_28_051437_create_exam_types_table', 1),
(30, '2023_02_28_065459_create_class_setups_table', 1),
(31, '2023_02_28_065614_create_class_setup_childrens_table', 1),
(32, '2023_02_28_090453_create_session_class_students_table', 1),
(33, '2023_03_01_115144_create_subject_assigns_table', 1),
(34, '2023_03_01_115229_create_subject_assign_childrens_table', 1),
(35, '2023_03_03_114236_create_marks_grades_table', 1),
(36, '2023_03_07_062402_create_exam_assigns_table', 1),
(37, '2023_03_12_053023_create_fees_assigns_table', 1),
(38, '2023_03_12_053024_create_fees_assign_childrens_table', 1),
(39, '2023_03_12_053025_create_account_heads_table', 1),
(40, '2023_03_12_053025_create_fees_collects_table', 1),
(41, '2023_03_12_053026_create_incomes_table', 1),
(42, '2023_03_12_090806_create_expenses_table', 1),
(43, '2023_03_13_054359_create_marks_registers_table', 1),
(44, '2023_03_13_101938_create_exam_assign_childrens_table', 1),
(45, '2023_03_13_132615_create_marks_register_childrens_table', 1),
(46, '2023_03_14_090857_create_fees_master_childrens_table', 1),
(47, '2023_03_17_113815_create_promote_students_table', 1),
(48, '2023_03_22_062320_create_time_schedules_table', 1),
(49, '2023_03_22_062321_create_class_routines_table', 1),
(50, '2023_03_24_053514_create_class_routine_childrens_table', 1),
(51, '2023_04_07_045518_create_exam_routines_table', 1),
(52, '2023_04_07_045719_create_exam_routine_childrens_table', 1),
(53, '2023_04_27_105438_create_examination_settings_table', 1),
(54, '2023_04_28_093751_create_sliders_table', 1),
(55, '2023_04_28_105549_create_counters_table', 1),
(56, '2023_04_30_070252_create_news_table', 1),
(57, '2023_04_30_123236_create_examination_results_table', 1),
(58, '2023_05_02_054153_create_gallery_categories_table', 1),
(59, '2023_05_02_060903_create_galleries_table', 1),
(60, '2023_05_03_033302_create_attendances_table', 1),
(61, '2023_05_09_095159_create_events_table', 1),
(62, '2023_05_18_095505_create_page_sections_table', 1),
(63, '2023_05_21_104600_create_contact_infos_table', 1),
(64, '2023_05_21_122123_create_department_contacts_table', 1),
(65, '2023_05_22_045924_create_contacts_table', 1),
(66, '2023_05_22_095703_create_subscribes_table', 1),
(67, '2023_05_24_044715_create_abouts_table', 1),
(68, '2023_06_14_071848_create_online_admissions_table', 1),
(69, '2023_06_17_090920_create_book_categories_table', 1),
(70, '2023_06_18_080708_create_books_table', 1),
(71, '2023_06_18_091300_create_member_categories_table', 1),
(72, '2023_06_18_091301_create_members_table', 1),
(73, '2023_06_18_093638_create_issue_books_table', 1),
(74, '2023_06_22_044425_create_homework_table', 1),
(75, '2023_07_12_083329_add_user_type_column_in_searches_table', 1),
(76, '2023_07_18_045644_create_question_groups_table', 1),
(77, '2023_07_18_055005_create_question_banks_table', 1),
(78, '2023_07_18_091545_create_question_bank_childrens_table', 1),
(79, '2023_07_19_085237_create_online_exams_table', 1),
(80, '2023_07_20_074247_create_online_exam_children_students_table', 1),
(81, '2023_07_20_074318_create_online_exam_children_questions_table', 1),
(82, '2023_07_26_041901_create_answers_table', 1),
(83, '2023_07_26_041949_create_answer_childrens_table', 1),
(84, '2023_07_28_150210_create_currencies_table', 1),
(85, '2023_08_02_132147_add_payment_gateway_and_transaction_id_in_fees_collects_table', 1),
(86, '2023_08_30_111142_create_subscriptions_table', 1),
(87, '2023_11_10_120311_create_homework_students_table', 1),
(88, '2023_11_14_155008_create_id_cards_table', 1),
(89, '2023_11_15_152219_create_certificates_table', 1),
(90, '2023_11_22_113507_create_gmeets_table', 1),
(91, '2023_11_23_122832_create_notice_boards_table', 1),
(92, '2023_11_27_122348_create_sms_mail_templates_table', 1),
(93, '2023_11_28_123854_create_sms_mail_logs_table', 1),
(94, '2024_02_28_085432_create_student_absent_notifications_table', 1),
(95, '2024_02_28_102602_create_system_notifications_table', 1),
(96, '2024_02_28_110330_create_jobs_table', 1),
(97, '2024_02_29_050637_create_notification_settings_table', 1),
(98, '2024_03_04_064053_create_pages_table', 1),
(99, '2024_03_06_123332_create_slider_translates_table', 1),
(100, '2024_03_07_074949_create_online_admission_settings_table', 1),
(101, '2024_03_07_141027_create_page_translates_table', 1),
(102, '2024_03_07_172038_create_section_translates_table', 1),
(103, '2024_03_08_113402_create_about_translates_table', 1),
(104, '2024_03_08_124638_create_counter_translates_table', 1),
(105, '2024_03_08_145357_create_contact_info_translates_table', 1),
(106, '2024_03_08_153350_create_department_contact_translates_table', 1),
(107, '2024_03_08_155742_create_news_translates_table', 1),
(108, '2024_03_08_163636_create_event_translates_table', 1),
(109, '2024_03_14_061235_create_online_admission_fees_assigns_table', 1),
(110, '2024_03_19_033526_create_gallery_category_translates_table', 1),
(111, '2024_03_19_094031_create_notice_board_translates_table', 1),
(112, '2024_03_19_104803_create_setting_translates_table', 1),
(113, '2024_03_28_070846_create_gender_translates_table', 1),
(114, '2024_03_28_075421_create_religon_translates_table', 1),
(115, '2024_04_01_035342_create_class_translates_table', 1),
(116, '2024_04_01_035412_create_class_section_translates_table', 1),
(117, '2024_04_01_061856_create_session_translates_table', 1),
(118, '2024_04_02_052447_create_shift_translates_table', 1),
(120, '2019_09_15_000010_create_tenants_table', 2),
(121, '2019_09_15_000020_create_domains_table', 2),
(122, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(123, '2023_08_10_083847_create_packages_table', 2),
(124, '2023_08_10_083848_create_schools_table', 2),
(125, '2023_08_10_091618_create_features_table', 2),
(126, '2023_08_10_095949_create_package_children_table', 2),
(127, '2023_08_14_100130_create_testimonials_table', 2),
(128, '2023_08_16_052151_create_contacts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `publish_date`, `upload_id`, `status`, `created_at`, `updated_at`) VALUES
(5, '20+ Academic Curriculum We Done!4', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-23', '2024-05-28', 23, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, '20+ Academic Curriculum We Done!5', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-22', '2024-05-28', 24, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, '20+ Academic Curriculum We Done!6', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-21', '2024-05-28', 25, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, '20+ Academic Curriculum We Done!9', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-18', '2024-05-28', 28, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, '20+ Academic Curriculum We Done!10', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-17', '2024-05-28', 29, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, '20+ Academic Curriculum We Done!11', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-16', '2024-05-28', 30, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(13, '20+ Academic Curriculum We Done!12', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-15', '2024-05-28', 31, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `news_translates`
--

CREATE TABLE `news_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_translates`
--

INSERT INTO `news_translates` (`id`, `news_id`, `locale`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, 5, 'en', '20+ Academic Curriculum We Done!4', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 6, 'en', '20+ Academic Curriculum We Done!5', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 7, 'en', '20+ Academic Curriculum We Done!6', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 10, 'en', '20+ Academic Curriculum We Done!9', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 11, 'en', '20+ Academic Curriculum We Done!10', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, 12, 'en', '20+ Academic Curriculum We Done!11', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(13, 13, 'en', '20+ Academic Curriculum We Done!12', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(18, 5, 'bn', '20+ একাডেমিক পাঠ্যক্রম আমরা সম্পন্ন করেছি!4', 'অনসেস্ট স্কুলে 20,000-এরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রের বাসস্থান, আগ্রহ, বয়স এবং পটভূমির বিস্তৃত বৈচিত্র্য সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(19, 6, 'bn', '20+ একাডেমিক পাঠ্যক্রম আমরা সম্পন্ন করেছি!5', 'অনসেস্ট স্কুলে 20,000-এরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রের বাসস্থান, আগ্রহ, বয়স এবং পটভূমির বিস্তৃত বৈচিত্র্য সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(20, 7, 'bn', '20+ একাডেমিক পাঠ্যক্রম আমরা সম্পন্ন করেছি!6', 'অনসেস্ট স্কুলে 20,000-এরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রের বাসস্থান, আগ্রহ, বয়স এবং পটভূমির বিস্তৃত বৈচিত্র্য সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(23, 10, 'bn', '20+ একাডেমিক পাঠ্যক্রম আমরা সম্পন্ন করেছি!9', 'অনসেস্ট স্কুলে 20,000-এরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রের বাসস্থান, আগ্রহ, বয়স এবং পটভূমির বিস্তৃত বৈচিত্র্য সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(24, 11, 'bn', '20+ একাডেমিক পাঠ্যক্রম আমরা সম্পন্ন করেছি!10', 'অনসেস্ট স্কুলে 20,000-এরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রের বাসস্থান, আগ্রহ, বয়স এবং পটভূমির বিস্তৃত বৈচিত্র্য সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(25, 12, 'bn', '20+ একাডেমিক পাঠ্যক্রম আমরা সম্পন্ন করেছি!11', 'অনসেস্ট স্কুলে 20,000-এরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রের বাসস্থান, আগ্রহ, বয়স এবং পটভূমির বিস্তৃত বৈচিত্র্য সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(26, 13, 'bn', '20+ একাডেমিক পাঠ্যক্রম আমরা সম্পন্ন করেছি!12', 'অনসেস্ট স্কুলে 20,000-এরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রের বাসস্থান, আগ্রহ, বয়স এবং পটভূমির বিস্তৃত বৈচিত্র্য সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `notice_boards`
--

CREATE TABLE `notice_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `publish_date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `is_visible_web` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `visible_to` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_board_translates`
--

CREATE TABLE `notice_board_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_board_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(255) NOT NULL,
  `host` varchar(255) DEFAULT NULL COMMENT 'e=email, s=SMS, w=web, a=app',
  `reciever` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `template` longtext DEFAULT NULL,
  `shortcode` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `event`, `host`, `reciever`, `subject`, `template`, `shortcode`, `created_at`, `updated_at`) VALUES
(1, 'Student_Attendance', '{\"email\":1,\"sms\":1,\"web\":1,\"app\":1}', '{\"Student\":1,\"Parent\":1}', '{\"Student\":\"Student Attendance\",\"Parent\":\"Student Attendance\"}', '{\"Student\":{\"Email\":\"Dear [student_name],\\n                        Your attendance was listed [attendance_type] on [attendance_date] for Class: [class], Section: [section]. Thank You [school_name] .\",\"SMS\":\"Dear [student_name],\\n                        Your attendance was listed [attendance_type] on [attendance_date] for Class: [class], Section: [section]. Thank You [school_name] .\",\"Web\":\"Dear [student_name],\\n                        Your attendance was listed [attendance_type] on [attendance_date] for Class: [class], Section: [section]. Thank You [school_name] .\",\"App\":\"Dear [student_name],\\n                        Your attendance was listed [attendance_type] on [attendance_date] for Class: [class], Section: [section]. Thank You [school_name] .\"},\"Parent\":{\"Email\":\"Dear [parent_name],\\n                        Your child\'s attendance was listed [attendance_type] on [attendance_date] for Class: [class], Section: [section]. Thank You [school_name] .\",\"SMS\":\"Dear [parent_name],\\n                        Your child\'s attendance was listed [attendance_type] on [attendance_date] for Class: [class], Section: [section]. Thank You [school_name].\",\"Web\":\"Dear [parent_name],\\n                        Your child\'s attendance was listed [attendance_type] on [attendance_date] for Class: [class], Section: [section]. Thank You [school_name] .\",\"App\":\"Dear [parent_name],\\n                        Your child\'s attendance was listed [attendance_type] on [attendance_date] for Class: [class], Section: [section]. Thank You [school_name] .\"}}', '{\"Student\":\"[student_name], [class], [section], [admission_no], [roll_no], [attendance_type], [attendance_date], [school_name]\",\"Parent\":\"[guardian_name], [student_name], [class], [section], [admission_no], [roll_no], [attendance_type], [attendance_date], [school_name]\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Online_Admission', '{\"email\":1,\"sms\":1,\"web\":1,\"app\":1}', '{\"Super Admin\":1,\"Student\":1,\"Parent\":1}', '{\"Super Admin\":\"Student Online Admission\",\"Student\":\"Student Online Admission\",\"Parent\":\"Student Online Admission\"}', '{\"Super Admin\":{\"Email\":\"Dear Super Admin,\\n                         [student_name] admitted on class : [class] , section : [section] on [admission_date]. Thank You [school_name] .\",\"SMS\":\"Dear Super Admin,\\n                        [student_name] admitted on class : [class] , section : [section] on [admission_date]. Thank You [school_name] .\",\"Web\":\"Dear Super Admin,\\n                        [student_name] admitted on class : [class] , section : [section] on [admission_date]. Thank You [school_name] .\",\"App\":\"Dear Super Admin,\\n                        [student_name] admitted on class : [class] , section : [section] on [admission_date]. Thank You [school_name] .\"},\"Student\":{\"Email\":\"Dear [student_name],\\n                        You are admitted on class : [class] , section : [section] , Admission No : [admission_no] on [school_name]. Login Username : [student_email] , Default Password : 123456 Thank You for choosing [school_name] .\",\"SMS\":\"Dear [student_name],\\n                        You are admitted on class : [class] , section : [section] , Admission No : [admission_no] on [school_name]. Login Username : [student_email]  , Default Password : 123456 Thank You for choosing [school_name] .\",\"Web\":\"You are admitted on class : [class] , section : [section] , Admission No : [admission_no] on [school_name].\",\"App\":\"Dear [student_name],\\n                        Your attendance was listed [attendance_type] on [attendance_date] for Class: [class], Section: [section]. Thank You [school_name] .\"},\"Parent\":{\"Email\":\"Dear [parent_name],\\n                        Your child [student_name] admitted on class : [class] , section : [section] , Admission No : [admission_no] on [school_name]. Login Username : [parent_email]  , Default Password : 123456 Thank You for choosing [school_name]\",\"SMS\":\"Dear [parent_name],\\n                        Your child [student_name] admitted on class : [class] , section : [section] , Admission No : [admission_no] on [school_name]. Login Username : [parent_email]  , Default Password : 123456 Thank You for choosing [school_name]\",\"Web\":\"Dear [parent_name],\\n                        Your child [student_name] admitted on class : [class_name] , section : [section_name] , Admission No : [admission_no] on [school_name]. Login Username : [parent_email]  , Default Password : 123456 Thank You for choosing [school_name]\",\"App\":\" Your child [student_name] admitted on class : [class_name] , section : [section_name] , Admission No : [admission_no] on [school_name]. Login Username : [parent_email] , Default Password : 123456 Thank You for choosing [school_name]\"}}', '{\"Super Admin\":\"[student_name], [class], [section], [admission_no], [admission_date], [school_name]\",\"Student\":\"[parent_name], [student_name], [class], [section], [admission_no], [student_email], [phone] , [school_name]\",\"Parent\":\"[parent_name], [student_name], [class], [section], [admission_no], [parent_email], [phone] , [school_name]\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `online_admissions`
--

CREATE TABLE `online_admissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = no_need, 2 = need, 1 = done',
  `payslip_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fees_assign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `religion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `student_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `previous_school` tinyint(4) NOT NULL DEFAULT 0,
  `previous_school_info` text DEFAULT NULL,
  `previous_school_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_phone` varchar(255) DEFAULT NULL,
  `guardian_profession` varchar(255) DEFAULT NULL,
  `gurdian_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_phone` varchar(255) DEFAULT NULL,
  `father_profession` varchar(255) DEFAULT NULL,
  `father_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_phone` varchar(255) DEFAULT NULL,
  `mother_profession` varchar(255) DEFAULT NULL,
  `mother_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_documents` longtext DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `cpr_no` varchar(255) DEFAULT NULL,
  `spoken_lang_at_home` varchar(255) DEFAULT NULL,
  `residance_address` varchar(255) DEFAULT NULL,
  `father_nationality` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_admissions`
--

INSERT INTO `online_admissions` (`id`, `first_name`, `last_name`, `phone`, `email`, `reference_no`, `payment_status`, `payslip_image_id`, `fees_assign_id`, `shift_id`, `session_id`, `classes_id`, `section_id`, `religion_id`, `gender_id`, `dob`, `student_image_id`, `previous_school`, `previous_school_info`, `previous_school_image_id`, `guardian_name`, `guardian_phone`, `guardian_profession`, `gurdian_image_id`, `father_name`, `father_phone`, `father_profession`, `father_image_id`, `mother_name`, `mother_phone`, `mother_profession`, `mother_image_id`, `upload_documents`, `place_of_birth`, `nationality`, `cpr_no`, `spoken_lang_at_home`, `residance_address`, `father_nationality`, `created_at`, `updated_at`) VALUES
(1, 'Justin', 'Langley', '+1 (957) 268-3702', 'belif@mailinator.com', 'WsAvSS', 2, NULL, NULL, 1, 1, 1, 1, 1, 1, '1975-03-25', NULL, 0, '', NULL, 'Winifred Cochran', '+1 (155) 828-6342', 'Quia et iste aliqua', 76, 'Bruno Morales', '+1 (232) 421-4099', 'Velit voluptate eiu', NULL, 'Sybill Weber', '+1 (568) 555-6994', 'A consequatur maxime', NULL, '{\"1\":{\"title\":\"Patience Mathews\",\"file\":null}}', 'Consequatur laborum', 'Sit delectus debit', 'Eaque laborum quaera', 'Sunt et voluptatem', 'Aut ipsum in quis au', 'Aut natus corrupti', '2024-06-27 04:21:34', '2024-06-27 04:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_fees_assigns`
--

CREATE TABLE `online_admission_fees_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fees_group_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_settings`
--

CREATE TABLE `online_admission_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'online_admission',
  `field` varchar(255) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT 1,
  `is_required` tinyint(1) DEFAULT 0,
  `is_system_required` tinyint(1) DEFAULT 0,
  `field_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_admission_settings`
--

INSERT INTO `online_admission_settings` (`id`, `type`, `field`, `is_show`, `is_required`, `is_system_required`, `field_value`, `created_at`, `updated_at`) VALUES
(1, 'online_admission', 'student_first_name', 1, 1, 1, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'online_admission', 'student_last_name', 1, 1, 1, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'online_admission', 'student_phone', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'online_admission', 'student_email', 1, 1, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'online_admission', 'student_dob', 1, 1, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 'online_admission', 'student_document', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 'online_admission', 'student_photo', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 'online_admission', 'session', 1, 1, 1, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 'online_admission', 'class', 1, 1, 1, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 'online_admission', 'section', 1, 1, 1, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 'online_admission', 'shift', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, 'online_admission', 'gender', 1, 1, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(13, 'online_admission', 'religion', 1, 1, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(14, 'online_admission', 'previous_school', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(15, 'online_admission', 'previous_school_info', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(16, 'online_admission', 'previous_school_doc', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(17, 'online_admission', 'admission_payment', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(18, 'online_admission', 'admission_payment_info', 1, 0, 0, 'Enter Payment Information ,Bank Name . Swift Code, Account Number, Account Branch Information Or Any kind of special note you can wrote here ', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(19, 'online_admission', 'place_of_birth', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(20, 'online_admission', 'nationality', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(21, 'online_admission', 'cpr_no', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(22, 'online_admission', 'spoken_lang_at_home', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(23, 'online_admission', 'residance_address', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(24, 'online_admission', 'father_nationality', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(25, 'online_admission', 'gurdian_name', 1, 1, 1, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(26, 'online_admission', 'gurdian_email', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(27, 'online_admission', 'gurdian_phone', 1, 1, 1, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(28, 'online_admission', 'gurdian_photo', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(29, 'online_admission', 'gurdian_profession', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(30, 'online_admission', 'father_name', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(31, 'online_admission', 'father_phone', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(32, 'online_admission', 'father_photo', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(33, 'online_admission', 'father_profession', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(34, 'online_admission', 'mother_name', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(35, 'online_admission', 'mother_phone', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(36, 'online_admission', 'mother_photo', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(37, 'online_admission', 'mother_profession', 1, 0, 0, NULL, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `online_exams`
--

CREATE TABLE `online_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `exam_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_mark` double(8,2) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `question_group_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_children_questions`
--

CREATE TABLE `online_exam_children_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_exam_id` bigint(20) UNSIGNED NOT NULL,
  `question_bank_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_children_students`
--

CREATE TABLE `online_exam_children_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_exam_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` enum('prepaid','postpaid') NOT NULL DEFAULT 'prepaid',
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `per_student_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `student_limit` int(11) DEFAULT NULL,
  `staff_limit` int(11) DEFAULT NULL,
  `duration` tinyint(4) DEFAULT NULL,
  `duration_number` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_children`
--

CREATE TABLE `package_children` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `menu_show` enum('header','footer') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `content`, `active_status`, `menu_show`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', 'privacy_policy', '<div class=\"elementor-element elementor-element-790b948d elementor-widget elementor-widget-text-editor\" data-id=\"790b948d\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px; color: var( --e-global-color-text ); font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; width: 1280px; margin-bottom: 0px; z-index: 3;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); padding: 0px 0px 100px;\"><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">This Privacy Policy document contains types of information that is collected and recorded by Ischool and how we use it. At Ischool , accessible from http://school.test , one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Ischool &nbsp;and how we use it.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Ischool . This policy does not apply to any information collected offline or via channels other than this website.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Consent</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Information we collect</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">How we use your information</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">We use the information we collect in various ways, including:</span></p><ul style=\"margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Provide, operate, and maintain our website</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Improve, personalize, and expand our website</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Understand and analyze how you use our website</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Develop new products, services, features, and functionality</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Send you emails</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Find and prevent fraud</span></li></ul><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Log Files</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and are a part of hosting services’ analytics. The information collected by log files includes internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any personally identifiable information. The purpose of the information is for analyzing trends, administering the site, tracking users’ movement on the website, and gathering demographic information.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">&nbsp;</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Cookies and Web Beacons</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Like any other website, Ischool &nbsp;uses ‘cookies’. These cookies are used to store information including visitors’ preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users’ experience by customizing our web page content based on visitors’ browser type and/or other information.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Advertising Partners Privacy Policies</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">You may consult this list to find the Privacy Policy for each of the advertising partners of Ischool .</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Ischool , which are sent directly to users’ browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Note that Ischool &nbsp;has no access to or control over these cookies that are used by third-party advertisers.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Third-Party Privacy Policies</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt out of certain options.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">You can choose to disable cookies through your browser options. To know more detailed information about cookie management with specific web browsers, it can be found on the browsers’ respective websites.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Payment Information Privacy Policies</span></h3><p style=\"margin-bottom: 0.9rem;\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;strongly confesses the importance of protecting all of your confidential information accordingly. Ischool &nbsp;maintains well protection of user’s information gathered in the website of Ischool . Ischool&nbsp;never shares the personal information of the clients to any other outsiders. This privacy policy is applicable on the both present and former clients of Eduman. After being agreed with the privacy policy, you will get access in our site as a client. Otherwise, you are not fit for being our website browser. We also maintain log files and update the files. Our all activities are fully secured that never be shared and declared to the third persons outside. This privacy policy is changeable in order to make it stronger but Eduman is careful lest it should cause harm to anybody.</p><p style=\"margin-bottom: 0.9rem;\">&nbsp;</p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Refund Policies</span></h3><p style=\"margin-bottom: 0.9rem;\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;will not entertain any refund or chargeback for any transaction.</p><p style=\"margin-bottom: 0.9rem;\">But If any Dispute arise on any transaction occurred then we will update the transaction status with proper validation and proof of transaction which need 14-21 working days.&nbsp;</p><p style=\"margin-bottom: 0.9rem;\">&nbsp;</p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">CCPA Privacy Rights (Do Not Sell My Personal Information)</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Under the CCPA, among other rights, California consumers have the right to:</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Request that a business that collects a consumer’s data disclose the categories and specific pieces of personal data that a business has collected about consumers.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Request that a business deletes any personal data about the consumer that a business has collected.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Request that a business that sells a consumer’s data, not sell the consumer’s data.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">GDPR Data Protection Rights</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to access – You have the right to request copies of your data. We may charge you a small fee for this service.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to erasure – You have the right to request that we erase your data, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to restrict processing – You have the right to request that we restrict the processing of your data, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to object to processing – You have the right to object to our processing of your data, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Children’s Information</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our recor</span></p><div><span data-preserver-spaces=\"true\"><br></span></div></div></div><div class=\"elementor-element elementor-element-4f36e2b7 elementor-widget__width-initial elementor-absolute elementor-widget elementor-widget-spacer\" data-id=\"4f36e2b7\" data-element_type=\"widget\" data-settings=\"{&quot;_position&quot;:&quot;absolute&quot;}\" data-widget_type=\"spacer.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: absolute; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px; z-index: 1; width: var( --container-widget-width, 100vw ); margin-bottom: 0px; max-width: 100vw; --spacer-size: 100vh; --container-widget-width: 100vw; --container-widget-flex-grow: 0; top: -0.5px; right: 551px; color: rgb(51, 51, 51); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); background-color: transparent; background-image: radial-gradient(rgba(44, 255, 0, 0.06) 0%, rgba(0, 0, 0, 0) 70%);\"><div class=\"elementor-spacer\"></div></div></div>', 1, 'footer', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Terms & Conditions', 'terms_conditions', '<p><b>Terms and Conditions of Use for Ischool Management Software\n                        </b></p><p><b><br></b>\n                                                    These Terms and Conditions govern your access to and use of the School Management Software , provided by Ischool . By accessing or using the Software, you agree to be bound by these Terms. If you do not agree to these Terms, please refrain from accessing or using the Software.\n                        </p><p><br></p><p><b>\n                                                    Acceptance of Terms: </b>By accessing or using the Software, you agree to be bound by these Terms. If you do not agree to all the terms and conditions of this agreement, you must not use the Software.</p><p><br></p><p>\n                        </p><p><b style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\">Use of the Software:</b><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> The Software is provided solely for the purpose of managing educational institutions, including but not limited to schools, colleges, and universities. You agree not to use the Software for any illegal or unauthorized purpose.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><b>User Accounts: </b></span><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">You may need to create an account to access certain features of the Software. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n\n                                                    Privacy:</b></span><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> We are committed to protecting your privacy. Our Privacy Policy outlines how we collect, use, and disclose your personal information. By using the Software, you consent to the collection, use, and disclosure of your personal information as described in the Privacy Policy.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n                                                    Intellectual Property:</b></span><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> The Software and its original content, features, and functionality are owned by Ischool and are protected by international copyright, trademark, patent, trade secret, and other intellectual property or proprietary rights laws.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n                                                    Limitation of Liability:</b></span><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> In no event shall\n                                                    Ischool be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to loss of profits, data, or goodwill, arising from the use of or inability to use the Software.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>Changes to Terms:</b></span><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> We reserve the right to modify or replace these Terms at any time. If a revision is material, we will provide at least 30 days notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.</span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n                                                    Governing Law: </b></span><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">These Terms shall be governed by and construed in accordance with the laws of United Stated Of America , without regard to its conflict of law provisions.\n                        </span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n                                                    Contact Us: </b></span><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">If you have any questions about these Terms, please contact us at&nbsp; Ones .\n\n                                                    By accessing or using the Software, you agree to be bound by these Terms. If you do not agree to these Terms, please refrain from accessing or using the Software.</span><br></p>', 1, 'footer', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'Our Missions', 'our_missions', '<p>At Ischool , we are dedicated to providing a nurturing and enriching educational environment that empowers students to reach their full potential. Our mission is to foster academic excellence, character development, and lifelong learning in every student we serve.</p><p><br></p><h3><b style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\">Our Core Values</b></h3><p><b style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><br></b><br></p><p><b>\n                        1. Excellence:\n                        </b> We are committed to excellence in all aspects of education, striving to provide the highest quality teaching, resources, and support to our students.\n                            </p><p><br></p><p><b>\n                        2. Integrity:\n                        </b> We uphold the highest standards of integrity, honesty, and ethical behavior in our interactions with students, parents, staff, and the community.\n                            </p><p><br></p><p><b>\n                        3. Respect:</b>\n                        We foster a culture of respect, valuing the unique abilities, perspectives, and backgrounds of each individual within our school community.\n                            </p><p><br></p><p><b>\n                        4. Collaboration:\n                            </b>  We believe in the power of collaboration and teamwork, working closely with students, parents, educators, and the community to achieve our shared goals.\n                        </p><p><br></p><p><b>\n                        5. Innovation:</b>\n                        We embrace innovation and creativity, continuously seeking new and effective ways to enhance the learning experience and meet the evolving needs of our students.</p><p><br></p><p>\n                            </p><p style=\"text-align: center;\"><b><u>\n                        Our Goals</u></b></p><p style=\"text-align: center;\"><b><u><br></u></b></p><p style=\"text-align: center;\"><b><u>\n                        </u></b></p><ul><li><b>                            1. Academic Excellence:\n                        </b>  We strive to provide rigorous academic programs that challenge and inspire students to achieve their highest academic potential.</li></ul><p><br></p><ul><li><b>\n                        2. Character Development:</b>\n                        We are committed to fostering the development of strong character traits such as honesty, responsibility, compassion, and resilience in our students.</li></ul><p><br></p><ul><li><b>\n                        3. Lifelong Learning:\n                        </b> We aim to instill a love of learning and a growth mindset in our students, empowering them to become lifelong learners who are curious, adaptable, and eager to explore new ideas and opportunities.</li></ul><p><br></p><ul><li><b>\n                        4 Community Engagement:\n                        </b> We seek to actively engage with parents, families, and the broader community to create a supportive and inclusive learning environment that nurtures the holistic development of our students.\n\n                        Join Us in Our Mission\n                        We invite you to join us in our mission to inspire and empower the next generation of leaders, thinkers, and innovators. </li></ul><p><br></p><p>Together, we can make a difference in the lives of our students and create a brighter future for all.\n\n                        This sample content provides an overview of the schools mission, core values, goals, and an invitation for stakeholders to join in achieving those goals. You can customize it further to align with the specific mission and values of your school management application.</p>', 1, 'footer', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `page_sections`
--

CREATE TABLE `page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_sections`
--

INSERT INTO `page_sections` (`id`, `key`, `name`, `description`, `upload_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 'social_links', '', '', NULL, '[{\"name\":\"Facebook\",\"icon\":\"fab fa-facebook-f\",\"link\":\"http:\\/\\/www.facebook.com\"},{\"name\":\"Twitter\",\"icon\":\"fab fa-twitter\",\"link\":\"http:\\/\\/www.twitter.com\"},{\"name\":\"Pinterest\",\"icon\":\"fab fa-pinterest-p\",\"link\":\"http:\\/\\/www.pinterest.com\"},{\"name\":\"Instagram\",\"icon\":\"fab fa-instagram\",\"link\":\"http:\\/\\/www.instagram.com\"}]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'statement', 'Statement Of Onest Schooleded', '', 5, '[{\"title\":\"Mission Statement\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Read More\"},{\"title\":\"Vision Statement\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet Read More\"}]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'study_at', 'Study at Onest Schooleded', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet', 6, '[{\"icon\":8,\"title\":\"Out Prospects\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet\"},{\"icon\":9,\"title\":\"Out Prospects\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet\"},{\"icon\":10,\"title\":\"Out Prospects\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet\"}]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'explore', 'Explore Onest Schoooled', '\"We Educate Knowledge & Essential Skills\" is a phrase that emphasizes the importance of both theoretical knowledge', 7, '[{\"tab\":\"Campus Life\",\"title\":\"Campus Life\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\"},{\"tab\":\"Academic\",\"title\":\"Academic\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\"},{\"tab\":\"Athletics\",\"title\":\"Athletics\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\"},{\"tab\":\"School\",\"title\":\"School\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\"}]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'why_choose_us', 'Excellence In Teaching And Learning', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligations of business it will frequently occurs that pleasures. Provide Endless Opportunities', NULL, '[\"A higher education qualification\",\"Better career prospects\",\"Better career prospects\",\"Better career prospects\"]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 'academic_curriculum', '20+ Academic Curriculum', 'Onsest Schooled is home to more than 20,000 students and 230,000 alumni with a wide variety of interests, ages and backgrounds, the University reflects the city’s dynamic mix of populations.', NULL, '[\"Bangal Medium\",\"Bangal Medium\",\"Bangal Medium\",\"Bangal Medium\",\"Bangal Medium\",\"Bangal Medium\"]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 'coming_up', 'What’s Coming Up?', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligation.', NULL, '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 'news', 'Latest From Our Blog', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligation.', NULL, '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 'our_gallery', 'Our Gallery', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligation.', NULL, '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 'contact_information', 'Find Our <br> Contact Information', '', NULL, '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 'department_contact_information', 'Contact By Department', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligations of business it will', NULL, '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, 'our_teachers', 'Our Featured Teachers', '', NULL, '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `page_translates`
--

CREATE TABLE `page_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translates`
--

INSERT INTO `page_translates` (`id`, `page_id`, `locale`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Privacy Policy', '<div class=\"elementor-element elementor-element-790b948d elementor-widget elementor-widget-text-editor\" data-id=\"790b948d\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px; color: var( --e-global-color-text ); font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; width: 1280px; margin-bottom: 0px; z-index: 3;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); padding: 0px 0px 100px;\"><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">This Privacy Policy document contains types of information that is collected and recorded by Ischool and how we use it. At Ischool , accessible from http://school.test , one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Ischool &nbsp;and how we use it.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Ischool . This policy does not apply to any information collected offline or via channels other than this website.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Consent</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Information we collect</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">How we use your information</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">We use the information we collect in various ways, including:</span></p><ul style=\"margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Provide, operate, and maintain our website</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Improve, personalize, and expand our website</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Understand and analyze how you use our website</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Develop new products, services, features, and functionality</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Send you emails</span></li><li style=\"margin-top: 0px; margin-bottom: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background: transparent;\"><span data-preserver-spaces=\"true\">Find and prevent fraud</span></li></ul><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Log Files</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and are a part of hosting services’ analytics. The information collected by log files includes internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any personally identifiable information. The purpose of the information is for analyzing trends, administering the site, tracking users’ movement on the website, and gathering demographic information.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">&nbsp;</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Cookies and Web Beacons</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Like any other website, Ischool &nbsp;uses ‘cookies’. These cookies are used to store information including visitors’ preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users’ experience by customizing our web page content based on visitors’ browser type and/or other information.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Advertising Partners Privacy Policies</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">You may consult this list to find the Privacy Policy for each of the advertising partners of Ischool .</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Ischool , which are sent directly to users’ browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Note that Ischool &nbsp;has no access to or control over these cookies that are used by third-party advertisers.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Third-Party Privacy Policies</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt out of certain options.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">You can choose to disable cookies through your browser options. To know more detailed information about cookie management with specific web browsers, it can be found on the browsers’ respective websites.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Payment Information Privacy Policies</span></h3><p style=\"margin-bottom: 0.9rem;\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;strongly confesses the importance of protecting all of your confidential information accordingly. Ischool &nbsp;maintains well protection of user’s information gathered in the website of Ischool . Ischool&nbsp;never shares the personal information of the clients to any other outsiders. This privacy policy is applicable on the both present and former clients of Eduman. After being agreed with the privacy policy, you will get access in our site as a client. Otherwise, you are not fit for being our website browser. We also maintain log files and update the files. Our all activities are fully secured that never be shared and declared to the third persons outside. This privacy policy is changeable in order to make it stronger but Eduman is careful lest it should cause harm to anybody.</p><p style=\"margin-bottom: 0.9rem;\">&nbsp;</p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Refund Policies</span></h3><p style=\"margin-bottom: 0.9rem;\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;will not entertain any refund or chargeback for any transaction.</p><p style=\"margin-bottom: 0.9rem;\">But If any Dispute arise on any transaction occurred then we will update the transaction status with proper validation and proof of transaction which need 14-21 working days.&nbsp;</p><p style=\"margin-bottom: 0.9rem;\">&nbsp;</p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">CCPA Privacy Rights (Do Not Sell My Personal Information)</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Under the CCPA, among other rights, California consumers have the right to:</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Request that a business that collects a consumer’s data disclose the categories and specific pieces of personal data that a business has collected about consumers.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Request that a business deletes any personal data about the consumer that a business has collected.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Request that a business that sells a consumer’s data, not sell the consumer’s data.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">GDPR Data Protection Rights</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to access – You have the right to request copies of your data. We may charge you a small fee for this service.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to erasure – You have the right to request that we erase your data, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to restrict processing – You have the right to request that we restrict the processing of your data, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to object to processing – You have the right to object to our processing of your data, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Children’s Information</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our recor</span></p><div><span data-preserver-spaces=\"true\"><br></span></div></div></div><div class=\"elementor-element elementor-element-4f36e2b7 elementor-widget__width-initial elementor-absolute elementor-widget elementor-widget-spacer\" data-id=\"4f36e2b7\" data-element_type=\"widget\" data-settings=\"{&quot;_position&quot;:&quot;absolute&quot;}\" data-widget_type=\"spacer.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: absolute; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px; z-index: 1; width: var( --container-widget-width, 100vw ); margin-bottom: 0px; max-width: 100vw; --spacer-size: 100vh; --container-widget-width: 100vw; --container-widget-flex-grow: 0; top: -0.5px; right: 551px; color: rgb(51, 51, 51); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); background-color: transparent; background-image: radial-gradient(rgba(44, 255, 0, 0.06) 0%, rgba(0, 0, 0, 0) 70%);\"><div class=\"elementor-spacer\"></div></div></div>', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 2, 'en', 'Terms & Conditions', '<p><b>Terms and Conditions of Use for Ischool Management Software\n                        </b></p><p><b><br></b>\n                                                    These Terms and Conditions govern your access to and use of the School Management Software , provided by Ischool . By accessing or using the Software, you agree to be bound by these Terms. If you do not agree to these Terms, please refrain from accessing or using the Software.\n                        </p><p><br></p><p><b>\n                                                    Acceptance of Terms: </b>By accessing or using the Software, you agree to be bound by these Terms. If you do not agree to all the terms and conditions of this agreement, you must not use the Software.</p><p><br></p><p>\n                        </p><p><b style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\">Use of the Software:</b><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> The Software is provided solely for the purpose of managing educational institutions, including but not limited to schools, colleges, and universities. You agree not to use the Software for any illegal or unauthorized purpose.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><b>User Accounts: </b></span><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">You may need to create an account to access certain features of the Software. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n\n                                                    Privacy:</b></span><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> We are committed to protecting your privacy. Our Privacy Policy outlines how we collect, use, and disclose your personal information. By using the Software, you consent to the collection, use, and disclosure of your personal information as described in the Privacy Policy.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n                                                    Intellectual Property:</b></span><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> The Software and its original content, features, and functionality are owned by Ischool and are protected by international copyright, trademark, patent, trade secret, and other intellectual property or proprietary rights laws.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n                                                    Limitation of Liability:</b></span><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> In no event shall\n                                                    Ischool be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to loss of profits, data, or goodwill, arising from the use of or inability to use the Software.</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>Changes to Terms:</b></span><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> We reserve the right to modify or replace these Terms at any time. If a revision is material, we will provide at least 30 days notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.</span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n                                                    Governing Law: </b></span><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">These Terms shall be governed by and construed in accordance with the laws of United Stated Of America , without regard to its conflict of law provisions.\n                        </span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>\n                                                    Contact Us: </b></span><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">If you have any questions about these Terms, please contact us at&nbsp; Ones .\n\n                                                    By accessing or using the Software, you agree to be bound by these Terms. If you do not agree to these Terms, please refrain from accessing or using the Software.</span><br></p>', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 3, 'en', 'Our Missions', '<p>At Ischool , we are dedicated to providing a nurturing and enriching educational environment that empowers students to reach their full potential. Our mission is to foster academic excellence, character development, and lifelong learning in every student we serve.</p><p><br></p><h3><b style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\">Our Core Values</b></h3><p><b style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><br></b><br></p><p><b>\n                        1. Excellence:\n                        </b> We are committed to excellence in all aspects of education, striving to provide the highest quality teaching, resources, and support to our students.\n                            </p><p><br></p><p><b>\n                        2. Integrity:\n                        </b> We uphold the highest standards of integrity, honesty, and ethical behavior in our interactions with students, parents, staff, and the community.\n                            </p><p><br></p><p><b>\n                        3. Respect:</b>\n                        We foster a culture of respect, valuing the unique abilities, perspectives, and backgrounds of each individual within our school community.\n                            </p><p><br></p><p><b>\n                        4. Collaboration:\n                            </b>  We believe in the power of collaboration and teamwork, working closely with students, parents, educators, and the community to achieve our shared goals.\n                        </p><p><br></p><p><b>\n                        5. Innovation:</b>\n                        We embrace innovation and creativity, continuously seeking new and effective ways to enhance the learning experience and meet the evolving needs of our students.</p><p><br></p><p>\n                            </p><p style=\"text-align: center;\"><b><u>\n                        Our Goals</u></b></p><p style=\"text-align: center;\"><b><u><br></u></b></p><p style=\"text-align: center;\"><b><u>\n                        </u></b></p><ul><li><b>                            1. Academic Excellence:\n                        </b>  We strive to provide rigorous academic programs that challenge and inspire students to achieve their highest academic potential.</li></ul><p><br></p><ul><li><b>\n                        2. Character Development:</b>\n                        We are committed to fostering the development of strong character traits such as honesty, responsibility, compassion, and resilience in our students.</li></ul><p><br></p><ul><li><b>\n                        3. Lifelong Learning:\n                        </b> We aim to instill a love of learning and a growth mindset in our students, empowering them to become lifelong learners who are curious, adaptable, and eager to explore new ideas and opportunities.</li></ul><p><br></p><ul><li><b>\n                        4 Community Engagement:\n                        </b> We seek to actively engage with parents, families, and the broader community to create a supportive and inclusive learning environment that nurtures the holistic development of our students.\n\n                        Join Us in Our Mission\n                        We invite you to join us in our mission to inspire and empower the next generation of leaders, thinkers, and innovators. </li></ul><p><br></p><p>Together, we can make a difference in the lives of our students and create a brighter future for all.\n\n                        This sample content provides an overview of the schools mission, core values, goals, and an invitation for stakeholders to join in achieving those goals. You can customize it further to align with the specific mission and values of your school management application.</p>', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 1, 'bn', 'গোপনীয়তা নীতি', '<div class=\"elementor-element elementor-element-790b948d elementor-widget elementor-widget-text-editor\" data-id=\"790b948d\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" শৈলী =\"--ফ্লেক্স-নির্দেশ: প্রাথমিক; --ফ্লেক্স-র্যাপ: প্রাথমিক; --জাস্টিফাই-সামগ্রী: প্রাথমিক; --অ্যালাইন-আইটেম: প্রাথমিক; --অ্যালাইন-সামগ্রী: প্রাথমিক; --গ্যাপ: প্রাথমিক; -- ফ্লেক্স-বেসিস: প্রাথমিক; --ফ্লেক্স-গ্রো: প্রাথমিক; --ফ্লেক্স-সঙ্কুচিত: প্রাথমিক; --অর্ডার: প্রাথমিক; --অ্যালাইন-স্ব: প্রাথমিক; ফ্লেক্স-বেসিস: var(--ফ্লেক্স-বেসিস); ফ্লেক্স -গ্রো: var(--ফ্লেক্স-গ্রো); ফ্লেক্স-সঙ্কুচিত: var(--ফ্লেক্স-সঙ্কুচিত); অর্ডার: var(--অর্ডার); align-self: var(--align-self); flex-direction : var(--ফ্লেক্স-ডাইরেকশন); ফ্লেক্স-র্যাপ: var(--ফ্লেক্স-র্যাপ); ন্যায্যতা-সামগ্রী: var(--জাস্টিফাই-কন্টেন্ট); সারিবদ্ধ-আইটেম: var(--সারিবদ্ধ-আইটেম); সারিবদ্ধ -সামগ্রী: var(--align-content); gap: var(--gap); অবস্থান: আপেক্ষিক; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper- পেজিনেশন-বুলেট-আকার: 6px; --swiper-পৃষ্ঠা-পৃষ্ঠা-বুলেট-অনুভূমিক-ব্যবধান: 6px; --উইজেট-স্পেসিং: 20px; রঙ: var( --e-global-color-text); ফন্ট-পরিবার: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; প্রস্থ: 1280px; মার্জিন-নিচ: 0px; z-index: 3;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e -রূপান্তর-পরিবর্তন-সময়কাল,.4s); প্যাডিং: 0px 0px 100px;\"><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">এই গোপনীয়তা নীতি নথিতে এমন ধরনের তথ্য রয়েছে যা সংগৃহীত এবং রেকর্ড করা হয়Ischool এবং আমরা কিভাবে এটি ব্যবহার করি। এ Ischool, থেকে অ্যাক্সেসযোগ্যhttp://school.test , আমাদের প্রধান অগ্রাধিকারগুলির মধ্যে একটি হল আমাদের দর্শকদের গোপনীয়তা। এই গোপনীয়তা নীতি নথিতে তথ্যের প্রকার রয়েছে যা দ্বারা সংগৃহীত এবং রেকর্ড করা হয় Ischool&nbsp;and how we use it.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">আপনার যদি অতিরিক্ত প্রশ্ন থাকে বা আমাদের গোপনীয়তা নীতি সম্পর্কে আরও তথ্যের প্রয়োজন হয়, তাহলে আমাদের সাথে যোগাযোগ করতে দ্বিধা করবেন না।</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">এই গোপনীয়তা নীতি শুধুমাত্র আমাদের অনলাইন ক্রিয়াকলাপের ক্ষেত্রে প্রযোজ্য এবং আমাদের ওয়েবসাইটের দর্শকদের জন্য তারা যে তথ্য শেয়ার করেছেন এবং/অথবা সংগ্রহ করেছেন তাদের জন্য বৈধIschool. এই নীতিটি এই ওয়েবসাইট ছাড়া অফলাইনে বা চ্যানেলের মাধ্যমে সংগ্রহ করা কোনো তথ্যের ক্ষেত্রে প্রযোজ্য নয়।</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit; \"><span data-preserver-spaces=\"true\">সম্মতি</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">এর দ্বারা আমাদের ওয়েবসাইট ব্যবহার করে, আপনি এতদ্বারা আমাদের গোপনীয়তা নীতিতে সম্মত হন এবং এর শর্তাবলীতে সম্মত হন।</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\" <span data-preserver-spaces=\"true\">আমরা যে তথ্য সংগ্রহ করি</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\"> আপনাকে যে ব্যক্তিগত তথ্য প্রদান করতে বলা হয়েছে এবং কেন আপনাকে এটি প্রদান করতে বলা হয়েছে, আমরা যখন আপনাকে আপনার ব্যক্তিগত তথ্য প্রদান করতে বলব তখনই আপনাকে স্পষ্ট করে দেওয়া হবে।</span></p><p style =\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">আপনি যদি আমাদের সাথে সরাসরি যোগাযোগ করেন, তাহলে আমরা আপনার সম্পর্কে অতিরিক্ত তথ্য পেতে পারি যেমন আপনার নাম, ইমেল ঠিকানা, ফোন নম্বর, এর বিষয়বস্তু আপনি যে বার্তা এবং/অথবা সংযুক্তিগুলি আমাদের পাঠাতে পারেন এবং অন্য যেকোন তথ্য প্রদান করতে পারেন।</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces \"সত্য \"মার্জিন-টপ: 0.5rem; মার্জিন-নিচ: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">আমরা কীভাবে আপনার তথ্য ব্যবহার করি</span></h3><p style=\"margin-bottom: 0.9rem;\"><span ডেটা -preserver-spaces=\"true\">আমরা বিভিন্ন উপায়ে সংগ্রহ করা তথ্য ব্যবহার করি, যার মধ্যে রয়েছে:</span></p><ul style=\"margin-bottom: 0px; সীমানা: 0px; outline-style: প্রাথমিক; রূপরেখা-প্রস্থ: 0px; উল্লম্ব-সারিবদ্ধ: বেসলাইন; ব্যাকগ্রাউন্ড: স্বচ্ছ;\"><li style=\"margin-top: 0px; মার্জিন-নিচ: 0px; সীমানা: 0px; outline-style: প্রাথমিক; রূপরেখা-প্রস্থ: 0px; উল্লম্ব-সারিবদ্ধ: বেসলাইন; পটভূমি: স্বচ্ছ;\"><span data-preserver-spaces=\"true\">আমাদের ওয়েবসাইট প্রদান, পরিচালনা এবং রক্ষণাবেক্ষণ করুন</span></li><li style=\"margin-top: 0px; মার্জিন-নিচ: 0px; সীমানা: 0px; outline-style: প্রাথমিক; রূপরেখা-প্রস্থ: 0px; উল্লম্ব-সারিবদ্ধ: বেসলাইন; পটভূমি: স্বচ্ছ;\"><span data-preserver-spaces=\"true\">আমাদের ওয়েবসাইট উন্নত করুন, ব্যক্তিগতকৃত করুন এবং প্রসারিত করুন</span></li><li style=\"margin-top: 0px; মার্জিন-নিচ: 0px; সীমানা: 0px; outline-style: প্রাথমিক; রূপরেখা-প্রস্থ: 0px; উল্লম্ব-সারিবদ্ধ: বেসলাইন; পটভূমি: স্বচ্ছ;\"><span data-preserver-spaces=\"true\">আপনি আমাদের ওয়েবসাইট কীভাবে ব্যবহার করেন তা বুঝুন এবং বিশ্লেষণ করুন</span></li><li style=\"margin-top: 0px; মার্জিন-নিচ: 0px; সীমানা: 0px; outline-style: প্রাথমিক; রূপরেখা-প্রস্থ: 0px; উল্লম্ব-সারিবদ্ধ: বেসলাইন; পটভূমি: স্বচ্ছ;\"><span data-preserver-spaces=\"true\">নতুন পণ্য, পরিষেবা, বৈশিষ্ট্য এবং কার্যকারিতা বিকাশ করুন</span></li><li style=\"margin-top: 0px; মার্জিন-নিচ: 0px; সীমানা: 0px; outline-style: প্রাথমিক; রূপরেখা-প্রস্থ: 0px; উল্লম্ব-সারিবদ্ধ: বেসলাইন; পটভূমি: স্বচ্ছ;\"><span data-preserver-spaces=\"true\">আপনার সাথে যোগাযোগ করুন, সরাসরি বা আমাদের অংশীদারদের একজনের মাধ্যমে, গ্রাহক পরিষেবা সহ, আপনাকে ওয়েবসাইট সম্পর্কিত আপডেট এবং অন্যান্য তথ্য প্রদান করতে, এবং বিপণন এবং প্রচারমূলক উদ্দেশ্যে</span></li><li style=\"margin-top: 0px; মার্জিন-নিচ: 0px; সীমানা: 0px; outline-style: প্রাথমিক; রূপরেখা-প্রস্থ: 0px; উল্লম্ব-সারিবদ্ধ: বেসলাইন; পটভূমি: স্বচ্ছ;\"><span data-preserver-spaces=\"true\">আপনাকে ইমেল পাঠান</span></li><li style=\"margin-top: 0px; মার্জিন-নিচ: 0px; সীমানা: 0px; outline-style: প্রাথমিক; রূপরেখা-প্রস্থ: 0px; উল্লম্ব-সারিবদ্ধ: বেসলাইন; পটভূমি: স্বচ্ছ;\"><span data-preserver-spaces=\"true\">জালিয়াতি খুঁজুন এবং প্রতিরোধ করুন</span></li></ul><h3 style=\"margin-top: 0.5rem; মার্জিন-নিচ: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">লগ ফাইল</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver- spaces=\"true\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; ব্যাকগ্রাউন্ড-রঙ: স্বচ্ছ; ফন্ট-সাইজ: var(--BS-বডি-ফন্ট-সাইজ); ফন্ট-ওজন: var(--BS-বডি-ফন্ট-ওজন); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;লগ ফাইল ব্যবহার করার একটি আদর্শ পদ্ধতি অনুসরণ করে৷ এই ফাইল ভিজিটর লগ লগ যখন তারা ওয়েবসাইট পরিদর্শন. সমস্ত হোস্টিং কোম্পানি এটি করে এবং হোস্টিং পরিষেবার বিশ্লেষণের একটি অংশ। লগ ফাইলের মাধ্যমে সংগৃহীত তথ্যের মধ্যে রয়েছে ইন্টারনেট প্রোটোকল (IP) ঠিকানা, ব্রাউজারের ধরন, ইন্টারনেট পরিষেবা প্রদানকারী (ISP), তারিখ এবং সময় স্ট্যাম্প, উল্লেখ/প্রস্থান পৃষ্ঠা এবং সম্ভবত ক্লিকের সংখ্যা। এগুলো কোনো ব্যক্তিগতভাবে শনাক্তযোগ্য তথ্যের সাথে যুক্ত নয়। তথ্যের উদ্দেশ্য হল প্রবণতা বিশ্লেষণ করা, সাইট পরিচালনা করা, ওয়েবসাইটে ব্যবহারকারীদের গতিবিধি ট্র্যাক করা এবং জনসংখ্যা সংক্রান্ত তথ্য সংগ্রহ করা।</span></p><p style=\"margin-bottom: 0.9rem;\">< span data-preserver-spaces=\"true\">&nbsp;</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span ডেটা -preserver-spaces=\"true\">কুকিজ এবং ওয়েব বীকন</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">অন্য যেকোনও মত ওয়েবসাইট,Ischool &nbsp;uses ‘cookies’. এই কুকিগুলি ভিজিটরদের পছন্দ, এবং ভিজিটর অ্যাক্সেস বা ভিজিট করা ওয়েবসাইটের পৃষ্ঠাগুলি সহ তথ্য সংরক্ষণ করতে ব্যবহার করা হয়। ভিজিটরদের ব্রাউজারের ধরন এবং/অথবা অন্যান্য তথ্যের উপর ভিত্তি করে আমাদের ওয়েব পৃষ্ঠার বিষয়বস্তু কাস্টমাইজ করে ব্যবহারকারীদের অভিজ্ঞতা অপ্টিমাইজ করতে তথ্য ব্যবহার করা হয়।</span></p><h3 style=\"margin-top: 0.5rem; margin- নীচে: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">বিজ্ঞাপন অংশীদারদের গোপনীয়তা নীতি</span></h3><p style=\"margin-bottom: 0.9rem;\"> <span data-preserver-spaces=\"true\">এর প্রতিটি বিজ্ঞাপন অংশীদারের জন্য গোপনীয়তা নীতি খুঁজে পেতে আপনি এই তালিকাটি দেখতে পারেনIschool .</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">তৃতীয় পক্ষের বিজ্ঞাপন সার্ভার বা বিজ্ঞাপন নেটওয়ার্ক কুকিজ, জাভাস্ক্রিপ্ট, এর মতো প্রযুক্তি ব্যবহার করে অথবা ওয়েব বীকন যা তাদের নিজ নিজ বিজ্ঞাপনে ব্যবহৃত হয় এবং লিঙ্কে প্রদর্শিত হয়Ischool, যা সরাসরি ব্যবহারকারীদের ব্রাউজারে পাঠানো হয়। যখন এটি ঘটে তখন তারা স্বয়ংক্রিয়ভাবে আপনার আইপি ঠিকানা গ্রহণ করে। এই প্রযুক্তিগুলি তাদের বিজ্ঞাপন প্রচারাভিযানের কার্যকারিতা পরিমাপ করতে এবং/অথবা আপনি যে ওয়েবসাইটগুলিতে যান সেই বিজ্ঞাপন সামগ্রীগুলিকে ব্যক্তিগতকৃত করতে ব্যবহার করা হয়৷</span></p><p style=\"margin-bottom: 0.9rem;\" ><span data-preserver-spaces=\"true\">মনে রাখবেন যেIschool &nbsp;থার্ড-পার্টি বিজ্ঞাপনদাতাদের দ্বারা ব্যবহৃত এই কুকিগুলিতে কোনও অ্যাক্সেস বা নিয়ন্ত্রণ নেই৷</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">তৃতীয় পক্ষের গোপনীয়তা নীতি</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces =\"true\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;গোপনীয়তা নীতি অন্যান্য বিজ্ঞাপনদাতা বা ওয়েবসাইটে প্রযোজ্য নয়৷ সুতরাং, আমরা আপনাকে আরও বিস্তারিত তথ্যের জন্য এই তৃতীয় পক্ষের বিজ্ঞাপন সার্ভারগুলির সংশ্লিষ্ট গোপনীয়তা নীতিগুলির সাথে পরামর্শ করার পরামর্শ দিচ্ছি। এটিতে তাদের অনুশীলন এবং নির্দিষ্ট বিকল্পগুলি কীভাবে অপ্ট আউট করতে হয় সে সম্পর্কে নির্দেশাবলী অন্তর্ভুক্ত থাকতে পারে।</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\"> আপনি আপনার ব্রাউজার বিকল্পগুলির মাধ্যমে কুকিজ নিষ্ক্রিয় করতে বেছে নিতে পারেন। নির্দিষ্ট ওয়েব ব্রাউজারগুলির সাথে কুকি পরিচালনা সম্পর্কে আরও বিশদ তথ্য জানতে, এটি ব্রাউজারের নিজ নিজ ওয়েবসাইটে পাওয়া যেতে পারে৷</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">পেমেন্ট তথ্য গোপনীয়তা নীতি</span></h3><p style=\"margin-bottom: 0.9rem;\"><span style= \"ফন্ট-ফ্যামিলি: var( --e-global-typography-text-font-family), &quot;Roboto&quot;, Sans-serif; ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; হরফ-আকার: var(--BS-বডি-ফন্ট -আকার); font-weight: var(-bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;তদনুসারে আপনার সমস্ত গোপনীয় তথ্য রক্ষা করার গুরুত্বকে দৃঢ়ভাবে স্বীকার করে৷Ischool&nbsp;এর ওয়েবসাইটে সংগৃহীত ব্যবহারকারীর তথ্যের ভাল সুরক্ষা বজায় রাখে৷Ischool . Ischool&nbsp;never shares the personal information of the clients to any other outsiders. This privacy policy is applicable on the both present and former clients of Eduman. After being agreed with the privacy policy, you will get access in our site as a client. Otherwise, you are not fit for being our website browser. We also maintain log files and update the files. Our all activities are fully secured that never be shared and declared to the third persons outside. This privacy policy is changeable in order to make it stronger but Eduman is careful lest it should cause harm to anybody.</p><p style=\"margin-bottom: 0.9rem;\">&nbsp;</p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Refund Policies</span></h3><p style=\"margin-bottom: 0.9rem;\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;will not entertain any refund or chargeback for any transaction.</p><p style=\"margin-bottom: 0.9rem;\">But If any Dispute arise on any transaction occurred then we will update the transaction status with proper validation and proof of transaction which need 14-21 working days.&nbsp;</p><p style=\"margin-bottom: 0.9rem;\">&nbsp;</p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">CCPA Privacy Rights (Do Not Sell My Personal Information)</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Under the CCPA, among other rights, California consumers have the right to:</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Request that a business that collects a consumer’s data disclose the categories and specific pieces of personal data that a business has collected about consumers.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Request that a business deletes any personal data about the consumer that a business has collected.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Request that a business that sells a consumer’s data, not sell the consumer’s data.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">GDPR Data Protection Rights</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to access – You have the right to request copies of your data. We may charge you a small fee for this service.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to erasure – You have the right to request that we erase your data, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to restrict processing – You have the right to request that we restrict the processing of your data, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to object to processing – You have the right to object to our processing of your data, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></p><h3 style=\"margin-top: 0.5rem; margin-bottom: 1rem; font-family: inherit;\"><span data-preserver-spaces=\"true\">Children’s Information</span></h3><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</span></p><p style=\"margin-bottom: 0.9rem;\"><span data-preserver-spaces=\"true\"><span style=\"font-family: var( --e-global-typography-text-font-family ), &quot;Roboto&quot;, Sans-serif; background-color: transparent; font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ischool</span>&nbsp;does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our recor</span></p><div><span data-preserver-spaces=\"true\"><br></span></div></div></div><div class=\"elementor-element elementor-element-4f36e2b7 elementor-widget__width-initial elementor-absolute elementor-widget elementor-widget-spacer\" data-id=\"4f36e2b7\" data-element_type=\"widget\" data-settings=\"{&quot;_position&quot;:&quot;absolute&quot;}\" data-widget_type=\"spacer.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: absolute; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px; z-index: 1; width: var( --container-widget-width, 100vw ); margin-bottom: 0px; max-width: 100vw; --spacer-size: 100vh; --container-widget-width: 100vw; --container-widget-flex-grow: 0; top: -0.5px; right: 551px; color: rgb(51, 51, 51); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); background-color: transparent; background-image: radial-gradient(rgba(44, 255, 0, 0.06) 0%, rgba(0, 0, 0, 0) 70%);\"><div class=\"elementor-spacer\"></div></div></div>', '2024-05-28 00:02:06', '2024-05-28 00:02:06');
INSERT INTO `page_translates` (`id`, `page_id`, `locale`, `name`, `content`, `created_at`, `updated_at`) VALUES
(5, 2, 'bn', 'শর্তাবলী', '<p><b>Terms and Conditions of Use for Ischool ম্যানেজমেন্ট সফটওয়্যার\n                </b></p><p><b><br></b>\n                                            এই নিয়ম ও শর্তাবলী স্কুল ম্যানেজমেন্ট সফ্টওয়্যার দ্বারা প্রদত্ত আপনার অ্যাক্সেস এবং ব্যবহার নিয়ন্ত্রণ করেIschool . সফ্টওয়্যার অ্যাক্সেস বা ব্যবহার করে, আপনি এই শর্তাবলী দ্বারা আবদ্ধ হতে সম্মত হন। আপনি যদি এই শর্তাবলীতে সম্মত না হন তবে অনুগ্রহ করে সফটওয়্যারটি অ্যাক্সেস করা বা ব্যবহার করা থেকে বিরত থাকুন।\n                        </p><p><br></p><p><b>\n                        শর্তাদি গ্রহণ: </b>সফ্টওয়্যার অ্যাক্সেস বা ব্যবহার করে, আপনি এই শর্তাবলী দ্বারা আবদ্ধ হতে সম্মত হন। আপনি যদি এই চুক্তির সমস্ত শর্তাবলীর সাথে সম্মত না হন তবে আপনি অবশ্যই সফ্টওয়্যারটি ব্যবহার করবেন না৷</p><p><br></p><p>\n                        </p><p><b style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; font-size: var(--bs-body-font-size); text- align: var(--bs-body-text-align);\">সফ্টওয়্যারের ব্যবহার:</b><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; হরফ-আকার: var(--bs-বডি-ফন্ট-আকার); ফন্ট-ওজন: var(--BS-বডি-ফন্ট-ওজন); টেক্সট-সারিবদ্ধ: var(--BS-বডি-টেক্সট-সারিবদ্ধ) ;\"> সফ্টওয়্যারটি শুধুমাত্র স্কুল, কলেজ এবং বিশ্ববিদ্যালয় সহ কিন্তু সীমাবদ্ধ নয় শিক্ষা প্রতিষ্ঠান পরিচালনার উদ্দেশ্যে প্রদান করা হয়৷ আপনি কোনো অবৈধ বা অননুমোদিত উদ্দেশ্যে সফ্টওয়্যার ব্যবহার না করতে সম্মত হন৷</span></p><p><span style=\"color: var(--ot-text-subtitle); background-color: transparent; font -আকার: var(--bs-বডি-ফন্ট-আকার); ফন্ট-ওজন: var(--BS-বডি-ফন্ট-ওজন); টেক্সট-সারিবদ্ধ: var(--BS-বডি-টেক্সট-সারিবদ্ধ); \"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রঙ: স্বচ্ছ; ফন্ট-সাইজ: var(--bs- body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                        </span></p><p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; ফন্ট-সাইজ: var(--bs-body-font-size ); ফন্ট-ওজন: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><b>ব্যবহারকারীর অ্যাকাউন্ট: </b></ span><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; font-size: var(-bs-body-font-size); font-weight: var(- -bs-body-font-weight); text-align: var(--bs-body-text-align);\">সফ্টওয়্যারের কিছু বৈশিষ্ট্য অ্যাক্সেস করার জন্য আপনাকে একটি অ্যাকাউন্ট তৈরি করতে হতে পারে৷ আপনার অ্যাকাউন্টের শংসাপত্রের গোপনীয়তা বজায় রাখার জন্য এবং আপনার অ্যাকাউন্টের অধীনে হওয়া সমস্ত কার্যকলাপের জন্য আপনি দায়ী৷</span></p><p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রঙ: স্বচ্ছ; ফন্ট-আকার: var(--bs-বডি-ফন্ট-আকার); ফন্ট-ওজন: var(--BS-বডি-ফন্ট-ওজন); পাঠ্য-সারিবদ্ধ: var(--bs- body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রঙ: স্বচ্ছ; ফন্ট-সাইজ : var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> <br></span></p><p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; ফন্ট-সাইজ: var(--bs-body- font-size); text-align: var(--bs-body-text-align);\"><b>\n\n                                                    গোপনীয়তা:</b></span><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; ফন্ট-সাইজ: var(--bs-body-font-size) ; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> আমরা আপনার গোপনীয়তা রক্ষা করতে প্রতিশ্রুতিবদ্ধ। আমরা কীভাবে আপনার ব্যক্তিগত তথ্য সংগ্রহ, ব্যবহার এবং প্রকাশ করি তা আমাদের গোপনীয়তা নীতি রূপরেখা দেয়। সফ্টওয়্যার ব্যবহার করে, আপনি গোপনীয়তা নীতিতে বর্ণিত আপনার ব্যক্তিগত তথ্য সংগ্রহ, ব্যবহার এবং প্রকাশে সম্মত হন।</span></p><p><span style=\"color: var(--ot- টেক্সট-সাবটাইটেল; ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; ফন্ট-আকার: var(--bs-বডি-ফন্ট-সাইজ); হরফ-ওজন: var(--bs-বডি-ফন্ট-ওজন); পাঠ্য-সারিবদ্ধ: var (--bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রঙ: স্বচ্ছ; ফন্ট-আকার: var(--bs-বডি-ফন্ট-আকার); হরফ-ওজন: var(--BS-বডি-ফন্ট-ওজন); টেক্সট-সারিবদ্ধ: var(--BS-বডি-টেক্সট- সারিবদ্ধ);\n                        </span></p><p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; ফন্ট-সাইজ: var(--bs-body-font-size ); পাঠ্য-সারিবদ্ধ: var(--bs-বডি-টেক্সট-সারিবদ্ধ);\"><b>\n                                                    বুদ্ধিবৃত্তিক সম্পত্তি:</b></span><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; ফন্ট-সাইজ: var(--bs-body-font-size ); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> সফটওয়্যার এবং এর মূল বিষয়বস্তু, বৈশিষ্ট্য এবং কার্যকারিতা হল মালিকIschoolএবং আন্তর্জাতিক কপিরাইট, ট্রেডমার্ক, পেটেন্ট, ট্রেড সিক্রেট এবং অন্যান্য মেধা সম্পত্তি বা মালিকানা অধিকার আইন দ্বারা সুরক্ষিত।</span></p><p><span style=\"color: var(--ot-text-subtitle) ); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; ফন্ট-আকার: var(--bs-বডি-ফন্ট-সাইজ); ফন্ট-ওজন: var(--bs-বডি-ফন্ট-ওজন); পাঠ্য-সারিবদ্ধ: var(-- bs-body-text-align);\"><br></span></p><p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রঙ: স্বচ্ছ; ফন্ট -আকার: var(--bs-বডি-ফন্ট-আকার); ফন্ট-ওজন: var(--BS-বডি-ফন্ট-ওজন); টেক্সট-সারিবদ্ধ: var(--BS-বডি-টেক্সট-সারিবদ্ধ); \">\n                                                    </span></p><p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; ফন্ট-সাইজ: var(--bs-body-font-size ); পাঠ্য-সারিবদ্ধ: var(--bs-বডি-টেক্সট-সারিবদ্ধ);\"><b>\n                                                                                দায়বদ্ধতার সীমাবদ্ধতা:</b></span><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; ফন্ট-সাইজ: var(--bs-body-font- আকার); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> কোন ঘটনাতেই হবে না\n                                                    Ischoolযেকোন পরোক্ষ, আনুষঙ্গিক, বিশেষ, আনুষঙ্গিক, বা শাস্তিমূলক ক্ষতির জন্য দায়ী হতে হবে, যার মধ্যে সফ্টওয়্যার ব্যবহার বা ব্যবহারে অক্ষমতা থেকে উদ্ভূত লাভ, ডেটা বা সদিচ্ছার ক্ষতি সহ কিন্তু সীমাবদ্ধ নয়৷</span></p> <p><span style=\"color: var(--ot-text-subtitle); ব্যাকগ্রাউন্ড-রং: স্বচ্ছ; font-size: var(--bs-body-font-size); font-weight: var( --bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"color : var(--ot-টেক্সট-সাবটাইটেল); ব্যাকগ্রাউন্ড-রঙ: স্বচ্ছ; হরফ-আকার: var(--BS-বডি-ফন্ট-সাইজ); হরফ-ওজন: var (--BS-বডি-ফন্ট-ওজন ); text-align: var(--bs-body-text-align);\">\n                                                    </span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size ); text-align: var(--bs-body-text-align);\"><b>শর্তাবলীতে পরিবর্তন:</b></span><span style=\"background-color: transparent; color: var (--ot-টেক্সট-সাবটাইটেল); ফন্ট-সাইজ: var(--bs-বডি-ফন্ট-সাইজ); হরফ-ওজন: var(--BS-বডি-ফন্ট-ওজন); পাঠ্য-সারিবদ্ধ: var( --bs-body-text-align);\"> আমরা যে কোনো সময় এই শর্তাবলী পরিবর্তন বা প্রতিস্থাপন করার অধিকার সংরক্ষণ করি৷ যদি একটি সংশোধন বস্তুগত হয়, আমরা যেকোনো নতুন শর্ত কার্যকর হওয়ার অন্তত 30 দিনের নোটিশ প্রদান করব। কোন বস্তুগত পরিবর্তন গঠন করে তা আমাদের নিজস্ব বিবেচনার ভিত্তিতে নির্ধারণ করা হবে।</span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font- আকার: var(--BS-বডি-ফন্ট-আকার); ফন্ট-ওজন: var(--BS-বডি-ফন্ট-ওজন); টেক্সট-সারিবদ্ধ: var(--BS-বডি-টেক্সট-সারিবদ্ধ);\" ><br></span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body -font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">\n                                                    </span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size ); পাঠ্য-সারিবদ্ধ: var(--bs-বডি-টেক্সট-সারিবদ্ধ);\"><b>\n                                                                                পরিচালনা আইন: </b></span><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size ); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">এই শর্তাবলী দ্বারা নিয়ন্ত্রিত হবে এবং এর সাথে সঙ্গতিপূর্ণ হবে মার্কিন যুক্তরাষ্ট্রের আইন, তার আইনের বিধানের বিরোধ বিবেচনা ছাড়াই।\n                                                    </span></p><p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size ); ফন্ট-ওজন: var(--bs-body-font-weight); টেক্সট-সারিবদ্ধ: var(--bs-বডি-টেক্সট-সারিবদ্ধ);\"><br></span></p>< p><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(-bs-body-font-size); text-align: var(- -বিএস-বডি-টেক্সট-সারিবদ্ধ);\"><b>\n                                                                                আমাদের সাথে যোগাযোগ করুন: </b></span><span style=\"background-color: transparent; color: var(--ot-text-subtitle); font-size: var(--bs-body-font-size ); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">এই শর্তাবলী সম্পর্কে আপনার কোন প্রশ্ন থাকলে, অনুগ্রহ করে আমাদের সাথে যোগাযোগ করুন এ&nbsp; ওগুলো\n\n                                                                                সফ্টওয়্যার অ্যাক্সেস বা ব্যবহার করে, আপনি এই শর্তাবলী দ্বারা আবদ্ধ হতে সম্মত হন। আপনি যদি এই শর্তাবলীতে সম্মত না হন তবে অনুগ্রহ করে সফটওয়্যার অ্যাক্সেস বা ব্যবহার করা থেকে বিরত থাকুন৷</span><br></p>', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 3, 'bn', 'আমাদের মিশন', '<p>At Ischool , আমরা একটি লালনশীল এবং সমৃদ্ধ শিক্ষামূলক পরিবেশ প্রদানের জন্য নিবেদিত যা শিক্ষার্থীদের তাদের পূর্ণ সম্ভাবনায় পৌঁছানোর ক্ষমতা দেয়। আমাদের লক্ষ্য হল শিক্ষাগত উৎকর্ষতা, চরিত্রের বিকাশ, এবং আমরা যে সকল শিক্ষার্থীকে সেবা করি তাদের আজীবন শিক্ষা লাভ করা।</p><p><br></p><h3><b style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\">Our Core Values</b></h3><p><b style=\"color: var(--ot-text-subtitle); background-color: transparent; font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><br></b><br></p><p><b>\n                1. শ্রেষ্ঠত্ব:\n                </b>আমরা শিক্ষার সমস্ত দিকগুলিতে শ্রেষ্ঠত্বের জন্য প্রতিশ্রুতিবদ্ধ, আমাদের শিক্ষার্থীদের সর্বোচ্চ মানের শিক্ষাদান, সংস্থান এবং সহায়তা প্রদানের জন্য সচেষ্ট।\n                    </p><p><br></p><p><b>\n                2. সততা:\n                </b>ছাত্র, পিতামাতা, কর্মচারী এবং সম্প্রদায়ের সাথে আমাদের মিথস্ক্রিয়াতে আমরা সততা, সততা এবং নৈতিক আচরণের সর্বোচ্চ মান বজায় রাখি।\n                    </p><p><br></p><p><b>\n                3. সম্মান:</b>\n                আমরা আমাদের স্কুল সম্প্রদায়ের মধ্যে প্রতিটি ব্যক্তির অনন্য ক্ষমতা, দৃষ্টিভঙ্গি এবং পটভূমিকে মূল্যায়ন করে শ্রদ্ধার সংস্কৃতি গড়ে তুলি।\n                    </p><p><br></p><p><b>\n                4. সহযোগিতা:\n                    </b>আমরা আমাদের ভাগ করা লক্ষ্য অর্জনের জন্য ছাত্র, পিতামাতা, শিক্ষাবিদ এবং সম্প্রদায়ের সাথে ঘনিষ্ঠভাবে কাজ করে সহযোগিতা এবং দলবদ্ধতার শক্তিতে বিশ্বাস করি।\n                </p><p><br></p><p><b>\n                5. উদ্ভাবন:</b>\n                আমরা উদ্ভাবন এবং সৃজনশীলতাকে আলিঙ্গন করি, শেখার অভিজ্ঞতা বাড়াতে এবং আমাদের শিক্ষার্থীদের ক্রমবর্ধমান চাহিদা মেটাতে ক্রমাগত নতুন এবং কার্যকর উপায় খুঁজি।</p><p><br></p><p>\n                    </p><p style=\"text-align: center;\"><b><u>\n                আমাদের লক্ষ্য</u></b></p><p style=\"text-align: center;\"><b><u><br></u></b></p><p style=\"text-align: center;\"><b><u>\n                </u></b></p><ul><li><b> 1. একাডেমিক শ্রেষ্ঠত্ব:\n                </b> আমরা কঠোর একাডেমিক প্রোগ্রাম প্রদান করার চেষ্টা করি যা শিক্ষার্থীদের তাদের সর্বোচ্চ একাডেমিক সম্ভাবনা অর্জনের জন্য চ্যালেঞ্জ ও অনুপ্রাণিত করে।</li></ul><p><br></p><ul><li><b>\n                2. চরিত্র বিকাশ:</b>\n                আমরা আমাদের শিক্ষার্থীদের মধ্যে সততা, দায়িত্বশীলতা, সহানুভূতি এবং স্থিতিস্থাপকতার মতো দৃঢ় চরিত্রের বৈশিষ্ট্যের বিকাশে প্রতিশ্রুতিবদ্ধ।</li></ul><p><br></p><ul><li>< b>\n                3. আজীবন শিক্ষা:\n                </b>আমাদের লক্ষ্য আমাদের শিক্ষার্থীদের মধ্যে শেখার প্রতি ভালবাসা এবং একটি বৃদ্ধির মানসিকতা জাগিয়ে তোলা, তাদের আজীবন শিক্ষার্থী হয়ে উঠতে ক্ষমতায়ন করা যারা কৌতূহলী, মানিয়ে নিতে পারে এবং নতুন ধারণা এবং সুযোগগুলি অন্বেষণ করতে আগ্রহী।</li></ul>< p><br></p><ul><li><b>\n                4 সম্প্রদায় জড়িত:\n                </b>আমরা একটি সহায়ক এবং অন্তর্ভুক্তিমূলক শিক্ষার পরিবেশ তৈরি করতে পিতামাতা, পরিবার এবং বৃহত্তর সম্প্রদায়ের সাথে সক্রিয়ভাবে জড়িত থাকার চেষ্টা করি যা আমাদের শিক্ষার্থীদের সামগ্রিক বিকাশকে লালন করে।\n\n                আমাদের মিশনে আমাদের সাথে যোগ দিন\n                আমরা আপনাকে পরবর্তী প্রজন্মের নেতা, চিন্তাবিদ এবং উদ্ভাবকদের অনুপ্রাণিত ও ক্ষমতায়িত করতে আমাদের মিশনে আমাদের সাথে যোগ দেওয়ার জন্য আমন্ত্রণ জানাচ্ছি। </li></ul><p><br></p><p>একসাথে, আমরা আমাদের শিক্ষার্থীদের জীবনে একটি পরিবর্তন আনতে পারি এবং সবার জন্য একটি উজ্জ্বল ভবিষ্যত তৈরি করতে পারি।\n\n                এই নমুনা বিষয়বস্তু স্কুলের মিশন, মূল মান, লক্ষ্য এবং সেই লক্ষ্যগুলি অর্জনে অংশীদারদের যোগদানের জন্য একটি আমন্ত্রণ প্রদান করে। আপনার স্কুল পরিচালনার আবেদনের নির্দিষ্ট মিশন এবং মানগুলির সাথে সারিবদ্ধ করার জন্য আপনি এটিকে আরও কাস্টমাইজ করতে পারেন৷</p>', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `parent_guardians`
--

CREATE TABLE `parent_guardians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_mobile` varchar(255) DEFAULT NULL,
  `father_profession` varchar(255) DEFAULT NULL,
  `father_image` varchar(255) DEFAULT NULL,
  `father_nationality` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_mobile` varchar(255) DEFAULT NULL,
  `mother_profession` varchar(255) DEFAULT NULL,
  `mother_image` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_email` varchar(255) DEFAULT NULL,
  `guardian_mobile` varchar(255) DEFAULT NULL,
  `guardian_image` varchar(255) DEFAULT NULL,
  `guardian_profession` varchar(255) DEFAULT NULL,
  `guardian_relation` varchar(255) DEFAULT NULL,
  `guardian_address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_guardians`
--

INSERT INTO `parent_guardians` (`id`, `user_id`, `father_name`, `father_mobile`, `father_profession`, `father_image`, `father_nationality`, `mother_name`, `mother_mobile`, `mother_profession`, `mother_image`, `guardian_name`, `guardian_email`, `guardian_mobile`, `guardian_image`, `guardian_profession`, `guardian_relation`, `guardian_address`, `status`, `created_at`, `updated_at`) VALUES
(7, 13, '', '', '', NULL, 'Dolor voluptas sed l', '', '', '', NULL, 'Adafsdf', 'nygocygu@mailinator.com', 'mizyp@mailinator.com', NULL, 'pewokib@mailinator.com', 'duguwi@mailinator.com', 'gaquboro@mailinator.com', 1, '2024-06-30 00:09:14', '2024-06-30 00:09:14'),
(8, 14, 'lypa@mailinator.com', 'telapuly@mailinator.com', 'tyquryf@mailinator.com', NULL, 'Sint debitis possimu', 'gidivebav@mailinator.com', 'bybapo@mailinator.com', 'nebiqizy@mailinator.com', NULL, 'jery@mailinator.com', 'sygoxetaxa@mailinator.com', 'rajy@mailinator.com', NULL, 'vizid@mailinator.com', 'ladotike@mailinator.com', 'kusiwy@mailinator.com', 1, '2024-06-30 00:42:11', '2024-06-30 00:42:11'),
(9, 15, 'neqyd@mailinator.com', 'lusot@mailinator.com', 'pysep@mailinator.com', NULL, 'Vitae sit autem qui', 'pami@mailinator.com', 'tokudule@mailinator.com', 'ryxuji@mailinator.com', NULL, 'qihalifere@mailinator.com', 'dujume@mailinator.com', 'dejibodul@mailinator.com', NULL, 'dojeza@mailinator.com', 'tiky@mailinator.com', 'texucutyvy@mailinator.com', 1, '2024-06-30 00:42:19', '2024-06-30 00:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `attribute`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', '{\"read\":\"calendar_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'student', '{\"read\":\"student_read\",\"create\":\"student_create\",\"update\":\"student_update\",\"delete\":\"student_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'student_category', '{\"read\":\"student_category_read\",\"create\":\"student_category_create\",\"update\":\"student_category_update\",\"delete\":\"student_category_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'promote_students', '{\"read\":\"promote_students_read\",\"create\":\"promote_students_create\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'disabled_students', '{\"read\":\"disabled_students_read\",\"create\":\"disabled_students_create\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 'parent', '{\"read\":\"parent_read\",\"create\":\"parent_create\",\"update\":\"parent_update\",\"delete\":\"parent_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 'admission', '{\"read\":\"admission_read\",\"create\":\"admission_create\",\"update\":\"admission_update\",\"delete\":\"admission_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 'classes', '{\"read\":\"classes_read\",\"create\":\"classes_create\",\"update\":\"classes_update\",\"delete\":\"classes_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 'section', '{\"read\":\"section_read\",\"create\":\"section_create\",\"update\":\"section_update\",\"delete\":\"section_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 'shift', '{\"read\":\"shift_read\",\"create\":\"shift_create\",\"update\":\"shift_update\",\"delete\":\"shift_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 'class_setup', '{\"read\":\"class_setup_read\",\"create\":\"class_setup_create\",\"update\":\"class_setup_update\",\"delete\":\"class_setup_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, 'subject', '{\"read\":\"subject_read\",\"create\":\"subject_create\",\"update\":\"subject_update\",\"delete\":\"subject_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(13, 'subject_assign', '{\"read\":\"subject_assign_read\",\"create\":\"subject_assign_create\",\"update\":\"subject_assign_update\",\"delete\":\"subject_assign_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(14, 'class_routine', '{\"read\":\"report_class_routine_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(15, 'time_schedule', '{\"read\":\"time_schedule_read\",\"create\":\"time_schedule_create\",\"update\":\"time_schedule_update\",\"delete\":\"time_schedule_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(16, 'class_room', '{\"read\":\"class_room_read\",\"create\":\"class_room_create\",\"update\":\"class_room_update\",\"delete\":\"class_room_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(17, 'fees_group', '{\"read\":\"fees_group_read\",\"create\":\"fees_group_create\",\"update\":\"fees_group_update\",\"delete\":\"fees_group_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(18, 'fees_type', '{\"read\":\"fees_type_read\",\"create\":\"fees_type_create\",\"update\":\"fees_type_update\",\"delete\":\"fees_type_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(19, 'fees_master', '{\"read\":\"fees_master_read\",\"create\":\"fees_master_create\",\"update\":\"fees_master_update\",\"delete\":\"fees_master_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(20, 'fees_assign', '{\"read\":\"fees_assign_read\",\"create\":\"fees_assign_create\",\"update\":\"fees_assign_update\",\"delete\":\"fees_assign_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(21, 'fees_collect', '{\"read\":\"fees_collect_read\",\"create\":\"fees_collect_create\",\"update\":\"fees_collect_update\",\"delete\":\"fees_collect_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(22, 'exam_type', '{\"read\":\"exam_type_read\",\"create\":\"exam_type_create\",\"update\":\"exam_type_update\",\"delete\":\"exam_type_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(23, 'marks_grade', '{\"read\":\"marks_grade_read\",\"create\":\"marks_grade_create\",\"update\":\"marks_grade_update\",\"delete\":\"marks_grade_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(24, 'exam_assign', '{\"read\":\"exam_assign_read\",\"create\":\"exam_assign_create\",\"update\":\"exam_assign_update\",\"delete\":\"exam_assign_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(25, 'exam_routine', '{\"read\":\"report_exam_routine_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(26, 'marks_register', '{\"read\":\"marks_register_read\",\"create\":\"marks_register_create\",\"update\":\"marks_register_update\",\"delete\":\"marks_register_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(27, 'homework', '{\"read\":\"homework_read\",\"create\":\"homework_create\",\"update\":\"homework_update\",\"delete\":\"homework_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(28, 'exam_setting', '{\"read\":\"exam_setting_read\",\"update\":\"exam_setting_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(29, 'account_head', '{\"read\":\"account_head_read\",\"create\":\"account_head_create\",\"update\":\"account_head_update\",\"delete\":\"account_head_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(30, 'income', '{\"read\":\"income_read\",\"create\":\"income_create\",\"update\":\"income_update\",\"delete\":\"income_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(31, 'expense', '{\"read\":\"expense_read\",\"create\":\"expense_create\",\"update\":\"expense_update\",\"delete\":\"expense_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(32, 'attendance', '{\"read\":\"attendance_read\",\"create\":\"attendance_create\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(33, 'attendance_report', '{\"read\":\"report_attendance_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(34, 'marksheet', '{\"read\":\"report_marksheet_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(35, 'merit_list', '{\"read\":\"report_merit_list_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(36, 'progress_card', '{\"read\":\"report_progress_card_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(37, 'due_fees', '{\"read\":\"report_due_fees_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(38, 'fees_collection', '{\"read\":\"report_fees_collection_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(39, 'account', '{\"read\":\"report_account_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(40, 'language', '{\"read\":\"language_read\",\"create\":\"language_create\",\"update\":\"language_update\",\"update terms\":\"language_update_terms\",\"delete\":\"language_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(41, 'roles', '{\"read\":\"role_read\",\"create\":\"role_create\",\"update\":\"role_update\",\"delete\":\"role_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(42, 'users', '{\"read\":\"user_read\",\"create\":\"user_create\",\"update\":\"user_update\",\"delete\":\"user_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(43, 'department', '{\"read\":\"department_read\",\"create\":\"department_create\",\"update\":\"department_update\",\"delete\":\"department_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(44, 'designation', '{\"read\":\"designation_read\",\"create\":\"designation_create\",\"update\":\"designation_update\",\"delete\":\"designation_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(45, 'sections', '{\"read\":\"page_sections_read\",\"update\":\"page_sections_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(46, 'slider', '{\"read\":\"slider_read\",\"create\":\"slider_create\",\"update\":\"slider_update\",\"delete\":\"slider_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(47, 'about', '{\"read\":\"about_read\",\"create\":\"about_create\",\"update\":\"about_update\",\"delete\":\"about_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(48, 'counter', '{\"read\":\"counter_read\",\"create\":\"counter_create\",\"update\":\"counter_update\",\"delete\":\"counter_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(49, 'contact_info', '{\"read\":\"contact_info_read\",\"create\":\"contact_info_create\",\"update\":\"contact_info_update\",\"delete\":\"contact_info_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(50, 'dep_contact', '{\"read\":\"dep_contact_read\",\"create\":\"dep_contact_create\",\"update\":\"dep_contact_update\",\"delete\":\"dep_contact_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(51, 'news', '{\"read\":\"news_read\",\"create\":\"news_create\",\"update\":\"news_update\",\"delete\":\"news_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(52, 'event', '{\"read\":\"event_read\",\"create\":\"event_create\",\"update\":\"event_update\",\"delete\":\"event_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(53, 'gallery_category', '{\"read\":\"gallery_category_read\",\"create\":\"gallery_category_create\",\"update\":\"gallery_category_update\",\"delete\":\"gallery_category_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(54, 'gallery', '{\"read\":\"gallery_read\",\"create\":\"gallery_create\",\"update\":\"gallery_update\",\"delete\":\"gallery_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(55, 'subscribe', '{\"read\":\"subscribe_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(56, 'contact_message', '{\"read\":\"contact_message_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(57, 'general_settings', '{\"read\":\"general_settings_read\",\"update\":\"general_settings_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(58, 'storage_settings', '{\"read\":\"storage_settings_read\",\"update\":\"storage_settings_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(59, 'task_schedules', '{\"read\":\"task_schedules_read\",\"update\":\"task_schedules_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(60, 'software_update', '{\"read\":\"software_update_read\",\"update\":\"software_update_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(61, 'recaptcha_settings', '{\"read\":\"recaptcha_settings_read\",\"update\":\"recaptcha_settings_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(62, 'payment_gateway_settings', '{\"read\":\"payment_gateway_settings_read\",\"update\":\"payment_gateway_settings_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(63, 'email_settings', '{\"read\":\"email_settings_read\",\"update\":\"email_settings_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(64, 'sms_settings', '{\"read\":\"sms_settings_read\",\"update\":\"sms_settings_update\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(65, 'genders', '{\"read\":\"gender_read\",\"create\":\"gender_create\",\"update\":\"gender_update\",\"delete\":\"gender_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(66, 'religions', '{\"read\":\"religion_read\",\"create\":\"religion_create\",\"update\":\"religion_update\",\"delete\":\"religion_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(67, 'blood_groups', '{\"read\":\"blood_group_read\",\"create\":\"blood_group_create\",\"update\":\"blood_group_update\",\"delete\":\"blood_group_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(68, 'sessions', '{\"read\":\"session_read\",\"create\":\"session_create\",\"update\":\"session_update\",\"delete\":\"session_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(69, 'book_category', '{\"read\":\"book_category_read\",\"create\":\"book_category_create\",\"update\":\"book_category_update\",\"delete\":\"book_category_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(70, 'book', '{\"read\":\"book_read\",\"create\":\"book_create\",\"update\":\"book_update\",\"delete\":\"book_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(71, 'member', '{\"read\":\"member_read\",\"create\":\"member_create\",\"update\":\"member_update\",\"delete\":\"member_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(72, 'member_category', '{\"read\":\"member_category_read\",\"create\":\"member_category_create\",\"update\":\"member_category_update\",\"delete\":\"member_category_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(73, 'issue_book', '{\"read\":\"issue_book_read\",\"create\":\"issue_book_create\",\"update\":\"issue_book_update\",\"delete\":\"issue_book_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(74, 'online_exam_type', '{\"read\":\"online_exam_type_read\",\"create\":\"online_exam_type_create\",\"update\":\"online_exam_type_update\",\"delete\":\"online_exam_type_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(75, 'question_group', '{\"read\":\"question_group_read\",\"create\":\"question_group_create\",\"update\":\"question_group_update\",\"delete\":\"question_group_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(76, 'question_bank', '{\"read\":\"question_bank_read\",\"create\":\"question_bank_create\",\"update\":\"question_bank_update\",\"delete\":\"question_bank_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(77, 'online_exam', '{\"read\":\"online_exam_read\",\"create\":\"online_exam_create\",\"update\":\"online_exam_update\",\"delete\":\"online_exam_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(78, 'id_card', '{\"read\":\"id_card_read\",\"create\":\"id_card_create\",\"update\":\"id_card_update\",\"delete\":\"id_card_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(79, 'id_card_generate', '{\"read\":\"id_card_generate_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(80, 'certificate', '{\"read\":\"certificate_read\",\"create\":\"certificate_create\",\"update\":\"certificate_update\",\"delete\":\"certificate_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(81, 'certificate_generate', '{\"read\":\"certificate_generate_read\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(82, 'gmeet', '{\"read\":\"gmeet_read\",\"create\":\"gmeet_create\",\"update\":\"gmeet_update\",\"delete\":\"gmeet_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(83, 'notice_board', '{\"read\":\"notice_board_read\",\"create\":\"notice_board_create\",\"update\":\"notice_board_update\",\"delete\":\"notice_board_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(84, 'sms_mail_template', '{\"read\":\"sms_mail_template_read\",\"create\":\"sms_mail_template_create\",\"update\":\"nsms_mail_templateupdate\",\"delete\":\"sms_mail_template_delete\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(85, 'sms_mail', '{\"read\":\"sms_mail_read\",\"create\":\"sms_mail_send\"}', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promote_students`
--

CREATE TABLE `promote_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_banks`
--

CREATE TABLE `question_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `question_group_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `total_option` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_bank_childrens`
--

CREATE TABLE `question_bank_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_bank_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_groups`
--

CREATE TABLE `question_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Hindu', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `religon_translates`
--

CREATE TABLE `religon_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `religion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `permissions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '1', '[\"counter_read\",\"fees_collesction_read\",\"revenue_read\",\"fees_collection_this_month_read\",\"income_expense_read\",\"upcoming_events_read\",\"attendance_chart_read\",\"calendar_read\",\"student_read\",\"student_create\",\"student_update\",\"student_delete\",\"student_category_read\",\"student_category_create\",\"student_category_update\",\"student_category_delete\",\"promote_students_read\",\"promote_students_create\",\"disabled_students_read\",\"disabled_students_create\",\"parent_read\",\"parent_create\",\"parent_update\",\"parent_delete\",\"admission_read\",\"admission_create\",\"admission_update\",\"admission_delete\",\"classes_read\",\"classes_create\",\"classes_update\",\"classes_delete\",\"section_read\",\"section_create\",\"section_update\",\"section_delete\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"class_setup_read\",\"class_setup_create\",\"class_setup_update\",\"class_setup_delete\",\"subject_read\",\"subject_create\",\"subject_update\",\"subject_delete\",\"subject_assign_read\",\"subject_assign_create\",\"subject_assign_update\",\"subject_assign_delete\",\"class_routine_read\",\"class_routine_create\",\"class_routine_update\",\"class_routine_delete\",\"time_schedule_read\",\"time_schedule_create\",\"time_schedule_update\",\"time_schedule_delete\",\"class_room_read\",\"class_room_create\",\"class_room_update\",\"class_room_delete\",\"fees_group_read\",\"fees_group_create\",\"fees_group_update\",\"fees_group_delete\",\"fees_type_read\",\"fees_type_create\",\"fees_type_update\",\"fees_type_delete\",\"fees_master_read\",\"fees_master_create\",\"fees_master_update\",\"fees_master_delete\",\"fees_assign_read\",\"fees_assign_create\",\"fees_assign_update\",\"fees_assign_delete\",\"fees_collect_read\",\"fees_collect_create\",\"fees_collect_update\",\"fees_collect_delete\",\"exam_type_read\",\"exam_type_create\",\"exam_type_update\",\"exam_type_delete\",\"marks_grade_read\",\"marks_grade_create\",\"marks_grade_update\",\"marks_grade_delete\",\"exam_assign_read\",\"exam_assign_create\",\"exam_assign_update\",\"exam_assign_delete\",\"exam_routine_read\",\"exam_routine_create\",\"exam_routine_update\",\"exam_routine_delete\",\"marks_register_read\",\"marks_register_create\",\"marks_register_update\",\"marks_register_delete\",\"homework_read\",\"homework_create\",\"homework_update\",\"homework_delete\",\"exam_setting_read\",\"exam_setting_update\",\"account_head_read\",\"account_head_create\",\"account_head_update\",\"account_head_delete\",\"income_read\",\"income_create\",\"income_update\",\"income_delete\",\"expense_read\",\"expense_create\",\"expense_update\",\"expense_delete\",\"attendance_read\",\"attendance_create\",\"report_attendance_read\",\"report_marksheet_read\",\"report_merit_list_read\",\"report_progress_card_read\",\"report_due_fees_read\",\"report_fees_collection_read\",\"report_account_read\",\"report_class_routine_read\",\"report_exam_routine_read\",\"report_attendance_read\",\"language_read\",\"language_create\",\"language_update\",\"language_update_terms\",\"language_delete\",\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"page_sections_read\",\"page_sections_update\",\"slider_read\",\"slider_create\",\"slider_update\",\"slider_delete\",\"about_read\",\"about_create\",\"about_update\",\"about_delete\",\"counter_read\",\"counter_create\",\"counter_update\",\"counter_delete\",\"contact_info_read\",\"contact_info_create\",\"contact_info_update\",\"contact_info_delete\",\"dep_contact_read\",\"dep_contact_create\",\"dep_contact_update\",\"dep_contact_delete\",\"news_read\",\"news_create\",\"news_update\",\"news_delete\",\"event_read\",\"event_create\",\"event_update\",\"event_delete\",\"gallery_category_read\",\"gallery_category_create\",\"gallery_category_update\",\"gallery_category_delete\",\"gallery_read\",\"gallery_create\",\"gallery_update\",\"gallery_delete\",\"subscribe_read\",\"contact_message_read\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_update\",\"task_schedules_read\",\"task_schedules_update\",\"software_update_read\",\"software_update_update\",\"recaptcha_settings_read\",\"recaptcha_settings_update\",\"payment_gateway_settings_read\",\"payment_gateway_settings_update\",\"email_settings_read\",\"email_settings_update\",\"gender_read\",\"gender_create\",\"gender_update\",\"gender_delete\",\"religion_read\",\"religion_create\",\"religion_update\",\"religion_delete\",\"blood_group_read\",\"blood_group_create\",\"blood_group_update\",\"blood_group_delete\",\"session_read\",\"session_create\",\"session_update\",\"session_delete\",\"book_category_read\",\"book_category_create\",\"book_category_update\",\"book_category_delete\",\"book_read\",\"book_create\",\"book_update\",\"book_delete\",\"member_read\",\"member_create\",\"member_update\",\"member_delete\",\"member_category_read\",\"member_category_create\",\"member_category_update\",\"member_category_delete\",\"issue_book_read\",\"issue_book_create\",\"issue_book_update\",\"issue_book_delete\",\"online_exam_type_read\",\"online_exam_type_create\",\"online_exam_type_update\",\"online_exam_type_delete\",\"question_group_read\",\"question_group_create\",\"question_group_update\",\"question_group_delete\",\"question_bank_read\",\"question_bank_create\",\"question_bank_update\",\"question_bank_delete\",\"online_exam_read\",\"online_exam_create\",\"online_exam_update\",\"online_exam_delete\"]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'Admin', '1', '[\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"language_read\",\"language_create\",\"language_update_terms\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_read\",\"recaptcha_settings_update\",\"email_settings_read\"]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'Staff', '1', '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'Accounting', '1', '[\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"language_read\",\"language_create\",\"language_update_terms\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_read\",\"recaptcha_settings_update\",\"email_settings_read\"]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'Teacher', '1', '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 'Student', '1', '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 'Guardian', '1', '[]', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_domain_key` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_type` varchar(255) DEFAULT NULL COMMENT 'Admin, Student, Parent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `route_name`, `title`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'Dashboard', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'roles.index', 'Roles', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'genders.index', 'Genders', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'religions.index', 'Religions', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'blood-groups.index', 'Blood Groups', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 'sessions.index', 'Sessions', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 'users.index', 'Users', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 'my.profile', 'Profile', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 'languages.index', 'Languages', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 'settings.general-settings', 'General Settings', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 'department.index', 'Department', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, 'designation.index', 'Designation', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(13, 'student.index', 'Student', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(14, 'student_category.index', 'Student Category', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(15, 'promote_students.index', 'Promote Students', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(16, 'disabled_students.index', 'Disabled Student', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(17, 'parent.index', 'Parent', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(18, 'online-admissions.index', 'Online Admissions', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(19, 'book-category.index', 'Book Category', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(20, 'book.index', 'Book', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(21, 'member.index', 'Member', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(22, 'issue-book.index', 'Issue Book', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(23, 'member-category.index', 'Member Category', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(24, 'fees-group.index', 'Fees Group', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(25, 'fees-type.index', 'Fees Type', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(26, 'fees-master.index', 'Fees Master', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(27, 'fees-assign.index', 'Fees Assign', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(28, 'fees-collect.index', 'Fees Collect', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(29, 'exam-type.index', 'Exam Type', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(30, 'marks-grade.index', 'Marks Grade', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(31, 'marks-register.index', 'Marks Register', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(32, 'exam-routine.index', 'Exam Routine', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(33, 'exam-assign.index', 'Exam Assign', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(34, 'examination-settings.index', 'Examination Settings', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(35, 'attendance.index', 'Attendance', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(36, 'account_head.index', 'Account Head', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(37, 'income.index', 'Income', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(38, 'expense.index', 'Expense', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(39, 'classes.index', 'Classes', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(40, 'section.index', 'Sections', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(41, 'subject.index', 'Subjects', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(42, 'shift.index', 'Shifts', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(43, 'class-room.index', 'Class Room', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(44, 'class-setup.index', 'Class Setup', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(45, 'assign-subject.index', 'Assign Subject', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(46, 'class-routine.index', 'Class Routine', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(47, 'time_schedule.index', 'Time Schedule', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(48, 'report-marksheet.index', 'Marksheet Report', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(49, 'report-merit-list.index', 'Merit list Report', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(50, 'report-progress-card.index', 'Progress Card Report', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(51, 'report-due-fees.index', 'Due Fees Report', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(52, 'report-fees-collection.index', 'Fees Collection Report', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(53, 'report-account.index', 'Account Report', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(54, 'report-attendance.report', 'Attendance Report', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(55, 'report-class-routine.index', 'Class Routine Report', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(56, 'report-exam-routine.index', 'Exam Routine Report', 'Admin', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(57, 'student-panel-dashboard.index', 'Dashboard', 'Student', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(58, 'student-panel.profile', 'Profile', 'Student', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(59, 'student-panel-subject-list.index', 'Subject List', 'Student', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(60, 'student-panel-class-routine.index', 'Class Routine', 'Student', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(61, 'student-panel-exam-routine.index', 'Exam Routine', 'Student', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(62, 'student-panel-marksheet.index', 'Marksheet', 'Student', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(63, 'student-panel-attendance.index', 'Attendance', 'Student', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(64, 'student-panel-fees.index', 'Fees', 'Student', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(65, 'parent-panel-dashboard.index.index', 'Dashboard', 'Parent', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(66, 'parent-panel.profile', 'Profile', 'Parent', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(67, 'parent-panel-subject-list.index', 'Subject List', 'Parent', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(68, 'parent-panel-class-routine.index', 'Class Routine', 'Parent', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(69, 'parent-panel-exam-routine.index', 'Exam Routine', 'Parent', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(70, 'parent-panel-marksheet.index', 'Marksheet', 'Parent', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(71, 'parent-panel-fees.index', 'Fees', 'Parent', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(72, 'parent-panel-attendance.index', 'Attendance', 'Parent', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, '2024-06-27 00:55:41', '2024-06-27 00:55:41'),
(2, 'B', 1, '2024-06-27 00:55:46', '2024-06-27 00:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `section_translates`
--

CREATE TABLE `section_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_translates`
--

INSERT INTO `section_translates` (`id`, `section_id`, `locale`, `name`, `description`, `data`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', '', '', '\"[{\\\"name\\\":\\\"Facebook\\\",\\\"icon\\\":\\\"fab fa-facebook-f\\\",\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.facebook.com\\\"},{\\\"name\\\":\\\"Twitter\\\",\\\"icon\\\":\\\"fab fa-twitter\\\",\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.twitter.com\\\"},{\\\"name\\\":\\\"Pinterest\\\",\\\"icon\\\":\\\"fab fa-pinterest-p\\\",\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.pinterest.com\\\"},{\\\"name\\\":\\\"Instagram\\\",\\\"icon\\\":\\\"fab fa-instagram\\\",\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.instagram.com\\\"}]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 2, 'en', 'Statement Of Onest Schooleded', '', '\"[{\\\"title\\\":\\\"Mission Statement\\\",\\\"description\\\":\\\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Read More\\\"},{\\\"title\\\":\\\"Vision Statement\\\",\\\"description\\\":\\\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet Read More\\\"}]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 3, 'en', 'Study at Onest Schooleded', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet', '\"[{\\\"icon\\\":8,\\\"title\\\":\\\"Out Prospects\\\",\\\"description\\\":\\\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet\\\"},{\\\"icon\\\":9,\\\"title\\\":\\\"Out Prospects\\\",\\\"description\\\":\\\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet\\\"},{\\\"icon\\\":10,\\\"title\\\":\\\"Out Prospects\\\",\\\"description\\\":\\\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet\\\"}]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 4, 'en', 'Explore Onest Schoooled', '\"We Educate Knowledge & Essential Skills\" is a phrase that emphasizes the importance of both theoretical knowledge', '\"[{\\\"tab\\\":\\\"Campus Life\\\",\\\"title\\\":\\\"Campus Life\\\",\\\"description\\\":\\\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\\\"},{\\\"tab\\\":\\\"Academic\\\",\\\"title\\\":\\\"Academic\\\",\\\"description\\\":\\\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\\\"},{\\\"tab\\\":\\\"Athletics\\\",\\\"title\\\":\\\"Athletics\\\",\\\"description\\\":\\\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\\\"},{\\\"tab\\\":\\\"School\\\",\\\"title\\\":\\\"School\\\",\\\"description\\\":\\\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\\\"}]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 5, 'en', 'Excellence In Teaching And Learning', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligations of business it will frequently occurs that pleasures. Provide Endless Opportunities', '\"[\\\"A higher education qualification\\\",\\\"Better career prospects\\\",\\\"Better career prospects\\\",\\\"Better career prospects\\\"]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 6, 'en', '20+ Academic Curriculum', 'Onsest Schooled is home to more than 20,000 students and 230,000 alumni with a wide variety of interests, ages and backgrounds, the University reflects the city’s dynamic mix of populations.', '\"[\\\"Bangal Medium\\\",\\\"Bangal Medium\\\",\\\"Bangal Medium\\\",\\\"Bangal Medium\\\",\\\"Bangal Medium\\\",\\\"Bangal Medium\\\"]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 7, 'en', 'What’s Coming Up?', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligation.', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 8, 'en', 'Latest From Our Blog', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligation.', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 9, 'en', 'Our Gallery', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligation.', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 10, 'en', 'Find Our <br> Contact Information', '', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 11, 'en', 'Contact By Department', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligations of business it will', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, 12, 'en', 'Our Featured Teachers', '', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(13, 1, 'bn', '', '', '\"[{\\\"name\\\":\\\"\\\\u09ab\\\\u09c7\\\\u09b8\\\\u09ac\\\\u09c1\\\\u0995\\\",\\\"icon\\\":\\\"fab fa-facebook-f\\\",\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.facebook.com\\\"},{\\\"name\\\":\\\"\\\\u099f\\\\u09c1\\\\u0987\\\\u099f\\\\u09be\\\\u09b0\\\",\\\"icon\\\":\\\"fab fa-twitter\\\",\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.twitter.com\\\"},{\\\"name\\\":\\\"Pinterest\\\",\\\"icon\\\":\\\"fab fa-pinterest-p\\\",\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.pinterest.com\\\"},{\\\"name\\\":\\\"\\\\u0987\\\\u09a8\\\\u09b8\\\\u09cd\\\\u099f\\\\u09be\\\\u0997\\\\u09cd\\\\u09b0\\\\u09be\\\\u09ae\\\",\\\"icon\\\":\\\"fab fa-instagram\\\",\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.instagram.com\\\"}]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(14, 2, 'bn', 'Onest Schooled এর স্টেটমেন্ট', '', '\"[{\\\"title\\\":\\\"\\\\u09ae\\\\u09bf\\\\u09b6\\\\u09a8 \\\\u09ac\\\\u09bf\\\\u09ac\\\\u09c3\\\\u09a4\\\\u09bf\\\",\\\"description\\\":\\\"\\\\u09a4\\\\u09be\\\\u09b0\\\\u09be \\\\u0996\\\\u09c1\\\\u09ac \\\\u09a8\\\\u09b0\\\\u09ae \\\\u098f\\\\u09ac\\\\u0982 \\\\u0995\\\\u09cb\\\\u09a5\\\\u09be\\\\u0993 \\\\u0995\\\\u09cb\\\\u09a8 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09a5\\\\u09be \\\\u0986\\\\u099b\\\\u09c7 \\\\u099b\\\\u09c7\\\\u09a1\\\\u09bc\\\\u09c7 \\\\u09a8\\\\u09be. \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\\u0964 \\\\u0986\\\\u09b0\\\\u0993 \\\\u09aa\\\\u09a1\\\\u09bc\\\\u09c1\\\\u09a8\\\"},{\\\"title\\\":\\\"\\\\u09a6\\\\u09c3\\\\u09b7\\\\u09cd\\\\u099f\\\\u09bf \\\\u09ac\\\\u09bf\\\\u09ac\\\\u09c3\\\\u09a4\\\\u09bf\\\",\\\"description\\\":\\\"\\\\u09a4\\\\u09be\\\\u09b0\\\\u09be \\\\u0996\\\\u09c1\\\\u09ac \\\\u09a8\\\\u09b0\\\\u09ae \\\\u098f\\\\u09ac\\\\u0982 \\\\u0995\\\\u09cb\\\\u09a5\\\\u09be\\\\u0993 \\\\u0995\\\\u09cb\\\\u09a8 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09a5\\\\u09be \\\\u0986\\\\u099b\\\\u09c7 \\\\u099b\\\\u09c7\\\\u09a1\\\\u09bc\\\\u09c7 \\\\u09a8\\\\u09be. \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\\u0964 \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09be\\\\u09af\\\\u09bc\\\\u09be\\\\u09ae \\\\u0986\\\\u09aa\\\\u09a8\\\\u09be\\\\u0995\\\\u09c7 \\\\u0986\\\\u09b0\\\\u0993 \\\\u09aa\\\\u09a1\\\\u09bc\\\\u09a4\\\\u09c7 \\\\u09b6\\\\u09bf\\\\u0996\\\\u09a4\\\\u09c7 \\\\u09b8\\\\u09be\\\\u09b9\\\\u09be\\\\u09af\\\\u09cd\\\\u09af \\\\u0995\\\\u09b0\\\\u09ac\\\\u09c7\\\"}]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(15, 3, 'bn', 'শিক্ষাদান এবং শেখার ক্ষেত্রে শ্রেষ্ঠত্ব', 'Onsest Schooled হল 20,000 টিরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রদের বিভিন্ন ধরনের আগ্রহ, বয়স এবং ব্যাকগ্রাউন্ড সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।', '\"[{\\\"icon\\\":8,\\\"title\\\":\\\"Out Prospects\\\",\\\"description\\\":\\\"Onsest Schooled \\\\u09b9\\\\u09b2 20,000 \\\\u099f\\\\u09bf\\\\u09b0\\\\u0993 \\\\u09ac\\\\u09c7\\\\u09b6\\\\u09bf \\\\u099b\\\\u09be\\\\u09a4\\\\u09cd\\\\u09b0 \\\\u098f\\\\u09ac\\\\u0982 230,000 \\\\u09aa\\\\u09cd\\\\u09b0\\\\u09be\\\\u0995\\\\u09cd\\\\u09a4\\\\u09a8 \\\\u099b\\\\u09be\\\\u09a4\\\\u09cd\\\\u09b0\\\\u09a6\\\\u09c7\\\\u09b0 \\\\u09ac\\\\u09bf\\\\u09ad\\\\u09bf\\\\u09a8\\\\u09cd\\\\u09a8 \\\\u09a7\\\\u09b0\\\\u09a8\\\\u09c7\\\\u09b0 \\\\u0986\\\\u0997\\\\u09cd\\\\u09b0\\\\u09b9, \\\\u09ac\\\\u09af\\\\u09bc\\\\u09b8 \\\\u098f\\\\u09ac\\\\u0982 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09be\\\\u0995\\\\u0997\\\\u09cd\\\\u09b0\\\\u09be\\\\u0989\\\\u09a8\\\\u09cd\\\\u09a1 \\\\u09b8\\\\u09b9, \\\\u09ac\\\\u09bf\\\\u09b6\\\\u09cd\\\\u09ac\\\\u09ac\\\\u09bf\\\\u09a6\\\\u09cd\\\\u09af\\\\u09be\\\\u09b2\\\\u09af\\\\u09bc\\\\u099f\\\\u09bf \\\\u09b6\\\\u09b9\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u099c\\\\u09a8\\\\u09b8\\\\u0982\\\\u0996\\\\u09cd\\\\u09af\\\\u09be\\\\u09b0 \\\\u0997\\\\u09a4\\\\u09bf\\\\u09b6\\\\u09c0\\\\u09b2 \\\\u09ae\\\\u09bf\\\\u09b6\\\\u09cd\\\\u09b0\\\\u09a3\\\\u0995\\\\u09c7 \\\\u09aa\\\\u09cd\\\\u09b0\\\\u09a4\\\\u09bf\\\\u09ab\\\\u09b2\\\\u09bf\\\\u09a4 \\\\u0995\\\\u09b0\\\\u09c7\\\\u0964\\\"},{\\\"icon\\\":9,\\\"title\\\":\\\"Out Prospects\\\",\\\"description\\\":\\\"Onsest Schooled \\\\u09b9\\\\u09b2 20,000 \\\\u099f\\\\u09bf\\\\u09b0\\\\u0993 \\\\u09ac\\\\u09c7\\\\u09b6\\\\u09bf \\\\u099b\\\\u09be\\\\u09a4\\\\u09cd\\\\u09b0 \\\\u098f\\\\u09ac\\\\u0982 230,000 \\\\u09aa\\\\u09cd\\\\u09b0\\\\u09be\\\\u0995\\\\u09cd\\\\u09a4\\\\u09a8 \\\\u099b\\\\u09be\\\\u09a4\\\\u09cd\\\\u09b0\\\\u09a6\\\\u09c7\\\\u09b0 \\\\u09ac\\\\u09bf\\\\u09ad\\\\u09bf\\\\u09a8\\\\u09cd\\\\u09a8 \\\\u09a7\\\\u09b0\\\\u09a8\\\\u09c7\\\\u09b0 \\\\u0986\\\\u0997\\\\u09cd\\\\u09b0\\\\u09b9, \\\\u09ac\\\\u09af\\\\u09bc\\\\u09b8 \\\\u098f\\\\u09ac\\\\u0982 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09be\\\\u0995\\\\u0997\\\\u09cd\\\\u09b0\\\\u09be\\\\u0989\\\\u09a8\\\\u09cd\\\\u09a1 \\\\u09b8\\\\u09b9, \\\\u09ac\\\\u09bf\\\\u09b6\\\\u09cd\\\\u09ac\\\\u09ac\\\\u09bf\\\\u09a6\\\\u09cd\\\\u09af\\\\u09be\\\\u09b2\\\\u09af\\\\u09bc\\\\u099f\\\\u09bf \\\\u09b6\\\\u09b9\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u099c\\\\u09a8\\\\u09b8\\\\u0982\\\\u0996\\\\u09cd\\\\u09af\\\\u09be\\\\u09b0 \\\\u0997\\\\u09a4\\\\u09bf\\\\u09b6\\\\u09c0\\\\u09b2 \\\\u09ae\\\\u09bf\\\\u09b6\\\\u09cd\\\\u09b0\\\\u09a3\\\\u0995\\\\u09c7 \\\\u09aa\\\\u09cd\\\\u09b0\\\\u09a4\\\\u09bf\\\\u09ab\\\\u09b2\\\\u09bf\\\\u09a4 \\\\u0995\\\\u09b0\\\\u09c7\\\\u0964\\\"},{\\\"icon\\\":10,\\\"title\\\":\\\"Out Prospects\\\",\\\"description\\\":\\\"Onsest Schooled \\\\u09b9\\\\u09b2 20,000 \\\\u099f\\\\u09bf\\\\u09b0\\\\u0993 \\\\u09ac\\\\u09c7\\\\u09b6\\\\u09bf \\\\u099b\\\\u09be\\\\u09a4\\\\u09cd\\\\u09b0 \\\\u098f\\\\u09ac\\\\u0982 230,000 \\\\u09aa\\\\u09cd\\\\u09b0\\\\u09be\\\\u0995\\\\u09cd\\\\u09a4\\\\u09a8 \\\\u099b\\\\u09be\\\\u09a4\\\\u09cd\\\\u09b0\\\\u09a6\\\\u09c7\\\\u09b0 \\\\u09ac\\\\u09bf\\\\u09ad\\\\u09bf\\\\u09a8\\\\u09cd\\\\u09a8 \\\\u09a7\\\\u09b0\\\\u09a8\\\\u09c7\\\\u09b0 \\\\u0986\\\\u0997\\\\u09cd\\\\u09b0\\\\u09b9, \\\\u09ac\\\\u09af\\\\u09bc\\\\u09b8 \\\\u098f\\\\u09ac\\\\u0982 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09be\\\\u0995\\\\u0997\\\\u09cd\\\\u09b0\\\\u09be\\\\u0989\\\\u09a8\\\\u09cd\\\\u09a1 \\\\u09b8\\\\u09b9, \\\\u09ac\\\\u09bf\\\\u09b6\\\\u09cd\\\\u09ac\\\\u09ac\\\\u09bf\\\\u09a6\\\\u09cd\\\\u09af\\\\u09be\\\\u09b2\\\\u09af\\\\u09bc\\\\u099f\\\\u09bf \\\\u09b6\\\\u09b9\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u099c\\\\u09a8\\\\u09b8\\\\u0982\\\\u0996\\\\u09cd\\\\u09af\\\\u09be\\\\u09b0 \\\\u0997\\\\u09a4\\\\u09bf\\\\u09b6\\\\u09c0\\\\u09b2 \\\\u09ae\\\\u09bf\\\\u09b6\\\\u09cd\\\\u09b0\\\\u09a3\\\\u0995\\\\u09c7 \\\\u09aa\\\\u09cd\\\\u09b0\\\\u09a4\\\\u09bf\\\\u09ab\\\\u09b2\\\\u09bf\\\\u09a4 \\\\u0995\\\\u09b0\\\\u09c7\\\\u0964\\\"}]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(16, 4, 'bn', 'অনেস্ট স্কুলড এক্সপ্লোর করুন', '\"আমরা জ্ঞান এবং অপরিহার্য দক্ষতা শিক্ষা করি\" একটি বাক্যাংশ যা উভয় তাত্ত্বিক জ্ঞানের গুরুত্বের উপর জোর দেয়', '\"[{\\\"tab\\\":\\\"\\\\u0995\\\\u09cd\\\\u09af\\\\u09be\\\\u09ae\\\\u09cd\\\\u09aa\\\\u09be\\\\u09b8 \\\\u099c\\\\u09c0\\\\u09ac\\\\u09a8\\\",\\\"title\\\":\\\"\\\\u0995\\\\u09cd\\\\u09af\\\\u09be\\\\u09ae\\\\u09cd\\\\u09aa\\\\u09be\\\\u09b8 \\\\u099c\\\\u09c0\\\\u09ac\\\\u09a8\\\",\\\"description\\\":\\\"\\\\u09a4\\\\u09be\\\\u09b0\\\\u09be \\\\u0996\\\\u09c1\\\\u09ac \\\\u09a8\\\\u09b0\\\\u09ae \\\\u098f\\\\u09ac\\\\u0982 \\\\u0995\\\\u09cb\\\\u09a5\\\\u09be\\\\u0993 \\\\u0995\\\\u09cb\\\\u09a8 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09a5\\\\u09be \\\\u0986\\\\u099b\\\\u09c7 \\\\u099b\\\\u09c7\\\\u09a1\\\\u09bc\\\\u09c7 \\\\u09a8\\\\u09be. \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\\u0964 \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\"},{\\\"tab\\\":\\\"\\\\u098f\\\\u0995\\\\u09be\\\\u09a1\\\\u09c7\\\\u09ae\\\\u09bf\\\\u0995\\\",\\\"title\\\":\\\"\\\\u098f\\\\u0995\\\\u09be\\\\u09a1\\\\u09c7\\\\u09ae\\\\u09bf\\\\u0995\\\",\\\"description\\\":\\\"\\\\u09a4\\\\u09be\\\\u09b0\\\\u09be \\\\u0996\\\\u09c1\\\\u09ac \\\\u09a8\\\\u09b0\\\\u09ae \\\\u098f\\\\u09ac\\\\u0982 \\\\u0995\\\\u09cb\\\\u09a5\\\\u09be\\\\u0993 \\\\u0995\\\\u09cb\\\\u09a8 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09a5\\\\u09be \\\\u0986\\\\u099b\\\\u09c7 \\\\u099b\\\\u09c7\\\\u09a1\\\\u09bc\\\\u09c7 \\\\u09a8\\\\u09be. \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\\u0964 \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\"},{\\\"tab\\\":\\\"\\\\u0985\\\\u09cd\\\\u09af\\\\u09be\\\\u09a5\\\\u09b2\\\\u09c7\\\\u099f\\\\u09bf\\\\u0995\\\\u09cd\\\\u09b8\\\",\\\"title\\\":\\\"\\\\u0985\\\\u09cd\\\\u09af\\\\u09be\\\\u09a5\\\\u09b2\\\\u09c7\\\\u099f\\\\u09bf\\\\u0995\\\\u09cd\\\\u09b8\\\",\\\"description\\\":\\\"\\\\u09a4\\\\u09be\\\\u09b0\\\\u09be \\\\u0996\\\\u09c1\\\\u09ac \\\\u09a8\\\\u09b0\\\\u09ae \\\\u098f\\\\u09ac\\\\u0982 \\\\u0995\\\\u09cb\\\\u09a5\\\\u09be\\\\u0993 \\\\u0995\\\\u09cb\\\\u09a8 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09a5\\\\u09be \\\\u0986\\\\u099b\\\\u09c7 \\\\u099b\\\\u09c7\\\\u09a1\\\\u09bc\\\\u09c7 \\\\u09a8\\\\u09be. \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\\u0964 \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\"},{\\\"tab\\\":\\\"\\\\u09ac\\\\u09bf\\\\u09a6\\\\u09cd\\\\u09af\\\\u09be\\\\u09b2\\\\u09af\\\\u09bc\\\",\\\"title\\\":\\\"\\\\u09ac\\\\u09bf\\\\u09a6\\\\u09cd\\\\u09af\\\\u09be\\\\u09b2\\\\u09af\\\\u09bc\\\",\\\"description\\\":\\\"\\\\u09a4\\\\u09be\\\\u09b0\\\\u09be \\\\u0996\\\\u09c1\\\\u09ac \\\\u09a8\\\\u09b0\\\\u09ae \\\\u098f\\\\u09ac\\\\u0982 \\\\u0995\\\\u09cb\\\\u09a5\\\\u09be\\\\u0993 \\\\u0995\\\\u09cb\\\\u09a8 \\\\u09ac\\\\u09cd\\\\u09af\\\\u09a5\\\\u09be \\\\u0986\\\\u099b\\\\u09c7 \\\\u099b\\\\u09c7\\\\u09a1\\\\u09bc\\\\u09c7 \\\\u09a8\\\\u09be. \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\\u0964 \\\\u09a4\\\\u09bf\\\\u09a8\\\\u09bf \\\\u09a4\\\\u09be\\\\u09b0 \\\\u09aa\\\\u09b0\\\\u09bf\\\\u09ac\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u09af\\\\u09a4\\\\u09cd\\\\u09a8 \\\\u09a8\\\\u09bf\\\\u09a4\\\\u09c7 \\\\u09aa\\\\u099b\\\\u09a8\\\\u09cd\\\\u09a6 \\\\u0995\\\\u09b0\\\\u09c7\\\\u09a8\\\\u0964 \\\\u0985\\\\u09a8\\\\u09c1\\\\u09b6\\\\u09c0\\\\u09b2\\\\u09a8 \\\\u09ab\\\\u09b2\\\\u09aa\\\\u09cd\\\\u09b0\\\\u09b8\\\\u09c2 \\\\u09b9\\\\u09ac\\\\u09c7\\\"}]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(17, 5, 'bn', 'শিক্ষাদান এবং শেখার ক্ষেত্রে শ্রেষ্ঠত্ব', 'স্বাগত জানাই প্রতিটি ব্যথা এড়িয়ে যাওয়া কিন্তু নির্দিষ্ট পরিস্থিতিতে ব্যবসার বাধ্যবাধকতার কারণে এটি দায়িত্বের দাবি বা ব্যবসার বাধ্যবাধকতাগুলির জন্য এটি প্রায়শই ঘটবে যে আনন্দ। অফুরন্ত সুযোগ প্রদান', '\"[\\\"\\\\u0989\\\\u099a\\\\u09cd\\\\u099a \\\\u09b6\\\\u09bf\\\\u0995\\\\u09cd\\\\u09b7\\\\u09be\\\\u0997\\\\u09a4 \\\\u09af\\\\u09cb\\\\u0997\\\\u09cd\\\\u09af\\\\u09a4\\\\u09be\\\",\\\"\\\\u0995\\\\u09cd\\\\u09af\\\\u09be\\\\u09b0\\\\u09bf\\\\u09af\\\\u09bc\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u0986\\\\u09b0\\\\u0993 \\\\u09ad\\\\u09be\\\\u09b2\\\\u09cb \\\\u09b8\\\\u09ae\\\\u09cd\\\\u09ad\\\\u09be\\\\u09ac\\\\u09a8\\\\u09be\\\",\\\"\\\\u0995\\\\u09cd\\\\u09af\\\\u09be\\\\u09b0\\\\u09bf\\\\u09af\\\\u09bc\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u0986\\\\u09b0\\\\u0993 \\\\u09ad\\\\u09be\\\\u09b2\\\\u09cb \\\\u09b8\\\\u09ae\\\\u09cd\\\\u09ad\\\\u09be\\\\u09ac\\\\u09a8\\\\u09be\\\",\\\"\\\\u0995\\\\u09cd\\\\u09af\\\\u09be\\\\u09b0\\\\u09bf\\\\u09af\\\\u09bc\\\\u09be\\\\u09b0\\\\u09c7\\\\u09b0 \\\\u0986\\\\u09b0\\\\u0993 \\\\u09ad\\\\u09be\\\\u09b2\\\\u09cb \\\\u09b8\\\\u09ae\\\\u09cd\\\\u09ad\\\\u09be\\\\u09ac\\\\u09a8\\\\u09be\\\"]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(18, 6, 'bn', '20+ একাডেমিক পাঠ্যক্রম', 'Onsest Schooled হল 20,000 টিরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রদের বিভিন্ন ধরনের আগ্রহ, বয়স এবং ব্যাকগ্রাউন্ড সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।', '\"[\\\"\\\\u09ac\\\\u09be\\\\u0982\\\\u09b2\\\\u09be \\\\u09ae\\\\u09be\\\\u09a7\\\\u09cd\\\\u09af\\\\u09ae\\\",\\\"\\\\u09ac\\\\u09be\\\\u0982\\\\u09b2\\\\u09be \\\\u09ae\\\\u09be\\\\u09a7\\\\u09cd\\\\u09af\\\\u09ae\\\",\\\"\\\\u09ac\\\\u09be\\\\u0982\\\\u09b2\\\\u09be \\\\u09ae\\\\u09be\\\\u09a7\\\\u09cd\\\\u09af\\\\u09ae\\\",\\\"\\\\u09ac\\\\u09be\\\\u0982\\\\u09b2\\\\u09be \\\\u09ae\\\\u09be\\\\u09a7\\\\u09cd\\\\u09af\\\\u09ae\\\",\\\"\\\\u09ac\\\\u09be\\\\u0982\\\\u09b2\\\\u09be \\\\u09ae\\\\u09be\\\\u09a7\\\\u09cd\\\\u09af\\\\u09ae\\\",\\\"\\\\u09ac\\\\u09be\\\\u0982\\\\u09b2\\\\u09be \\\\u09ae\\\\u09be\\\\u09a7\\\\u09cd\\\\u09af\\\\u09ae\\\"]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(19, 7, 'bn', 'কি আসছে?', 'স্বাগত জানাই প্রতিটি ব্যথা এড়িয়ে যাওয়া তবে নির্দিষ্ট পরিস্থিতিতে ব্যবসার বাধ্যবাধকতার কারণে এটি কর্তব্য বা বাধ্যবাধকতার দাবিতে হবে।', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(20, 8, 'bn', 'আমাদের ব্লগ থেকে সর্বশেষ', 'স্বাগত জানাই প্রতিটি ব্যথা এড়িয়ে যাওয়া তবে নির্দিষ্ট পরিস্থিতিতে ব্যবসার বাধ্যবাধকতার কারণে এটি কর্তব্য বা বাধ্যবাধকতার দাবিতে হবে।', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(21, 9, 'bn', 'আমাদের গ্যালারি', 'স্বাগত জানাই প্রতিটি ব্যথা এড়িয়ে যাওয়া তবে নির্দিষ্ট পরিস্থিতিতে ব্যবসার বাধ্যবাধকতার কারণে এটি কর্তব্য বা বাধ্যবাধকতার দাবিতে হবে।', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(22, 10, 'bn', 'আমাদের যোগাযোগের তথ্য খুঁজুন', '', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(23, 11, 'bn', 'বিভাগ দ্বারা যোগাযোগ', 'স্বাগত জানাই প্রতিটি কষ্টকে এড়িয়ে যাওয়া কিন্তু কিছু নির্দিষ্ট পরিস্থিতিতে ব্যবসার বাধ্যবাধকতার কারণে এটি দায়িত্বের দাবি বা ব্যবসার বাধ্যবাধকতার জন্য এটি করবে', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(24, 12, 'bn', 'আমাদের বৈশিষ্ট্যযুক্ত শিক্ষক', '', '\"[]\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2024', '2024-01-01', '2024-12-31', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, '2025', '2025-01-01', '2025-12-31', 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `session_class_students`
--

CREATE TABLE `session_class_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `classes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `result` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 = fail, 1 = pass',
  `roll` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_class_students`
--

INSERT INTO `session_class_students` (`id`, `session_id`, `student_id`, `classes_id`, `section_id`, `shift_id`, `result`, `roll`, `created_at`, `updated_at`) VALUES
(11, 1, 11, 1, 1, 1, 1, '01', '2024-07-16 21:54:53', '2024-07-16 21:54:53'),
(12, 1, 12, 2, 1, 1, 1, '011', '2024-07-16 21:56:03', '2024-07-16 22:00:27'),
(13, 1, 13, 3, 1, 1, 1, '033', '2024-07-16 21:57:14', '2024-07-16 22:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `session_translates`
--

CREATE TABLE `session_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'application_name', '\"\\u09ac\\u09be\\u0987\\u09a4\\u09c1\\u09b2 \\u09b9\\u09bf\\u0995\\u09ae\\u09be\\u09b9 \\u09ae\\u09be\\u09b0\\u0995\\u09be\\u09af\\u09c1\\u09b2  \\u0995\\u09c1\\u09b0\\u0986\\u09a8  \\u09ae\\u09be\\u09a6\\u09b0\\u09be\\u09b8\\u09be\"', '2024-05-28 00:02:06', '2024-06-27 04:36:42'),
(2, 'address', '\"\\u0989\\u09a6\\u09ac\\u09be\\u09dc\\u09bf\\u09df\\u09be ,\\u09a7\\u09be\\u09b0\\u09be\\u09ac\\u09be\\u09b0\\u09bf\\u09df\\u09be ,\\u0997\\u09c1\\u09b0\\u09c1\\u09a6\\u09be\\u09b8\\u09aa\\u09c1\\u09b0 ,\\u09a8\\u09be\\u099f\\u09cb\\u09b0\"', '2024-05-28 00:02:06', '2024-06-30 04:18:37'),
(3, 'phone', '\"+8801308157923\"', '2024-05-28 00:02:06', '2024-06-30 04:19:34'),
(4, 'email', '\"Sherazischool@gmail.com\"', '2024-05-28 00:02:06', '2024-06-27 00:11:46'),
(5, 'school_about', '\"Lorem ipsum dolor sit amet consectetur. Morbi cras sodales elementum sed. Suspendisse adipiscing arcu magna leo sodales pellentesque. Ac iaculis mattis ornare rhoncus nibh mollis arcu.\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\"', '2024-05-28 00:02:06', '2024-06-30 04:19:34'),
(6, 'footer_text', '\"\\u00a9 2023 Sherazi Schooled . All rights reserved.\"', '2024-05-28 00:02:06', '2024-06-27 00:11:46'),
(7, 'file_system', '\"local\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 'aws_access_key_id', '\"AKIA3OGN2RWSJOR5UOTK\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 'aws_secret_key', '\"Vz18p5ELHI6BP9K7iZAzduu+sQCD\\/KkvbAwElmfX\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 'aws_region', '\"ap-southeast-1\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 'aws_bucket', '\"onestschool\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(12, 'aws_endpoint', '\"https:\\/\\/s3.ap-southeast-1.amazonaws.com\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(13, 'twilio_account_sid', '\"AC246311d660594a872734080bbb03a18b\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(14, 'twilio_auth_token', '\"9e64cc0f85970ab0d0f055f541861742\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(15, 'twilio_phone_number', '\"+14422426457\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(16, 'recaptcha_sitekey', '\"6Lfn6nQhAAAAAKYauxvLddLtcqSn1yqn-HRn_CbN\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(17, 'recaptcha_secret', '\"6Lfn6nQhAAAAABOzRtEjhZYB49Dd4orv41thfh02\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(18, 'recaptcha_status', '\"0\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(19, 'mail_drive', '\"smtp\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(20, 'mail_host', '\"smtp.gmail.com\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(21, 'mail_address', '\"Sherazi103@gmail.com\"', '2024-05-28 00:02:06', '2024-06-27 00:13:11'),
(22, 'from_name', '\"Sherazi Schooled - School Management System\"', '2024-05-28 00:02:06', '2024-06-27 00:13:11'),
(23, 'mail_username', '\"Sherazi103@gmail.com\"', '2024-05-28 00:02:06', '2024-06-27 00:13:11'),
(24, 'mail_password', '\"eyJpdiI6IlhXUkx2TzhManltMWZxVEFBNEg3Vmc9PSIsInZhbHVlIjoibldxM2lKT2R1YUFhN2E1UW9yRFFlQjRvblpaVjBNaUFoZjAyemtYQlFuTT0iLCJtYWMiOiJiNWUxN2QwOGRlOTVmMWExZWVkYzFmOTg3ZGZlZGI1ZTVjNjY4YWEyNmJkN2UwMjkxNWZlYmM1ZWVhMTkzMDZhIiwidGFnIjoiIn0=\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(25, 'mail_port', '\"587\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(26, 'encryption', '\"tls\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(27, 'default_langauge', '\"bn\"', '2024-05-28 00:02:06', '2024-06-27 03:42:59'),
(28, 'light_logo', '\"backend\\/uploads\\/settings\\/MFjf7W_1719474049.png\"', '2024-05-28 00:02:06', '2024-06-27 01:40:49'),
(29, 'dark_logo', '\"backend\\/uploads\\/settings\\/Kdra7a_1719474049.png\"', '2024-05-28 00:02:06', '2024-06-27 01:40:49'),
(30, 'favicon', '\"backend\\/uploads\\/settings\\/MMBAQ4_1719474049.png\"', '2024-05-28 00:02:06', '2024-06-27 01:40:49'),
(31, 'session', '1', '2024-05-28 00:02:06', '2024-07-17 03:39:29'),
(32, 'currency_code', '\"BDT\"', '2024-05-28 00:02:06', '2024-06-27 00:11:46'),
(33, 'map_key', '\"!1m18!1m12!1m3!1d3650.776241229233!2d90.40412657620105!3d23.790981078642808!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c72b14773d9d%3A0x21df6643cbfa879f!2sSookh!5e0!3m2!1sen!2sbd!4v1711600654298!5m2!1sen!2sbd\"', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translates`
--

CREATE TABLE `setting_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from` varchar(255) NOT NULL DEFAULT 'general_settings',
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translates`
--

INSERT INTO `setting_translates` (`id`, `setting_id`, `from`, `locale`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'general_settings', 'en', 'application_name', 'Onest Schooled - School Management System', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 1, 'general_settings', 'bn', 'application_name', 'ওনেস্ট স্কুলড - স্কুল ম্যানেজমেন্ট সিস্টেম', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 6, 'general_settings', 'en', 'footer_text', '© 2023 Onest Schooled . All rights reserved.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 6, 'general_settings', 'bn', 'footer_text', '© 2023 Oneest Schooled. সমস্ত অধিকার সংরক্ষিত.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 2, 'general_settings', 'en', 'address', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 2, 'general_settings', 'bn', 'address', 'রেসিমন্ট টাওয়ার, হাউজ 148, রোড 13/বি, ব্লক ই বনানী ঢাকা 1213।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 3, 'general_settings', 'en', 'phone', '+62 8787 8787', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 3, 'general_settings', 'bn', 'phone', '+৬২ ৮৭৮৭ ৮৭৮৭', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 5, 'general_settings', 'en', 'school_about', 'Lorem ipsum dolor sit amet consectetur. Morbi cras sodales elementum sed. Suspendisse adipiscing arcu magna leo sodales pellentesque. Ac iaculis mattis ornare rhoncus nibh mollis arcu.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 5, 'general_settings', 'bn', 'school_about', 'Lorem ipsum dolor sit amet, consectetur. কিন্তু কালকের সদস্যদের রোগের উপাদান। শিক্ষার্থীদের বর্তমান পরিস্থিতি সম্পর্কে সচেতন হওয়া জরুরি। এবং তীর, একটি নরম ধনুক সঙ্গে মাটি সাজাইয়া.', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, '1st', 1, '2024-06-27 00:56:08', '2024-06-27 00:56:08'),
(2, '2nd', 1, '2024-06-27 00:56:15', '2024-06-27 00:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `shift_translates`
--

CREATE TABLE `shift_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `upload_id`, `description`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'বাইতুল হিকমাহ মারকাযুল  কুরআন  মাদরাসা', 11, 'Wonderful environment where children undertakes laborious physical learn and grow. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sin 1.', 0, 1, '2024-05-28 00:02:06', '2024-06-27 03:05:49'),
(2, 'বাইতুল হিকমাহ মারকাযুল  কুরআন  মাদরাসা', 12, 'Wonderful environment where children undertakes laborious physical learn and grow. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sin 2.', 1, 1, '2024-05-28 00:02:06', '2024-06-27 03:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translates`
--

CREATE TABLE `slider_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translates`
--

INSERT INTO `slider_translates` (`id`, `slider_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Let’s Build Your Future With Onest Shooled 1', 'Wonderful environment where children undertakes laborious physical learn and grow. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sin 1.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 2, 'en', 'Let’s Build Your Future With Onest Shooled 2', 'Wonderful environment where children undertakes laborious physical learn and grow. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sin 2.', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 1, 'bn', 'আসুন Oneest Shooled 1 দিয়ে আপনার ভবিষ্যত গড়ে তুলি', 'চমৎকার পরিবেশ যেখানে শিশুরা শ্রমসাধ্য শারীরিক শিক্ষা গ্রহণ করে এবং বড় হয়। আমেট নরম, তারা কোথাও ছেড়ে যায় না, কিছু ব্যথা হতে দিন।', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 2, 'bn', 'আসুন Oneest Shooled 2 দিয়ে আপনার ভবিষ্যত গড়ে তুলি', 'চমৎকার পরিবেশ যেখানে শিশুরা শ্রমসাধ্য শারীরিক শিক্ষা গ্রহণ করে এবং বড় হয়। আমেত একটুও হাল ছাড়ে না, তারা কোথাও ছাড়ে না, কিছু ব্যথা থাকুক।', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `sms_mail_logs`
--

CREATE TABLE `sms_mail_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('mail','sms') NOT NULL,
  `mail_description` longtext DEFAULT NULL,
  `sms_description` text DEFAULT NULL,
  `user_type` enum('role','individual','class') NOT NULL,
  `role_ids` longtext DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `individual_user_ids` longtext DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_ids` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_mail_templates`
--

CREATE TABLE `sms_mail_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('mail','sms') NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `mail_description` longtext DEFAULT NULL,
  `sms_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_mail_templates`
--

INSERT INTO `sms_mail_templates` (`id`, `title`, `type`, `attachment`, `mail_description`, `sms_description`, `created_at`, `updated_at`) VALUES
(1, 'ss', 'sms', NULL, NULL, 'asdsad', '2024-07-01 04:36:33', '2024-07-01 04:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `designation_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `joining_date` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `emergency_contact` varchar(255) DEFAULT NULL,
  `marital_status` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `upload_documents` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `staff_id`, `role_id`, `designation_id`, `department_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `email`, `gender_id`, `dob`, `joining_date`, `phone`, `emergency_contact`, `marital_status`, `status`, `upload_id`, `current_address`, `permanent_address`, `basic_salary`, `upload_documents`, `created_at`, `updated_at`) VALUES
(1, 2, 222, 5, 4, 2, 'Rasel', 'Ahamed', 'Rahim', 'Nahhar', 'rasel@gmail.com', 1, '2024-06-27', '2024-06-27', '01913145501', '2314242', 1, 1, 75, 'Dhaka', 'Dhaka', 12000, '{\"1\":{\"title\":\"ddf\",\"file\":null}}', '2024-06-27 04:05:47', '2024-06-27 04:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admission_no` varchar(255) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `student_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `religion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blood_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_guardian_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_documents` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `previous_school` tinyint(4) NOT NULL DEFAULT 0,
  `previous_school_info` text DEFAULT NULL,
  `previous_school_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `cpr_no` varchar(255) DEFAULT NULL,
  `spoken_lang_at_home` varchar(255) DEFAULT NULL,
  `residance_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `first_name`, `last_name`, `mobile`, `email`, `dob`, `admission_date`, `student_category_id`, `religion_id`, `blood_group_id`, `gender_id`, `category_id`, `image_id`, `parent_guardian_id`, `user_id`, `upload_documents`, `status`, `previous_school`, `previous_school_info`, `previous_school_image_id`, `place_of_birth`, `nationality`, `cpr_no`, `spoken_lang_at_home`, `residance_address`, `created_at`, `updated_at`) VALUES
(11, '01', 1, 'Farhan', 'Ahamed', '0125855255', 'farhan@gmail.com', '2008-07-17', '2024-07-17', 3, NULL, 1, 1, NULL, NULL, 7, 25, '[]', 1, 0, '', NULL, 'Dhaka', NULL, NULL, NULL, '', '2024-07-16 21:54:53', '2024-07-16 21:54:53'),
(12, '011', 11, 'Mubtasim', 'islam', '0189852625', 'mubtasim@gmail.com', '2004-07-06', '2024-07-18', 3, NULL, NULL, 1, NULL, NULL, 7, 26, '[]', 1, 0, NULL, NULL, '', NULL, NULL, NULL, '', '2024-07-16 21:56:03', '2024-07-16 22:00:27'),
(13, '033', 33, 'Mejbahul', 'islam', '0122454525', '', '2002-07-10', '2024-07-17', 3, NULL, NULL, 1, NULL, NULL, 7, 27, '[]', 1, 0, NULL, NULL, '', NULL, NULL, NULL, '', '2024-07-16 21:57:14', '2024-07-16 22:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `student_absent_notifications`
--

CREATE TABLE `student_absent_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notify_student` tinyint(1) NOT NULL DEFAULT 0,
  `notify_gurdian` tinyint(1) NOT NULL DEFAULT 1,
  `sending_time` varchar(255) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `notification_message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_absent_notifications`
--

INSERT INTO `student_absent_notifications` (`id`, `notify_student`, `notify_gurdian`, `sending_time`, `active_status`, `notification_message`, `created_at`, `updated_at`) VALUES
(1, 0, 1, '10:00', 1, 'Hi [guardian_name] , your child [student_name] on class [class] - ([section]) Admission [admission_no] is [attendance_type] on [attendance_date]  . For more contact [school_name]', '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `student_categories`
--

CREATE TABLE `student_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_categories`
--

INSERT INTO `student_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Science', 1, '2024-07-14 03:39:16', '2024-07-14 03:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', '360', 1, 1, '2024-06-27 00:57:16', '2024-06-27 00:57:16'),
(2, 'English', '560', 1, 1, '2024-06-27 00:57:31', '2024-06-27 00:57:31'),
(3, 'Math', '120', 1, 1, '2024-06-27 00:57:43', '2024-06-27 00:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `subject_assigns`
--

CREATE TABLE `subject_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_assigns`
--

INSERT INTO `subject_assigns` (`id`, `session_id`, `classes_id`, `section_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2024-06-27 04:06:23', '2024-06-27 04:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `subject_assign_childrens`
--

CREATE TABLE `subject_assign_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_assign_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_assign_childrens`
--

INSERT INTO `subject_assign_childrens` (`id`, `subject_assign_id`, `subject_id`, `staff_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2024-06-27 04:06:23', '2024-06-27 04:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` enum('prepaid','postpaid') NOT NULL DEFAULT 'prepaid',
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `student_limit` int(11) DEFAULT NULL,
  `staff_limit` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `trx_id` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `features_name` longtext DEFAULT NULL,
  `features` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `payment_type`, `name`, `price`, `student_limit`, `staff_limit`, `expiry_date`, `trx_id`, `method`, `features_name`, `features`, `status`, `created_at`, `updated_at`) VALUES
(1, 'prepaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-05-28 00:02:06', '2024-05-28 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `system_notifications`
--

CREATE TABLE `system_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `reciver_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_notifications`
--

INSERT INTO `system_notifications` (`id`, `title`, `message`, `reciver_id`, `url`, `is_read`, `read_at`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'Student Online Admission', 'Dear Super Admin,\n                        Justin Langley admitted on class : one , section : A on 27 Jun 2024. Thank You বাইতুল হিকমাহ মারকাযুল  কুরআন  মাদরাসা .', 1, 'http://127.0.0.1:8000/online-admissions/edit/1', 1, '2024-06-27 04:28:08', 1, '2024-06-27 04:21:38', '2024-06-27 04:28:08'),
(2, 'Student Online Admission', 'Dear Super Admin,\n                        Justin Langley admitted on class : one , section : A on 27 Jun 2024. Thank You বাইতুল হিকমাহ মারকাযুল  কুরআন  মাদরাসা .', 1, 'http://127.0.0.1:8000/online-admissions/edit/1', 1, '2024-07-17 03:04:50', 1, '2024-06-27 04:21:44', '2024-07-17 03:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_schedules`
--

CREATE TABLE `time_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT 'Class = 1, Exam = 2',
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_schedules`
--

INSERT INTO `time_schedules` (`id`, `type`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '10:12', '11:01', 1, '2024-06-27 04:06:58', '2024-06-27 04:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `path`, `created_at`, `updated_at`) VALUES
(1, 'backend/uploads/users/user-icon-1.png', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(2, 'backend/uploads/users/user-icon-2.png', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(3, 'backend/uploads/users/user-icon-3.png', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(4, 'backend/uploads/users/user-icon-4.png', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(5, 'frontend/img/accreditation/accreditation.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(6, 'frontend/img/banner/cta_bg.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(7, 'frontend/img/explore/1.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(8, 'frontend/img/icon/1.svg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(9, 'frontend/img/icon/2.svg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(10, 'frontend/img/icon/3.svg', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(11, 'backend/uploads/sliders/17194787934jmKARbO8h.jpg', '2024-05-28 00:02:06', '2024-06-27 02:59:53'),
(12, 'backend/uploads/sliders/1719479027fm7QxgDM9l.jpg', '2024-05-28 00:02:06', '2024-06-27 03:03:47'),
(14, 'frontend/img/counters/01.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(15, 'frontend/img/counters/02.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(16, 'frontend/img/counters/03.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(17, 'frontend/img/counters/04.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(18, 'frontend/img/counters/05.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(23, 'frontend/img/blog/05.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(24, 'frontend/img/blog/06.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(25, 'frontend/img/blog/07.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(28, 'backend/uploads/news/1719481818YbwylsdeX8.jpg', '2024-05-28 00:02:06', '2024-06-27 03:50:18'),
(29, 'backend/uploads/news/17194817909cHWEhjyB7.jpg', '2024-05-28 00:02:06', '2024-06-27 03:49:50'),
(30, 'backend/uploads/news/1719481770heC6zbj5vi.jpg', '2024-05-28 00:02:06', '2024-06-27 03:49:30'),
(31, 'backend/uploads/news/1719481738YBK8I4UEp1.jpg', '2024-05-28 00:02:06', '2024-06-27 03:48:58'),
(56, 'frontend/img/contact/contact_1.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(57, 'frontend/img/contact/contact_2.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(58, 'frontend/img/contact/contact_3.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(59, 'frontend/img/contact/contact_4.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(60, 'frontend/img/contact/admission_1.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(61, 'frontend/img/contact/admission_2.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(62, 'frontend/img/contact/admission_3.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(63, 'frontend/img/contact/admission_4.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(64, 'frontend/img/about-gallery/1.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(65, 'frontend/img/about-gallery/icon_1.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(66, 'frontend/img/about-gallery/2.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(67, 'frontend/img/about-gallery/icon_2.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(68, 'frontend/img/about-gallery/3.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(69, 'frontend/img/about-gallery/icon_3.webp', '2024-05-28 00:02:06', '2024-05-28 00:02:06'),
(70, 'backend/uploads/gallery/1719480543RU4AKhRQYt.jpg', '2024-06-27 03:29:03', '2024-06-27 03:29:03'),
(71, 'backend/uploads/gallery/1719480556kwOHv6mPU6.jpg', '2024-06-27 03:29:16', '2024-06-27 03:29:16'),
(72, 'backend/uploads/gallery/1719480567OMEZdMaLMq.jpg', '2024-06-27 03:29:27', '2024-06-27 03:29:27'),
(73, 'backend/uploads/gallery/1719480608VQJdsYMEbM.jpg', '2024-06-27 03:30:08', '2024-06-27 03:30:08'),
(74, 'backend/uploads/gallery/1719480623wRJn5nkvmP.jpg', '2024-06-27 03:30:23', '2024-06-27 03:30:23'),
(75, 'backend/uploads/users/1719482747w5x2QRlP0Y.jpg', '2024-06-27 04:05:47', '2024-06-27 04:05:47'),
(76, 'backend/uploads/students/1719483694qvwXsUt3PA.jpg', '2024-06-27 04:21:34', '2024-06-27 04:21:34'),
(79, 'backend/uploads/event/1719749358TbcBMKA63e.jpg', '2024-06-30 06:09:18', '2024-06-30 06:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `admission_no` varchar(255) DEFAULT NULL COMMENT 'For student login',
  `date_of_birth` date DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL COMMENT 'if null then verifield, not null then not verified',
  `token` varchar(255) DEFAULT NULL COMMENT 'Token for email/phone verification, if null then verifield, not null then not verified',
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `reset_password_otp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admission_no`, `date_of_birth`, `gender`, `email_verified_at`, `token`, `phone`, `password`, `permissions`, `last_login`, `status`, `upload_id`, `role_id`, `designation_id`, `remember_token`, `reset_password_otp`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', NULL, '2022-09-07', 1, '2024-06-26 23:16:22', NULL, '01811000000', '$2y$10$yT/BK9XvQ5wWvkkFgFU8FeyqBSYXxXzLuie3SGTrzTdGA8LU9C44W', '[\"counter_read\",\"fees_collesction_read\",\"revenue_read\",\"fees_collection_this_month_read\",\"income_expense_read\",\"upcoming_events_read\",\"attendance_chart_read\",\"calendar_read\",\"student_read\",\"student_create\",\"student_update\",\"student_delete\",\"student_category_read\",\"student_category_create\",\"student_category_update\",\"student_category_delete\",\"promote_students_read\",\"promote_students_create\",\"disabled_students_read\",\"disabled_students_create\",\"parent_read\",\"parent_create\",\"parent_update\",\"parent_delete\",\"admission_read\",\"admission_create\",\"admission_update\",\"admission_delete\",\"classes_read\",\"classes_create\",\"classes_update\",\"classes_delete\",\"section_read\",\"section_create\",\"section_update\",\"section_delete\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"class_setup_read\",\"class_setup_create\",\"class_setup_update\",\"class_setup_delete\",\"subject_read\",\"subject_create\",\"subject_update\",\"subject_delete\",\"subject_assign_read\",\"subject_assign_create\",\"subject_assign_update\",\"subject_assign_delete\",\"class_routine_read\",\"class_routine_create\",\"class_routine_update\",\"class_routine_delete\",\"time_schedule_read\",\"time_schedule_create\",\"time_schedule_update\",\"time_schedule_delete\",\"class_room_read\",\"class_room_create\",\"class_room_update\",\"class_room_delete\",\"fees_group_read\",\"fees_group_create\",\"fees_group_update\",\"fees_group_delete\",\"fees_type_read\",\"fees_type_create\",\"fees_type_update\",\"fees_type_delete\",\"fees_master_read\",\"fees_master_create\",\"fees_master_update\",\"fees_master_delete\",\"fees_assign_read\",\"fees_assign_create\",\"fees_assign_update\",\"fees_assign_delete\",\"fees_collect_read\",\"fees_collect_create\",\"fees_collect_update\",\"fees_collect_delete\",\"exam_type_read\",\"exam_type_create\",\"exam_type_update\",\"exam_type_delete\",\"marks_grade_read\",\"marks_grade_create\",\"marks_grade_update\",\"marks_grade_delete\",\"exam_assign_read\",\"exam_assign_create\",\"exam_assign_update\",\"exam_assign_delete\",\"exam_routine_read\",\"exam_routine_create\",\"exam_routine_update\",\"exam_routine_delete\",\"marks_register_read\",\"marks_register_create\",\"marks_register_update\",\"marks_register_delete\",\"homework_read\",\"homework_create\",\"homework_update\",\"homework_delete\",\"exam_setting_read\",\"exam_setting_update\",\"account_head_read\",\"account_head_create\",\"account_head_update\",\"account_head_delete\",\"income_read\",\"income_create\",\"income_update\",\"income_delete\",\"expense_read\",\"expense_create\",\"expense_update\",\"expense_delete\",\"attendance_read\",\"attendance_create\",\"report_marksheet_read\",\"report_merit_list_read\",\"report_progress_card_read\",\"report_due_fees_read\",\"report_fees_collection_read\",\"report_account_read\",\"report_class_routine_read\",\"report_exam_routine_read\",\"report_attendance_read\",\"language_read\",\"language_create\",\"language_update\",\"language_update_terms\",\"language_delete\",\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"page_sections_read\",\"page_sections_update\",\"slider_read\",\"slider_create\",\"slider_update\",\"slider_delete\",\"about_read\",\"about_create\",\"about_update\",\"about_delete\",\"counter_read\",\"counter_create\",\"counter_update\",\"counter_delete\",\"contact_info_read\",\"contact_info_create\",\"contact_info_update\",\"contact_info_delete\",\"dep_contact_read\",\"dep_contact_create\",\"dep_contact_update\",\"dep_contact_delete\",\"news_read\",\"news_create\",\"news_update\",\"news_delete\",\"event_read\",\"event_create\",\"event_update\",\"event_delete\",\"gallery_category_read\",\"gallery_category_create\",\"gallery_category_update\",\"gallery_category_delete\",\"gallery_read\",\"gallery_create\",\"gallery_update\",\"gallery_delete\",\"subscribe_read\",\"contact_message_read\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_update\",\"task_schedules_read\",\"task_schedules_update\",\"software_update_read\",\"software_update_update\",\"recaptcha_settings_read\",\"recaptcha_settings_update\",\"payment_gateway_settings_read\",\"payment_gateway_settings_update\",\"email_settings_read\",\"email_settings_update\",\"sms_settings_read\",\"sms_settings_update\",\"gender_read\",\"gender_create\",\"gender_update\",\"gender_delete\",\"religion_read\",\"religion_create\",\"religion_update\",\"religion_delete\",\"blood_group_read\",\"blood_group_create\",\"blood_group_update\",\"blood_group_delete\",\"session_read\",\"session_create\",\"session_update\",\"session_delete\",\"book_category_read\",\"book_category_create\",\"book_category_update\",\"book_category_delete\",\"book_read\",\"book_create\",\"book_update\",\"book_delete\",\"member_read\",\"member_create\",\"member_update\",\"member_delete\",\"member_category_read\",\"member_category_create\",\"member_category_update\",\"member_category_delete\",\"issue_book_read\",\"issue_book_create\",\"issue_book_update\",\"issue_book_delete\",\"online_exam_type_read\",\"online_exam_type_create\",\"online_exam_type_update\",\"online_exam_type_delete\",\"question_group_read\",\"question_group_create\",\"question_group_update\",\"question_group_delete\",\"question_bank_read\",\"question_bank_create\",\"question_bank_update\",\"question_bank_delete\",\"online_exam_read\",\"online_exam_create\",\"online_exam_update\",\"online_exam_delete\",\"id_card_read\",\"id_card_create\",\"id_card_update\",\"id_card_delete\",\"id_card_generate_read\",\"certificate_read\",\"certificate_create\",\"certificate_update\",\"certificate_delete\",\"certificate_generate_read\",\"homework_read\",\"homework_create\",\"homework_update\",\"homework_delete\",\"gmeet_read\",\"gmeet_create\",\"gmeet_update\",\"gmeet_delete\",\"notice_board_read\",\"notice_board_create\",\"notice_board_update\",\"notice_board_delete\",\"sms_mail_template_read\",\"sms_mail_template_create\",\"nsms_mail_templateupdate\",\"sms_mail_template_delete\",\"sms_mail_read\",\"sms_mail_send\"]', NULL, 1, 1, 1, 1, 'IM2gboEcfyUWSYuZEwnMzLm2rDRhe9KXGwPN2jRDJ0j9mjShWIokWTC966tm', NULL, '2024-05-28 00:02:06', '2024-06-26 23:16:22'),
(2, 'Rasel', 'rasel@gmail.com', NULL, NULL, 1, '2024-06-27 04:05:47', NULL, '01913145501', '$2y$10$mdqKMJkQllMm1BdrfN/Jy.gFQeF04katchP9l8JROD.Q2V7URrZTe', '[]', NULL, 1, 75, 5, NULL, NULL, NULL, '2024-06-27 04:05:47', '2024-06-27 04:05:47'),
(13, 'Adafsdf', 'nygocygu@mailinator.com', NULL, NULL, 1, '2024-06-30 00:09:14', NULL, 'mizyp@mailinator.com', '$2y$10$tMbecS3jnxKObDpZK7/pJO8Gc86qhftWnMOQaC/FAWDGaYiR.aX4W', '[]', NULL, 1, NULL, 7, NULL, NULL, NULL, '2024-06-30 00:09:14', '2024-06-30 00:09:14'),
(14, 'jery@mailinator.com', 'sygoxetaxa@mailinator.com', NULL, NULL, 1, '2024-06-30 00:42:11', NULL, 'rajy@mailinator.com', '$2y$10$ixj/nsTw5XJlSIs/y0VVbehMZQFtn1/Ufw1mRqbIAlS1/DVosWxYG', '[]', NULL, 1, NULL, 7, NULL, NULL, NULL, '2024-06-30 00:42:11', '2024-06-30 00:42:11'),
(15, 'qihalifere@mailinator.com', 'dujume@mailinator.com', NULL, NULL, 1, '2024-06-30 00:42:19', NULL, 'dejibodul@mailinator.com', '$2y$10$5PVYaE4jwW2.L9av1Zh1vurH7VCu4m52NeAI8xzot4AaD0MBEskhC', '[]', NULL, 1, NULL, 7, NULL, NULL, NULL, '2024-06-30 00:42:19', '2024-06-30 00:42:19'),
(19, 'Mahamudul Islam', 'fodubu@mailinator.com', '90', '2008-07-03', 1, '2024-06-30 02:22:29', NULL, '01856465151', '$2y$10$LL890ouP8wwRhE6sDr.gRuvkoKvGdolqqijgCdE5Wh7um6KIR7pam', '[]', NULL, 1, NULL, 6, NULL, NULL, NULL, '2024-06-30 02:22:29', '2024-06-30 02:22:29'),
(20, 'Mubtasim islam', 'ziqopewe@mailinator.com', '69', '2013-07-21', 1, '2024-06-30 02:23:11', NULL, '32343434', '$2y$10$h8Sxmet5hFfeLFvB0X.XzOpz1ilFtlYNQ28fcNArWbylwUUnF958K', '[]', NULL, 1, NULL, 6, NULL, NULL, NULL, '2024-06-30 02:23:11', '2024-06-30 02:23:11'),
(25, 'Farhan Ahamed', 'farhan@gmail.com', '01', '2008-07-17', 1, '2024-07-16 21:54:53', NULL, '0125855255', '$2y$10$btVzN0CoNAEVxG0mQhJz/eJ5Gs9Qxp4Qf2At0m0WPJNFBLz.r1DxS', '[]', NULL, 1, NULL, 6, NULL, NULL, NULL, '2024-07-16 21:54:53', '2024-07-16 21:54:53'),
(26, 'Mubtasim islam', 'mubtasim@gmail.com', '011', '2004-07-06', 1, '2024-07-16 21:56:03', NULL, '0189852625', '$2y$10$u.MzfpWzBeSntY5lPJ3jSu6Hc1.xzmotIodFS1gb3SlN/z4Rx9XHS', '[]', NULL, 1, NULL, 6, NULL, NULL, NULL, '2024-07-16 21:56:03', '2024-07-16 21:56:03'),
(27, 'Mejbahul islam', NULL, '033', '2002-07-10', 1, '2024-07-16 21:57:14', NULL, '0122454525', '$2y$10$URgR4aqCC3vbUVclaqnigOX64ieE17msVbS4bIX6uc1xOquuMHK7C', '[]', NULL, 1, NULL, 6, NULL, NULL, NULL, '2024-07-16 21:57:14', '2024-07-16 21:57:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_upload_id_foreign` (`upload_id`),
  ADD KEY `abouts_icon_upload_id_foreign` (`icon_upload_id`);

--
-- Indexes for table `about_translates`
--
ALTER TABLE `about_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_translates_about_id_foreign` (`about_id`);

--
-- Indexes for table `account_heads`
--
ALTER TABLE `account_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `answers_student_id_foreign` (`student_id`);

--
-- Indexes for table `answer_childrens`
--
ALTER TABLE `answer_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_childrens_answer_id_foreign` (`answer_id`),
  ADD KEY `answer_childrens_question_bank_id_foreign` (`question_bank_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_session_id_foreign` (`session_id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`),
  ADD KEY `attendances_classes_id_foreign` (`classes_id`),
  ADD KEY `attendances_section_id_foreign` (`section_id`);

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_bg_image_foreign` (`bg_image`),
  ADD KEY `certificates_bottom_left_signature_foreign` (`bottom_left_signature`),
  ADD KEY `certificates_bottom_right_signature_foreign` (`bottom_right_signature`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_routines_session_id_foreign` (`session_id`),
  ADD KEY `class_routines_classes_id_foreign` (`classes_id`),
  ADD KEY `class_routines_section_id_foreign` (`section_id`),
  ADD KEY `class_routines_shift_id_foreign` (`shift_id`);

--
-- Indexes for table `class_routine_childrens`
--
ALTER TABLE `class_routine_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_routine_childrens_class_routine_id_foreign` (`class_routine_id`),
  ADD KEY `class_routine_childrens_subject_id_foreign` (`subject_id`),
  ADD KEY `class_routine_childrens_time_schedule_id_foreign` (`time_schedule_id`),
  ADD KEY `class_routine_childrens_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `class_section_translates`
--
ALTER TABLE `class_section_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_translates_section_id_foreign` (`section_id`);

--
-- Indexes for table `class_setups`
--
ALTER TABLE `class_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_setups_session_id_foreign` (`session_id`),
  ADD KEY `class_setups_classes_id_foreign` (`classes_id`);

--
-- Indexes for table `class_setup_childrens`
--
ALTER TABLE `class_setup_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_setup_childrens_class_setup_id_foreign` (`class_setup_id`),
  ADD KEY `class_setup_childrens_section_id_foreign` (`section_id`);

--
-- Indexes for table `class_translates`
--
ALTER TABLE `class_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_translates_class_id_foreign` (`class_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_infos_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `contact_info_translates`
--
ALTER TABLE `contact_info_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_info_translates_contact_info_id_foreign` (`contact_info_id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counters_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `counter_translates`
--
ALTER TABLE `counter_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counter_translates_counter_id_foreign` (`counter_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_contacts`
--
ALTER TABLE `department_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_contacts_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `department_contact_translates`
--
ALTER TABLE `department_contact_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_contact_translates_department_contact_id_foreign` (`department_contact_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `donars`
--
ALTER TABLE `donars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_session_id_foreign` (`session_id`),
  ADD KEY `events_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `event_translates`
--
ALTER TABLE `event_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_translates_event_id_foreign` (`event_id`);

--
-- Indexes for table `examination_results`
--
ALTER TABLE `examination_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examination_results_session_id_foreign` (`session_id`),
  ADD KEY `examination_results_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `examination_results_classes_id_foreign` (`classes_id`),
  ADD KEY `examination_results_section_id_foreign` (`section_id`),
  ADD KEY `examination_results_student_id_foreign` (`student_id`);

--
-- Indexes for table `examination_settings`
--
ALTER TABLE `examination_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examination_settings_session_id_foreign` (`session_id`);

--
-- Indexes for table `exam_assigns`
--
ALTER TABLE `exam_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_assigns_session_id_foreign` (`session_id`),
  ADD KEY `exam_assigns_classes_id_foreign` (`classes_id`),
  ADD KEY `exam_assigns_section_id_foreign` (`section_id`),
  ADD KEY `exam_assigns_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `exam_assigns_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `exam_assign_childrens`
--
ALTER TABLE `exam_assign_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_assign_childrens_exam_assign_id_foreign` (`exam_assign_id`);

--
-- Indexes for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_routines_session_id_foreign` (`session_id`),
  ADD KEY `exam_routines_classes_id_foreign` (`classes_id`),
  ADD KEY `exam_routines_section_id_foreign` (`section_id`),
  ADD KEY `exam_routines_type_id_foreign` (`type_id`);

--
-- Indexes for table `exam_routine_childrens`
--
ALTER TABLE `exam_routine_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_routine_childrens_exam_routine_id_foreign` (`exam_routine_id`),
  ADD KEY `exam_routine_childrens_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_routine_childrens_time_schedule_id_foreign` (`time_schedule_id`),
  ADD KEY `exam_routine_childrens_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_session_id_foreign` (`session_id`),
  ADD KEY `expenses_expense_head_foreign` (`expense_head`),
  ADD KEY `expenses_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `features_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `fees_assigns`
--
ALTER TABLE `fees_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_assigns_session_id_foreign` (`session_id`),
  ADD KEY `fees_assigns_classes_id_foreign` (`classes_id`),
  ADD KEY `fees_assigns_section_id_foreign` (`section_id`),
  ADD KEY `fees_assigns_category_id_foreign` (`category_id`),
  ADD KEY `fees_assigns_gender_id_foreign` (`gender_id`),
  ADD KEY `fees_assigns_fees_group_id_foreign` (`fees_group_id`);

--
-- Indexes for table `fees_assign_childrens`
--
ALTER TABLE `fees_assign_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_assign_childrens_fees_assign_id_foreign` (`fees_assign_id`),
  ADD KEY `fees_assign_childrens_fees_master_id_foreign` (`fees_master_id`),
  ADD KEY `fees_assign_childrens_student_id_foreign` (`student_id`);

--
-- Indexes for table `fees_collects`
--
ALTER TABLE `fees_collects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_collects_fees_assign_children_id_foreign` (`fees_assign_children_id`),
  ADD KEY `fees_collects_fees_collect_by_foreign` (`fees_collect_by`),
  ADD KEY `fees_collects_student_id_foreign` (`student_id`),
  ADD KEY `fees_collects_session_id_foreign` (`session_id`);

--
-- Indexes for table `fees_groups`
--
ALTER TABLE `fees_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_masters`
--
ALTER TABLE `fees_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_masters_session_id_foreign` (`session_id`),
  ADD KEY `fees_masters_fees_group_id_foreign` (`fees_group_id`),
  ADD KEY `fees_masters_fees_type_id_foreign` (`fees_type_id`);

--
-- Indexes for table `fees_master_childrens`
--
ALTER TABLE `fees_master_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_master_childrens_fees_master_id_foreign` (`fees_master_id`),
  ADD KEY `fees_master_childrens_fees_type_id_foreign` (`fees_type_id`);

--
-- Indexes for table `fees_types`
--
ALTER TABLE `fees_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flag_icons`
--
ALTER TABLE `flag_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_gallery_category_id_foreign` (`gallery_category_id`),
  ADD KEY `galleries_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_category_translates`
--
ALTER TABLE `gallery_category_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_category_translates_gallery_category_id_foreign` (`gallery_category_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender_translates`
--
ALTER TABLE `gender_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gender_translates_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `gmeets`
--
ALTER TABLE `gmeets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gmeets_session_id_foreign` (`session_id`),
  ADD KEY `gmeets_classes_id_foreign` (`classes_id`),
  ADD KEY `gmeets_section_id_foreign` (`section_id`),
  ADD KEY `gmeets_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `graves`
--
ALTER TABLE `graves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grave_rows`
--
ALTER TABLE `grave_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homework_session_id_foreign` (`session_id`),
  ADD KEY `homework_classes_id_foreign` (`classes_id`),
  ADD KEY `homework_section_id_foreign` (`section_id`),
  ADD KEY `homework_subject_id_foreign` (`subject_id`),
  ADD KEY `homework_document_id_foreign` (`document_id`),
  ADD KEY `homework_created_by_foreign` (`created_by`);

--
-- Indexes for table `homework_students`
--
ALTER TABLE `homework_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homework_students_student_id_foreign` (`student_id`),
  ADD KEY `homework_students_homework_id_foreign` (`homework_id`),
  ADD KEY `homework_students_homework_foreign` (`homework`);

--
-- Indexes for table `id_cards`
--
ALTER TABLE `id_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cards_frontside_bg_image_foreign` (`frontside_bg_image`),
  ADD KEY `id_cards_backside_bg_image_foreign` (`backside_bg_image`),
  ADD KEY `id_cards_signature_foreign` (`signature`),
  ADD KEY `id_cards_qr_code_foreign` (`qr_code`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incomes_session_id_foreign` (`session_id`),
  ADD KEY `incomes_income_head_foreign` (`income_head`),
  ADD KEY `incomes_upload_id_foreign` (`upload_id`),
  ADD KEY `incomes_fees_collect_id_foreign` (`fees_collect_id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_books_user_id_foreign` (`user_id`),
  ADD KEY `issue_books_book_id_foreign` (`book_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_grades`
--
ALTER TABLE `marks_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_grades_session_id_foreign` (`session_id`);

--
-- Indexes for table `marks_registers`
--
ALTER TABLE `marks_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_registers_session_id_foreign` (`session_id`),
  ADD KEY `marks_registers_classes_id_foreign` (`classes_id`),
  ADD KEY `marks_registers_section_id_foreign` (`section_id`),
  ADD KEY `marks_registers_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `marks_registers_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `marks_register_childrens`
--
ALTER TABLE `marks_register_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_register_childrens_marks_register_id_foreign` (`marks_register_id`),
  ADD KEY `marks_register_childrens_student_id_foreign` (`student_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_user_id_foreign` (`user_id`),
  ADD KEY `members_category_id_foreign` (`category_id`);

--
-- Indexes for table `member_categories`
--
ALTER TABLE `member_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `news_translates`
--
ALTER TABLE `news_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_translates_news_id_foreign` (`news_id`);

--
-- Indexes for table `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_boards_attachment_foreign` (`attachment`);

--
-- Indexes for table `notice_board_translates`
--
ALTER TABLE `notice_board_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_board_translates_notice_board_id_foreign` (`notice_board_id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_admissions_payslip_image_id_foreign` (`payslip_image_id`),
  ADD KEY `online_admissions_shift_id_foreign` (`shift_id`),
  ADD KEY `online_admissions_session_id_foreign` (`session_id`),
  ADD KEY `online_admissions_classes_id_foreign` (`classes_id`),
  ADD KEY `online_admissions_section_id_foreign` (`section_id`),
  ADD KEY `online_admissions_religion_id_foreign` (`religion_id`),
  ADD KEY `online_admissions_gender_id_foreign` (`gender_id`),
  ADD KEY `online_admissions_student_image_id_foreign` (`student_image_id`),
  ADD KEY `online_admissions_previous_school_image_id_foreign` (`previous_school_image_id`),
  ADD KEY `online_admissions_gurdian_image_id_foreign` (`gurdian_image_id`),
  ADD KEY `online_admissions_father_image_id_foreign` (`father_image_id`),
  ADD KEY `online_admissions_mother_image_id_foreign` (`mother_image_id`);

--
-- Indexes for table `online_admission_fees_assigns`
--
ALTER TABLE `online_admission_fees_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_admission_fees_assigns_fees_group_id_foreign` (`fees_group_id`),
  ADD KEY `online_admission_fees_assigns_session_id_foreign` (`session_id`),
  ADD KEY `online_admission_fees_assigns_class_id_foreign` (`class_id`),
  ADD KEY `online_admission_fees_assigns_section_id_foreign` (`section_id`);

--
-- Indexes for table `online_admission_settings`
--
ALTER TABLE `online_admission_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_exams`
--
ALTER TABLE `online_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_exams_session_id_foreign` (`session_id`),
  ADD KEY `online_exams_classes_id_foreign` (`classes_id`),
  ADD KEY `online_exams_section_id_foreign` (`section_id`),
  ADD KEY `online_exams_subject_id_foreign` (`subject_id`),
  ADD KEY `online_exams_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `online_exams_question_group_id_foreign` (`question_group_id`);

--
-- Indexes for table `online_exam_children_questions`
--
ALTER TABLE `online_exam_children_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_exam_children_questions_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `online_exam_children_questions_question_bank_id_foreign` (`question_bank_id`);

--
-- Indexes for table `online_exam_children_students`
--
ALTER TABLE `online_exam_children_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_exam_children_students_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `online_exam_children_students_student_id_foreign` (`student_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_children`
--
ALTER TABLE `package_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_children_package_id_foreign` (`package_id`),
  ADD KEY `package_children_feature_id_foreign` (`feature_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_sections`
--
ALTER TABLE `page_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_sections_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `page_translates`
--
ALTER TABLE `page_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_translates_page_id_foreign` (`page_id`);

--
-- Indexes for table `parent_guardians`
--
ALTER TABLE `parent_guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_guardians_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `promote_students`
--
ALTER TABLE `promote_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_banks`
--
ALTER TABLE `question_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_banks_session_id_foreign` (`session_id`),
  ADD KEY `question_banks_question_group_id_foreign` (`question_group_id`);

--
-- Indexes for table `question_bank_childrens`
--
ALTER TABLE `question_bank_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_bank_childrens_question_bank_id_foreign` (`question_bank_id`);

--
-- Indexes for table `question_groups`
--
ALTER TABLE `question_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_groups_session_id_foreign` (`session_id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religon_translates`
--
ALTER TABLE `religon_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `religon_translates_religion_id_foreign` (`religion_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schools_package_id_foreign` (`package_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_translates`
--
ALTER TABLE `section_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_translates_section_id_foreign` (`section_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_class_students`
--
ALTER TABLE `session_class_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_class_students_session_id_foreign` (`session_id`),
  ADD KEY `session_class_students_student_id_foreign` (`student_id`),
  ADD KEY `session_class_students_classes_id_foreign` (`classes_id`),
  ADD KEY `session_class_students_section_id_foreign` (`section_id`),
  ADD KEY `session_class_students_shift_id_foreign` (`shift_id`);

--
-- Indexes for table `session_translates`
--
ALTER TABLE `session_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_translates_session_id_foreign` (`session_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translates`
--
ALTER TABLE `setting_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_translates_setting_id_foreign` (`setting_id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift_translates`
--
ALTER TABLE `shift_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shift_translates_shift_id_foreign` (`shift_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `slider_translates`
--
ALTER TABLE `slider_translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_translates_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `sms_mail_logs`
--
ALTER TABLE `sms_mail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_mail_templates`
--
ALTER TABLE `sms_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_mail_templates_attachment_foreign` (`attachment`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_user_id_foreign` (`user_id`),
  ADD KEY `staff_role_id_foreign` (`role_id`),
  ADD KEY `staff_designation_id_foreign` (`designation_id`),
  ADD KEY `staff_department_id_foreign` (`department_id`),
  ADD KEY `staff_gender_id_foreign` (`gender_id`),
  ADD KEY `staff_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_student_category_id_foreign` (`student_category_id`),
  ADD KEY `students_religion_id_foreign` (`religion_id`),
  ADD KEY `students_blood_group_id_foreign` (`blood_group_id`),
  ADD KEY `students_gender_id_foreign` (`gender_id`),
  ADD KEY `students_category_id_foreign` (`category_id`),
  ADD KEY `students_image_id_foreign` (`image_id`),
  ADD KEY `students_parent_guardian_id_foreign` (`parent_guardian_id`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_previous_school_image_id_foreign` (`previous_school_image_id`);

--
-- Indexes for table `student_absent_notifications`
--
ALTER TABLE `student_absent_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_categories`
--
ALTER TABLE `student_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_assigns`
--
ALTER TABLE `subject_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_assigns_session_id_foreign` (`session_id`),
  ADD KEY `subject_assigns_classes_id_foreign` (`classes_id`),
  ADD KEY `subject_assigns_section_id_foreign` (`section_id`);

--
-- Indexes for table `subject_assign_childrens`
--
ALTER TABLE `subject_assign_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_assign_childrens_subject_assign_id_foreign` (`subject_assign_id`),
  ADD KEY `subject_assign_childrens_subject_id_foreign` (`subject_id`),
  ADD KEY `subject_assign_childrens_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribes_email_unique` (`email`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_notifications`
--
ALTER TABLE `system_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `time_schedules`
--
ALTER TABLE `time_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_upload_id_foreign` (`upload_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `about_translates`
--
ALTER TABLE `about_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `account_heads`
--
ALTER TABLE `account_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer_childrens`
--
ALTER TABLE `answer_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_routines`
--
ALTER TABLE `class_routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_routine_childrens`
--
ALTER TABLE `class_routine_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_section_translates`
--
ALTER TABLE `class_section_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_setups`
--
ALTER TABLE `class_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_setup_childrens`
--
ALTER TABLE `class_setup_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class_translates`
--
ALTER TABLE `class_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_info_translates`
--
ALTER TABLE `contact_info_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `counter_translates`
--
ALTER TABLE `counter_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department_contacts`
--
ALTER TABLE `department_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `department_contact_translates`
--
ALTER TABLE `department_contact_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donars`
--
ALTER TABLE `donars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_translates`
--
ALTER TABLE `event_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `examination_results`
--
ALTER TABLE `examination_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examination_settings`
--
ALTER TABLE `examination_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_assigns`
--
ALTER TABLE `exam_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_assign_childrens`
--
ALTER TABLE `exam_assign_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_routines`
--
ALTER TABLE `exam_routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_routine_childrens`
--
ALTER TABLE `exam_routine_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_assigns`
--
ALTER TABLE `fees_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fees_assign_childrens`
--
ALTER TABLE `fees_assign_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fees_collects`
--
ALTER TABLE `fees_collects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `fees_groups`
--
ALTER TABLE `fees_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fees_masters`
--
ALTER TABLE `fees_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fees_master_childrens`
--
ALTER TABLE `fees_master_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_types`
--
ALTER TABLE `fees_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flag_icons`
--
ALTER TABLE `flag_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery_category_translates`
--
ALTER TABLE `gallery_category_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gender_translates`
--
ALTER TABLE `gender_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmeets`
--
ALTER TABLE `gmeets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `graves`
--
ALTER TABLE `graves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `grave_rows`
--
ALTER TABLE `grave_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework_students`
--
ALTER TABLE `homework_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_cards`
--
ALTER TABLE `id_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marks_grades`
--
ALTER TABLE `marks_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks_registers`
--
ALTER TABLE `marks_registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks_register_childrens`
--
ALTER TABLE `marks_register_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_categories`
--
ALTER TABLE `member_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news_translates`
--
ALTER TABLE `news_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `notice_boards`
--
ALTER TABLE `notice_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_board_translates`
--
ALTER TABLE `notice_board_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `online_admissions`
--
ALTER TABLE `online_admissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_admission_fees_assigns`
--
ALTER TABLE `online_admission_fees_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admission_settings`
--
ALTER TABLE `online_admission_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `online_exams`
--
ALTER TABLE `online_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_exam_children_questions`
--
ALTER TABLE `online_exam_children_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_exam_children_students`
--
ALTER TABLE `online_exam_children_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_children`
--
ALTER TABLE `package_children`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `page_sections`
--
ALTER TABLE `page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `page_translates`
--
ALTER TABLE `page_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parent_guardians`
--
ALTER TABLE `parent_guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promote_students`
--
ALTER TABLE `promote_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_banks`
--
ALTER TABLE `question_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_bank_childrens`
--
ALTER TABLE `question_bank_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_groups`
--
ALTER TABLE `question_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `religon_translates`
--
ALTER TABLE `religon_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section_translates`
--
ALTER TABLE `section_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session_class_students`
--
ALTER TABLE `session_class_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `session_translates`
--
ALTER TABLE `session_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `setting_translates`
--
ALTER TABLE `setting_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shift_translates`
--
ALTER TABLE `shift_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_translates`
--
ALTER TABLE `slider_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sms_mail_logs`
--
ALTER TABLE `sms_mail_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_mail_templates`
--
ALTER TABLE `sms_mail_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_absent_notifications`
--
ALTER TABLE `student_absent_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_categories`
--
ALTER TABLE `student_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject_assigns`
--
ALTER TABLE `subject_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject_assign_childrens`
--
ALTER TABLE `subject_assign_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_notifications`
--
ALTER TABLE `system_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_schedules`
--
ALTER TABLE `time_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_icon_upload_id_foreign` FOREIGN KEY (`icon_upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `abouts_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `about_translates`
--
ALTER TABLE `about_translates`
  ADD CONSTRAINT `about_translates_about_id_foreign` FOREIGN KEY (`about_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `online_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `answer_childrens`
--
ALTER TABLE `answer_childrens`
  ADD CONSTRAINT `answer_childrens_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answer_childrens_question_bank_id_foreign` FOREIGN KEY (`question_bank_id`) REFERENCES `question_banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `book_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_bg_image_foreign` FOREIGN KEY (`bg_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_bottom_left_signature_foreign` FOREIGN KEY (`bottom_left_signature`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_bottom_right_signature_foreign` FOREIGN KEY (`bottom_right_signature`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD CONSTRAINT `class_routines_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_routine_childrens`
--
ALTER TABLE `class_routine_childrens`
  ADD CONSTRAINT `class_routine_childrens_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routine_childrens_class_routine_id_foreign` FOREIGN KEY (`class_routine_id`) REFERENCES `class_routines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routine_childrens_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routine_childrens_time_schedule_id_foreign` FOREIGN KEY (`time_schedule_id`) REFERENCES `time_schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_section_translates`
--
ALTER TABLE `class_section_translates`
  ADD CONSTRAINT `class_section_translates_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_setups`
--
ALTER TABLE `class_setups`
  ADD CONSTRAINT `class_setups_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_setups_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_setup_childrens`
--
ALTER TABLE `class_setup_childrens`
  ADD CONSTRAINT `class_setup_childrens_class_setup_id_foreign` FOREIGN KEY (`class_setup_id`) REFERENCES `class_setups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_setup_childrens_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_translates`
--
ALTER TABLE `class_translates`
  ADD CONSTRAINT `class_translates_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD CONSTRAINT `contact_infos_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_info_translates`
--
ALTER TABLE `contact_info_translates`
  ADD CONSTRAINT `contact_info_translates_contact_info_id_foreign` FOREIGN KEY (`contact_info_id`) REFERENCES `contact_infos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `counters`
--
ALTER TABLE `counters`
  ADD CONSTRAINT `counters_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `counter_translates`
--
ALTER TABLE `counter_translates`
  ADD CONSTRAINT `counter_translates_counter_id_foreign` FOREIGN KEY (`counter_id`) REFERENCES `counters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `department_contacts`
--
ALTER TABLE `department_contacts`
  ADD CONSTRAINT `department_contacts_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `department_contact_translates`
--
ALTER TABLE `department_contact_translates`
  ADD CONSTRAINT `department_contact_translates_department_contact_id_foreign` FOREIGN KEY (`department_contact_id`) REFERENCES `department_contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_translates`
--
ALTER TABLE `event_translates`
  ADD CONSTRAINT `event_translates_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `examination_results`
--
ALTER TABLE `examination_results`
  ADD CONSTRAINT `examination_results_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `examination_results_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `examination_results_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `examination_results_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `examination_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `examination_settings`
--
ALTER TABLE `examination_settings`
  ADD CONSTRAINT `examination_settings_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_assigns`
--
ALTER TABLE `exam_assigns`
  ADD CONSTRAINT `exam_assigns_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_assigns_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_assigns_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_assigns_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_assigns_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_assign_childrens`
--
ALTER TABLE `exam_assign_childrens`
  ADD CONSTRAINT `exam_assign_childrens_exam_assign_id_foreign` FOREIGN KEY (`exam_assign_id`) REFERENCES `exam_assigns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD CONSTRAINT `exam_routines_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routine_childrens`
--
ALTER TABLE `exam_routine_childrens`
  ADD CONSTRAINT `exam_routine_childrens_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_childrens_exam_routine_id_foreign` FOREIGN KEY (`exam_routine_id`) REFERENCES `exam_routines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_childrens_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_childrens_time_schedule_id_foreign` FOREIGN KEY (`time_schedule_id`) REFERENCES `time_schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_head_foreign` FOREIGN KEY (`expense_head`) REFERENCES `account_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_assigns`
--
ALTER TABLE `fees_assigns`
  ADD CONSTRAINT `fees_assigns_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `student_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_fees_group_id_foreign` FOREIGN KEY (`fees_group_id`) REFERENCES `fees_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_assign_childrens`
--
ALTER TABLE `fees_assign_childrens`
  ADD CONSTRAINT `fees_assign_childrens_fees_assign_id_foreign` FOREIGN KEY (`fees_assign_id`) REFERENCES `fees_assigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assign_childrens_fees_master_id_foreign` FOREIGN KEY (`fees_master_id`) REFERENCES `fees_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assign_childrens_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_collects`
--
ALTER TABLE `fees_collects`
  ADD CONSTRAINT `fees_collects_fees_assign_children_id_foreign` FOREIGN KEY (`fees_assign_children_id`) REFERENCES `fees_assign_childrens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_collects_fees_collect_by_foreign` FOREIGN KEY (`fees_collect_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_collects_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_collects_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_masters`
--
ALTER TABLE `fees_masters`
  ADD CONSTRAINT `fees_masters_fees_group_id_foreign` FOREIGN KEY (`fees_group_id`) REFERENCES `fees_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_masters_fees_type_id_foreign` FOREIGN KEY (`fees_type_id`) REFERENCES `fees_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_masters_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_master_childrens`
--
ALTER TABLE `fees_master_childrens`
  ADD CONSTRAINT `fees_master_childrens_fees_master_id_foreign` FOREIGN KEY (`fees_master_id`) REFERENCES `fees_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_master_childrens_fees_type_id_foreign` FOREIGN KEY (`fees_type_id`) REFERENCES `fees_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_gallery_category_id_foreign` FOREIGN KEY (`gallery_category_id`) REFERENCES `gallery_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `galleries_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gallery_category_translates`
--
ALTER TABLE `gallery_category_translates`
  ADD CONSTRAINT `gallery_category_translates_gallery_category_id_foreign` FOREIGN KEY (`gallery_category_id`) REFERENCES `gallery_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gender_translates`
--
ALTER TABLE `gender_translates`
  ADD CONSTRAINT `gender_translates_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gmeets`
--
ALTER TABLE `gmeets`
  ADD CONSTRAINT `gmeets_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gmeets_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gmeets_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gmeets_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework`
--
ALTER TABLE `homework`
  ADD CONSTRAINT `homework_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework_students`
--
ALTER TABLE `homework_students`
  ADD CONSTRAINT `homework_students_homework_foreign` FOREIGN KEY (`homework`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_students_homework_id_foreign` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `id_cards`
--
ALTER TABLE `id_cards`
  ADD CONSTRAINT `id_cards_backside_bg_image_foreign` FOREIGN KEY (`backside_bg_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `id_cards_frontside_bg_image_foreign` FOREIGN KEY (`frontside_bg_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `id_cards_qr_code_foreign` FOREIGN KEY (`qr_code`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `id_cards_signature_foreign` FOREIGN KEY (`signature`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `incomes_fees_collect_id_foreign` FOREIGN KEY (`fees_collect_id`) REFERENCES `fees_collects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_income_head_foreign` FOREIGN KEY (`income_head`) REFERENCES `account_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD CONSTRAINT `issue_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issue_books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks_grades`
--
ALTER TABLE `marks_grades`
  ADD CONSTRAINT `marks_grades_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks_registers`
--
ALTER TABLE `marks_registers`
  ADD CONSTRAINT `marks_registers_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_registers_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_registers_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_registers_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_registers_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks_register_childrens`
--
ALTER TABLE `marks_register_childrens`
  ADD CONSTRAINT `marks_register_childrens_marks_register_id_foreign` FOREIGN KEY (`marks_register_id`) REFERENCES `marks_registers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_register_childrens_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `member_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_translates`
--
ALTER TABLE `news_translates`
  ADD CONSTRAINT `news_translates_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD CONSTRAINT `notice_boards_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notice_board_translates`
--
ALTER TABLE `notice_board_translates`
  ADD CONSTRAINT `notice_board_translates_notice_board_id_foreign` FOREIGN KEY (`notice_board_id`) REFERENCES `notice_boards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD CONSTRAINT `online_admissions_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_father_image_id_foreign` FOREIGN KEY (`father_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_gurdian_image_id_foreign` FOREIGN KEY (`gurdian_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_mother_image_id_foreign` FOREIGN KEY (`mother_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_payslip_image_id_foreign` FOREIGN KEY (`payslip_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_previous_school_image_id_foreign` FOREIGN KEY (`previous_school_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_student_image_id_foreign` FOREIGN KEY (`student_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admission_fees_assigns`
--
ALTER TABLE `online_admission_fees_assigns`
  ADD CONSTRAINT `online_admission_fees_assigns_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admission_fees_assigns_fees_group_id_foreign` FOREIGN KEY (`fees_group_id`) REFERENCES `fees_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admission_fees_assigns_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admission_fees_assigns_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_exams`
--
ALTER TABLE `online_exams`
  ADD CONSTRAINT `online_exams_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_question_group_id_foreign` FOREIGN KEY (`question_group_id`) REFERENCES `question_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_exam_children_questions`
--
ALTER TABLE `online_exam_children_questions`
  ADD CONSTRAINT `online_exam_children_questions_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `online_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exam_children_questions_question_bank_id_foreign` FOREIGN KEY (`question_bank_id`) REFERENCES `question_banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_exam_children_students`
--
ALTER TABLE `online_exam_children_students`
  ADD CONSTRAINT `online_exam_children_students_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `online_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exam_children_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_children`
--
ALTER TABLE `package_children`
  ADD CONSTRAINT `package_children_feature_id_foreign` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `package_children_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_sections`
--
ALTER TABLE `page_sections`
  ADD CONSTRAINT `page_sections_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translates`
--
ALTER TABLE `page_translates`
  ADD CONSTRAINT `page_translates_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parent_guardians`
--
ALTER TABLE `parent_guardians`
  ADD CONSTRAINT `parent_guardians_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_banks`
--
ALTER TABLE `question_banks`
  ADD CONSTRAINT `question_banks_question_group_id_foreign` FOREIGN KEY (`question_group_id`) REFERENCES `question_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_banks_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_bank_childrens`
--
ALTER TABLE `question_bank_childrens`
  ADD CONSTRAINT `question_bank_childrens_question_bank_id_foreign` FOREIGN KEY (`question_bank_id`) REFERENCES `question_banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_groups`
--
ALTER TABLE `question_groups`
  ADD CONSTRAINT `question_groups_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `religon_translates`
--
ALTER TABLE `religon_translates`
  ADD CONSTRAINT `religon_translates_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `section_translates`
--
ALTER TABLE `section_translates`
  ADD CONSTRAINT `section_translates_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `page_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_class_students`
--
ALTER TABLE `session_class_students`
  ADD CONSTRAINT `session_class_students_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_class_students_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_class_students_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_class_students_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_class_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_translates`
--
ALTER TABLE `session_translates`
  ADD CONSTRAINT `session_translates_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translates`
--
ALTER TABLE `setting_translates`
  ADD CONSTRAINT `setting_translates_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shift_translates`
--
ALTER TABLE `shift_translates`
  ADD CONSTRAINT `shift_translates_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translates`
--
ALTER TABLE `slider_translates`
  ADD CONSTRAINT `slider_translates_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sms_mail_templates`
--
ALTER TABLE `sms_mail_templates`
  ADD CONSTRAINT `sms_mail_templates_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_blood_group_id_foreign` FOREIGN KEY (`blood_group_id`) REFERENCES `blood_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `student_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_parent_guardian_id_foreign` FOREIGN KEY (`parent_guardian_id`) REFERENCES `parent_guardians` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_previous_school_image_id_foreign` FOREIGN KEY (`previous_school_image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_student_category_id_foreign` FOREIGN KEY (`student_category_id`) REFERENCES `student_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_assigns`
--
ALTER TABLE `subject_assigns`
  ADD CONSTRAINT `subject_assigns_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_assigns_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_assigns_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_assign_childrens`
--
ALTER TABLE `subject_assign_childrens`
  ADD CONSTRAINT `subject_assign_childrens_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_assign_childrens_subject_assign_id_foreign` FOREIGN KEY (`subject_assign_id`) REFERENCES `subject_assigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_assign_childrens_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
