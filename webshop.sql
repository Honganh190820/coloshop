-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 23, 2021 lúc 08:52 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` tinyint(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `position` bit(11) DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'0',
  `user_id` int(11) NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `summary`, `description`, `type`, `position`, `status`, `url`, `is_active`, `user_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(55, 'Kí tự chart móc', 'ki-tu-chart-moc', 'uploads/article/1601983402_ki-tu-chart-moc.jpg', '<p><em>Đọc chart m&oacute;c l&agrave; một điều cực quan trọng trong qu&aacute; tr&igrave;nh học m&oacute;c len. Nhiều bạn đ&atilde; biết m&oacute;c nhưng chưa th&agrave;nh thạo trong việc đọc chart khiến bạn bỏ qua nhiều mẫu đẹp. Nếu như len được nhắc nhiều v&agrave;o m&ugrave;a lạnh th&igrave; hiện nay c&aacute;c t&iacute;n đồ đan m&oacute;c c&ograve;n m&oacute;c&nbsp;<a href=\"https://rangsua.vn/cuoc-song-va-gia-dinh/chon-bikini-chuan-cho-nang-tu-tin-khoe-dang-di-bien/\">bikini đi biển</a>&nbsp;cho những ng&agrave;y h&egrave; nắng n&oacute;ng. Hay l&agrave; việc m&oacute;c t&uacute;i x&aacute;ch, th&uacute; nhồi b&ocirc;ng, chăn&hellip;. ở tất cả c&aacute;c m&ugrave;a.</em></p>', '<h3><strong>C&aacute;c loại chart m&oacute;c len</strong></h3>\r\n\r\n<p>Hiện tại c&oacute; 2 loại chart m&oacute;c ch&iacute;nh l&agrave; chart h&igrave;nh v&agrave; chart chữ.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; những k&iacute; hiệu căn bản v&agrave; thường d&ugrave;ng của 1 chart m&oacute;c đơn giản. Hiểu được những k&yacute; hiệu n&agrave;y sẽ gi&uacute;p bạn dễ d&agrave;ng hơn trong c&aacute;ch đọc chart m&oacute;c nh&eacute;.</p>\r\n\r\n<p><img alt=\"Chart móc len\" src=\"https://rangsua.vn/wp-content/uploads/2019/07/1.jpg\" style=\"height:291px; width:346px\" /></p>\r\n\r\n<p><em>K&yacute; hiệu h&igrave;nh, chữ cho những mũi cơ bản trong chart m&oacute;c</em></p>\r\n\r\n<p>Ri&ecirc;ng chart AVX sẽ được qui định như sau:</p>\r\n\r\n<p><img alt=\"Chart móc\" src=\"https://rangsua.vn/wp-content/uploads/2019/07/2.png\" style=\"height:324px; width:640px\" /></p>\r\n\r\n<p>Chart m&oacute;c</p>\r\n\r\n<p><strong>C&aacute;ch đọc chart m&oacute;c h&igrave;nh</strong></p>\r\n\r\n<p><strong>Mũi b&iacute;nh:</strong></p>\r\n\r\n<p>Mũi b&iacute;nh được k&yacute; hiệu l&agrave; chữ 0 nằm ngang.</p>\r\n\r\n<p><img alt=\"Mũi bính và cách móc mũi bính\" src=\"https://rangsua.vn/wp-content/uploads/2019/07/3.jpg\" style=\"height:89px; width:400px\" /></p>\r\n\r\n<p>Mũi b&iacute;nh v&agrave; c&aacute;ch m&oacute;c mũi b&iacute;nh</p>\r\n\r\n<p><em>Mũi b&iacute;nh v&agrave; c&aacute;ch m&oacute;c mũi b&iacute;n</em>h</p>\r\n\r\n<p><strong>Mũi m&oacute;c đơn (K&yacute; hiệu: X, trong một số trường hợp, c&oacute; thể quay đứng như dấu +)</strong></p>\r\n\r\n<p>C&aacute;ch thực hiện: luồn kim m&oacute;c v&agrave;o ch&acirc;n b&iacute;nh, sợi v&ograve;ng quanh kim v&agrave; k&eacute;o n&oacute; qua để c&oacute; 2 v&ograve;ng tr&ecirc;n kim m&oacute;c. Sợi v&ograve;ng quanh kim, k&eacute;o n&oacute; qua 2 v&ograve;ng tr&ograve;n tr&ecirc;n kim. Lặp lại 2 bước n&agrave;y v&agrave;o từng ch&acirc;n b&iacute;nh.</p>\r\n\r\n<p><img alt=\"Mũi móc đơn và cách móc\" src=\"https://rangsua.vn/wp-content/uploads/2019/07/4.jpg\" style=\"height:68px; width:400px\" /></p>\r\n\r\n<p>Mũi m&oacute;c đơn v&agrave; c&aacute;ch m&oacute;c</p>\r\n\r\n<p><em>Mũi m&oacute;c đơn v&agrave; c&aacute;ch m&oacute;</em>c</p>\r\n\r\n<p><strong>Mũi m&oacute;c k&eacute;p: K&yacute; hiệu chữ T c&oacute; một gạch ở giữa</strong></p>\r\n\r\n<p>C&aacute;ch thực hiện: Sợi v&ograve;ng quanh kim, luồn kim m&oacute;c v&agrave;o ph&iacute;a tr&ecirc;n mũi c&oacute; sẵn, sợi v&ograve;ng quanh kim v&agrave; k&eacute;o xuy&ecirc;n qua một v&ograve;ng tr&ograve;n, sợi v&ograve;ng quanh kim v&agrave; k&eacute;o xuy&ecirc;n qua 2 v&ograve;ng tr&ograve;n đầu tr&ecirc;n kim.Sợi v&ograve;ng quanh kim lần nữa v&agrave; k&eacute;o xuy&ecirc;n qua 2 v&ograve;ng tr&ograve;n sau tr&ecirc;n kim m&oacute;c, ho&agrave;n th&agrave;nh mũi k&eacute;p.</p>\r\n\r\n<p><img alt=\"Cách đọc chart móc với mũi móc kép\" src=\"https://rangsua.vn/wp-content/uploads/2019/07/5.jpg\" style=\"height:120px; width:400px\" /></p>\r\n\r\n<p>C&aacute;ch đọc chart m&oacute;c với mũi m&oacute;c k&eacute;p</p>\r\n\r\n<p><em>C&aacute;ch đọc chart m&oacute;c với mũi m&oacute;c k&eacute;p</em></p>\r\n\r\n<p><strong>Mũi m&oacute;c k&eacute;p thấp:&nbsp;</strong></p>\r\n\r\n<p><strong>K&yacute; hiệu: T</strong></p>\r\n\r\n<p>C&aacute;ch thực hiện: Luồn kim m&oacute;c v&agrave;o ph&iacute;a tr&ecirc;n của mũi c&oacute; sẵn, sợi v&ograve;ng quanh kim v&agrave; k&eacute;o qua 1 v&ograve;ng tr&ograve;n, sợi v&ograve;ng quanh kim v&agrave; k&eacute;o xuy&ecirc;n qua 3 v&ograve;ng tr&ograve;n tr&ecirc;n kim.</p>\r\n\r\n<p>Mũi n&agrave;y c&oacute; chiều cao gấp đ&ocirc;i mũi đơn. Mũi n&agrave;y hay ứng dụng để l&agrave;m cho sản phẩm c&oacute; vẻ chặt chẽ, hay d&ugrave;ng trong m&oacute;c giỏ.</p>\r\n\r\n<p><img alt=\"Mũi móc kép thấp và cách đọc chart móc\" src=\"https://rangsua.vn/wp-content/uploads/2019/07/6.jpg\" style=\"height:75px; width:400px\" /></p>\r\n\r\n<p>Mũi m&oacute;c k&eacute;p thấp v&agrave; c&aacute;ch đọc chart m&oacute;c</p>\r\n\r\n<p><em>Mũi m&oacute;c k&eacute;p thấp v&agrave; c&aacute;ch đọc chart m&oacute;c</em></p>\r\n\r\n<p><strong>Mũi m&oacute;c ba (hay c&ograve;n gọi l&agrave; mũi m&oacute;c k&eacute;p đ&ocirc;i): K&yacute; hiệu chữ T c&oacute; 2 gạch</strong></p>\r\n\r\n<p>C&aacute;ch thực hiện: Quấn sợi v&ograve;ng quanh kim 2 lần rồi luồn kim v&agrave;o ph&iacute;a tr&ecirc;n mũi c&oacute; sẵn. Sợi v&ograve;ng quanh kim v&agrave; k&eacute;o xuy&ecirc;n qua 2 v&ograve;ng tr&ograve;n đầu tr&ecirc;n kim. Lặp lại 2 lần sợi v&ograve;ng quanh kim như vậy để ho&agrave;n tất mũi m&oacute;c.</p>\r\n\r\n<p>Mũi n&agrave;y c&oacute; t&aacute;c dụng k&eacute;o cao sản phẩm, hay được d&ugrave;ng trong m&oacute;c khăn cho&agrave;ng, khăn trải b&agrave;n &hellip;.</p>\r\n\r\n<p><img alt=\"Mũi móc 3 và cách đọc chart móc mũi \" src=\"https://rangsua.vn/wp-content/uploads/2019/07/7.jpg\" style=\"height:120px; width:400px\" /></p>\r\n\r\n<p>Mũi m&oacute;c 3 v&agrave; c&aacute;ch đọc chart m&oacute;c mũi</p>\r\n\r\n<p><em>Mũi m&oacute;c 3 v&agrave; c&aacute;ch đọc chart m&oacute;c mũi&nbsp;</em></p>\r\n\r\n<h3><strong>C&aacute;ch đọc chart m&oacute;c chữ</strong></h3>\r\n\r\n<p>Chart chữ phổ biến nhất l&agrave; d&ugrave;ng tiếng Anh (thậm ch&iacute; m&igrave;nh viết chart chữ cũng chỉ quen sử dụng những thuật ngữ tiếng Anh, v&igrave; cảm thấy diễn giải ra rất kh&oacute; so với việc d&ugrave;ng thuật ngữ), vậy n&ecirc;n để đọc hiểu chart chữ th&igrave; y&ecirc;u cầu bạn phải c&oacute; 1 vốn tiếng Anh nhất định.</p>\r\n\r\n<p>Đ&ocirc;i khi chart sẽ đc viết bằng 1 số ng&ocirc;n ngữ kh&aacute;c, nhưng thường gặp nhất vẫn l&agrave; tiếng Anh, b&agrave;i viết n&agrave;y m&igrave;nh cũng sẽ giải th&iacute;ch dựa tr&ecirc;n những thuật ngữ tiếng Anh cơ bản cho bạn c&aacute;ch đọc chart m&oacute;c cơ bản.</p>\r\n\r\n<p><strong>Một số chữ viết tắt trong chart chữ:</strong></p>\r\n\r\n<p>beg : beginning = bắt đầu 1 h&agrave;ng/ 1 mũi</p>\r\n\r\n<p>bet: between= giữa 2 h&agrave;ng hoặc 2 mũi</p>\r\n\r\n<p>sk: skip = bỏ mũi</p>\r\n\r\n<p>st(s): stitche(s) = mũi</p>\r\n\r\n<p>ch sp : chain space = khoảng trống bằng một mũi b&iacute;nh</p>\r\n\r\n<p>cont: continue = tiếp tục</p>\r\n\r\n<p>dc2tog: double crochet two stitches together = m&oacute;c 2 mũi k&eacute;p đơn v&agrave;o c&ugrave;ng một ch&acirc;n</p>\r\n\r\n<p>sc2tog: single crochet two together = m&oacute;c hai mũi m&oacute;c đơn v&agrave;o c&ugrave;ng một ch&acirc;n</p>\r\n\r\n<p>dec: decrease = giảm mũi</p>\r\n\r\n<p>inc: increase = tăng mũi</p>\r\n\r\n<p>foll: follow= m&oacute;c theo hướng dẫn</p>\r\n\r\n<p>lp(s): loop(s) = v&ograve;ng chỉ</p>\r\n\r\n<p>motiff= mẫu hoa</p>\r\n\r\n<p>patt: pattern = mẫu</p>\r\n\r\n<p>prev: previous = trước đ&oacute;</p>\r\n\r\n<p>rem: remain = c&ograve;n lại</p>\r\n\r\n<p>rep(s): repeat(s) = lặp lại</p>\r\n\r\n<p>row= h&agrave;ng</p>\r\n\r\n<p>rnd(s): round(s) = v&ograve;ng tr&ograve;n</p>\r\n\r\n<p>RS: right side = mặt phải</p>\r\n\r\n<p>WS: wrong side = mặt tr&aacute;i</p>\r\n\r\n<p>turn = xoay</p>\r\n\r\n<p>tbl: through back loop = m&oacute;c xuy&ecirc;n qua v&ograve;ng chỉ về ph&iacute;a sau</p>\r\n\r\n<p>tfl: through front loop = m&oacute;c xuy&ecirc;n qua v&ograve;ng chỉ về ph&iacute;a trước</p>\r\n\r\n<p>tog: together = chung</p>\r\n\r\n<p>yo: yarn over = k&eacute;p 1 v&ograve;ng chỉ qua kim</p>\r\n\r\n<h3><strong>C&aacute;ch đọc chart m&oacute;c n&acirc;ng cao</strong></h3>\r\n\r\n<p>C&oacute; rất nhiều mẫu sản phẩm đẹp đ&ograve;i hỏi c&aacute;c bạn cần c&oacute; tay nghề v&agrave; tr&igrave;nh độ cao hơn cũng như những mũi m&oacute;c phức tạp hơn để c&oacute; thể ho&agrave;n thiện những mẫu sản phẩm đ&oacute; một c&aacute;ch ch&iacute;nh x&aacute;c, nhằm c&oacute; được một sản phẩm ho&agrave;n thiện xuất sắc. Ở đ&acirc;y Milk cũng giới thiệu qua với c&aacute;c bạn th&ecirc;m một v&agrave;i k&iacute; hiệu đặc biệt dưới đ&acirc;y, m&agrave; c&aacute;c bạn sẽ thường hay gặp phải trong những chart m&oacute;c n&acirc;ng cao, phức tạp.</p>\r\n\r\n<p><img alt=\"\" src=\"https://rangsua.vn/wp-content/uploads/2019/07/8.jpg\" style=\"height:1024px; width:725px\" /></p>\r\n\r\n<p><em>C&ograve;n rất nhiều mũi m&oacute;c n&acirc;ng cao, chuy&ecirc;n s&acirc;u kh&aacute;c m&agrave; m&igrave;nh kh&ocirc;ng n&ecirc;u ra trong phạm vi b&agrave;i hướng dẫn n&agrave;y. Nhưng c&aacute;c bạn chỉ cần nắm r&otilde; những k&iacute; hiệu n&agrave;y l&agrave; c&aacute;c bạn đ&atilde; c&oacute; thể đọc được hầu hết chart m&oacute;c rồi đ&oacute;. Hiện nay c&oacute; rất nhiều chart đẹp nhưng viết bằng tiếng Nhật, tiếng Nga, tiếng T&acirc;y Ban Nha,&hellip; c&aacute;c bạn c&oacute; thể tự m&igrave;nh d&ugrave;ng c&ocirc;ng cụ dịch để chuyển sang tiếng Anh cho dễ hiểu hơn nh&eacute;. Hi vọng b&agrave;i viết của m&igrave;nh sẽ gi&uacute;p &iacute;ch được cho c&aacute;c bạn tr&ecirc;n con đường chinh phục len sợi nha</em>.</p>', 1, b'00000000001', NULL, NULL, b'1', 15, NULL, NULL, '2020-08-21 01:32:10', '2020-10-06 04:23:22'),
