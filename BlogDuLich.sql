-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 04, 2017 lúc 04:22 PM
-- Phiên bản máy phục vụ: 5.7.17-0ubuntu0.16.04.1
-- Phiên bản PHP: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `BlogDuLich_dev`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-03-14 10:50:43', '2017-03-14 10:50:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogcategories`
--

CREATE TABLE `blogcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogcategories`
--

INSERT INTO `blogcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Khuyến mãi', '2017-03-14 17:02:53', '2017-03-14 17:05:17'),
(2, 'Điểm đến', '2017-03-14 17:03:04', '2017-03-14 17:03:04'),
(3, 'Ẩm thực', '2017-03-14 17:03:11', '2017-03-14 17:03:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `blogcategory_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `blogcategory_id`, `user_id`, `body`, `created_at`, `updated_at`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES
(5, 'dd', 1, 3, 'ddd', '2017-03-14 18:20:31', '2017-03-14 18:20:31', 'bright_tuscany-wallpaper-1920x1080.jpg', 'image/jpeg', 944909, '2017-03-14 18:20:31'),
(6, 'dsadsa', 2, 3, 'dddddđ', '2017-03-15 03:11:52', '2017-03-15 03:11:52', 'daisetsuzan_national_park_japan-wallpaper-1920x1080.jpg', 'image/jpeg', 1175822, '2017-03-15 03:11:52'),
(7, 'them cai nua', 3, 3, 'ddd', '2017-03-15 04:18:16', '2017-03-15 04:18:16', 'norway_fjord-wallpaper-1920x1080.jpg', 'image/jpeg', 1072573, '2017-03-15 04:18:16'),
(8, 'viet cai ne', 2, 3, '<p>blog v vieet cho vui</p>\r\n<p>mai xoas lien</p>', '2017-04-03 19:00:41', '2017-04-03 19:00:41', 'shanghai_china_skyline-wallpaper-1920x1080.jpg', 'image/jpeg', 585237, '2017-04-03 19:00:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `telephonenum` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `User_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `tour_id`, `number`, `telephonenum`, `email`, `status`, `created_at`, `updated_at`, `note`, `User_name`) VALUES
(1, 1, 2, '111', 'mail@gmail.com', 1, '2017-03-17 07:17:24', '2017-03-17 08:11:37', '', NULL),
(2, 1, 1, '1', '1', 0, '2017-03-17 09:26:46', '2017-03-17 09:26:46', NULL, NULL),
(4, 1, 1, '0945804675', 'droidmaxxx@gmail.com', 0, '2017-03-17 09:33:02', '2017-03-17 09:33:02', NULL, NULL),
(6, 3, 3, '0945804675', 'droidmaxxx@gmail.com', 0, '2017-03-17 09:50:16', '2017-03-17 09:50:16', '111', 'Phat'),
(7, 3, 100, '0999999999999', 'linhlinh@mail.com', 0, '2017-03-17 10:01:03', '2017-03-17 10:01:03', 'tesst thoi mà :v', 'linhnguyen'),
(9, 3, 1, '01654917067', 'dsdsad@dsa', 1, '2017-03-22 06:16:59', '2017-04-03 18:50:28', 'cvbnm,', 'linh'),
(21, 3, 112, '999999999', 'droidmaxxx@gmail.com', 0, '2017-04-03 19:51:02', '2017-04-03 19:51:02', '', 'Phat');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20170314104855'),
('20170314105131'),
('20170314110734'),
('20170314110805'),
('20170314110844'),
('20170314110900'),
('20170314110948'),
('20170314111045'),
('20170314173438'),
('20170314174522'),
('20170314180434'),
('20170314182121'),
('20170315013758'),
('20170317071442'),
('20170317081049'),
('20170317094503');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tourcategories`
--

CREATE TABLE `tourcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tourcategories`
--

INSERT INTO `tourcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tour nước ngoài', '2017-03-14 18:32:30', '2017-03-14 18:32:30'),
(2, 'Tour trong nước', '2017-03-15 01:20:32', '2017-03-15 01:20:32'),
(3, 'Tour mới', '2017-03-15 01:20:57', '2017-03-15 01:20:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tourcategory_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `price` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datepart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `title`, `tourcategory_id`, `user_id`, `body`, `price`, `created_at`, `updated_at`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `time`, `datepart`) VALUES
(1, 'ddd', 1, 3, 'dđ', '9999999', '2017-03-14 18:47:39', '2017-03-14 18:47:39', 'afternoon_at_the_chateau-wallpaper-1920x1080.jpg', 'image/jpeg', 1501546, '2017-03-14 18:47:39', '3N', 'hom nay'),
(2, 'test', 2, 3, 'hdasda', '999999999', '2017-03-15 01:31:29', '2017-03-15 01:31:29', 'bright_tuscany-wallpaper-1920x1080.jpg', 'image/jpeg', 944909, '2017-03-15 01:31:29', '3D', 'ngay mai'),
(3, 'dđsa', 3, 3, '<p>ko co dau</p>', '99 999 999', '2017-03-15 03:28:36', '2017-03-15 04:44:28', 'budapest_citadel-wallpaper-1920x1080.jpg', 'image/jpeg', 1042502, '2017-03-15 04:44:28', '4 ngay', 'ngay mai'),
(4, 'Di nha Trang', 2, 3, '<p>ddi vui lamws</p>\r\n<p>did nha</p>', '9999999999', '2017-04-03 19:04:26', '2017-04-03 19:04:26', 'norway_fjord-wallpaper-1920x1080.jpg', 'image/jpeg', 1072573, '2017-04-03 19:04:26', '2 Ngày', 'ngayf mốt đi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `password_salt`, `created_at`, `updated_at`) VALUES
(3, 'Phathdt', 'phathdt@gmail.com', '$2a$10$lmsRt10FM5R5W2yPEYRrheCKX2EG1p3dGrmumRO0qE/R67s5HH2uO', '$2a$10$lmsRt10FM5R5W2yPEYRrhe', '2017-03-14 18:01:18', '2017-03-14 18:01:18');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Chỉ mục cho bảng `tourcategories`
--
ALTER TABLE `tourcategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogcategories`
--
ALTER TABLE `blogcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `tourcategories`
--
ALTER TABLE `tourcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
