-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 21, 2024 lúc 01:24 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `khachsan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(2, 'taido', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(109, 109, 'Phòng Đơn', 500000, 1000000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(110, 110, 'Phòng Bình Dân', 800000, 3200000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(111, 111, 'Phòng Đơn', 500000, 1000000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(112, 112, 'Phòng Vip 2', 1200000, 2400000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(113, 113, 'Phòng Vip 2', 1200000, 2400000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(114, 114, 'Phòng Vip 2', 1200000, 1200000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(115, 115, 'Phòng VIP 1', 1000000, 1000000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(116, 116, 'Phòng Bình Dân', 800000, 1600000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(117, 117, 'Phòng Bình Dân', 800000, 800000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(118, 118, 'Phòng Bình Dân', 800000, 800000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(119, 119, 'Phòng VIP 1', 1000000, 2000000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(120, 120, 'Phòng 2', 100000, 200000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(121, 121, 'Phòng Đơn', 500000, 1000000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(122, 122, 'Phòng Vip 3', 1500000, 3000000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(123, 123, 'Phòng 2', 100000, 100000, NULL, 'Nhật Minh', '0984919127', 'Hà Nội'),
(124, 124, 'Phòng Đơn', 500000, 500000, NULL, 'Nhật Minh', '0984919127', 'Hà Nội'),
(125, 125, 'Phòng Vip 3', 1500000, 1500000, NULL, 'Nhật Minh', '0984919127', 'Hà Nội'),
(126, 126, 'Phòng 2', 100000, 200000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(127, 127, 'Phòng Bình Dân', 800000, 3200000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(128, 128, 'Phòng gia đình', 5000000, 5000000, NULL, 'Tai Do', '0973986635', 'Hà Nội'),
(129, 129, 'Phòng gia đình', 5000000, 5000000, NULL, 'Tai Do', '0973986635', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'Đã Đặt',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'Đã Đặt',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(109, 9, 8, '2023-12-22', '2023-12-24', 0, 0, 'Đã Huỷ', 'ORD_93079457', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-21 23:24:50'),
(110, 9, 3, '2023-12-22', '2023-12-26', 1, NULL, 'Đã Thanh Toán', 'ORD_95697329', NULL, 3200000, 'TXN_SUCCESS', NULL, NULL, '2023-12-21 23:46:04'),
(111, 9, 8, '2023-12-24', '2023-12-26', 1, NULL, 'Đã Thanh Toán', 'ORD_96308004', NULL, 1000000, 'TXN_SUCCESS', NULL, 1, '2023-12-21 23:54:07'),
(112, 9, 5, '2023-12-23', '2023-12-25', 1, NULL, 'Đã Thanh Toán', 'ORD_95483302', NULL, 2400000, 'TXN_SUCCESS', NULL, NULL, '2023-12-21 23:54:33'),
(113, 9, 5, '2023-12-28', '2023-12-30', 1, NULL, 'Đã Thanh Toán', 'ORD_94980266', NULL, 2400000, 'TXN_SUCCESS', NULL, NULL, '2023-12-21 23:57:20'),
(114, 9, 5, '2023-12-23', '2023-12-24', 0, 0, 'Đã Huỷ', 'ORD_98586262', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-22 00:07:19'),
(115, 9, 4, '2023-12-22', '2023-12-23', 1, NULL, 'Đã Thanh Toán', 'ORD_99999105', NULL, 1000000, 'TXN_SUCCESS', NULL, NULL, '2023-12-22 00:32:02'),
(116, 9, 3, '2023-12-28', '2023-12-30', 0, NULL, 'Đã Đặt', 'ORD_99408300', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-27 23:39:10'),
(117, 9, 3, '2023-12-29', '2023-12-30', 0, NULL, 'Đã Đặt', 'ORD_95655517', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-27 23:40:54'),
(118, 9, 3, '2023-12-28', '2023-12-29', 0, NULL, 'Đã Đặt', 'ORD_97600532', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-27 23:41:32'),
(119, 9, 4, '2023-12-28', '2023-12-30', 0, NULL, 'Đã Đặt', 'ORD_96802778', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-27 23:42:29'),
(120, 9, 9, '2023-12-28', '2023-12-30', 0, NULL, 'Đã Đặt', 'ORD_91611714', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-27 23:43:30'),
(121, 9, 8, '2023-12-28', '2023-12-30', 1, NULL, 'Đã Thanh Toán', 'ORD_97898998', NULL, 1000000, 'TXN_SUCCESS', NULL, NULL, '2023-12-27 23:44:47'),
(122, 9, 6, '2023-12-30', '2024-01-01', 0, NULL, 'Đã Xác Nhận Đặt Phòng', 'ORD_95746499', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-28 17:23:22'),
(123, 11, 9, '2024-01-03', '2024-01-04', 1, NULL, 'Đã Thanh Toán', 'ORD_113609303', NULL, 100000, 'TXN_SUCCESS', NULL, 1, '2023-12-28 21:10:46'),
(124, 11, 8, '2023-12-28', '2023-12-29', 1, NULL, 'Đã Thanh Toán', 'ORD_111357681', NULL, 500000, 'TXN_SUCCESS', NULL, 1, '2023-12-28 21:13:39'),
(125, 11, 6, '2023-12-28', '2023-12-29', 1, NULL, 'Đã Thanh Toán', 'ORD_113334380', NULL, 1500000, 'TXN_SUCCESS', NULL, 1, '2023-12-28 21:13:59'),
(126, 9, 9, '2023-12-31', '2024-01-02', 0, NULL, 'Đã Xác Nhận Đặt Phòng', 'ORD_92906288', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-29 10:52:29'),
(127, 9, 3, '2023-12-30', '2024-01-03', 0, 0, 'Đã Huỷ', 'ORD_9915622', NULL, 0, 'Đã Đặt', NULL, NULL, '2023-12-30 10:36:10'),
(128, 9, 10, '2024-01-02', '2024-01-03', 0, NULL, 'Đã Đặt', 'ORD_99545374', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-01-02 18:13:44'),
(129, 9, 10, '2024-01-04', '2024-01-05', 0, NULL, 'Đã Đặt', 'ORD_97685887', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-01-04 16:13:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(9, 'IMG_55677.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, '100 Tây Sơn', 'https://www.google.com/maps/place/Trường Đại học Thủy l�', 84974562765, 84974562736, 'taido0220@gmail.com', 'https://www.facebook.com/', 'https://www.facebook.com/', '', 'https://maps.inmapz.com/truong-dai-hoc-thuy-loi-175-tay-son-mall-615334015');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', 'Wifi trong khách sạn cho phép khách hàng kết nối internet không dây tốc độ cao, có thể truy cập vào các trang web yêu thích của họ, xem phim, nghe nhạc, tải xuống các tài liệu, và liên lạc với người thân và bạn bè. '),
(14, 'IMG_49949.svg', 'Điều Hoà', ' Khách hàng có thể dễ dàng điều chỉnh nhiệt độ và các tính năng khác trên điều hòa để đáp ứng các nhu cầu của họ và tạo ra một không gian nghỉ ngơi lý tưởng.'),
(15, 'IMG_41622.svg', 'Tivi', 'TV cung cấp cho khách hàng nhiều kênh truyền hình đa dạng và phong phú, bao gồm cả các kênh quốc tế và địa phương, các kênh phim, chương trình giải trí, tin tức, thể thao và giáo dục'),
(17, 'IMG_47816.svg', 'Spa', 'Tại spa, khách hàng có thể trải nghiệm các liệu pháp chăm sóc da, tắm thủy lực, massage và nhiều dịch vụ khác.'),
(18, 'IMG_96423.svg', 'Máy Sưởi', 'Máy sưởi phòng được thiết kế để giữ cho phòng ấm áp và thoải mái trong suốt mùa đông.'),
(19, 'IMG_27079.svg', 'Nóng Lạnh', 'Được trang bị các tính năng và thiết bị hiện đại như màn hình LCD hiển thị nhiệt độ, điều khiển từ xa, cảm biến nhiệt độ và chức năng tự động điều chỉnh nhiệt độ nước.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(18, 'Phòng Ngủ'),
(19, 'Ban Công'),
(20, 'Phòng Bếp'),
(21, 'Ghế sofa'),
(23, 'Phòng khách');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(17, 110, 5, 9, 5, 'tuyệt', 1, '2023-12-22 00:01:51'),
(18, 123, 9, 11, 5, 'phòng tiện nghi', 1, '2023-12-28 21:12:57'),
(19, 124, 8, 11, 4, 'afgh', 1, '2023-12-28 21:14:56'),
(20, 125, 6, 11, 5, 'kkkkkkkkkk', 1, '2023-12-28 21:16:03'),
(21, 111, 8, 9, 5, 'Khách sạn nhân viên phục vụ rất thoải mái', 1, '2023-12-30 16:09:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(3, 'Phòng Bình Dân', 30, 800000, 4, 5, 3, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo và 2 giường ngủ thoải mái.', 1, 0),
(4, 'Phòng VIP 1', 40, 1000000, 3, 5, 5, 'Phòng gồm 2 giường, có điều hoà, nóng lạnh, không gian thoáng mát', 1, 0),
(5, 'Phòng VIP 2', 40, 1200000, 3, 8, 6, 'Phòng có 3 giường thoải mái, các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo .', 1, 0),
(6, 'Phòng VIP 3', 50, 1500000, 7, 9, 10, 'Phòng có 3 giường, có các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng và tủ quần áo .', 1, 0),
(8, 'Phòng Đơn', 20, 500000, 2, 2, 2, 'Phòng có 1 giường, rộng rãi thoáng mát', 1, 0),
(9, 'Phòng đôi', 20, 100000, 5, 2, 1, 'Phòng gồm 2 giường, có điều hoà, nóng lạnh, không gian thoáng mát', 1, 0),
(10, 'Phòng gia đình', 100, 5000000, 8, 10, 4, 'Phòng gồm 5 giường ngủ, có điều hoà, nóng lạnh tiện nghi, không gian rộng thoáng mát', 1, 0),
(11, 'Phòng lớn', 60, 600000, 5, 5, 5, 'Phòng có 3 giường lớn, không gian thoáng mát.', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(77, 8, 13),
(85, 3, 13),
(86, 3, 14),
(87, 3, 15),
(88, 3, 17),
(89, 9, 13),
(91, 10, 13),
(92, 11, 13),
(93, 11, 14),
(94, 11, 15),
(95, 11, 18),
(96, 11, 19),
(111, 4, 13),
(112, 4, 14),
(113, 4, 19),
(114, 5, 13),
(115, 5, 14),
(116, 5, 19),
(117, 6, 13),
(118, 6, 14),
(119, 6, 15),
(120, 6, 18),
(121, 6, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(56, 8, 18),
(63, 3, 18),
(64, 3, 19),
(65, 3, 20),
(66, 9, 18),
(68, 10, 18),
(69, 10, 20),
(70, 10, 21),
(71, 11, 18),
(72, 11, 19),
(73, 11, 20),
(74, 11, 21),
(75, 11, 23),
(91, 4, 18),
(92, 4, 19),
(93, 4, 20),
(94, 4, 21),
(95, 5, 18),
(96, 5, 19),
(97, 5, 21),
(98, 6, 18),
(99, 6, 19),
(100, 6, 20),
(101, 6, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(26, 3, 'IMG_95263.png', 1),
(27, 3, 'IMG_67237.png', 0),
(28, 4, 'IMG_45742.png', 0),
(29, 4, 'IMG_25983.png', 1),
(30, 5, 'IMG_61875.png', 1),
(31, 5, 'IMG_48729.png', 0),
(32, 6, 'IMG_96889.png', 0),
(33, 6, 'IMG_82238.jpg', 1),
(35, 9, 'IMG_36019.png', 1),
(36, 8, 'IMG_16199.jpg', 1),
(37, 10, 'IMG_77354.jpg', 1),
(38, 11, 'IMG_86025.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Sunny Hotel', 'Khách sạn Sunny Hotel là một trong những khách sạn hàng đầu tại Việt Nam, được thiết kế theo phong cách hiện đại và đầy đủ tiện nghi, với hệ thống phòng nghỉ sang trọng, nhà hàng, quầy bar, trung tâm thể dục và spa. Khách sạn có hơn 50 tầng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(14, 'Đỗ Mạnh Tài', 'IMG_31115.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(9, 'Tai Do\r\n', 'Taido@gmail.com', 'Hà Nội', '0973986635', 29, '2023-04-07', 'IMG_26096.jpg', '$2y$10$jJ1ecibawp8lN2t7MOIe5.R2yz49m0hwfUW2KPz3XF/DmwDphCAOC', 1, NULL, NULL, 1, '2023-04-22 14:32:35'),
(10, 'Tai Do 2', 'Taido2@gmail.com', 'Nam Định\r\n', '0888131071', 18, '2023-12-12', 'IMG_15689.jpeg', '$2y$10$VKXJmosMmMcIs4xd1vnEIOd1dc8vpdfP3DjJOcPFKfLoqiEZwT.om', 1, NULL, NULL, 1, '2023-12-12 14:58:38'),
(11, 'Nhật Minh', 'minh12@gmail.com', 'Hà Nội', '0984919127', 29, '2023-12-12', '', '1', 1, NULL, NULL, 1, '2023-12-28 21:06:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(1, 'Tai Do', 'taido@gmail.com', 'tốt', 'thoải mái', '2023-12-21 18:19:09', 1),
(16, 'Tai Do', 'taido2@gmail.com', 'Rất tốt', 'Hài lòng', '2023-12-22 00:00:18', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Chỉ mục cho bảng `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Chỉ mục cho bảng `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Chỉ mục cho bảng `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Các ràng buộc cho bảng `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Các ràng buộc cho bảng `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Các ràng buộc cho bảng `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
