-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 10, 2018 lúc 05:10 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dongho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `mota` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `xuất xứ` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `gia`, `mota`, `soluong`, `hinhanh`, `xuất xứ`) VALUES
(1, 'SAK00005D0', 9990000, 'ĐỒng hồ chính hãng Japan', 100, 'http://donghoduyanh.com/upload/images/%C4%90%E1%BB%93ng%20h%E1%BB%93%20Orient%20SAK00005D0.jpg', 'Nhật Bản'),
(2, 'OG1929-24AGSR-T', 6970000, 'Đồng hồ chính hãng Thụy Sỹ', 150, 'https://www.xwatch.vn/wp-content/uploads/2016/12/og1929-24agsr-t.jpg', 'Thụy Sỹ'),
(3, 'NH8363-14H', 5590000, 'Đồng hồ chính hãng Japan', 120, 'https://www.xwatch.vn/wp-content/uploads/2017/09/nh8363-14h-ava.jpg', 'Nhật Bản'),
(4, 'OG1929-24AGK-T', 10230000, 'Đồng hồ chính hãng Thụy Sĩ', 300, 'https://donghothanhtung.com/wp-content/uploads/2017/08/Dong-ho-Ogival-OG1929-24AGK-T-chinh-hang-so1-750x905.jpg', 'Thụy Sĩ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isadmin` tinyint(4) DEFAULT NULL COMMENT '1: admin, 0: member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `isadmin`) VALUES
(1, 'admin', '123', 'phamthithom189@gmail.com', '01629195939', 1),
(2, 'lele', '123', 'lele@gmail.com', '0935872634', 0),
(3, 'ngoc', '123', 'ngoc5597@gmail.com', '0936283174', 0),
(4, 'duyen', '123', 'duyenvu.hvnh@gmail.com', '0971109397', 0),
(5, 'lan', '123', 'lanlan@gmail.com', '0935283489', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
