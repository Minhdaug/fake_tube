-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 18, 2023 lúc 12:01 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `faketube`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `channels`
--

CREATE TABLE `channels` (
  `ChannelID` bigint(20) UNSIGNED NOT NULL,
  `ChannelName` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `SubscribersCount` int(11) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `channels`
--

INSERT INTO `channels` (`ChannelID`, `ChannelName`, `Description`, `SubscribersCount`, `URL`, `created_at`, `updated_at`) VALUES
(1, 'Wiegand-Hilpert', 'Cumque praesentium sint quis rem sed. Et quod amet rem. Facilis repellat tenetur sequi deserunt ut est dolore sit. Vero explicabo voluptatibus nulla aut.', 49590, 'http://www.donnelly.net/', '2023-08-18 02:12:38', '2023-08-18 02:12:38'),
(2, 'Reinger Group', 'Reprehenderit accusamus quas consequatur nihil occaecati ex. Aliquid aspernatur sit molestias molestias ipsam assumenda laboriosam eum. Dolor molestiae quo deleniti numquam debitis.', 90885, 'http://www.kuhlman.com/', '2023-08-18 02:12:38', '2023-08-18 02:12:38'),
(3, 'Klein, Mohr and Fritsch', 'Possimus ea fugit et quam explicabo ullam cum. Nemo amet molestiae reiciendis et perferendis nulla excepturi. Architecto omnis asperiores nam nihil voluptates. Nihil sint ut perferendis debitis enim saepe et voluptatem.', 31787, 'https://www.schumm.com/sit-aut-aliquid-et-quasi', '2023-08-18 02:12:38', '2023-08-18 02:12:38'),
(4, 'Monahan, Kihn and Nader', 'Dolorem velit mollitia quam voluptas id. Magnam veritatis cumque sint qui praesentium qui. Molestiae reprehenderit aliquam molestiae sequi.', 92943, 'http://brown.com/distinctio-aut-accusantium-dolorem-et-et-doloremque', '2023-08-18 02:12:38', '2023-08-18 02:12:38'),
(5, 'Ledner, Tromp and Durgan', 'Sint optio eos reiciendis dolores asperiores. Alias omnis in corporis et qui. Exercitationem ad facere voluptates nemo qui quidem nihil.', 50561, 'http://www.wiegand.com/', '2023-08-18 02:12:38', '2023-08-18 02:12:38'),
(6, 'Runolfsson-Rutherford', 'Dolorum quas non nulla omnis distinctio. Architecto quis quo harum.', 42893, 'http://www.mertz.biz/et-nihil-perspiciatis-cum-in-animi-assumenda-ex-impedit', '2023-08-18 02:12:38', '2023-08-18 02:12:38'),
(7, 'Moen, Ortiz and DuBuque', 'In corrupti non molestiae provident dolorum. Cumque omnis quod facere dolorem sint voluptatem. Consectetur doloribus qui quia enim magni.', 83400, 'http://upton.com/reprehenderit-accusamus-corrupti-vel-eos-aut-dolor', '2023-08-18 02:12:38', '2023-08-18 02:12:38'),
(8, 'Olson, Lubowitz and Schamberger', 'Adipisci repudiandae nemo deserunt. Vitae rerum laboriosam alias dolorem. Ipsa et magni possimus. Qui inventore eos laudantium.', 93946, 'http://welch.com/quam-fugit-deserunt-quia.html', '2023-08-18 02:12:38', '2023-08-18 02:12:38'),
(9, 'Marquardt Inc', 'Nulla corporis nihil consequuntur error numquam adipisci. Consectetur assumenda labore dolores ipsa non itaque.', 48541, 'http://www.johns.com/sit-molestiae-consequuntur-quam', '2023-08-18 02:12:38', '2023-08-18 02:12:38'),
(10, 'Schinner-Koepp', 'Provident rerum repellendus dolores itaque. Veritatis accusantium itaque voluptatem hic aut dolore minima. Id repudiandae eum sunt eveniet harum. Et amet dolorem est natus quas. Molestiae esse occaecati nobis ducimus dolores exercitationem fugit.', 93949, 'http://pollich.org/', '2023-08-18 02:12:38', '2023-08-18 02:12:38');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`ChannelID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `channels`
--
ALTER TABLE `channels`
  MODIFY `ChannelID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
