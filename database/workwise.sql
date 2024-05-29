-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 04:30 PM
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
-- Database: `workwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '2',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '0777777777', 'admin@gmail.com', '2', NULL, '$2y$12$3ivM50a3nqheMWht413xQeZBeL/FccTc5xKmGnTtEpcIRUghu5apm', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `company`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Client 1', 'ABC Tech', 'client1@gmail.com', '1', NULL, '$2y$12$9HInvFbRlAMZLM/wZQEfsOKnX1tyhxUYKE16l4fWq1Jx/.os/NZX.', NULL, '2023-12-15 04:04:47', '2023-12-17 10:43:00'),
(2, 'Client 2', 'MBA Tech', 'client2@gmail.com', '1', NULL, '$2y$12$7rmULc.NP6GVuxd79RVVjOVBYAwSWbgdemF49atcrLgEZ9ZFSHoim', NULL, '2023-12-16 00:49:39', '2023-12-17 10:43:09'),
(3, 'Client 3', 'AIA Tech', 'client3@gmail.com', '1', NULL, '$2y$12$E9v2VNT5OfnUYozyLnp8N.PSSMujvHUomg71IlU/I3GsxKfnlqAhi', NULL, '2023-12-17 09:27:56', '2023-12-17 10:43:16'),
(4, 'Client 4', 'EMI Tech', 'client4@gmail.com', '1', NULL, '$2y$12$VL393CgcWSBMTOXCWYIuWeRaupL2.7zUdJ/jwe6xEIJlOJh4iy4MC', NULL, '2023-12-17 09:28:43', '2023-12-17 10:43:22'),
(6, 'Client 5', 'AAA Tech', 'client5@gmail.com', '1', NULL, '$2y$12$9HInvFbRlAMZLM/wZQEfsOKnX1tyhxUYKE16l4fWq1Jx/.os/NZX.', NULL, '2023-12-17 09:52:23', '2023-12-17 10:43:29');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `salary` varchar(200) NOT NULL,
  `requirement` text DEFAULT NULL,
  `apply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `name`, `image`, `tag`, `description`, `salary`, `requirement`, `apply`, `created_at`, `updated_at`) VALUES
