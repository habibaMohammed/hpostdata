-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2017 at 09:33 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `code`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'News', '1'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Politics', '2'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Science and Technology', '3'),
(4, '2017-11-17 18:39:16', '2017-11-17 18:39:16', 'Science', 'C01'),
(5, '2017-11-17 18:40:23', '2017-11-17 18:40:23', 'Science', 'C01'),
(6, '2017-11-17 18:42:40', '2017-11-17 18:42:40', 'Technology', 'C02');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(10) unsigned NOT NULL,
  `on_post` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` int(10) unsigned NOT NULL DEFAULT '0',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_08_20_145152_posts', 1),
('2017_08_20_145258_comments', 1),
('2017_10_14_161220_add_category', 2),
('2017_10_16_151740_create_videos_table', 3),
('2017_11_11_181229_add_subcategory_colums_to_posts', 4),
('2017_11_12_151626_create_categories_table', 5),
('2017_11_12_151739_create_subcategories_table', 5),
('2017_11_12_153634_add_name_and_code_to_categories_table', 6),
('2017_11_18_034000_add_active_to_users', 7),
('2017_11_21_192254_create_socia_media_table', 8),
('2017_11_25_080653_add_more_colums_to_users', 9),
('2017_11_26_133743_add_uploaded_video_colum_to_videos_table', 10),
('2017_11_26_134142_add_uploaded_videoname_colum_to_videos_table', 11),
('2017_11_26_181431_add_category_colums_to_videos', 12),
('2017_11_28_134028_add_deactivate_colum_to_users', 13),
('2017_11_28_184544_add_verified_columns_to_users_table', 14),
('2017_11_28_184544_create_users_verifications_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `body`, `slug`, `active`, `created_at`, `updated_at`, `category`, `subcategory`) VALUES
(2, 1, 'Kenya news', '<p><img src="../images/400x300.jpg" alt="" width="256" height="192" /></p>\r\n<p>Kenya newsKenya news&nbsp;Kenya newsg&nbsp;Kenya news</p>', 'kenya-news', 1, '2017-09-03 16:41:55', '2017-09-27 16:35:26', 'trending', ''),
(3, 1, 'Nature', '<p><img src="images/fbc1.jpg" alt="" /></p>', 'nature', 1, '2017-09-29 13:08:59', '2017-09-29 13:08:59', 'top news', ''),
(4, 1, 'Coaching and  Consulting', '<p><img src="../images/650x310.jpg" alt="" /></p>\r\n<p>&nbsp;</p>\r\n<p>Coaching and consulting is a great way to make money&nbsp; from&nbsp; your existing knowledge without having to have a product&nbsp; of&nbsp; your own to<br />sell.<br />So, if you&rsquo;ve accomplished something that others would like to accomplish as well, you can act as a coach or consultant and help them<br />to reach their goal.Coaching and consulting is a great way to make money from your existing knowledge without having to have a product of your own to sell. So, if you&rsquo;ve accomplished something that others would like to accomplish as well, you can act as a coach or consultant and help them<br />to reach their goal.</p>', 'coaching-and-consulting', 1, '2017-10-14 02:22:45', '2017-10-15 06:43:43', 'top news', ''),
(6, 1, 'Coaching and  Consultings', '<p><img src="../images/singlepage_img1.jpg" alt="" /></p>\r\n<p>Coaching and consulting is a great way to make money&nbsp; from&nbsp; your existing knowledge without having to have a product&nbsp; of&nbsp; your own to<br />sell.<br />So, if you&rsquo;ve accomplished something that others would like to accomplish as well, you can act as a coach or consultant and help them<br />to reach their goal.</p>', 'coaching-and-consultings', 1, '2017-10-14 02:25:19', '2017-10-14 10:34:05', 'latest', ''),
(7, 1, 'Coaching is field that has experienced explosive', '<p><img src="../images/650x3102.jpg" alt="" /></p>\r\n<p>Coaching is field that has experienced explosive growth in recent years. It&rsquo;s a wonderful field for a people person who&nbsp; loves interacting with and helping others.</p>\r\n<p>There are so many different coaching niches that you can branch into, depending on your own personal interests and passions.</p>', 'coaching-is-field-that-has-experienced-explosive', 1, '2017-10-14 03:16:13', '2017-10-15 06:49:03', 'latest', ''),
(8, 1, 'You can be a life coach', '<p><img src="../images/6da902c51951b6ea23baecc05e16b28311.jpg" alt="" /></p>\r\n<p>You can be a life coach, marriage coach, divorce coach, parenting coach,<br />business coach, Internet marketing coach, health coach, fitness coach,<br />weight loss coach and the list goes on and on andd on</p>', 'you-can-be-a-life-coach', 1, '2017-10-14 03:21:50', '2017-11-11 04:34:31', 'trending', ''),
(9, 1, 'The Internet ', '<p><img src="../images/650x3101.jpg" alt="" /></p>\r\n<p>The Internet has opened up unprecedented options for anyone with an Internet connection and some chutzpah to start and run a<br />profitable business from the comfort of their own home.</p>', 'the-internet', 1, '2017-10-15 06:35:24', '2017-10-15 06:47:16', 'latest', ''),
(10, 1, 'Over the years I have built numerous websites including', '<p>The Internet has opened up unprecedented options for anyone with<br />an Internet connection and some chutzpah to start and run a<br />profitable business from the comfort of their own home.</p>', 'over-the-years-i-have-built-numerous-websites-including', 1, '2017-10-15 14:58:32', '2017-10-15 14:58:32', '', ''),
(12, 1, 'The Internet1', '<p>ujjjiiolplnmbmjnjhbhvfbvrrhcbjn&nbsp;</p>\r\n<p>&nbsp; <img src="images/262x218.jpg" alt="" /></p>', 'the-internet1', 1, '2017-11-11 07:01:10', '2017-11-11 16:19:41', 'trending', 'top news'),
(13, 1, 'post witth category', '', 'post-witth-category', 1, '2017-11-11 15:19:15', '2017-11-11 15:19:15', 'News', 'top news'),
(14, 1, 'post witth category again', '<p>The first argument is the view partial to render for each element in the array or collection. The<br />second argument is the array or collection you wish to iterate over, while the third argument is<br />the variable name that will be assigned to the current iteration within the view. So, for example, if<br />you are iterating over an array of jobs , typically you will want to access each job as a job variable<br />within your view partial</p>', 'post-witth-category-again', 1, '2017-11-11 15:22:27', '2017-11-11 15:37:12', 'Translated', ''),
(15, 1, 'Nature2', '<p>The first argument is the view partial to render for each element in the array or collection. The<br />second argument is the array or collection you wish to iterate over, while the third argument is<br />the variable name that will be assigned to the current iteration within the view. So, for example, if<br />you are iterating over an array of jobs , typically you will want to access each job as a job variable<br />within your view partial</p>', 'nature2', 1, '2017-11-11 15:40:34', '2017-11-11 16:16:59', 'ScienceandTechnology', 'trending');

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE IF NOT EXISTS `socialmedia` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','author','subscriber') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'author',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `deactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `verified`, `verified_at`, `role`, `remember_token`, `created_at`, `updated_at`, `active`, `first_name`, `middle_name`, `last_name`, `phone_number`, `country`, `city`, `address`, `profession`, `id_number`, `system_code`, `avatar`, `deactive`) VALUES
(1, 'Habiba Mohammed', 'habby@gmail.com', '$2y$10$rdKhUFm4HlBh6.Nb47ya7.7ijMfqHVzI1mB/GtRJgLR3kZVLndYni', 0, NULL, 'admin', 'DK2ZR0u4CCGTQwt2q2DE4YEQV6I3CevyCHXFd8O5qALMTeFAuHmLw3sVv49K', '2017-09-01 16:33:53', '2017-11-29 16:32:27', 1, '', '', '', '', '', '', '', '', '', '', '1511635969.jpg', 0),
(7, '', 'amina@gmail.com', '$2y$10$DcB1uejzpjON3RpsmPPbjOhD.L43D/mfm5d7SGduQNgle/9/13Pei', 0, NULL, 'author', 'z3xn7hMDEC0SdhRH5JxtNOh2smtd80N3m9vuwrjGeWX4rgiPezaKmv8APq62', '2017-11-28 14:32:03', '2017-11-28 16:12:12', 0, 'amina', 'aminaa', 'amina', '12334', 'kenya', 'nairobi', '108  garissa', 'artist', '12345', 'AAKN3', '1511891572.png', 0),
(10, '', 'habibamohammed034@gmail.com', '$2y$10$cQvxtLsYlVCWR9B5FFuv2OJE/qpgn/opyhl/hTVxnB6yxAbCUfsie', 1, '2017-11-29 16:47:54', 'author', 'dsyMwiayTvlhnrw0T0n8pBounXakJYLlfIi2sHn6NMtiqdvE4uoPDdDQ8jNP', '2017-11-29 15:19:25', '2017-11-29 17:02:55', 0, 'habiba', 'moha', 'Burale', '0728445521', 'Kenya', 'Nairobi', '47 Thome', 'Web developer', '32384860', 'HBKN3', 'default.jpg', 0),
(11, '', 'hamohabby@gmail.com', '$2y$10$fJV8QTjTZArreoai6gM5H.KoGFIPNeaJQgaQ4VxysJpWkuJtZgSNS', 1, '2017-11-29 16:59:08', 'author', 'iyHgsQwULXrAiIn26EIJGT3Nc4xDYW5cLED1Lxjheqm2bq97bC4AzaIsAyUF', '2017-11-29 16:57:08', '2017-11-29 17:04:04', 1, 'habiba', 'mohammed', 'mohammed', '07288445528', 'kenya', 'nairobi', 'thome', 'programmer', '1111', 'HMKN4', 'default.jpg', 0),
(12, '', 'fatoumohaa@gmail.com', '$2y$10$whvFzI8O9uJ8ntKPjsMsNOTsnCYpVoYAHF.nW1WRp6W2eDanH1.NO', 1, '2017-11-29 17:12:48', 'author', '47IDzHdlj7OEy28m1ZOUeX5oExsOIt47o9MFknPlT8iQzX8G7JqTdaTB45RA', '2017-11-29 17:11:51', '2017-11-29 17:18:12', 0, 'faou ', 'yurubey ', 'mohamad', '072262655', 'kenya', 'nairobi', '108  garissa', 'habby@gmail.com', '3430321', 'FMKN5', '1511986679.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_verifications`
--

CREATE TABLE IF NOT EXISTS `users_verifications` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uploaded_video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `link`, `created_at`, `updated_at`, `uploaded_video`, `author_id`, `type`) VALUES
(1, 'first video', 'http://youtu.be/uifYHNyH-jA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'youtube'),
(2, 'If you want to change the world start by making your bed', 'https://www.youtube.com/watch?v=l5pYxxE2VWA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'youtube'),
(3, 'link', 'http://youtu.be/uifYHNyH-jA', '2017-11-26 11:33:51', '2017-11-26 11:33:51', '', 1, 'youtube'),
(5, 'Coaching and  Consultings', '', '2017-11-26 15:08:20', '2017-11-26 15:08:20', '(6) Facebook.mp4', 1, ''),
(6, 'upload video', '', '2017-11-26 15:36:58', '2017-11-26 15:36:58', '(2) Facebook.mp4', 1, 'uploaded'),
(7, 'You can be a life coach', 'http://youtu.be/uifYHNyH-jA', '2017-11-26 15:55:33', '2017-11-26 15:55:33', '', 1, 'youtube'),
(8, 'Coaching is field that has experienced explosive', '', '2017-11-26 16:15:31', '2017-11-26 16:15:31', '(6) Facebook.mp4', 1, 'uploaded');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`), ADD KEY `comments_on_post_foreign` (`on_post`), ADD KEY `comments_from_user_foreign` (`from_user`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `posts_title_unique` (`title`), ADD UNIQUE KEY `posts_slug_unique` (`slug`), ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
 ADD PRIMARY KEY (`id`), ADD KEY `socialmedia_user_id_foreign` (`user_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- Indexes for table `users_verifications`
--
ALTER TABLE `users_verifications`
 ADD KEY `users_verifications_email_index` (`email`), ADD KEY `users_verifications_token_index` (`token`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `comments_from_user_foreign` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `comments_on_post_foreign` FOREIGN KEY (`on_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `socialmedia`
--
ALTER TABLE `socialmedia`
ADD CONSTRAINT `socialmedia_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