(56, 'HƯỚNG DẪN MÓC GỐI ĐÁM MÂY', 'huong-dan-moc-goi-dam-may', 'uploads/article/1601983389_goi-may.jpg', '<p>Gối đ&aacute;m m&acirc;y n&agrave;y m&oacute;c rất nhanh tầm 1 ng&agrave;y, c&aacute;c mẹ l&agrave;m để gối sa l&ocirc;ng hoặc giường ngủ cho b&eacute; đều tuyệt Chart v&ocirc; c&ugrave;ng đơn giản dễ hiểu kh&ocirc;ng c&oacute; g&igrave; l&agrave; đ&aacute;nh đố cả</p>', '<p>Gối đ&aacute;m m&acirc;y n&agrave;y m&oacute;c rất nhanh tầm 1 ng&agrave;y, c&aacute;c mẹ l&agrave;m để gối sa l&ocirc;ng hoặc giường ngủ cho b&eacute; đều tuyệt</p>\r\n\r\n<p>Chart v&ocirc; c&ugrave;ng đơn giản dễ hiểu kh&ocirc;ng c&oacute; g&igrave; l&agrave; đ&aacute;nh đố cả</p>\r\n\r\n<p>Sản phẩm từ len patons canadiana, mềm nhẹ ko x&ugrave;, th&iacute;ch hợp cho đan m&oacute;c</p>\r\n\r\n<p><a href=\"http://hame.vn/wp-content/uploads/2017/12/1.jpg\"><img alt=\"1\" src=\"http://hame.vn/wp-content/uploads/2017/12/1.jpg\" style=\"height:300px; width:300px\" /></a></p>\r\n\r\n<p><strong>Nguy&ecirc;n liệu</strong></p>\r\n\r\n<ul>\r\n	<li>3c len patons canadiana</li>\r\n	<li>Kim m&oacute;c 3mm</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m</strong></p>\r\n\r\n<p><strong>* K&iacute; hiệu</strong></p>\r\n\r\n<p>X: mũi đơn</p>\r\n\r\n<p>V: tăng mũi( 1 ch&acirc;n 2 mũi)</p>\r\n\r\n<p>W: tăng mũi(&nbsp; 1 ch&acirc;n 3 mũi)</p>\r\n\r\n<p>MR: v&ograve;ng tr&ograve;n ma thuật</p>\r\n\r\n<p>A: giảm mũi( 2 ch&acirc;n thu lại 1 mũi)</p>\r\n\r\n<p>Bắt đầu</p>\r\n\r\n<p>H1: MR 5X</p>\r\n\r\n<p>H2: 5V= 10</p>\r\n\r\n<p>H3: (X, V)*5= 15</p>\r\n\r\n<p>H4: (2X, V)*5= 20</p>\r\n\r\n<p>H5:&nbsp;&nbsp;(3X, V)*5= 25</p>\r\n\r\n<p>H6:&nbsp;&nbsp;(4X, V)*5= 30</p>\r\n\r\n<p>H7:&nbsp;&nbsp;(5X, V)*5= 35</p>\r\n\r\n<p>H8:&nbsp;(6X, V)*5= 40</p>\r\n\r\n<p>H9:&nbsp;(7X, V)*5= 45</p>\r\n\r\n<p>H10:&nbsp;(8X, V)*5= 50</p>\r\n\r\n<p>H11:&nbsp;(9X, V)*5= 55</p>\r\n\r\n<p>H12:&nbsp;(10X, V)*5= 60</p>\r\n\r\n<p>H13:&nbsp;(11X, V)*5= 65</p>\r\n\r\n<p>H14:&nbsp;(12X, V)*5= 70</p>\r\n\r\n<p>H15:&nbsp;(13X, V)*5= 75</p>\r\n\r\n<p>H16:&nbsp;(14X, V)*5= 80</p>\r\n\r\n<p>H17: 80X</p>\r\n\r\n<p>H18: W, 79X= 82</p>\r\n\r\n<p>H19: W, 1X, W, 79X= 86</p>\r\n\r\n<p>H20: 3X, W, 82X= 88</p>\r\n\r\n<p>H21: 3X, W, 1X, W, 82X= 92</p>\r\n\r\n<p>H22: 6X, W, 85X= 94</p>\r\n\r\n<p>H23-29= 94X</p>\r\n\r\n<p>H30: 7X, A, 85X= 93</p>\r\n\r\n<p>H31: 5X, A, 2X, A, 82X= 91</p>\r\n\r\n<p>H32: 6X, a, 83X= 90</p>\r\n\r\n<p>H33: 4X, A, 2X, A, 80X= 88</p>\r\n\r\n<p>H34: 5X, A, 81X= 87</p>\r\n\r\n<p>H35: 3X, A, 2X, A, 78X= 85</p>\r\n\r\n<p>H36: 3X, A, 80X= 84</p>\r\n\r\n<p>H37: 84X</p>\r\n\r\n<p>H38: 4X, W, 79X= 86</p>\r\n\r\n<p>H39: 86X</p>\r\n\r\n<p>H40: 4X, W, 1X, W, 79X= 90</p>\r\n\r\n<p>H41: 90X</p>\r\n\r\n<p>H42: 7X, W, 82X= 92</p>\r\n\r\n<p>H43: 92X</p>\r\n\r\n<p>H44; 7X, W, 1X, W, 82X= 96</p>\r\n\r\n<p>H45: 96X</p>\r\n\r\n<p>H46: 10X, W, 85X= 98</p>\r\n\r\n<p>H47- 64= 98X</p>\r\n\r\n<p>H65: 12X, A, 84X= 97</p>\r\n\r\n<p>H66: 10X, A, 2X, A, 81X= 95</p>\r\n\r\n<p>H67: 95X</p>\r\n\r\n<p>H68: 11X, A, 82X= 94</p>\r\n\r\n<p>H69: 9X, A, 2X, A, 79X= 92</p>\r\n\r\n<p>H70: 92X</p>\r\n\r\n<p>H71: 10X, A, 80X= 91</p>\r\n\r\n<p>H72: 8X, A, 2X, A, 77X= 89</p>\r\n\r\n<p>H73: 9X, A, 78X= 88</p>\r\n\r\n<p>H74= 88X</p>\r\n\r\n<p>H75: 7X, A, 2X, A, 75X= 86</p>\r\n\r\n<p>H76: 8X, A, 76X= 85</p>\r\n\r\n<p>H77: 6X, A, 2X, A, 73X= 83</p>\r\n\r\n<p>H78: 83X</p>\r\n\r\n<p>H79: 7X, A, 74X= 82</p>\r\n\r\n<p>H80: 5X, A, 2X, A, 71X= 80</p>\r\n\r\n<p>H81= 80X</p>\r\n\r\n<p>H82: ( 14X,&nbsp; A)*5=75( nhồi b&ocirc;ng)</p>\r\n\r\n<p>H83:&nbsp;( 13X, A)*5=70</p>\r\n\r\n<p>H84:&nbsp;( 12X, A)*5=65</p>\r\n\r\n<p>H85:&nbsp;( 11X, A)*5=60</p>\r\n\r\n<p>H86:&nbsp;( 10X, A)*5=55</p>\r\n\r\n<p>H87:&nbsp;( 9X, A)*5=50</p>\r\n\r\n<p>H88:&nbsp;( 8X, A)*5=45</p>\r\n\r\n<p>H89:&nbsp;( 7X, A)*5=40</p>\r\n\r\n<p>H90:&nbsp;( 6X, A)*5=35</p>\r\n\r\n<p>H91:&nbsp;( 5X, A)*5=30</p>\r\n\r\n<p>H92:&nbsp;( 4X, A)*5=25( nhồi b&ocirc;ng)</p>\r\n\r\n<p>H93:&nbsp;( 3X, A)*5=20</p>\r\n\r\n<p>H94:&nbsp;( 2X, A)*5=15</p>\r\n\r\n<p>H95:&nbsp;( 1X, A)*5=10</p>\r\n\r\n<p>H96:&nbsp;5A= 5</p>\r\n\r\n<p>Th&ecirc;u mắt v&agrave; ho&agrave;n th&agrave;nh sản phẩm</p>\r\n\r\n<p><a href=\"http://hame.vn/wp-content/uploads/2017/12/1.jpg\"><img alt=\"1\" src=\"http://hame.vn/wp-content/uploads/2017/12/1.jpg\" style=\"height:672px; width:1011px\" /></a></p>', 1, b'00000000010', NULL, NULL, b'1', 15, NULL, NULL, '2020-08-22 03:48:18', '2020-10-06 04:23:09'),
(57, 'HƯỚNG DẪN MÓC GÀ GALLITO', 'huong-dan-moc-ga-gallito', 'uploads/article/1601983370_ga-gallito.jpg', '<p>HƯỚNG DẪN M&Oacute;C G&Agrave; GALLITO</p>', '<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/17884454_1116968811781823_274137383760763860_n.jpg\"><img alt=\"17884454_1116968811781823_274137383760763860_n\" src=\"https://hame.vn/wp-content/uploads/2017/05/17884454_1116968811781823_274137383760763860_n.jpg\" style=\"height:206px; width:242px\" /></a></p>\r\n\r\n<p><strong>Nguy&ecirc;n liệu</strong></p>\r\n\r\n<ul>\r\n	<li>M&igrave;nh c&oacute; b&aacute;n set len bạn g&agrave; n&agrave;y 210k nha len super value</li>\r\n	<li>Kim m&oacute;c 2,5mm</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m</strong></p>\r\n\r\n<p><strong>* K&iacute; hiệu</strong></p>\r\n\r\n<p>X: mũi đơn</p>\r\n\r\n<p>V: tăng mũi</p>\r\n\r\n<p>A: giảm mũi</p>\r\n\r\n<p>F: mũi k&eacute;p đơn</p>\r\n\r\n<p>T: mũi nửa k&eacute;p</p>\r\n\r\n<p>VTMT: v&ograve;ng tr&ograve;n ma thuật</p>\r\n\r\n<p>Lưu &yacute; vừa m&oacute;c vừa nhồi chặt b&ocirc;ng c&aacute;c bạn nh&eacute;</p>\r\n\r\n<p><strong>1. Đầu: với m&agrave;u cam</strong></p>\r\n\r\n<p>H1: VTMT= 6X</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H3: (X, V)*6=18</p>\r\n\r\n<p>H4: &nbsp;(2X, V)*6=24</p>\r\n\r\n<p>H5: (3X, V)*6=30</p>\r\n\r\n<p>H6: (4X, V)*6=36</p>\r\n\r\n<p>H7: (5X, V)*6=42</p>\r\n\r\n<p>H8: &nbsp;(6X, V)*6=48</p>\r\n\r\n<p>H9: &nbsp;(7X, V)*6=54</p>\r\n\r\n<p>H10: &nbsp;(8X, V)*6=60</p>\r\n\r\n<p>H11: &nbsp;(9X, V)*6=66</p>\r\n\r\n<p>H12-22=66</p>\r\n\r\n<p>H23:&nbsp; (9X, A)*6= 60</p>\r\n\r\n<p>H24: (8X, A)*6= 54</p>\r\n\r\n<p>H25: (7X, A)*6= 48</p>\r\n\r\n<p>H26: (6X, A)*6= 42</p>\r\n\r\n<p>H27: (5X, A)*6= 36</p>\r\n\r\n<p>H28: (4X, A)*6= 30</p>\r\n\r\n<p>H29: (3X, A)*6= 24</p>\r\n\r\n<p>H30: (2X, A)*6= 18</p>\r\n\r\n<p>H31: (1X, A)*6= 12</p>\r\n\r\n<p><strong>2. Th&acirc;n: với m&agrave;u cam</strong></p>\r\n\r\n<p>M&oacute;c giống phần đầu từ H1-H10</p>\r\n\r\n<p>H11-14= 60X</p>\r\n\r\n<p>H15: (8X, A)*6= 54</p>\r\n\r\n<p>H16=54X</p>\r\n\r\n<p>H17: (7X, A)*6= 48</p>\r\n\r\n<p>H18=48X</p>\r\n\r\n<p>H19: (6X, A)*6= 42</p>\r\n\r\n<p>H20: 42X</p>\r\n\r\n<p>H21: (5X, A)*6= 36</p>\r\n\r\n<p>H22=36X</p>\r\n\r\n<p>H23: (4X, A)*6= 30</p>\r\n\r\n<p>Mỏ: m&agrave;u v&agrave;ng</p>\r\n\r\n<p>H1: VTMT= 6X</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H3-4=12X</p>\r\n\r\n<p>H5: (1X, V)*6=18</p>\r\n\r\n<p>H6=18X</p>\r\n\r\n<p>H7: &nbsp;(2X, V)*6=24</p>\r\n\r\n<p>H8=24X</p>\r\n\r\n<p><strong>3. C&aacute;nh: m&agrave;u cam</strong></p>\r\n\r\n<p>H1: VTMT= 6X</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H4-5=12X</p>\r\n\r\n<p>H6: (1X, V)*6=18</p>\r\n\r\n<p>H7-8= 18X</p>\r\n\r\n<p>H9: &nbsp;(2X, V)*6=24</p>\r\n\r\n<p>H10-14= 24X</p>\r\n\r\n<p>H15: (2X, A)*6=18</p>\r\n\r\n<p>H16: (1X, A)*6=12</p>\r\n\r\n<p><strong>4. C&aacute;i ở dưới cổ con g&agrave;: m&agrave;u đỏ</strong></p>\r\n\r\n<p>H1: VTMT= 6X</p>\r\n\r\n<p>H2: (1X, 1V)*3=9</p>\r\n\r\n<p>H3-5=9X</p>\r\n\r\n<p>H6: (1X, 1A)*3=6</p>\r\n\r\n<p><strong>5. Ch&acirc;n: m&agrave;u v&agrave;ng</strong></p>\r\n\r\n<p>M&oacute;c 2 c&aacute;i</p>\r\n\r\n<p>H1: VTMT= 6X</p>\r\n\r\n<p>H2: (1X, 1V)*3=9</p>\r\n\r\n<p>H3-5=9X</p>\r\n\r\n<p>M&oacute;c 2 c&aacute;i</p>\r\n\r\n<p>H6: 4X ng&oacute;n 1, 9X ng&oacute;n 2, 5X ng&oacute;n 1= 18</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/Untitled-1.jpg\"><img alt=\"Untitled-1\" src=\"https://hame.vn/wp-content/uploads/2017/05/Untitled-1.jpg\" style=\"height:537px; width:418px\" /></a></p>\r\n\r\n<p>H7=18X</p>\r\n\r\n<p>H8: (1X, 1A)*6=12</p>\r\n\r\n<p>H9: 12X</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/63.jpg\"><img alt=\"6\" src=\"https://hame.vn/wp-content/uploads/2017/05/63.jpg\" style=\"height:549px; width:400px\" /></a></p>\r\n\r\n<p><strong>6. M&agrave;o 1: với m&agrave;u đỏ</strong></p>\r\n\r\n<p>H1: VTMT= 6X</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H3: (X, V)*6=18</p>\r\n\r\n<p>H4: &nbsp;(2X, V)*6=24</p>\r\n\r\n<p>H5: (3X, V)*6=30</p>\r\n\r\n<p>H6-10=30X</p>\r\n\r\n<p>H11: (3X, 1A)*6=24</p>\r\n\r\n<p>H12-13=24X</p>\r\n\r\n<p>H14: (2X, 1A)*6=18</p>\r\n\r\n<p>H15: (1X, 1A)*6=12</p>\r\n\r\n<p><strong>7. M&agrave;o 2: với m&agrave;u đỏ</strong></p>\r\n\r\n<p>H1: VTMT= 6X</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H3: (X, V)*6=18</p>\r\n\r\n<p>H4: &nbsp;(2X, V)*6=24</p>\r\n\r\n<p>H5-7=24X</p>\r\n\r\n<p>H8: (2X, 1A)*6=18</p>\r\n\r\n<p>H9=18X</p>\r\n\r\n<p>H10: (1X, 1A)*6=12</p>\r\n\r\n<p><strong>8. M&agrave;o 3: với m&agrave;u đỏ</strong></p>\r\n\r\n<p>H1: VTMT= 6X</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H3: (X, V)*6=18</p>\r\n\r\n<p>H4-5=18X</p>\r\n\r\n<p>H6: (1X, 1A)*6=12</p>\r\n\r\n<p><strong>9. Đu&ocirc;i 1: với m&agrave;u xanh l&agrave;m 2 c&aacute;i</strong></p>\r\n\r\n<p>38CH</p>\r\n\r\n<p>H1: bỏ qua ch&acirc;n đầu ti&ecirc;n, 36X, 3X chung ch&acirc;n, 35X, 1V= 76</p>\r\n\r\n<p>H2: 6X, 6T, 6F, 6T, 11X, 1V, 1X, 1V, 11X, 6T, 6F, 6T, 6X, 1V, 1X, 1V</p>\r\n\r\n<p>H3: 6X, 6T, 6F, 6T, 27X, 6T, 6F, 6T, 11X=80</p>\r\n\r\n<p>H4=80X</p>\r\n\r\n<p><strong>10. Đu&ocirc;i 2: m&agrave;u xanh l&agrave;m 3 c&aacute;i</strong></p>\r\n\r\n<p>26CH</p>\r\n\r\n<p>H1: bỏ ch&acirc;n đầu ti&ecirc;n, 24X,&nbsp; 3X chung ch&acirc;n, 23X, 1V= 52</p>\r\n\r\n<p>H2: 6X, 6T, 3F, 3T, 5X, 1V, 1X, 1V, 5X, 3T, 3F, 6T, 6X, 1V, 1X, 1V= 56</p>\r\n\r\n<p>H3=56X</p>\r\n\r\n<p><strong>11. Đu&ocirc;i 3: l&agrave;m 2 c&aacute;i</strong></p>\r\n\r\n<p>18CH</p>\r\n\r\n<p>H1: Bỏ qua ch&acirc;n đầu ti&ecirc;n, 16X, 3X chung ch&acirc;n, 15X, 1V=36</p>\r\n\r\n<p>H2: 4X, 4T, 26F, 2T, 4X, 1V, 1X, 1V, 4X, 2T, 2F, 4T, 2X, 1V, 1X, 1V=40</p>\r\n\r\n<p>H3=40X</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/72.jpg\"><img alt=\"7\" src=\"https://hame.vn/wp-content/uploads/2017/05/72.jpg\" style=\"height:438px; width:400px\" /></a></p>\r\n\r\n<p>Kh&acirc;u r&aacute;p c&aacute;c bộ phận</p>\r\n\r\n<p>Kh&acirc;u đầu v&agrave;o th&acirc;n</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/92.jpg\"><img alt=\"9\" src=\"https://hame.vn/wp-content/uploads/2017/05/92.jpg\" style=\"height:558px; width:403px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&acirc;u m&agrave;o v&agrave; đu&ocirc;i</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/102.jpg\"><img alt=\"10\" src=\"https://hame.vn/wp-content/uploads/2017/05/102.jpg\" style=\"height:567px; width:397px\" /></a></p>\r\n\r\n<p>B&eacute; g&agrave; đ&atilde; ho&agrave;n th&agrave;nh</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/17884454_1116968811781823_274137383760763860_n.jpg\"><img alt=\"17884454_1116968811781823_274137383760763860_n\" src=\"https://hame.vn/wp-content/uploads/2017/05/17884454_1116968811781823_274137383760763860_n.jpg\" style=\"height:206px; width:242px\" /></a></p>', 1, b'00000000011', NULL, NULL, b'1', 15, NULL, NULL, '2020-08-22 03:51:44', '2020-10-06 04:22:50'),
(58, 'HƯỚNG DẪN MÓC NGƯỜI TUYẾT', 'huong-dan-moc-nguoi-tuyet', 'uploads/article/1601983348_moc-nguoi-tuyet.jpg', '<p>Người tuyết n&agrave;y sử dụng len trắng, xanh, đỏ l&agrave; ch&iacute;nh, v&igrave; vậy tr&ocirc;ng sặc sỡ bắt mắt, mẹ l&agrave;m cho b&eacute; chơi nh&aacute;</p>', '<p>C&aacute;c mẫu của Tiny mini design đều c&oacute; đặc điểm l&agrave; mập mạp, xinh xắn v&agrave; mặt v&ocirc; c&ugrave;ng dễ thương</p>\r\n\r\n<p>Người tuyết n&agrave;y sử dụng len trắng, xanh, đỏ l&agrave; ch&iacute;nh, v&igrave; vậy tr&ocirc;ng sặc sỡ bắt mắt, mẹ l&agrave;m cho b&eacute; chơi nh&aacute;</p>\r\n\r\n<p>Face c&aacute; nh&acirc;n của m&igrave;nh:&nbsp;<a href=\"https://www.facebook.com/thongoc.hame\">tại đ&acirc;y</a>/ 097 97 87 028</p>\r\n\r\n<p>Hội Hame đan m&oacute;c, link hội xem:&nbsp;<a href=\"https://www.facebook.com/groups/hoihame/\">tại đ&acirc;y</a></p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/1.jpg\"><img alt=\"1\" src=\"https://hame.vn/wp-content/uploads/2017/05/1.jpg\" style=\"height:573px; width:567px\" /></a></p>\r\n\r\n<p><strong>Nguy&ecirc;n liệu</strong></p>\r\n\r\n<ul>\r\n	<li>Len caron xanh, đỏ, trắng, n&acirc;u, cam</li>\r\n	<li>Kim m&oacute;c 2,5mm</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m</strong></p>\r\n\r\n<p><strong>* K&iacute; hiệu</strong></p>\r\n\r\n<p>X: mũi đơn</p>\r\n\r\n<p>V: tăng mũi</p>\r\n\r\n<p>A: giảm mũi</p>\r\n\r\n<p>VTMT: v&ograve;ng tr&ograve;n ma thuật</p>\r\n\r\n<p>Lưu &yacute; vừa m&oacute;c vừa nhồi chặt b&ocirc;ng c&aacute;c bạn nh&eacute;</p>\r\n\r\n<p><strong>1. Bắp ch&acirc;n v&agrave; th&acirc;n( m&oacute;c 2 &nbsp;bắp ch&acirc;n nối lại rồi m&oacute;c l&ecirc;n th&acirc;n)</strong></p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H1: Tạo MC= 6</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H3: (X, V)*6=18</p>\r\n\r\n<p>H4: &nbsp;(2X, V)*6=24</p>\r\n\r\n<p>H5: (3X, V)*6=30</p>\r\n\r\n<p>H6-7=30X</p>\r\n\r\n<p>H8: (4X, V)*6=36</p>\r\n\r\n<p>H9: (5X, V)*6=42</p>\r\n\r\n<p>H10=42X</p>\r\n\r\n<p>H11: (6X, V)*6=48</p>\r\n\r\n<p>Cắt len xong ch&acirc;n thứ 1</p>\r\n\r\n<p>L&agrave;m với ch&acirc;n thứ 2 tương tự, nhưng khi kết th&uacute;c ko cắt len</p>\r\n\r\n<p>H12: chập với ch&acirc;n thứ&nbsp; 1 bằng 6X( tức l&agrave; mỗi ch&acirc;n mất đi 6X, khi đ&oacute; số mũi mỗi ch&acirc;n c&ograve;n lại l&agrave; 48-6=42) tổng số mũi khi m&oacute;c hết d&ograve;ng n&agrave;y l&agrave; 42+42= 84</p>\r\n\r\n<p>H&igrave;nh minh họa</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/11.jpg\"><img alt=\"1\" src=\"https://hame.vn/wp-content/uploads/2017/05/11.jpg\" style=\"height:324px; width:619px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/2.jpg\"><img alt=\"2\" src=\"https://hame.vn/wp-content/uploads/2017/05/2.jpg\" style=\"height:342px; width:736px\" /></a>H13-17=84X</p>\r\n\r\n<p>H18: (5X, A)*12=72</p>\r\n\r\n<p>H19:&nbsp; (4X, A)*12=60</p>\r\n\r\n<p>H20-24=60X</p>\r\n\r\n<p>Đổi m&agrave;u trắng</p>\r\n\r\n<p>H25=60X</p>\r\n\r\n<p>H26=60X</p>\r\n\r\n<p>H27: (8X, A)*6=54</p>\r\n\r\n<p>H28:&nbsp; (7X, A)*6=48</p>\r\n\r\n<p>H29: (6X, A)*6=42</p>\r\n\r\n<p>H30-31=42X</p>\r\n\r\n<p>H32: (5X, A)*6=36</p>\r\n\r\n<p>H33-35=36X</p>\r\n\r\n<p>H36:&nbsp; (4X, A)*6=30</p>\r\n\r\n<p>H37=30X</p>\r\n\r\n<p>H38: (3X, A)*6=24</p>\r\n\r\n<p>H39=24X</p>\r\n\r\n<p><strong>2. Đầu</strong></p>\r\n\r\n<p>Với m&agrave;u trắng</p>\r\n\r\n<p>H1: Tạo MC= 6</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H3: (X, V)*6=18</p>\r\n\r\n<p>H4: &nbsp;(2X, V)*6=24</p>\r\n\r\n<p>H5: (3X, V)*6=30</p>\r\n\r\n<p>H6: &nbsp;(4X, V)*6=36</p>\r\n\r\n<p>H7:&nbsp;(5X, V)*6=42</p>\r\n\r\n<p>H8: &nbsp;(6X, V)*6=48</p>\r\n\r\n<p>H9:&nbsp;(7X, V)*6=54</p>\r\n\r\n<p>H10-21=54X</p>\r\n\r\n<p>H22: (7X, A)*6=48</p>\r\n\r\n<p>H23:&nbsp;(6X, A)*6=42</p>\r\n\r\n<p>H24:&nbsp;(5X, A)*6=36</p>\r\n\r\n<p>L&agrave;m mắt ở h&agrave;ng 15-16, 2 mắt c&aacute;ch nhau 6 mũi</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/3.jpg\"><img alt=\"3\" src=\"https://hame.vn/wp-content/uploads/2017/05/3.jpg\" style=\"height:405px; width:580px\" /></a></p>\r\n\r\n<p>H25:&nbsp;(4X, A)*6=30</p>\r\n\r\n<p>H26:&nbsp;(3X, A)*6=24</p>\r\n\r\n<p><strong>3. Ch&acirc;n</strong></p>\r\n\r\n<p>B&agrave;n ch&acirc;n với m&agrave;u n&acirc;u</p>\r\n\r\n<p>H1: Tạo MC= 6</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H3: (X, V)*6=18</p>\r\n\r\n<p>H4: &nbsp;(2X, V)*6=24</p>\r\n\r\n<p>H5: (3X, V)*6=30</p>\r\n\r\n<p>H6: &nbsp;(4X, V)*6=36</p>\r\n\r\n<p>H7: thay m&agrave;u xanh m&oacute;c mũi BLO=36X</p>\r\n\r\n<p>Video mũi BLO:&nbsp;<a href=\"https://www.youtube.com/watch?v=rsLHeMgL6SA\">tại đ&acirc;y</a></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/4.jpg\"><img alt=\"4\" src=\"https://hame.vn/wp-content/uploads/2017/05/4.jpg\" style=\"height:348px; width:583px\" /></a></p>\r\n\r\n<p>H8=36X</p>\r\n\r\n<p>thay m&agrave;u đỏ</p>\r\n\r\n<p>H9-10=36X</p>\r\n\r\n<p>thay m&agrave;u xanh</p>\r\n\r\n<p>H11-12=36X</p>\r\n\r\n<p>thay m&agrave;u đỏ</p>\r\n\r\n<p>H13: 18A=18</p>\r\n\r\n<p>H14=18X</p>\r\n\r\n<p>thay m&agrave;u trắng</p>\r\n\r\n<p>H15: M&oacute;c mũi BLO= 18X</p>\r\n\r\n<p>H16-18=18X</p>\r\n\r\n<p>Cắt len để thừa 1 đoạn len d&agrave;i để kh&acirc;u v&agrave;o ch&acirc;n m&agrave;u đỏ đ&atilde; m&oacute;c ở tr&ecirc;n</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/5.jpg\"><img alt=\"5\" src=\"https://hame.vn/wp-content/uploads/2017/05/5.jpg\" style=\"height:393px; width:685px\" /></a></p>\r\n\r\n<p><strong>4. Tay&nbsp;</strong></p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H1: Tạo MC= 6</p>\r\n\r\n<p>H2: 6V=12</p>\r\n\r\n<p>H3: (X, V)*6=18</p>\r\n\r\n<p>H4: &nbsp;(2X, V)*6=24</p>\r\n\r\n<p>H5-7=24X</p>\r\n\r\n<p>H8: (1X, 1A)*8=16</p>\r\n\r\n<p>H9-12=16X</p>\r\n\r\n<p>H13: A, 14X=15</p>\r\n\r\n<p>H14=15X</p>\r\n\r\n<p>H15: (3X, A)*3=12</p>\r\n\r\n<p>Thay m&agrave;u trắng m&oacute;c mũi BLO( 2X, A)*3=9</p>\r\n\r\n<p>H17-24=9X</p>\r\n\r\n<p>H25: V, 8X=10</p>\r\n\r\n<p>H26=10X</p>\r\n\r\n<p>H27: V, 9X=11</p>\r\n\r\n<p>H28=11X</p>\r\n\r\n<p>H29: V, 10X=12</p>\r\n\r\n<p>H30=12X</p>\r\n\r\n<p>H31: 6A=6</p>\r\n\r\n<p>H32: 6V=12</p>\r\n\r\n<p>H33-36=12X</p>\r\n\r\n<p>H37: (1X, 1A)*3=9</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/6.jpg\"><img alt=\"6\" src=\"https://hame.vn/wp-content/uploads/2017/05/6.jpg\" style=\"height:330px; width:565px\" /></a></p>\r\n\r\n<p>cắt len</p>\r\n\r\n<p>Tại h&agrave;ng 36 ta tiếp tục m&oacute;c như sau:</p>\r\n\r\n<p>H1: 1Ch, 1X( 3X, V)*4, bỏ qua mũi đầu ti&ecirc;n=15</p>\r\n\r\n<p>H2: ( 4X, V)*4, bỏ qua mũi đầu ti&ecirc;n=20</p>\r\n\r\n<p>H3: ( 5X, V)*4, bỏ qua mũi đầu ti&ecirc;n=25</p>\r\n\r\n<p>Thay m&agrave;u đỏ</p>\r\n\r\n<p>H4=25X</p>\r\n\r\n<p>H5=25</p>\r\n\r\n<p><strong>5. Ng&oacute;n tay</strong></p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H1: Tạo MC= 6</p>\r\n\r\n<p>H2: (1X, 1V)*3=9</p>\r\n\r\n<p>H3-4=9X</p>\r\n\r\n<p>H5: (1X, 1A)*3=6</p>\r\n\r\n<p>H6-7=6</p>\r\n\r\n<p>Kh&acirc;u ng&oacute;n tay v&agrave;o h&agrave;ng 12-13 của tay</p>\r\n\r\n<p><strong>6.Đai</strong></p>\r\n\r\n<p>V1: 5Ch, đ&acirc;m v&agrave;o ch&acirc;n thứ 2 từ cuối l&ecirc;n, 4X=4</p>\r\n\r\n<p>V2: quay đầu lại, 1Ch, 4X=4</p>\r\n\r\n<p>Cứ m&oacute;c như h&agrave;ng 2, 2 d&ograve;ng đổi m&agrave;u 1 lần</p>\r\n\r\n<p>M&oacute;c tổng cộng 68 v&ograve;ng</p>\r\n\r\n<p>Sau đ&oacute; kh&acirc;u v&agrave;o bụng</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/7.jpg\"><img alt=\"7\" src=\"https://hame.vn/wp-content/uploads/2017/05/7.jpg\" style=\"height:333px; width:712px\" /></a></p>\r\n\r\n<p><strong>7. Mũ</strong></p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H1: 60Ch, l&ecirc;n 1Ch, 60X=60</p>\r\n\r\n<p>H2-3=60X</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H4: (1X, 1V)*30=90</p>\r\n\r\n<p>H5=90X</p>\r\n\r\n<p>H6: (1X, 1A)*30=60</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H7: (3X, 1A)*=48</p>\r\n\r\n<p>H8-9=48X</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H10: (1X, 1V)*24=72</p>\r\n\r\n<p>H11=72X</p>\r\n\r\n<p>H12: (1X, 1A)*30=48</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H13: (2X, 1A)*12=36</p>\r\n\r\n<p>H14-15=36X</p>\r\n\r\n<p>Với m&agrave;u anh</p>\r\n\r\n<p>H16: (1X, 1V)*18=54</p>\r\n\r\n<p>H17=54X</p>\r\n\r\n<p>H18: (1X, 1A)*18=36</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H19:&nbsp; (1X, 1A)*12=24</p>\r\n\r\n<p>H20=24X</p>\r\n\r\n<p>H21: (2X, 1A)*6=18</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H22: (2X, 1A)*3=15</p>\r\n\r\n<p>H23-24=15X</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H25: (2X, 1V)*3=18</p>\r\n\r\n<p>H26-27=18X</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H28=18X</p>\r\n\r\n<p>H29-30=18X</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H31=18X</p>\r\n\r\n<p>H32-33=18X</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H34: 1A, 16X=17</p>\r\n\r\n<p>H35-36=17X</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H37:&nbsp; 1A, 15X=16</p>\r\n\r\n<p>H38: 1A, 14X=15</p>\r\n\r\n<p>H39=15X</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H40: 1A, 13X=14</p>\r\n\r\n<p>H41-42=14X</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H43: 1A, 12X=13</p>\r\n\r\n<p>H44-45=13X</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H46: 1A, 11X=12</p>\r\n\r\n<p>H47-48=12</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H49-51=12X</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H52=12X</p>\r\n\r\n<p>H53: 1A, 10X=11</p>\r\n\r\n<p>H54=11X</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H55=11X</p>\r\n\r\n<p>H56-57=11X</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H58=11X</p>\r\n\r\n<p>H59-60=11X</p>\r\n\r\n<p>Với m&agrave;u đỏ</p>\r\n\r\n<p>H61: 1A, 9X=10</p>\r\n\r\n<p>H62-63=10X</p>\r\n\r\n<p>Với m&agrave;u xanh</p>\r\n\r\n<p>H64=10X</p>\r\n\r\n<p>H65-73=10X</p>\r\n\r\n<p>H74: 1A, 8X=9</p>\r\n\r\n<p>H75-76=9X</p>\r\n\r\n<p>H77: 1A, 7X=8</p>\r\n\r\n<p>H78-93=8X</p>\r\n\r\n<p>H94: 1A, 6X=7</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/8.jpg\"><img alt=\"8\" src=\"https://hame.vn/wp-content/uploads/2017/05/8.jpg\" style=\"height:375px; width:655px\" /></a></p>\r\n\r\n<p><strong>8.Mũi</strong></p>\r\n\r\n<p>Với m&agrave;u cam</p>\r\n\r\n<p>V1: 9Ch, l&ecirc;n 1Ch, m&oacute;c v&ograve;ng tr&ograve;n=9</p>\r\n\r\n<p>V2=9X</p>\r\n\r\n<p>V3: 2X, 1A, 2X, 1A, 1X=7</p>\r\n\r\n<p>V4-5=7X</p>\r\n\r\n<p>V6: 1X, 1A, 1X, 1A, 1X=5</p>\r\n\r\n<p>H7=5X</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/9.jpg\"><img alt=\"9\" src=\"https://hame.vn/wp-content/uploads/2017/05/9.jpg\" style=\"height:324px; width:598px\" /></a></p>\r\n\r\n<p><strong>9. C&acirc;y gậy cầm</strong></p>\r\n\r\n<p>Với m&agrave;u cam</p>\r\n\r\n<p>V1: tạo MC=6X</p>\r\n\r\n<p>H2-52=6X</p>\r\n\r\n<p>Uốn cong tạo h&igrave;nh, nhớ vừa m&oacute;c vừa nhồi b&ocirc;ng</p>\r\n\r\n<p><a href=\"https://hame.vn/wp-content/uploads/2017/05/10.jpg\"><img alt=\"10\" src=\"https://hame.vn/wp-content/uploads/2017/05/10.jpg\" style=\"height:312px; width:577px\" /></a></p>\r\n\r\n<p>Kh&acirc;u c&aacute;c bộ phận lại với nhau</p>\r\n\r\n<p>Người tuyết n&agrave;y c&ocirc;ng thức d&agrave;i nhưng m&oacute;c dễ</p>', 1, b'00000000100', NULL, NULL, b'1', 15, NULL, NULL, '2020-08-22 03:53:39', '2020-10-06 04:22:28'),
(59, 'Móc khăn quàng cổ cho nam', 'moc-khan-quang-co-cho-nam', 'uploads/article/1601983330_khan-1.jpg', '<p>Bạn muốn tự tay đan hoặc m&oacute;c cho bố hoặc bạn trai m&igrave;nh một tấm khăn len ấm &aacute;p? AiKheoTay sẽ gi&uacute;p bạn thực hiện được việc đ&oacute; một c&aacute;ch đơn giản. B&agrave;i viết n&agrave;y sẽ hướng dẫn bạn m&oacute;c một chiếc khăn nam c&aacute; t&iacute;nh m&agrave; lại đơn giản.</p>', '<p>Bạn muốn tự tay đan hoặc m&oacute;c cho bố hoặc bạn trai m&igrave;nh một tấm khăn len ấm &aacute;p? AiKheoTay sẽ gi&uacute;p bạn thực hiện được việc đ&oacute; một c&aacute;ch đơn giản. B&agrave;i viết n&agrave;y sẽ hướng dẫn bạn m&oacute;c một chiếc khăn nam c&aacute; t&iacute;nh m&agrave; lại đơn giản.</p>\r\n\r\n<p><img src=\"https://4.bp.blogspot.com/-0eDVrewJIIc/VSkgzc8Cy0I/AAAAAAAAfJA/iou00qHS07M/s1600/khan-1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguy&ecirc;n vật liệu</p>\r\n\r\n<ul>\r\n	<li>Len m&agrave;u m&agrave; bạn y&ecirc;u th&iacute;ch, c&oacute; thể d&ugrave;ng len một m&agrave;u hoặc pha m&agrave;u</li>\r\n	<li>Kim m&oacute;c</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;ch m&oacute;c khăn len</p>\r\n\r\n<p>Độ rộng của chiếc khăn l&agrave; t&ugrave;y bạn lựa chọn, nhưng số mũi m&oacute;c l&ecirc;n phải l&agrave; bội số của 4 + 1. V&iacute; dụ như trong bản chart dưới đ&acirc;y l&agrave;: 29 mũi = 1 + 4x7</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://3.bp.blogspot.com/-jFtRaxQ6Hzk/VSkgx6ZneZI/AAAAAAAAfI4/A5xSTZNBrBw/s1600/khan-2.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nếu bạn đọc bản chart m&oacute;c th&igrave; tham khảo h&igrave;nh tr&ecirc;n đ&acirc;y, nếu kh&ocirc;ng th&igrave; l&agrave;m theo c&aacute;c bước hướng dẫn m&oacute;c khăn len theo video b&ecirc;n dưới</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&agrave;nh phẩm</p>\r\n\r\n<p>Một chiếc khăn c&aacute; t&iacute;nh sẽ gi&uacute;p bạn tự tin ra phố, chưa kể t&iacute;nh độc đ&aacute;o do n&oacute; l&agrave; đồ handmade do ch&iacute;nh tay bạn l&agrave;m ra. H&atilde;y thử ngay v&agrave; ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng nha!</p>', 1, b'00000000110', NULL, NULL, b'1', 15, NULL, NULL, '2020-08-24 22:09:46', '2020-10-06 04:22:10'),
(60, 'HƯỚNG DẪN CHI TIẾT ĐAN MŨ PANDA CHO BÉ', 'huong-dan-chi-tiet-dan-mu-panda-cho-be', 'uploads/article/1601983318_mu-panda.jpg', '<p>Để ch&agrave;o đ&oacute;n năm mới ,h&ocirc;m nay m&igrave;nh hướng dẫn mẫu mũ gấu tr&uacute;c si&ecirc;u xinh n&agrave;y cho c&aacute;c mẹ. Mũ đan đơn giản, c&oacute; phần chụp tai ấm &aacute;p, mặt gấu tr&uacute;c panda đảm bảo b&eacute; n&agrave;o cũng th&iacute;ch diện tết.</p>\r\n\r\n<p>Mũ đan bằng Bernat super value hoặc Paton Canadian&nbsp; n&ecirc;n rất d&agrave;y v&agrave; ấm. C&aacute;c mẹ khẩn trương triển khai đan&nbsp; mẫu mũ n&agrave;y cho b&eacute; đi nh&eacute;</p>', '<p><strong>NGUY&Ecirc;N LIỆU</strong></p>\r\n\r\n<p>Bernat super value m&agrave;u trắng v&agrave; đen</p>\r\n\r\n<p><img alt=\"\" src=\"https://hame.vn/wp-content/uploads/2020/01/82335368_2650802025149680_1335820131401465856_n.jpg\" style=\"height:300px; width:260px\" /></p>\r\n\r\n<p>Kim đan v&ograve;ng 5mm</p>\r\n\r\n<p>Kim đan hai đầu 5mm</p>\r\n\r\n<p>Kim chờ</p>\r\n\r\n<p>Đ&aacute;nh dấu</p>\r\n\r\n<p><strong>KH&Aacute;I QU&Aacute;T CHUNG</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hame.vn/wp-content/uploads/2020/01/83613990_243450403304030_8724808758506553344_n.jpg\" style=\"height:300px; width:250px\" /></p>\r\n\r\n<p><strong>Cho b&eacute; 2-4 tuổi v&agrave; 6-8 tuổi</strong></p>\r\n\r\n<p><strong>Mẫu test :&nbsp;</strong>18 mũi v&agrave; 24 d&ograve;ng = 10 x 10 cm đan trơn</p>\r\n\r\n<p><strong>C&aacute;c mũi :</strong></p>\r\n\r\n<p>RS : mặt phải</p>\r\n\r\n<p>WS : mặt tr&aacute;i</p>\r\n\r\n<p>K mũi l&ecirc;n</p>\r\n\r\n<p>P mũi xuống</p>\r\n\r\n<p>C&aacute;c mũi c&ograve;n lại bạn tra google bằng c&aacute;ch g&otilde; t&ecirc;n mũi + K</p>\r\n\r\n<p>V&iacute; dụ&nbsp; t&igrave;m mũi K2tog th&igrave; g&otilde;&gt;&gt;&gt; K +&nbsp; K2tog</p>\r\n\r\n<p><strong>C&Ocirc;NG THỨC :</strong></p>\r\n\r\n<p>N&ecirc;n đan c&agrave;i m&agrave;u kiểu intarsia, nghĩa l&agrave; chia th&agrave;nh c&aacute;c cuộn len nhỏ rồi c&agrave;i, khi bắt đầu c&agrave;i th&igrave; xoắn hai sợi len với nhau ở mặt tr&aacute;i để tr&aacute;nh tạo lỗ</p>\r\n\r\n<p><strong>Chụp tai</strong></p>\r\n\r\n<p>Với m&agrave;u đen v&agrave; kim đan 2 đầu. Bắt 5 mũi. K5</p>\r\n\r\n<p>Đan Icord tới khi đo được 15 cm</p>\r\n\r\n<p>Tạo h&igrave;nh chụp tai:</p>\r\n\r\n<p>H&agrave;ng 1: (RS). K2. M1. K1. M1. K2. 7 mũi.</p>\r\n\r\n<p>H&agrave;ng 2 v&agrave; h&agrave;ng chẵn : Sl3P. P tới hết h&agrave;ng .</p>\r\n\r\n<p>H&agrave;ng 3: Sl3P. M1. K1. M1. K3. 9 mũi.</p>\r\n\r\n<p>H&agrave;ng 5: Sl3P. M1. K3. M1. K3. 11 mũi.</p>\r\n\r\n<p>H&agrave;ng 7: Sl3P. M1. K to last 3 mũi. M1. K3. 13 mũi.</p>\r\n\r\n<p>H&agrave;ng 8: Sl3P. P tới hết h&agrave;ng .</p>\r\n\r\n<p>Lặp lại hai h&agrave;ng cuối tới khi 19 (21) mũi.</p>\r\n\r\n<p>H&agrave;ng tiếp theo: (RS). Sl3P. K tới hết h&agrave;ng .</p>\r\n\r\n<p>H&agrave;ng tiếp theo: Sl3P. P tới hết h&agrave;ng .</p>\r\n\r\n<p>Lặp lại hai h&agrave;ng cuối tới khi chụp tai được [6.5 (7.5) cm] kết th&uacute;c bằng 1 h&agrave;ng mặt tr&aacute;i. Cắt len</p>\r\n\r\n<p>Cho c&aacute;c mũi l&ecirc;n kim chờ</p>\r\n\r\n<p><strong>Mũ</strong></p>\r\n\r\n<p>Với m&agrave;u trắng, bắt 74 (82) mũi.</p>\r\n\r\n<p>H&agrave;ng 1: (RS). K1. *K2. P2. Lặp lại từ * đến hết . K1.</p>\r\n\r\n<p>H&agrave;ng 2: P1. *K2. P2. Lặp lại từ * đến hết . P1.</p>\r\n\r\n<p>Lặp lại 2 h&agrave;ng cuối 3 lần</p>\r\n\r\n<p><strong>Nối chụp tai với mũ :</strong></p>\r\n\r\n<p>H&agrave;ng tiếp theo: (RS). Với m&agrave;u ch&iacute;nh đan K 5, d&oacute;ng kim chờ c&aacute;c mũi chụp tai thứ nhất sau c&aacute;c mũi đan mũ, (K2tog : chập mũi tiếp theo của mũ với mũi đầu ti&ecirc;n của chụp tai19 (21) lần . K26 (30) mũi, d&oacute;ng kim chờ của chụp tai thứ hai, sau c&aacute;c mũ đan mũ ( K2tog : chập c&aacute;c mũi tiếp theo của mũ với c&aacute;c mũ của chụp tai 19 (21). K5.&nbsp; 74 (82) mũi.</p>\r\n\r\n<p>H&agrave;ng tiếp theo: (WS). P.</p>\r\n\r\n<p>H&agrave;ng tiếp theo: K</p>\r\n\r\n<p>Lặp lại hai h&agrave;ng cuối th&ecirc;m 1 lần nữa</p>\r\n\r\n<p>Căn chart mắt gấu : H&agrave;ng tiếp theo: (RS).</p>\r\n\r\n<p>Với m&agrave;u trắng, &nbsp;K22 (26). K h&agrave;ng 1 của chart . K tới hết h&agrave;ng .</p>\r\n\r\n<p>H&agrave;ng tiếp theo: (WS). P22 (26). P h&agrave;ng 2 của chart . P tới hết h&agrave;ng .</p>\r\n\r\n<p>Tiếp tục đan tới khi hết chart c&agrave;i m&agrave;u, mặt phải đọc từ phải qua tr&aacute;i, mặt tr&aacute;i đọc từ tr&aacute;i qua phải. Cắt len m&agrave;u đen</p>\r\n\r\n<p><img alt=\"\" src=\"https://hame.vn/wp-content/uploads/2020/01/untitled.png\" style=\"height:300px; width:449px\" /></p>\r\n\r\n<p><strong>Tạo h&igrave;nh đỉnh</strong>&nbsp;mũ: H&agrave;ng 1: (RS). Với m&agrave;u trắng, K1. *K2tog. K14 (16). ssk. Lặp lại từ * đến hết . K1. 66 (74) mũi.</p>\r\n\r\n<p>H&agrave;ng 2 v&agrave; h&agrave;ng chẵn : P.</p>\r\n\r\n<p>H&agrave;ng 3: K1. *K2tog. K12 (14). ssk. Lặp lại từ * đến hết . K1. 58 (66) mũi.</p>\r\n\r\n<p>H&agrave;ng 5: K1. *K2tog. K10 (12). ssk. Lặp lại từ * đến hết . K1. 50 (58) mũi.</p>\r\n\r\n<p>H&agrave;ng 7: K1. *K2tog. K8 (10). ssk. Lặp lại từ * đến hết . K1. 42 (50) mũi.</p>\r\n\r\n<p>H&agrave;ng 9: K1. *K2tog. K6 (8). ssk. Lặp lại từ * đến hết . K1. 34 (42) mũi.</p>\r\n\r\n<p>H&agrave;ng 11: K1. *K2tog. K4 (6). ssk. Lặp lại từ * đến hết . K1. 26 (34) mũi.</p>\r\n\r\n<p>H&agrave;ng 13: K1. *K2tog. K2 (4). ssk. Lặp lại từ * đến hết . K1. 18 (26) mũi.</p>\r\n\r\n<p><em>Chỉ Size 6/8 :</em></p>\r\n\r\n<p>H&agrave;ng 14 : P</p>\r\n\r\n<p>H&agrave;ng 15: K1. *K2tog. K2. ssk. Lặp lại từ * đến hết . K1. 18 mũi.</p>\r\n\r\n<p><em>Cả hai size:</em></p>\r\n\r\n<p>H&agrave;ng tiếp theo: K1. *K2tog. ssk. Lặp lại từ * đến hết . K1. 10 mũi.</p>\r\n\r\n<p>Cắt len, luồn qua c&aacute;c mũi c&ograve;n lại th&iacute;t chặt</p>\r\n\r\n<p>Kh&acirc;u đường may ph&iacute;a sau</p>\r\n\r\n<p>Tai</p>\r\n\r\n<p>Với m&agrave;u đen, kim hai đầu 4 que, bắt 16 (18) mũi, chia đều 3 kim, nối lại đan v&ograve;ng, đ&aacute;nh dấu điểm bắt đầu d&ograve;ng</p>\r\n\r\n<p>Đan tr&ograve;n tới khi được 3 cm</p>\r\n\r\n<p>Tạo h&igrave;nh đỉnh : D&ograve;ng 1 : *ssk. K4 (5). K2tog. Lặp lại từ * đến hết . 12 mũi.</p>\r\n\r\n<p>H&agrave;ng 2 : *ssk. K2 (3). K2tog. Lặp lại từ * đến hết . 8 (10) mũi.</p>\r\n\r\n<p>Kh&acirc;u 2 set 4 (5) mũi bằng mũi Kitchener stitch</p>\r\n\r\n<p>Kh&acirc;u tai v&agrave;o đỉnh mũ như h&igrave;nh vẽ</p>\r\n\r\n<p><img alt=\"\" src=\"https://hame.vn/wp-content/uploads/2019/12/1.png\" style=\"height:467px; width:379px\" /></p>', 1, b'00000000000', NULL, NULL, b'1', 15, NULL, NULL, '2020-08-25 02:59:57', '2020-10-06 04:21:58'),
(61, 'Chart móc cáo nhỏ treo thìa khóa', 'chart-moc-cao-nho-treo-thia-khoa', 'uploads/article/1601982313_cao.jpg', '<p>Lo&agrave;i phổ biến nhất v&agrave; ph&acirc;n bố rộng r&atilde;i nhất trong số c&aacute;c lo&agrave;i c&aacute;o l&agrave;&nbsp;c&aacute;o đỏ&nbsp;(Vulpes vulpes), mặc d&ugrave; c&aacute;c lo&agrave;i kh&aacute;c nhau cũng được t&igrave;m thấy tr&ecirc;n gần như mọi ch&acirc;u lục. Sự hiện diện của c&aacute;c động vật ăn thịt dạng c&aacute;o tr&ecirc;n to&agrave;n cầu đ&atilde; l&agrave;m cho h&igrave;nh tượng của ch&uacute;ng xuất hiện trong nhiều c&acirc;u chuyện của&nbsp;văn h&oacute;a d&acirc;n gian&nbsp;của nhiều d&acirc;n tộc, bộ lạc hay c&aacute;c nh&oacute;m văn h&oacute;a kh&aacute;c.</p>', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.taphoalensoi.com/wp-content/uploads/2019/03/unnamed-14.jpg\" style=\"height:320px; width:420px\" /></p>\r\n\r\n<p>M&oacute;c kh&oacute;a c&aacute;o</p>\r\n\r\n<h3><strong>Nguy&ecirc;n liệu:&nbsp;</strong></h3>\r\n\r\n<ul>\r\n	<li>Len sợi</li>\r\n	<li>Kim m&oacute;c</li>\r\n	<li>M&oacute;c kh&oacute;a</li>\r\n	<li>Kim kh&acirc;u len</li>\r\n</ul>\r\n\r\n<h3><strong>K&iacute; hiệu:</strong></h3>\r\n\r\n<ul>\r\n	<li>MC: v&ograve;ng tr&ograve;n ma thuật</li>\r\n	<li>X: mũi đơn</li>\r\n	<li>F:mũi k&eacute;p</li>\r\n	<li>V: 2 mũi đơn chung ch&acirc;n</li>\r\n	<li>A: giảm 2 mũi th&agrave;nh 1 mũi</li>\r\n	<li>F: mũi k&eacute;p</li>\r\n	<li>T: mũi nữa k&eacute;p</li>\r\n	<li>E:mũi k&eacute;p đ&ocirc;i</li>\r\n	<li>H: mũi k&eacute;p ba</li>\r\n</ul>\r\n\r\n<h3><strong>Phần đầu</strong></h3>\r\n\r\n<p><strong>M&agrave;u da</strong></p>\r\n\r\n<p>H&agrave;ng 1:&nbsp;MC6X</p>\r\n\r\n<p>H&agrave;ng 2: 6V</p>\r\n\r\n<p>H&agrave;ng 3: (XV)*6</p>\r\n\r\n<p>H&agrave;ng 4: (2XV)*6</p>\r\n\r\n<p>H&agrave;ng 5: (3XV)*6</p>\r\n\r\n<p>H&agrave;ng 6: (4XV)*6</p>\r\n\r\n<p>H&agrave;ng 7: (5XV)*6</p>\r\n\r\n<p>H&agrave;ng 8: 42X</p>\r\n\r\n<p>H&agrave;ng 9: (6XV)*6</p>\r\n\r\n<p>H&agrave;ng 10: 48X</p>\r\n\r\n<p>H&agrave;ng 11: (7XV)*6</p>\r\n\r\n<p>H&agrave;ng 12 đến 20: 54X (9h&agrave;ng)</p>\r\n\r\n<p>H&agrave;ng 21: (7XA)*6</p>\r\n\r\n<p>H&agrave;ng 22: XA, (6XA)*5, 3X</p>\r\n\r\n<p>H&agrave;ng 23: ( 5XA)*6</p>\r\n\r\n<p>H&agrave;ng 24: 2XA, (4XA)*5, 2X</p>\r\n\r\n<p>H&agrave;ng 25: 3XA*6</p>\r\n\r\n<p>H&agrave;ng 26: XA,( 2XA)*5,X</p>\r\n\r\n<p>H&agrave;ng 27: ( XA)*6</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.taphoalensoi.com/wp-content/uploads/2019/03/unnamed-11.jpg\" style=\"height:638px; width:559px\" /></p>\r\n\r\n<p>M&oacute;c con c&aacute;o</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.taphoalensoi.com/wp-content/uploads/2019/03/unnamed-12.jpg\" style=\"height:397px; width:1242px\" /></p>\r\n\r\n<p>Kh&acirc;u mắt như h&igrave;nh</p>\r\n\r\n<h3><strong>Lỗ mũi</strong></h3>\r\n\r\n<p><strong>&nbsp;M&agrave;u da</strong></p>\r\n\r\n<p>H&agrave;ng 1: MC6X</p>\r\n\r\n<p>H&agrave;ng 2: XV*3</p>\r\n\r\n<p>H&agrave;ng 3: 2XV, X2V, XVX</p>\r\n\r\n<p>H&agrave;ng 4: 13X</p>\r\n\r\n<p>H&agrave;ng 5: 9X, A, 2X</p>\r\n\r\n<h3><strong>N&Oacute;N</strong></h3>\r\n\r\n<p><strong>M&agrave;u n&acirc;u v&agrave;ng</strong></p>\r\n\r\n<p>H&agrave;ng 1: MC6X</p>\r\n\r\n<p>H&agrave;ng 2: 6V</p>\r\n\r\n<p>H&agrave;ng 3: (XV)*6</p>\r\n\r\n<p>H&agrave;ng 4: (2XV)*6</p>\r\n\r\n<p>H&agrave;ng 5: (3XV)*6</p>\r\n\r\n<p>H&agrave;ng 6: (4XV)*6</p>\r\n\r\n<p>H&agrave;ng 7: (5XV)*6</p>\r\n\r\n<p>H&agrave;ng 8: 42x</p>\r\n\r\n<p>H&agrave;ng 9: ( 6xv)*6</p>\r\n\r\n<p>H&agrave;ng 10: 48x</p>\r\n\r\n<p>H&agrave;ng 11: (7xv)*6</p>\r\n\r\n<p>H&agrave;ng 12 đến 20: 54x (9 h&agrave;ng)</p>\r\n\r\n<p>H&agrave;ng 21: 10X,1B, turn</p>\r\n\r\n<p>H&agrave;ng 22: A, 6X, A,1B</p>\r\n\r\n<p>H&agrave;ng 23: 8X</p>\r\n\r\n<p>H&agrave;ng 24: A, 4X, A,1B</p>\r\n\r\n<p>H&agrave;ng 25: 6X, 1B</p>\r\n\r\n<p>H&agrave;ng 26: A, 2X, A,1B</p>\r\n\r\n<p>H&agrave;ng 27: 4X,1B</p>\r\n\r\n<p>H&agrave;ng 28: 2A, 1B</p>\r\n\r\n<p>H&agrave;ng 29 đến 31: 2X</p>\r\n\r\n<p>H&agrave;ng 32: A</p>\r\n\r\n<p>H&agrave;ng 33:&nbsp;VIỀN XUNG QUANH:mũi X đến h&agrave;ng 20 th&igrave; m&oacute;c: 9XA, 4XA, 8XA,4XA, 3XA, 4X</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.taphoalensoi.com/wp-content/uploads/2019/03/unnamed-13.jpg\" style=\"height:855px; width:686px\" /></p>\r\n\r\n<h3><strong>Lỗ tai</strong></h3>\r\n\r\n<p><strong>N&acirc;u đậm</strong></p>\r\n\r\n<p>H&agrave;ng 1: MC4X</p>\r\n\r\n<p>H&agrave;ng 2: (XV)*2</p>\r\n\r\n<p>H&agrave;ng 3: (VX)*3</p>\r\n\r\n<p><strong>N&acirc;u v&agrave;ng</strong></p>\r\n\r\n<p>H&agrave;ng 4: 9x</p>\r\n\r\n<p>H&agrave;ng 5: (2XV)*3</p>\r\n\r\n<p>H&agrave;ng 6 đến 7: 12X</p>\r\n\r\n<p>H&agrave;ng 8: ( 3XV)*3</p>\r\n\r\n<p>H&agrave;ng 9 đến 10:&nbsp; 15X</p>\r\n\r\n<p>H&agrave;ng 11: (4XV)*3</p>\r\n\r\n<p>H&agrave;ng 12: 5XV*3</p>\r\n\r\n<p>D&ugrave;ng sợi m&agrave;u s&aacute;ng hơn trang tr&iacute; l&ecirc;n tai, 5 đường trang tr&iacute;.</p>\r\n\r\n<h3><strong>Phần th&acirc;n</strong></h3>\r\n\r\n<p><strong>N&acirc;u v&agrave;ng</strong></p>\r\n\r\n<p>H&agrave;ng 1: Nối tiếp phần đầu: 5X tr&ecirc;n n&oacute;n, 7X tr&ecirc;n đầu</p>\r\n\r\n<p>H&agrave;ng 2: 12V</p>\r\n\r\n<p>H&agrave;ng 3: (2XV)*8</p>\r\n\r\n<p>H&agrave;ng 4 đến 10: 32X (7 h&agrave;ng)</p>\r\n\r\n<p>H&agrave;ng 11: BLO:( 2XA)*8</p>\r\n\r\n<p>H&agrave;ng 12: 12A</p>\r\n\r\n<p>H&agrave;ng 13: 6A , nhồi b&ocirc;ng, giấu sợi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.taphoalensoi.com/wp-content/uploads/2019/03/unnamed-10.jpg\" style=\"height:507px; width:1235px\" /></p>\r\n\r\n<p><strong>ĐU&Ocirc;I</strong></p>\r\n\r\n<p>N&acirc;u v&agrave;ng</p>\r\n\r\n<p>H&agrave;ng 1: MC4X</p>\r\n\r\n<p>H&agrave;ng 2: (XV)*2</p>\r\n\r\n<p>H&agrave;ng 3: 6V</p>\r\n\r\n<p>H&agrave;ng 4: (XV)*6</p>\r\n\r\n<p>H&agrave;ng 5: 18X</p>\r\n\r\n<p>H&agrave;ng 6: (XV)*9</p>\r\n\r\n<p>H&agrave;ng 7: 27X</p>\r\n\r\n<p>H&agrave;ng 8: (2XV)*9</p>\r\n\r\n<p>H&agrave;ng 9 đến 16: 36X</p>\r\n\r\n<p>H&agrave;ng 17: (4XA)*6</p>\r\n\r\n<p>H&agrave;ng 18: 30X</p>\r\n\r\n<p>H&agrave;ng 19: ( 3XA)*6</p>\r\n\r\n<p>H&agrave;ng 20 đến 21: 24X</p>\r\n\r\n<p>H&agrave;ng 22: (2XA)*6</p>\r\n\r\n<p>H&agrave;ng 23: 18X</p>\r\n\r\n<p>H&agrave;ng 24: (XA)*6</p>\r\n\r\n<p>H&agrave;ng 25 đến 26: 12X</p>\r\n\r\n<p>H&agrave;ng 27: 6A</p>\r\n\r\n<p>H&agrave;ng 28: 6X</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.taphoalensoi.com/wp-content/uploads/2019/03/unnamed-8.jpg\" style=\"height:1600px; width:1232px\" /></p>\r\n\r\n<p>M&oacute;c con c&aacute;o</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.taphoalensoi.com/wp-content/uploads/2019/03/unnamed-9.jpg\" style=\"height:663px; width:1242px\" /></p>', 1, b'00000000111', NULL, NULL, b'1', 15, NULL, NULL, '2020-08-25 03:12:56', '2020-10-06 04:21:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `position` tinyint(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `description`, `type`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(24, 'slide1', 'slide1', 'uploads/banner/1598012523_slider_1.png', NULL, '_blank', NULL, 1, 1, 1, '2020-08-21 05:22:03', '2020-08-21 05:22:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `type` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `position`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(69, 'Len sợi', 'len-soi', 'uploads/category/1598014639_len-soi.jpg', 0, 1, 1, 0, '2020-08-20 21:29:07', '2020-08-21 05:57:19'),
(70, 'Nguyên phụ liệu', 'nguyen-phu-lieu', 'uploads/category/1598014432_nguyen-phu-lieu.png', 0, 2, 1, 0, '2020-08-20 21:31:45', '2020-08-21 05:53:52'),
(71, 'Handmade', 'handmade', 'uploads/category/1598014422_handmade.jpg', 0, 3, 1, 0, '2020-08-20 21:32:52', '2020-08-21 05:53:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` tinyint(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `content`, `created_at`, `updated_at`) VALUES
(12, 'Nguyễn Phương Hồng', '0969422308', 'phuonghong190820@gmail.com', 'ÁDFEGTRYUIOP', '2020-09-21 03:11:36', '2020-09-21 03:11:36'),
(13, 'Nguyễn Phương Hồng', '0969422308', 'phuonghong190820@gmail.com', 'zxcvbn', '2020-10-06 07:05:33', '2020-10-06 07:05:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` tinyint(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `value` tinyint(11) DEFAULT NULL,
  `percent` tinyint(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'SHOP-KM1', 1, 127, NULL, '2020-05-19 16:50:32', '2020-05-19 16:50:32'),
(2, 'SHOP-K2', 2, NULL, 50, '2020-05-19 16:52:27', '2020-05-19 16:52:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `order_status_id` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `fullname`, `email`, `address`, `address2`, `phone`, `discount`, `note`, `coupon`, `total`, `user_id`, `order_status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(190, 'DH-1601465967-30092020', 'Nguyen Phuong Hong', 'phuonghong190820@gmail.com', 'Hà Nội', NULL, '0969422308', 50000, 'ádfghjk', 'SHOP-KM1', 460000, 0, 1, 0, '2020-09-30 04:39:27', '2020-09-30 04:39:27'),
(191, 'DH-1601539977-01102020', 'Nguyen Phuong Hong', 'phuonghong190820@gmail.com', 'Hà Nội', NULL, '0969422308', 0, 'zsxfcg', NULL, 120000, 0, 1, 0, '2020-10-01 01:12:57', '2020-10-01 01:12:57'),
(192, 'DH-1601540015-01102020', 'Nguyen Phuong Hong', 'phuonghong190820@gmail.com', 'Hà Nội', NULL, '0969422308', 0, NULL, NULL, 75000, 0, 1, 0, '2020-10-01 01:13:35', '2020-10-01 01:13:35'),
(193, 'DH-1601989359-06102020', 'Nguyen Phuong Hong', 'phuonghong190820@gmail.com', 'Hà Nội', NULL, '0969422308', 50000, 'sxcvbnm,', 'SHOP-KM1', 500000, 0, 2, 0, '2020-10-06 06:02:39', '2020-10-06 06:03:19'),
(194, 'DH-1602584791-13102020', 'Nguyen Phuong Hong', 'phuonghong190820@gmail.com', 'Hà Nội', NULL, '0969422308', 0, 'sdfghj,', NULL, 100000, 0, 1, 0, '2020-10-13 03:26:31', '2020-10-13 03:26:31'),
(195, 'DH-1604048059-30102020', 'Hong', 'phuonghong1908@gmail.com', 'Hà Nội', NULL, '0969422308', 0, 'mua hang', NULL, 100000, 0, 1, 0, '2020-10-30 01:54:19', '2020-10-30 01:54:19'),
(196, 'DH-1604048430-30102020', 'Hong', 'phuonghong1908@gmail.com', 'Hà Nội', NULL, '0969422308', 0, 'mua hang', NULL, 25000, 0, 1, 0, '2020-10-30 02:00:30', '2020-10-30 02:00:30'),
(197, 'DH-1604048534-30102020', 'Hong', 'phuonghong190820@gmail.com', 'Hà Nội', NULL, '0969422308', 0, 'mua hang', NULL, 25000, 0, 1, 0, '2020-10-30 02:02:14', '2020-10-30 02:02:14'),
(198, 'DH-1604050295-30102020', 'Nguyen Phuong Hong', 'phuonghong190820@gmail.com', 'Hà Nội', NULL, '0969422308', 0, 'ádfghjk', NULL, 38000, 0, 3, 0, '2020-10-30 02:31:35', '2020-10-30 03:14:45'),
(199, 'DH-1608001314-15122020', 'Nguyen Phuong Hong', 'phuonghong190820@gmail.com', 'Hà Nội', 'Hà Nội', '0969422308', 0, 'dfwrgthjk.l/', NULL, 60000, 0, 2, 0, '2020-12-14 20:01:54', '2021-01-22 03:56:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `name`, `image`, `sku`, `user_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(219, 'Hộp kim khâu chỉ 30 cây', 'uploads/product/1601024448_hop-kim-khau.jpg', NULL, 15, 190, 102, 30000, 1),
(220, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 190, 99, 430000, 1),
(221, 'Bộ kim móc và dụng cụ', 'uploads/product/1601023751_bo-kim-moc-va-dung-cu-ho-tro-vi-xanh-ngoc-1.jpg', NULL, 0, 191, 94, 120000, 1),
(222, 'Hộp chuông lục lạc bằng nhôm 300 cái', 'uploads/product/1601451922_hop-chuong-luc-lac-bang-nhom-300-cai-4.jpg', NULL, 15, 192, 104, 75000, 1),
(223, 'Thú bông bằng len', 'uploads/product/1601024255_ch0-mat-nau.jpg', NULL, 15, 193, 100, 500000, 1),
(224, 'Bé dứa', 'uploads/product/1601024075_be-dua.png', NULL, 15, 194, 98, 100000, 1),
(225, 'Sợi Wave Ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'WOM', 15, 195, 81, 100000, 4),
(226, 'Sợi Wave Ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'WOM', 15, 196, 81, 25000, 1),
(227, 'Sợi Wave Ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'WOM', 15, 197, 81, 25000, 1),
(228, 'Alize Angora Gold Ombre Batik', 'uploads/product/1601023559_Alize.jpg', 'ALZ', 15, 198, 92, 38000, 2),
(229, 'Hộp kim khâu chỉ 30 cây', 'uploads/product/1601024448_hop-kim-khau.jpg', NULL, 15, 199, 102, 60000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đang Xử Lý'),
(3, 'Hoàn Thành'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('phuonghong190820@gmail.com', '$2y$10$Pd8FXAwkWKx5J7HtWsE2iudPmRV.37xh66Pe2VjyMMFaNtutdFeD2', '2020-09-16 01:51:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` tinyint(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `position` tinyint(11) NOT NULL DEFAULT 0,
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `is_hot` bit(1) NOT NULL DEFAULT b'0',
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `image2`, `image3`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `country`, `memory`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`) VALUES
(81, 'Sợi Wave Ombre', 'soi-wave-ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'uploads/product/1600955900_soi-wave-bm_15f2b31f25f749bc97d4f5926179ce76.webp', 'uploads/product/1600955900_soi-wave-05_6aa2e9a46fb1494f8d78ae03cc336da2_grande.webp', 100, 25000, 0, 1, b'1', b'1', 0, 69, NULL, 'WOM', NULL, NULL, '<p>Sợi Wave Ombre l&agrave; d&ograve;ng sợi đang được chị em handmade y&ecirc;u th&iacute;ch hiện nay. Sợi của Việt Nam sản xuất. Sợi chuy&ecirc;n m&oacute;c t&uacute;i x&aacute;ch, ba l&ocirc;, v&iacute;, mũ n&oacute;n. L&ecirc;n sản phẩm cứng c&aacute;p, đứng d&aacute;ng rất đẹp. Bảng m&agrave;u sợi Wave loang kh&aacute; đẹp. M&agrave;u sắc nhẹ nh&agrave;ng, kẹo ngọt. M&oacute;c &ecirc;m tay. Cuộn sợi được se chung với 1 sợi &aacute;nh bạc l&agrave;m cho sản phẩm trở n&ecirc;n lung linh hơn. Nếu chị em n&agrave;o th&iacute;ch phong c&aacute;ch Ombre th&igrave; sợi Wave l&agrave; lựa chọn số 1.</p>', '<p>Sợi Wave Ombre chuy&ecirc;n m&oacute;c mũ n&oacute;n, t&uacute;i x&aacute;ch Sợi Wave Ombre l&agrave; d&ograve;ng sợi đang được chị em handmade y&ecirc;u th&iacute;ch hiện nay. Sợi của Việt Nam sản xuất. Sợi được NoLi lựa chọn chuy&ecirc;n m&oacute;c t&uacute;i x&aacute;ch, ba l&ocirc;, v&iacute;, mũ n&oacute;n. L&ecirc;n sản phẩm cứng c&aacute;p, đứng d&aacute;ng rất đẹp. Sợi đồng đều về m&agrave;u sắc. K&iacute;ch thước sợi ổn định từ đầu cuộn tới cuối cuộn, kh&ocirc;ng bị to nhỏ như 1 số d&ograve;ng sợi tr&ecirc;n thị trường. Bảng m&agrave;u sợi Wave loang kh&aacute; đẹp. M&agrave;u sắc nhẹ nh&agrave;ng, kẹo ngọt. M&oacute;c &ecirc;m tay. Cuộn sợi được se chung với 1 sợi &aacute;nh bạc l&agrave;m cho sản phẩm trở n&ecirc;n lung linh hơn. Nếu chị em n&agrave;o th&iacute;ch phong c&aacute;ch Ombre th&igrave; sợi Wave l&agrave; lựa chọn số 1. Lưu &yacute;: Thường 1 mũ người lớn hết khoảng 2-3 cuộn t&ugrave;y v&agrave;nh mũ. Mũ trẻ em hết khoảng 1-1.5 cuộn. T&uacute;i x&aacute;ch size 20cm khoảng 2-3 cuộn. Th&ocirc;ng tin chi tiết về sản phẩm: - K&iacute;ch thước sợi: 2mm - Sử dụng kim m&oacute;c: 2.5mm - 3.0mm- Th&agrave;nh phần: 100% polyester - Trọng lượng: 125gr kh&ocirc;ng t&iacute;nh l&otilde;i, tổng cuộn nặ ng 150gr - Xuất xứ: Việt Nam - K&iacute;ch thước đ&oacute;ng g&oacute;i sản phẩm: Kh&aacute;ch sỉ vui l&ograve;ng inbox #lensoi #soiwave #soiwaveombre #soiloang #soimocmu #soimoctuixach</p>', NULL, NULL, 15, '2020-09-24 06:58:20', '2020-10-06 19:59:45'),
(92, 'Alize Angora Gold Ombre', 'alize-angora-gold-ombre', 'uploads/product/1601023559_Alize.jpg', 'uploads/product/1601023559_lencauvong.jpg', 'uploads/product/1601023559_lencauvong1.jpg', 0, 19000, 0, 1, b'1', b'1', 0, 69, NULL, 'ALZ', NULL, NULL, '<p>Len Alize Angora Gold Ombre Batik Thuộc d&ograve;ng len c&oacute; nguồn gốc từ lo&agrave;i thỏ Angora. Sợi len mềm, mịn, mỏng v&agrave; rất b&ocirc;ng. Loại len n&agrave;y ph&ugrave; hợp với việc đan m&oacute;c khăn cho&agrave;ng (Shawl/Wrap) v&igrave; độ mềm, nhẹ cũng như độ ấm cần thiết. Chỉ cần 1-2 cuộn len l&agrave; đủ l&agrave;m một chiếc khăn cho&agrave;ng cho người lớn,đặc biệt l&agrave; kĩ thuật nhuộm m&agrave;u ombre cực kỳ độc đ&aacute;o</p>', '<p>Len Alize Angora Gold Ombre Batik</p>\r\n\r\n<p>Thuộc d&ograve;ng len c&oacute; nguồn gốc từ lo&agrave;i thỏ Angora. Sợi len mềm, mịn, mỏng v&agrave; rất b&ocirc;ng. Loại len n&agrave;y ph&ugrave; hợp với việc đan m&oacute;c khăn cho&agrave;ng (Shawl/Wrap) v&igrave; độ mềm, nhẹ cũng như độ ấm cần thiết. Chỉ cần 1-2 cuộn len l&agrave; đủ l&agrave;m một chiếc khăn cho&agrave;ng cho người lớn,đặc biệt l&agrave; kĩ thuật nhuộm m&agrave;u ombre cực kỳ độc đ&aacute;o</p>', NULL, NULL, 16, '2020-09-25 01:45:59', '2020-11-25 01:49:02'),
(93, 'Len Bông Xù DMC Baby', 'len-bong-xu-dmc-baby', 'uploads/product/1601023660_len.jpg', 'uploads/product/1601023660_len-bong-xu.jpg', 'uploads/product/1601023660_len1.jpg', 127, 14000, 0, 2, b'1', b'0', 0, 69, NULL, NULL, NULL, NULL, '<p>Bouclette l&agrave; một loại sợi rất mềm, mịn v&agrave; dễ chịu cho trẻ sơ sinh. Sợi được l&agrave;m từ len tự nhi&ecirc;n v&agrave; microfibers, l&agrave;m cho n&oacute; mềm v&agrave; nhẹ kh&ocirc;ng thể cưỡng lại được. Bouclette c&oacute; một loạt c&aacute;c m&agrave;u pastel đẹp, d&agrave;nh ri&ecirc;ng cho trẻ sơ sinh.</p>', '<p>Bouclette l&agrave; một loại sợi rất mềm, mịn v&agrave; dễ chịu cho trẻ sơ sinh. Sợi được l&agrave;m từ len tự nhi&ecirc;n v&agrave; microfibers, l&agrave;m cho n&oacute; mềm v&agrave; nhẹ kh&ocirc;ng thể cưỡng lại được. Bouclette c&oacute; một loạt c&aacute;c m&agrave;u pastel đẹp, d&agrave;nh ri&ecirc;ng cho trẻ sơ sinh.</p>', NULL, NULL, 16, '2020-09-25 01:47:40', '2020-11-25 01:48:50'),
(94, 'Bộ kim móc và dụng cụ', 'bo-kim-moc-va-dung-cu', 'uploads/product/1601023751_bo-kim-moc-va-dung-cu-ho-tro-vi-xanh-ngoc-1.jpg', 'uploads/product/1601023751_kimmoc.jpg', 'uploads/product/1601023751_kimmoc2.jpg', 8, 90000, 80000, 4, b'1', b'1', 0, 70, NULL, NULL, NULL, NULL, '<p>Bộ kim m&oacute;c v&agrave; dụng cụ hỗ trợ v&iacute; xanh ngọc Bộ kim m&oacute;c v&agrave; dụng cụ hỗ trợ v&iacute; xanh ngọc</p>', '<p>Bộ kim m&oacute;c v&agrave; dụng cụ hỗ trợ v&iacute; xanh ngọc Bộ kim m&oacute;c v&agrave; dụng cụ hỗ trợ v&iacute; xanh ngọc bao gồm: - Bộ kim m&oacute;c c&aacute;n dẻo 11 c&acirc;y chạy size từ nhỏ tới lớn gồm c&aacute;c size 2.0 / 2.5 / 3.0 / 3.5 / 4.0 / 4.5 / 5.0 / 5.5 / 6.0 / 7.0 / 8.0mm - Bộ đ&aacute;nh dấu 10 c&aacute;i kim băng - Kim kh&acirc;u len nhựa : 6 c&acirc;y - Thước d&acirc;y: d&agrave;i 1.5m - Đếm d&ograve;ng m&oacute;c: 1 c&aacute;i - Dụng cụ cắt len, cắt chỉ - V&iacute; xanh ngọc đựng kim m&oacute;c v&agrave; dụng cụ Bộ kim m&oacute;c v&agrave; dụng cụ hỗ trợ v&iacute; xanh ngọc rất cơ bản, tiện lợi v&agrave; đầy đủ cho c&aacute;c chị em handmade đang băn khoăn kh&ocirc;ng biết n&ecirc;n lựa chọn những nguy&ecirc;n phụ liệu g&igrave; để chuẩn bị m&oacute;c len. - M&agrave;u sắc: Xanh ngọc - C&acirc;n nặng sản phẩm: 300gr - K&iacute;ch thước đ&oacute;ng g&oacute;i sản phẩm: 20x10x3 cm - Kh&aacute;ch sỉ vui l&ograve;ng inbox</p>', NULL, NULL, 15, '2020-09-25 01:49:11', '2020-10-06 19:45:38'),
(96, 'Cuộn Len Himalaya', 'cuon-len-himalaya', 'uploads/product/1601023921_3len2.jpg', 'uploads/product/1601023921_3len.jpg', 'uploads/product/1601023921_len-himalaya.jpg', 100, 14994, 0, 5, b'1', b'1', 0, 69, NULL, NULL, NULL, NULL, '<p>Himalaya Everyday Senfoni l&agrave; d&ograve;ng sợi 100% Acrylic chống x&ugrave; , loại sợi n&agrave;y rất b&oacute;ng v&agrave; mềm mượt , những sản phẩm l&agrave;m từ sợi n&agrave;y nh&igrave;n vẫn như mới sau nhiều lần giặt m&agrave; kh&ocirc;ng c&oacute; hiện tượng xổ l&ocirc;ng như những loại sợi Acrylic kh&aacute;c,bộ combo gồm 2 cuộn sợi m&agrave;u kh&aacute;c nhau v&agrave; 1 cuộn sợi pha m&agrave;u của 2 m&agrave;u đ&oacute;</p>', '<p>Himalaya Everyday Senfoni l&agrave; d&ograve;ng sợi 100% Acrylic chống x&ugrave; , loại sợi n&agrave;y rất b&oacute;ng v&agrave; mềm mượt , những sản phẩm l&agrave;m từ sợi n&agrave;y nh&igrave;n vẫn như mới sau nhiều lần giặt m&agrave; kh&ocirc;ng c&oacute; hiện tượng xổ l&ocirc;ng như những loại sợi Acrylic kh&aacute;c,bộ combo gồm 2 cuộn sợi m&agrave;u kh&aacute;c nhau v&agrave; 1 cuộn sợi pha m&agrave;u của 2 m&agrave;u đ&oacute;</p>', NULL, NULL, 16, '2020-09-25 01:52:01', '2020-11-25 01:49:40'),
(97, 'Chậu Hướng Dướng mini', 'chau-huong-duong-mini', 'uploads/product/1601023989_hduong.jpg', 'uploads/product/1601023989_hduong.jpg', 'uploads/product/1601023989_chau-huong-duong.jpg', 0, 170000, 0, 0, b'1', b'0', 0, 0, NULL, NULL, NULL, NULL, '<p>Chậu hướng dương mini được l&agrave;m từ chất liệu len mềm mại Được đan m&oacute;c bằng tay tỉ mỉ, kh&eacute;o l&eacute;o</p>', '<ul>\r\n	<li>Chậu hướng dương mini được l&agrave;m từ chất liệu len mềm mại</li>\r\n	<li>Được đan m&oacute;c bằng tay tỉ mỉ, kh&eacute;o l&eacute;o</li>\r\n	<li>H&igrave;nh ảnh hoa hướng dương nhiều &yacute; nghĩa</li>\r\n	<li>Ph&ugrave; hợp l&agrave;m qu&agrave; tặng c&aacute;c dịp cho người th&acirc;n, bạn b&egrave;...</li>\r\n</ul>', NULL, NULL, 15, '2020-09-25 01:53:09', '2020-10-06 19:45:00'),
(98, 'Bé dứa', 'be-dua', 'uploads/product/1601024075_be-dua.png', 'uploads/product/1601024075_bedua.jpg', 'uploads/product/1601024075_be.jpg', 20, 100000, 0, 6, b'1', b'0', 0, 71, NULL, NULL, NULL, NULL, '<p>B&eacute; dứa cực xinh</p>', '<p>B&eacute; dứa cực xinh</p>', NULL, NULL, 15, '2020-09-25 01:54:35', '2020-10-06 19:44:40'),
(99, 'Thỏ khúc cây', 'tho-khuc-cay', 'uploads/product/1601024151_tho-khuc-cay.jpg', 'uploads/product/1601024151_tho2.jpg', 'uploads/product/1601024151_tho3.jpg', 6, 480000, 450000, 7, b'1', b'1', 0, 71, NULL, NULL, NULL, NULL, '<p>Cặp thỏ đ&aacute;ng y&ecirc;u n&agrave;y c&oacute; t&ecirc;n gọi&nbsp;Thỏ Kh&uacute;c C&acirc;y, t&ecirc;n của đ&ocirc;i bạn thỏ n&agrave;y được gọi theo t&ecirc;n của t&aacute;c giả Kh&uacute;c C&acirc;y</p>', '<p>Cặp thỏ đ&aacute;ng y&ecirc;u n&agrave;y c&oacute; t&ecirc;n gọi&nbsp;<strong>Thỏ Kh&uacute;c C&acirc;y</strong>, t&ecirc;n của đ&ocirc;i bạn thỏ n&agrave;y được gọi theo t&ecirc;n của t&aacute;c giả Kh&uacute;c C&acirc;y - 1 t&aacute;c giả Việt Kiều sống ở trời T&acirc;y rất y&ecirc;u th&iacute;ch<strong>&nbsp;bộ m&ocirc;n đan m&oacute;c</strong>&nbsp;v&agrave; c&oacute; rất nhiều thiết kế<strong>&nbsp;Amigurumi</strong>&nbsp;đ&aacute;ng y&ecirc;u, sinh động được cộng đồng đan m&oacute;c Việt Nam v&agrave; Thế giới biết đến v&agrave; v&ocirc; c&ugrave;ng&nbsp;y&ecirc;u mến.</p>', NULL, NULL, 15, '2020-09-25 01:55:51', '2020-10-06 19:44:19'),
(100, 'Thú bông bằng len', 'thu-bong-bang-len', 'uploads/product/1601024255_ch0-mat-nau.jpg', 'uploads/product/1601024255_gau.jpg', 'uploads/product/1601024255_gau2.jpg', 10, 450000, 0, 0, b'1', b'0', 0, 71, NULL, NULL, NULL, NULL, '<p>- Th&uacute; b&ocirc;ng bằng len size to thủ c&ocirc;ng bằng len chất lượng an to&agrave;n cho b&eacute;.</p>', '<p>Sản phẩm được l&agrave;m rất tỉ mỉ bằng tay n&ecirc;n độ bền cao. C&oacute; thể đặt l&agrave;m theo m&agrave;u sắc m&agrave; bạn muốn. - Cao: 55cm - H&agrave;ng đặt trước, 3-5 ng&agrave;y m&igrave;nh l&agrave;m xong sẽ giao cho kh&aacute;ch nh&eacute; - Ship h&agrave;ng to&agrave;n quốc&nbsp;</p>', NULL, NULL, 15, '2020-09-25 01:57:35', '2020-10-06 19:43:53'),
(101, 'Len lục lạc cầm tay', 'len-luc-lac-cam-tay', 'uploads/product/1601276988_luc-lac-gau.jpg', 'uploads/product/1601276988_luclac2.jpg', 'uploads/product/1601276988_luclac.jpg', 30, 119995, 0, 9, b'1', b'1', 0, 71, NULL, NULL, NULL, NULL, '<p>Lục lạc cầm tay cho b&eacute; với đa dang mẫu m&atilde;</p>', '<p>Lục lạc cầm tay cho b&eacute; với đa dang mẫu m&atilde;</p>', NULL, NULL, 15, '2020-09-25 01:59:42', '2020-10-06 19:43:06'),
(102, 'Hộp kim khâu chỉ 30 cây', 'hop-kim-khau-chi-30-cay', 'uploads/product/1601024448_hop-kim-khau.jpg', 'uploads/product/1601024448_kim2.jpg', 'uploads/product/1601024448_kim.jpg', 30, 30000, 0, 10, b'1', b'0', 0, 70, NULL, NULL, NULL, NULL, '<p>Hộp kim kh&acirc;u chỉ tr&ograve;n 30 c&acirc;y tiện lợi Hộp kim kh&acirc;u chỉ tr&ograve;n 30 c&acirc;y tiện lợi được thiết kế nhỏ gọn, t&iacute;nh thẩm mỹ cao.</p>', '<p>Hộp kim kh&acirc;u chỉ tr&ograve;n 30 c&acirc;y tiện lợi Hộp kim kh&acirc;u chỉ tr&ograve;n 30 c&acirc;y tiện lợi được thiết kế nhỏ gọn, t&iacute;nh thẩm mỹ cao. Với những chị em thường xuy&ecirc;n kh&acirc;u v&aacute;, đan m&oacute;c th&igrave; nhất định n&ecirc;n sở hữu 1 em kim kh&acirc;u chỉ tr&ograve;n 30 c&acirc;y si&ecirc;u tiện lợi n&agrave;y nh&eacute;. Với chất liệu kim loại cao cấp kh&ocirc;ng han gỉ, dễ d&agrave;ng luồn qua vải với lực cản thấp, k&iacute;ch thước lỗ kim hợp l&yacute;. Th&ocirc;ng tin sản phẩm: - K&iacute;ch thước đ&oacute;ng g&oacute;i sản phẩm: 6.3x6.3x0.5 cm - C&acirc;n nặng sản phẩm: 20gr - Kh&aacute;ch sỉ vui l&ograve;ng inbox</p>', NULL, NULL, 15, '2020-09-25 02:00:48', '2020-10-06 19:42:42'),
(103, 'Mắt thú màu an toàn cho bé', 'mat-thu-mau-an-toan-cho-be', 'uploads/product/1601451432_mat-thu-mau-do-an-toan-cho-be-1.jpg', 'uploads/product/1601451432_mat-thu.jpg', 'uploads/product/1601451432_mat-thu2.jpg', 127, 60000, 0, 3, b'1', b'0', 0, 70, NULL, NULL, NULL, NULL, '<p>Mắt th&uacute; m&agrave;u đỏ an to&agrave;n cho b&eacute; Mắt th&uacute; m&agrave;u đỏ an to&agrave;n cho b&eacute; v&ocirc; c&ugrave;ng tiện lợi, an to&agrave;n. Chất liệu bằng nhựa b&oacute;ng, s&aacute;ng, đẹp. V&igrave; thế gi&uacute;p giữ mắt chắc chắn...</p>', '<p>Mắt th&uacute; m&agrave;u đỏ an to&agrave;n cho b&eacute; v&ocirc; c&ugrave;ng tiện lợi, an to&agrave;n.&nbsp;Chất liệu bằng nhựa&nbsp;b&oacute;ng, s&aacute;ng, đẹp.&nbsp;V&igrave; thế gi&uacute;p giữ mắt chắc chắn tr&ecirc;n sản phẩm m&agrave; k cần đến keo d&aacute;n, tr&aacute;nh c&aacute;c b&eacute; giật ra ngậm nuốt phải. Mắt th&uacute; m&agrave;u đỏ an to&agrave;n cho b&eacute; c&oacute; c&aacute;c k&iacute;ch thước kh&aacute;c nhau:&nbsp;8mm-10mm-12mm-14mm-16mm-18mm-20mm-22mm.</p>\r\n\r\n<p>- Chất liệu: nhựa</p>\r\n\r\n<p>- C&acirc;n nặng sản phẩm: 2gr</p>\r\n\r\n<p>- K&iacute;ch thước đ&oacute;ng g&oacute;i sản phẩm: 1x1x1 cm</p>\r\n\r\n<p>- Kh&aacute;ch sỉ vui l&ograve;ng inbox</p>', NULL, NULL, 15, '2020-09-30 00:37:12', '2020-10-06 19:42:19'),
(104, 'Hộp chuông lục lạc bằng nhôm', 'hop-chuong-luc-lac-bang-nhom', 'uploads/product/1601451922_hop-chuong-luc-lac-bang-nhom-300-cai-4.jpg', 'uploads/product/1601451582_hop-chuong-luc-lac-bang-nhom-300-cai-2.jpg', 'uploads/product/1601451582_hop-chuong-luc-lac-bang-nhom-300-cai-5.jpg', 50, 127000, 0, 4, b'1', b'0', 0, 70, NULL, NULL, NULL, NULL, '<p>Hộp chu&ocirc;ng lục lạc bằng nh&ocirc;m 300 c&aacute;i Chu&ocirc;ng lục lạc bằng nh&ocirc;m 300 c&aacute;i l&agrave; nguy&ecirc;n phụ liệu đang được rất nhiều chị em y&ecirc;u th&iacute;ch. Với sản phẩm n&agrave;y chị em c&oacute; thể l&agrave;m đồ trang...</p>', '<p>Chu&ocirc;ng lục lạc bằng nh&ocirc;m 300 c&aacute;i l&agrave; nguy&ecirc;n phụ liệu đang được rất nhiều chị em y&ecirc;u th&iacute;ch. Với sản phẩm n&agrave;y chị em c&oacute; thể l&agrave;m đồ trang tr&iacute; cho th&uacute; len, b&uacute;p b&ecirc;, ... v&ocirc; c&ugrave;ng tiện lợi. Hộp chu&ocirc;ng lục lạc bằng nh&ocirc;m 300 c&aacute;i với rất nhiều m&agrave;u sắc kh&aacute;c nhau cho chị em lựa chọn.</p>\r\n\r\n<p>- K&iacute;ch thước1 c&aacute;i chu&ocirc;ng: 7mm</p>\r\n\r\n<p>- K&iacute;ch thước đ&oacute;ng g&oacute;i:13x7x3 cm</p>\r\n\r\n<p>- C&acirc;n nặng sản phẩm: 200gr</p>\r\n\r\n<p>- Kh&aacute;ch sỉ vui l&ograve;ng inbox</p>', NULL, NULL, 16, '2020-09-30 00:39:42', '2020-11-25 01:48:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `ra_number` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `name`, `email`, `phone`, `ra_number`, `message`, `product_id`, `user_id`, `created_at`) VALUES
(28, 'Nguyễn Phương Hồng', 'phuonghong190820@gmail.com', 969422308, 5, 'da', 92, NULL, '2020-10-06 13:40:58'),
(29, 'Nguyễn Phương Hồng', 'danglam932@gmail.com', 969422308, 5, 'dâdsasdasdasd', 92, NULL, '2020-10-06 13:51:41'),
(30, 'Nguyễn Phương Hồng', 'hongphuongespeed@gmail.com', 969422308, 3, 'đẹp', 100, NULL, '2020-11-03 11:37:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`) VALUES
(1, 'Manager', ''),
(2, 'Admin', ''),
(3, 'Boss', ''),
(4, 'Orthers', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `address2`, `image`, `phone`, `hotline`, `tax`, `facebook`, `email`, `content`, `introduce`, `created_at`, `updated_at`) VALUES
(1, 'Colo Shop', 'Tầng 6 Số 25 Vũ Ngọc Phan - Láng Hạ - Đống Đa - Hà Nội', 'Q.Long Biên, Hà Nội', 'uploads/setting/1598260180_logo.png', '0986346008', '18001166', '000010', 'https://www.facebook.com/didongthongminh.vn/', 'Coloshop@gmail.com', 'Mỗi tháng chúng tôi đều có những đợt giảm giá dịch vụ và sản phẩm nhằm tri ân khách hàng. \r\nĐể có thể cập nhật kịp thời những đợt giảm giá này, vui lòng liên hệ với chúng tôi.', NULL, NULL, '2020-08-24 21:40:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `avatar`, `is_active`) VALUES
(15, 'Nguyễn Phương Hồng', 'uploads/product/1600329839_logo.png', 'phuonghong190820@gmail.com', '$2y$10$Eyhp2AgbpUzKj3qgu8pTw.NGrc4hdscW.4baw4wYHneQr7BALfoFm', NULL, '2020-09-17 01:03:59', '2021-01-22 23:18:08', 2, NULL, 1),
(16, 'Hồng Anh', 'uploads/product/1604052601_Cửa-hàng-bán-len-ở-Hà-Nội-4.4-min.jpg', 'honganh1908@gmail.com', '$2y$10$3x52YFjxWGit8wP/YxzbFuvDytwBgIvze3l1s/B/ix9jgYzDMnYgm', NULL, '2020-10-30 02:50:33', '2021-01-22 23:14:49', 1, NULL, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `banners_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_slug_index` (`slug`) USING BTREE,
  ADD KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` tinyint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