(1, 'Software Development', 'ABC Tech', '1702787303.jpg', 'Software Development, Programming', 'We are seeking a talented software developer to join our dynamic team. The ideal candidate will have a strong background in software development and programming, with experience in both front-end and back-end technologies. The successful candidate will collaborate with our cross-functional team to design, develop, and deliver high-quality software solutions.\r\n\r\nAdditional Information will be provided after referring to the job application.', 'Hourly: $20 - $40', '1. Bachelor\'s Degree in Computer Science, Software Engineering or a related \r\n   Field.\r\n2. Familiarity with front-end Technology (HTML, CSS, JavaScript)\r\n3. Experience with Database Systems.\r\n4. Familiarity with Back-end Technology (PHP)\r\n5. Problem Solving and Debugging Skills\r\n6. Communication and Collaboration Skills.\r\n7. Analytical Skills.', 'To Apply for the Remote Software Engineering Position at ABC Tech, Please Submit the Following to abctechnology@gmai.com:\r\n\r\n1. Resume/CV\r\n2. Cover Letter\r\n3. GitHub Repository\r\n\r\nPlease Email your application with the subject line \"Remote Software Engineer Application - [Your Full Name]\". The Application Deadline is March 1st, 2024.', '2023-12-15 04:16:54', '2023-12-17 01:28:23'),
(2, 'Web Developer', 'MBA Tech', '1702787055.jpg', 'Web Development, Web Designer', 'We are looking for a skilled web developer who can help us build and maintain our website.', '$10.00 - $15.00', 'The ideal candidate should have experience in HTML, CSS, and JavaScript, as well as knowledge of popular web development frameworks and libraries. The primary responsibilities of this role will include designing and implementing website features, troubleshooting and debugging issues, and ensuring the website\'s performance and security. The candidate should also have strong problem-solving skills and be able to work independently and collaboratively.', 'Please Submit the Following to mbatechnology@gmai.com:\r\n\r\n1. Resume/CV\r\n2. Cover Letter\r\n3. GitHub Repository\r\n\r\nPlease Email your application with the subject line \"Web Development - [Your Full Name]\". The Application Deadline is March 1st, 2024.', '2023-12-16 03:46:01', '2023-12-17 01:24:15'),
(3, 'Data Entry for New Freelancers', 'ABC Tech', '1702820720.jpg', 'Data Entry, Entry Clerk', 'I am looking for multiple persons who copy-type simple English text from PDF files into MS Word. New freelancers can apply as this is a simple and easy task that anyone can perform who has basic skills in MS Word and typing.', '$10 - $20 Per Hour', 'MS Word', 'To Apply for the Data Entry Position at ABC Tech, Please Submit the Following to abctechnology@gmai.com:\r\n\r\n1. Resume/CV\r\n2. Cover Letter\r\n3. GitHub Repository\r\n\r\nPlease Email your application with the subject line \"Data Entry - [Your Full Name]\". The Application Deadline is March 1st, 2024.', '2023-12-16 04:01:46', '2023-12-17 10:45:20'),
(4, 'Copy Paste', 'MBA Tech', '1702787136.jpg', 'copy paste', 'Translators needed to do translate English file to European languages. We need help translating some documents from English to Croatian, Czech, Danish, Dutch, English, United States, Turkish, Finnish, French, Azerbaijan, German, Greek, Italian, Japanese, United Kingdom, Korean, Latvian, Lithuanian, Macedonian, Polish, Portuguese, Romanian, Russian, Serbian, Spanish, Swedish, Turkish, Turkmen, Ukrainian, Canada, Australian.', '$250 Fixed Price', 'Work with Internet', 'To Apply for this, Please Submit the Following to mbatechnology@gmai.com:\r\n\r\n1. Resume/CV\r\n2. Cover Letter\r\n3. GitHub Repository\r\n\r\nPlease Email your application with the subject line \"Copy Paste Application - [Your Full Name]\". The Application Deadline is March 1st, 2024.', '2023-12-16 04:35:28', '2023-12-17 01:25:36'),
(5, 'Copy Paste Job', 'ABC Tech', '1702787378.jpg', 'copy paste', 'We are looking for a freelancer who can perform copy-paste for a new. The job involves pasting the content from one source onto a new platform. The freelancer should be able to complete the task quickly and accurately.', '$300 Fixed Price', '1. Copy - Paste\r\n2. Email Communication\r\n3. Microsoft Skills', 'To Apply for this, Please Submit the Following to abctechnology@gmai.com:\r\n\r\n1. Resume/CV\r\n2. Cover Letter\r\n3. GitHub Repository\r\n\r\nPlease Email your application with the subject line \"Copy Paste Application - [Your Full Name]\". The Application Deadline is March 1st, 2024.', '2023-12-16 23:12:42', '2023-12-17 01:29:38'),
(6, 'Simple typing job for new freelancers', 'MBA Tech', '1702787161.jpg', 'typing job', 'Need freelancers who can work on simple data entry, copy-paste, and typing/translating jobs. Active freelancers to retype and translate my screenshot document into an MS Word document\r\nIf you\'re interested apply for the job now.', '$900 Fixed Price', 'Typing, Data Entry', 'To Apply for the job at MBA Tech, Please Submit the Following to mbatechnology@gmai.com:\r\n\r\n1. Resume/CV \r\n 2. Cover Letter \r\n 3. GitHub Repository \r\n\r\n Please Email your application with the subject line \"Typing Job Application - [Your Full Name]\". The Application Deadline is March 1st, 2024.', '2023-12-17 00:12:11', '2023-12-17 01:26:01');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_28_172403_create_admins_table', 1),
(7, '2023_11_28_180118_create_clients_table', 1),
(8, '2023_12_13_065900_create_jobs_table', 1);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User 1', 'user1@gmail.com', '0', NULL, '$2y$12$3ivM50a3nqheMWht413xQeZBeL/FccTc5xKmGnTtEpcIRUghu5apm', NULL, '2023-12-15 04:05:21', '2023-12-17 10:43:47'),
(2, 'User 2', 'user2@gmail.com', '0', NULL, '$2y$12$9HInvFbRlAMZLM/wZQEfsOKnX1tyhxUYKE16l4fWq1Jx/.os/NZX.', NULL, '2023-12-17 09:53:11', '2023-12-17 10:43:54'),
(3, 'User 3', 'user3@gmail.com', '0', NULL, '$2y$12$9HInvFbRlAMZLM/wZQEfsOKnX1tyhxUYKE16l4fWq1Jx/.os/NZX.', NULL, '2023-12-17 09:53:26', '2023-12-17 10:44:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD UNIQUE KEY `company` (`company`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client-job-relation` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `client-job-relation` FOREIGN KEY (`name`) REFERENCES `clients` (`Company`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
