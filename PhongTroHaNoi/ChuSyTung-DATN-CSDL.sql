-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 13, 2019 lúc 04:16 AM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phongtrohn`
--
CREATE DATABASE IF NOT EXISTS `phongtrohn` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `phongtrohn`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Phòng trọ cho thuê', 'phong-tro-cho-thue', NULL, NULL),
(2, 'Ở ghép', 'o-ghep', NULL, NULL),
(3, 'Nhà nguyên căn', 'nha-nguyen-can', NULL, NULL),
(4, 'Chung cư', 'chung-cu', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `content`, `user_id`, `room_id`, `created_at`) VALUES
(1, 'Phòng sạch sẽ, nhưng lối vào hơi nhỏ ạ!', 7, 28, '2019-01-07 05:11:10'),
(2, 'Hay bị mất nước lắm ạ', 11, 28, '2018-12-31 20:00:00'),
(16, '1', 5, 21, '2019-01-09 10:48:14'),
(17, '2', 5, 21, '2019-01-09 10:48:17'),
(18, '3', 5, 21, '2019-01-09 10:48:21'),
(19, 'Chủ nhà rất dễ tính, phòng cũng sạch nữa ạ!', 12, 28, '2019-01-12 19:18:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Quận Ba Đình', 'quan-ba-dinh', NULL, NULL),
(2, 'Quận Hoàn Kiêm', 'quan-hoan-kiem', NULL, NULL),
(3, 'Quận Hai Bà Trưng', 'quan-hai-ba-trung', NULL, NULL),
(4, 'Quận Đống Đa', 'quan-dong-da', NULL, NULL),
(5, 'Quận Tây Hồ', 'quan-tay-ho', NULL, NULL),
(6, 'Quận Cầu Giấy', 'quan-cau-giay', NULL, NULL),
(7, 'Quận Bắc Từ Liêm', 'quan-bac-tu-liem', NULL, NULL),
(8, 'Quận Nam Từ Liêm', 'quan-nam-tu-liem', NULL, NULL),
(9, 'Quận Thanh Xuân', 'quan-thanh-xuan', NULL, NULL),
(10, 'Quận Hoàng Mai', 'quan-hoang-mai', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_11_083541_create_table_motel_rooms', 1),
(4, '2018_03_11_085624_create_table_districts', 1),
(5, '2018_03_11_085744_create_table_categories', 1),
(6, '2018_04_22_122641_add_column__status_for_user', 1),
(7, '2018_04_22_152143_add_ondelete_cascade_for_motelroom', 1),
(8, '2018_05_06_030849_add_col_phone_for__motelroom_table', 1),
(9, '2018_05_12_063610_add_column_approve_for_motelroom', 1),
(10, '2018_05_13_064120_add_table_report', 1),
(11, '2018_05_19_033745_add_column_slug_table_motelroom', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `motelrooms`
--

CREATE TABLE `motelrooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `count_view` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latlng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `utilities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approve` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `motelrooms`
--

INSERT INTO `motelrooms` (`id`, `title`, `description`, `price`, `area`, `count_view`, `address`, `latlng`, `images`, `user_id`, `category_id`, `district_id`, `utilities`, `created_at`, `updated_at`, `phone`, `approve`, `slug`) VALUES
(21, 'Phòng trọ 20m2 Cầu Giấy cho nữ thuê', 'mô tả ngắn', 1800000, 20, 94, '47 Đường Cầu Giấy, Quan Hoa, Cầu Giấy, Hà Nội, Việt Nam', '{\"0\":\"21.035893\",\"1\":\"105.79607099999998\"}', '{\"0\":\"phongtro-yHeJB-20181101092358-ce59_wm.jpg\"}', 5, 1, 6, '{\"0\":\"T\\u1ee7 + gi\\u01b0\\u1eddng\",\"1\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\"}', '2018-12-06 09:16:11', '2019-01-12 00:04:04', '0915016124', 1, 'phong-tro-20m2-cau-giay-cho-nu-thue'),
(23, 'Cho thuê nhà 5 tầng 1 tum ưu tiên người nước ngoài, hộ gia đình, có chỗ để xe hơi', 'Gia đình mình đang cần cho thuê nguyên căn nhà tại ngõ 575 kim mãnhà cho xe vào tận nhà , mọi thứ đầy đủ điều hòa, nước nóng, bếpkhách chỉ xách vali đến là ởtấng 1 để xe oto , bếptầng 2 phòng khách + phòng tắm , xông hơitầng 3, 4,mỗi tầng 2 phòng tầng 5 gồm 1 phòng và 1 phòng thờưu tiên cho người nước ngoài ở, hộ gia đình, nhà rất đẹp lên ở cực kỳ tiện lợicách 50m đến hồ Ngọc Khánh có thể đi bộ ra cf và chạy bộ quanh hồcách đường đê la thành 15mnhà nằm trong khu an ninh tốt lên khách thuê hoàn toàn yên tâm\r\ncall 0986267896', 12000000, 58, 9, '575 Kim Mã, Ngọc Khánh, Ba Đình, Hà Nội, Việt Nam', '{\"0\":\"21.0294055\",\"1\":\"105.8092848\"}', '{\"0\":\"phongtro-AGShl-1025303-201812190026_nh___kim_m___2.jpg\"}', 12, 3, 1, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"V\\u1ec7 sinh ri\\u00eang\",\"3\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"4\":\"Wifi mi\\u1ec5n ph\\u00ed\"}', '2018-12-16 07:52:44', '2019-01-11 23:34:47', '0986267896', 1, 'cho-thue-nha-5-tang-1-tum-uu-tien-nguoi-nuoc-ngoai-ho-gia-dinh-co-cho-de-xe-hoi'),
(24, 'CHO THUÊ PHÒNG TRỌ KHÉP KÍN Ở CỐNG VỊ, BA ĐÌNH', 'Nhouse 12 Đào Tấn , Ba Đình có 1 phòng trống , có thể qa ở luôn : \r\n+ Phòng tầng 3\r\nFull nội thất gồm : tủ quần áo , điều hoà,tủ lạnh , sàn gỗ, phòng đẹp , kệ để đồ ,Quạt trần ,( nóng lạnh + máy giặt dùng chung) \r\nGiá : 3tr/ tháng ( đặt cọc 1thag đóng 1 tháng )\r\n+ Nếu đóng 3 tháng sẽ có GIÁ YÊU \r\nWC CHUNG ĐẸP CÓ Nóng Lạnh, Nước cực khỏe+ máy tăng áp.\r\nTẦNG 1 ĐỂ XE thoải mái, + Sân rộng, BẾP CHUNG, Camera 24/24, Máy Giặt.\r\nTầng 4: Phơi đồ\r\nĐiện, nước hạt rẻ, hàng tuần có người dọn Vệ Sinh chung + mạng Cáp Quang \r\nKhu dân trí cao, gần lotte, time thoải mái ko ở vs chủ. oto cách nhà 2 bước chân\r\nKO Ở CHUNG CHỦ , CHÌA KHOÁ ĐI LẠI TỰ DO THOẢI MÁI', 1500000, 14, 14, '12 Đào Tấn, Cống Vị, Ba Đình, Hà Nội, Việt Nam', '{\"0\":\"21.032585\",\"1\":\"105.80918539999993\"}', '{\"0\":\"phongtro-2YzNq-1025468-cho-thue-nha-moi-sua-tran-phu-dien-bien-phu-25m2-3-5t-4.jpg\"}', 12, 1, 1, '{\"0\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\"}', '2018-12-16 07:57:03', '2019-01-12 02:47:03', '0818781995', 1, 'cho-thue-phong-tro-khep-kin-o-cong-vi-ba-dinh'),
(25, 'CHO THUÊ CĂN HỘ DỊCH VỤ VIEW HỒ TÂY, LẠC LONG QUÂN, TÂY HỒ', 'Cho thuê căn hộ dịch vụ tại:\r\nLotus Inn 2: Số 169 Vệ Hồ, Hà Nội nhìn thẳng ra hồ Tây. Với diện tích từ 36m2 - 40m2. Thẳng Trích Sài đến Vệ Hồ\r\nTiện nghi đầy đủ với tất cả các loại phòng: Tivi, tủ lạnh, điều hòa, nóng lạnh, máy giặt, máy sấy, giường đệm, tủ, bàn ghế làm việc, lò vi sóng, các tiện nghi nhà bếp, bồn tắm, vòi hoa sen... Với thiết kế sang trọng, sạch sẽ, hiện đại. Chỉ việc xách vali vào ở.\r\n\r\nMiễn phí internet tốc độ cao, truyền hình cáp nhiều kênh đa dạng, phong phú, nước sinh hoạt.\r\n\r\nMiễn phí dịch vụ dọn phòng 3 lần/tuần, thay chăn ga, bảo dưỡng, bảo trì đồ đạc trong phòng.\r\n\r\nSàn gỗ rất mát mùa hè, có khu thư giãn rộng, thoáng mát, view nhìn ra hồ. Không gian tập thể dục thể thao với nhiều máy tập ngay công viên ven hồ.\r\n\r\nBảo vệ 24/24, có khu để xe miễn phí, an ninh tốt, có nhiều người nước ngoài nên môi trường rất thân thiện, an toàn.', 10000000, 36, 5, '169 Vệ Hồ, Xuân La, Tây Hồ, Hà Nội, Việt Nam', '{\"0\":\"21.0648088\",\"1\":\"105.81070599999998\"}', '{\"0\":\"phongtro-gxH5Q-20180315101553-e23b_wm.jpg\"}', 10, 4, 5, '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\"}', '2018-12-16 08:02:14', '2019-01-09 18:38:22', '02462955377', 1, 'cho-thue-can-ho-dich-vu-view-ho-tay-lac-long-quan-tay-ho'),
(26, 'CHO THUÊ CĂN HỘ DỊCH VỤ CAO CẤP 3PN VIEW HỒ TÂY TẠI 72 XUÂN DIỆU, TÂY HỒ, HN', 'Tòa nhà tọa lạc tại vị trí đắc địa nhất ở khu vực Hồ Tây - Khu vực sinh sống của cộng đồng người nước ngoài tại Việt Nam.\r\n- Diện tích 80m2, bao gồm 01 phòng khách rộng rãi, 03 phòng ngủ ấm áp, 2 nhà vệ sinh, 1 phòng bếp hiện đại với đầy đủ dụng cụ: Lò vi sóng, ấm siêu tốc, lò nướng bánh, máy rửa bát, phòng tắm với bồn tắm, bình nóng lạnh, máy sấy tóc.\r\n- Nội thất đầy đủ: TV (truyền hình cáp), ghế sofa, tủ lạnh, điều hòa không khí 2 chiều.\r\n+ Két sắt an toàn.\r\n+ Ban công rộng rãi, thoáng mát với nhiều cây xanh.\r\n+ Thang máy.\r\n+ Nơi đỗ xe máy.\r\n- Diện tích sàn 80m2, toàn bộ mặt tiền view hồ Tây cực đẹp.\r\n- Xung quanh khu vực đầy đủ tiện ích như gym, trường học, TTTM,..', 5400000, 80, 0, '72 Xuân Diệu, Tứ Liên, Tây Hồ, Hà Nội, Việt Nam', '{\"0\":\"21.0623274\",\"1\":\"105.83047980000003\"}', '{\"0\":\"phongtro-24YCD-20181210143536-f5f8_wm.jpg\"}', 10, 3, 5, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"3\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2018-12-16 08:04:27', '2018-12-16 08:04:32', '0355011606', 1, 'cho-thue-can-ho-dich-vu-cao-cap-3pn-view-ho-tay-tai-72-xuan-dieu-tay-ho-hn'),
(27, 'Cho thuê phòng trọ ở ngõ 32 Cầu Giấy', 'Mô tả ngắn cho phòng trọ', 1800000, 22, 11, '32 Đường Cầu Giấy, Láng Thượng, Đống Đa, Hà Nội, Việt Nam', '{\"0\":\"21.02872\",\"1\":\"105.802956\"}', '{\"0\":\"phongtro-5bKu4-20181005121134-1e1d_wm.jpg\"}', 11, 1, 6, '{\"0\":\"T\\u1ee7 + gi\\u01b0\\u1eddng\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2018-12-16 21:24:55', '2019-01-11 09:14:09', '0987125166', 1, 'cho-thue-phong-tro-o-ngo-32-cau-giay'),
(28, 'Phòng trọ 20m2 cho nữ thuê ở 107 Cầu Giấy', 'Chính chủ có nhà mới xây 5 tầng cần cho thuê 16m2 giá từ 2,5 triệu \r\n\r\nĐịa chỉ: Số 5, Tổ 23, Ngách 337/80, Dịch Vọng, Cầu Giấy. \r\n\r\nVị trí: Gần chợ, chung cư Dịch Vọng, công viên Cầu Giấy, các trường mầm non, trường học, đại học Quốc Gia, học viện Báo Chí Tuyên Truyền, khu công sở Duy Tân, trung tâm thương mại IPH Xuân Thủy, Keangnam, The Garden... \r\n\r\nCăn hộ mới xây có cửa sổ thoáng mát, có bình nóng lạnh, kệ bếp \r\n* Diện tích: 162. Giá: 2,5 tr - 2,7 tr/tháng. \r\n- Tầng 1 rộng rãi, để xe thoải mái. \r\n- Tầng 6 phơi đồ. \r\n- Điện: 3,500/số, nước: 75,000/người. \r\n- An ninh tốt, giờ giấc thoải mái. \r\n- Đóng tiền 3 tháng/lần, đặt cọc 1 tháng. \r\n- Phù hợp người đi học, đi làm hoặc đôi vợ chồng trẻ. ', 2000000, 20, 213, '107 Đường Cầu Giấy, Quan Hoa, Cầu Giấy, Hà Nội, Việt Nam', '{\"0\":\"21.031462\",\"1\":\"105.79983100000004\"}', '{\"0\":\"phongtro-1vVNs-20181210143536-f5f8_wm.jpg\"}', 12, 1, 6, '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"C\\u00f3 g\\u00e1c l\\u1eedng\"}', '2019-01-01 21:17:23', '2019-01-12 19:21:16', '0987125166', 1, 'phong-tro-20m2-cho-nu-thue-o-107-cau-giay'),
(29, 'Phòng trọ cho thuê 25m2 ở Xuân La, Tây Hồ', 'Còn 4 phòng trọ 25m2 cần cho thuê  ở số 30 Xuân La, Tây Hồ. Khu trọ giờ giấc tự do, không chung chủ, ưu tiên sinh viên đại học, cao đẳng.\r\nLH: 0976080088 - Mrs Hoa, gọi ngoài giờ hành chính', 1800000, 25, 1, '30 Xuân La, Tây Hồ, Hà Nội, Việt Nam', '{\"0\":\"21.066645\",\"1\":\"105.8066599\"}', '{\"0\":\"phongtro-VlWh4-20180315101553-e23b_wm.jpg\"}', 7, 1, 5, '{\"0\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"1\":\"Chung ch\\u1ee7\"}', '2019-01-05 09:06:49', '2019-01-09 18:33:03', '0976080088', 1, 'phong-tro-cho-thue-25m2-o-xuan-la-tay-ho'),
(30, 'Phòng giá rẻ 1tr - 1tr2/tháng ở Mai dịch', 'Mô tả', 1500000, 15, 2, '26 Phố Mai Dịch, Mai Dịch, Cầu Giấy, Hà Nội, Việt Nam', '{\"0\":\"21.0465\",\"1\":\"105.77579289999994\"}', '{\"0\":\"phongtro-k3Zyr-1025468-cho-thue-nha-moi-sua-tran-phu-dien-bien-phu-25m2-3-5t-4.jpg\"}', 5, 1, 6, '{\"0\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"1\":\"Chung ch\\u1ee7\",\"2\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2019-01-09 10:33:50', '2019-01-12 19:54:59', '0987125167', 1, 'phong-gia-re-1tr-1tr2-thang-o-mai-dich'),
(32, 'Cho thuê chung cư 70m2 ở Tây Hồ', 'mô tả', 7000000, 70, 1, '20B Xuân La, Tây Hồ, Hà Nội, Việt Nam', '{\"0\":\"21.06318875583313\",\"1\":\"105.80258902636717\"}', '{\"0\":\"phongtro-YlGrD-20180315101603-9bd2_wm.jpg\"}', 5, 4, 5, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Chung ch\\u1ee7\",\"2\":\"V\\u1ec7 sinh chung\"}', '2019-01-09 11:07:09', '2019-01-09 11:08:10', '0987125166', 0, 'cho-thue-chung-cu-70m2-o-tay-ho'),
(33, 'CHO THUÊ CĂN HỘ CHUNG CƯ 1203 CHUNG CƯ 17T10 TRUNG HÒA NHÂN CHÍNH, HÀ NỘI', 'Cho thuê căn hộ chung cư 1203 chung cư 17T10 Trung Hòa Nhân Chính Hà Nội.\r\nDiện tích: 65m2.\r\nNhà đẹp sạch sẽ thoáng mát, nội thất đẹp.\r\nĐã sắm full nội thất như giường tủ, bàn ghế, tivi, tủ lạnh máy giặt, điều hòa, đồ điện tử sắm mới 100%.\r\nGiá: 9 - 9,5 triệu/ tháng.\r\nLiên hệ: Anh Cường 0913500935', 9000000, 65, 1, '34t Hoàng Đạo Thúy, Trung Hoà, Cầu Giấy, Hà Nội, Việt Nam', '{\"0\":\"21.008473219143216\",\"1\":\"105.80322782066628\"}', '{\"0\":\"phongtro-0phdL-20190104133448-ae13.jpg\"}', 12, 1, 6, '{\"0\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"1\":\"Wifi mi\\u1ec5n ph\\u00ed\"}', '2019-01-10 06:50:12', '2019-01-10 06:50:50', '0165235125', 1, 'cho-thue-can-ho-chung-cu-1203-chung-cu-17t10-trung-hoa-nhan-chinh-ha-noi'),
(36, 'CHO THUÊ CĂN HỘ CHUNG CƯ 66m2 TRUNG HÒA NHÂN CHÍNH, HÀ NỘI', 'Cho thuê căn hộ chung cư 1203 chung cư 17T10 Trung Hòa Nhân Chính Hà Nội.\r\nDiện tích: 65m2.\r\nNhà đẹp sạch sẽ thoáng mát, nội thất đẹp.\r\nĐã sắm full nội thất như giường tủ, bàn ghế, tivi, tủ lạnh máy giặt, điều hòa, đồ điện tử sắm mới 100%.\r\nGiá: 9 - 9,5 triệu/ tháng.\r\nLiên hệ: Anh Cường 0913500935', 10000000, 66, 7, '23 Trung Kính, Trung Hoà, Cầu Giấy, Hà Nội, Việt Nam', '{\"0\":\"21.01352102770914\",\"1\":\"105.80121573535155\"}', '{\"0\":\"phongtro-HXcr5-20190104133448-9895.jpg\"}', 12, 4, 6, '{\"0\":\"T\\u1ee7 + gi\\u01b0\\u1eddng\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2019-01-10 07:08:26', '2019-01-10 07:19:11', '0987125166', 1, 'cho-thue-can-ho-chung-cu-66m2-trung-hoa-nhan-chinh-ha-noi'),
(37, 'Chính chủ cho thuê phòng khép kín nhà mới đẹp, số 14C ngõ 58 Đào Tấn, Ba Đình, Hà Nội', 'Nhà 7 tầng, mới xây, chính chủ, có thang máy, tầng trệt có nhà để xe rộng rãi, an ninh đảm bảo, có bảo vệ tòa nhà 24/7, có camera an ninh ở ngõ và ở từng tầng, khu nhà yên tĩnh, dân trí cao (khu Ngoại Giao Đoàn).\r\nI) Phòng ở từ 25 - 27m2, có nhà vệ sinh khép kín trong phòng, điều hòa, nóng lạnh, phơi riêng biệt.\r\nII) Có bàn bếp, tủ bếp, chậu rửa, thiết kế đẹp, hợp vệ sinh và an toàn.\r\nIII) Có wifi riêng từng phòng, truyền hình cáp, đồng hồ đo điện nước riêng.\r\nIV) Có người dọn vệ sinh hành lang, đổ rác cho từng tầng.\r\nÔ tô vào tận cổng nhà, rất thuận tiện chuyển đồ tới, gần bãi đỗ xe, chợ đầu ngõ, trường mẫu giáo, tiểu học, THCS Thăng Long, Cầu Giấy, bệnh viện 354, trung tâm thương mại lớn: Vincom Nguyễn Chí Thanh, Lotte, gần công viên Thủ Lệ; Gần các trường đại học lớn như Ngoại Thương, Luật, Giao Thông Vận Tải; Gần các ngân hàng và khu văn phòng lớn. Giao thông thuận tiện, không tắc đường, không ngập lụt.\r\nPhù hợp với người mới đi làm và hộ gia đình, sinh viên.\r\nĐóng tiền 1 tháng, cọc 1 tháng, giá thuê từ 3,5 triệu đồng 1 tháng.\r\nĐịa chỉ: Số 14C, ngách 7, ngõ 58, phố Đào Tấn, Ba Đình, Hà Nội.', 3500000, 22, 0, '12 Đào Tấn, Cống Vị, Ba Đình, Hà Nội, Việt Nam', '{\"0\":\"21.03247649999999\",\"1\":\"105.80915449999998\"}', '{\"0\":\"phongtro-wGmTe-201611102625_20160107_151037.jpg\"}', 15, 1, 1, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\"}', '2019-01-10 07:49:14', '2019-01-10 07:49:14', '0352 830 279', 0, 'chinh-chu-cho-thue-phong-khep-kin-nha-moi-dep-so-14c-ngo-58-dao-tan-ba-dinh-ha-noi'),
(38, 'Phòng riêng 18m2 cho nữ thuê, giá rẻ 1tr600/tháng', 'Nhà riêng 05 tầng, mặt tiền đường ô tô quận Ba Đình, đi phố Ngọc Hà và Đội Cấn đều được, vị trí rất trung tâm, xung quanh rất nhiều siêu thị, quán ăn, quán cà phê, trong khu an ninh lịch sự, nhiều Apartment cho người nước ngoài thuê, cần cho thuê 01 phòng tại T5. \r\nDiện tích phòng 18m2 bàn bếp và bồn nấu ăn riêng, giờ tự do, giao chìa khoá, tầng 1 và tầng 2, tầng 3, làm văn phòng định giá của ngân hàng và dịch vụ spa nên cực yên tĩnh và an ninh tốt, view ban công phòng đẹp trông ra hồ điều hoà thả cá rộng và mát, chủ nhà tốt bụng và thân thiện, không phải qua dịch vụ nên không phải mất bất kỳ khoản chi phí nào, miễn phí wifi internet, xe máy để được dưới tầng 01.\r\nGiá thuê siêu rẻ so với nhà trung tâm quận Ba đình: 1tr600 ngàn/tháng!', 1600000, 18, 0, '108E2 C2 Thành Công, Thành Công, Ba Đình, Hà Nội, Việt Nam', '{\"0\":\"21.02217401637351\",\"1\":\"105.81391867724608\"}', '{\"0\":\"phongtro-Lytqn-20161205142822-6c9b.jpg\"}', 15, 1, 1, '{\"0\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"1\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\"}', '2019-01-10 07:52:54', '2019-01-10 07:52:54', '097 222 1820', 0, 'phong-rieng-18m2-cho-nu-thue-gia-re-1tr600-tha-ng'),
(39, 'CHO THUÊ CĂN HỘ CHUNG CƯ 60m2 TRUNG HÒA NHÂN CHÍNH, HÀ NỘI', 'Cho thuê căn hộ chung cư 22 Ngõ 30 Nguyễn Thị Định, Trung Hoà, Cầu Giấy, Hà Nội, Việt Nam\r\nDiện tích: 60m2.\r\nNhà đẹp sạch sẽ thoáng mát, nội thất đẹp.\r\nĐã sắm full nội thất như giường tủ, bàn ghế, tivi, tủ lạnh máy giặt, điều hòa, đồ điện tử sắm mới 100%.\r\nGiá: 7 triệu/ tháng.\r\nLiên hệ: Anh Cường 0987 125 166', 7000000, 60, 0, '22 Ngõ 30 Nguyễn Thị Định, Trung Hoà, Cầu Giấy, Hà Nội, Việt Nam', '{\"0\":\"21.011918567304868\",\"1\":\"105.80327567187499\"}', '{\"0\":\"phongtro-J8fC9-20190104133448-ae13.jpg\"}', 5, 4, 6, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Chung ch\\u1ee7\"}', '2019-01-11 09:09:18', '2019-01-11 09:09:27', '0987125166', 1, 'cho-thue-can-ho-chung-cu-60m2-trung-hoa-nhan-chinh-ha-noi-1'),
(40, 'Cho sinh viên thuê phòng trọ tại Trần Cung, Cổ Nhuế, Bắc Từ Liêm', 'Cho thuê phòng trọ tại 16 Ngõ 49 - Trần Cung, Cổ Nhuế, Từ Liêm, Hà Nội.\r\nNhà xây mới 5 tầng, mỗi tầng 4 căn hộ, hành lang rộng. Căn hộ thoáng mát, có ban công, vệ sinh riêng biệt khép kín. Người thuê được độc lập, tự do, thoải mái, không ở chung với chủ nhà. Vị trí rất đẹp, trước mặt là Ao Sen. Khu an minh, dân trí tốt, đi lại thuận tiện, gần chợ, thích hợp cho hộ gia đình, viên chức… Cho thuê lâu dài, có chỗ để xe miễn phí tầng 1, công tơ điện nước riêng biệt, có cáp TV, Internet. Diện tích 18m2. Nhà xây mới, hướng Nam, cực kỳ thoáng mát.', 1800000, 18, 3, '16 Ngõ 49 - Trần Cung, Cổ Nhuế, Từ Liêm, Hà Nội, Việt Nam', '{\"0\":\"21.04732892658599\",\"1\":\"105.78911360827635\"}', '{\"0\":\"phongtro-WvdLC-cho-thue-phong-tro-so.jpg\"}', 7, 1, 7, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Chung ch\\u1ee7\"}', '2019-01-11 16:12:25', '2019-01-12 00:03:26', '0969313915', 1, 'cho-sinh-vien-thue-phong-tro-tai-tran-cung-co-nhue-bac-tu-liem'),
(41, 'Phòng trọ 1.7tr/th, diện tích 20m2, giờ giấc tự do, gần Đại học Điện lực', 'Tôi có phòng trọ cho thuê ở P5, Ngõ 210 Hoàng Quốc Việt, Cổ Nhuế, Cầu Giấy, Hà Nội.\r\nGiá: 1,7tr/tháng\r\nĐầy đủ nội thất.\r\n- Điều hòa, nóng lạnh, chậu rửa, kệ bếp, gác xép 10m2 để ngủ.\r\nDiện tích 20m2.', 1700000, 20, 1, 'P5, Ngõ 210 Hoàng Quốc Việt, Cổ Nhuế, Cầu Giấy, Hà Nội, Việt Nam', '{\"0\":\"21.047857657544668\",\"1\":\"105.78725153158018\"}', '{\"0\":\"phongtro-utUEJ-cho-thue-chung-cu-dep-25-30m2-vskk-tai-phung-khoang-thanh-xuan-gan-cho-phung-khoang-resized-fhxxt.jpg\"}', 7, 1, 7, '{\"0\":\"T\\u1ee7 + gi\\u01b0\\u1eddng\",\"1\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"2\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\"}', '2019-01-11 16:17:43', '2019-01-12 00:03:34', '0859990768', 1, 'phong-tro-1-7tr-th-dien-tich-20m2-gio-giac-tu-do-gan-dai-hoc-dien-luc'),
(42, 'Chính chủ cho thuê phòng khép kín 1,9 tr/tháng,  25m2', 'Phòng rộng 25m2 thiết kế tiện dụng dễ kê đồ, có cửa sổ thoáng mát, phù hợp hộ gia đình có con nhỏ hoặc sinh viên.\r\n- Có khu nấu ăn riêng có sẵn kệ bếp.\r\n- Có sẵn giường.\r\n- Nhà vệ sinh đẹp, sạch sẽ trang bị sẵn các thiết bị hiện đại: Vòi hoa sen, chậu rửa mặt, gương, bệt.\r\n- Có chỗ để xe rộng rãi, miễn phí, giờ giấc ra vào thoải mái, mỗi phòng một khóa cổng.\r\n- Điện công tơ riêng 4.000đ/số, nước 70.000đ/người.\r\n- Địa điểm đẹp thuận tiện đi lại chủ động giờ giấc. Gần ngay ngã tư Xuân Đỉnh với Phạm Văn Đồng, Đối diện bến xe Nam Thăng Long, cạnh công viên Hòa Bình, ngay gần tòa nhà điện máy HC, gần chợ.\r\nGiá: 1,9 tr/tháng.\r\nĐịa chỉ: 28 Ngõ 198 Trần Cung, Cổ Nhuế, Tây Hồ, Hà Nội\r\n(Ngay ngã tư Xuân Đỉnh với Phạm Văn Đồng).\r\nNhà chính chủ không qua môi giới trung gian.', 1900000, 25, 0, '28 Ngõ 198 Trần Cung, Cổ Nhuế, Tây Hồ, Hà Nội, Việt Nam', '{\"0\":\"21.050693274007923\",\"1\":\"105.79263266650389\"}', '{\"0\":\"no_img_room.png\"}', 7, 1, 7, '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"2\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2019-01-11 16:20:28', '2019-01-11 16:20:35', '0963 943 588', 1, 'chinh-chu-cho-thue-phong-khep-kin-1-9-tr-thang-25m2'),
(43, 'Cho thuê phòng trọ sinh viên ở 408 Trần Cung', 'Chính cho thuê phòng trọ khép kín ở 408 Trần Cung, Bắc Từ Liêm, Hà Nội.\r\n- Phòng có gác xép, sàn dưới rộng 20m2, gác xép rộng 10m2 thiết kế tiện dụng dễ kê đồ, có cửa sổ, ban công phơi đồ thoáng mát. Phù hợp hộ gia đình có con nhỏ, người đi làm.\r\n- Khu vực nấu ăn riêng có sẵn kệ bếp.\r\n- Nhà vệ sinh sạch sẽ trang bị sẵn các thiết bị hiện đại: Vòi hoa sen, chậu rửa mặt, gương, bệt.\r\n- Có chỗ để xe rộng rãi, miễn phí.\r\n- Điện công tơ riêng, nước 70.000/người/tháng.\r\n- Địa điểm đẹp, gần các trường Đại học Điện Lực, Học viện Kĩ Thuật, Cao đẳng Du lịch,.. thuận tiện đi lại chủ động giờ giấc.', 1800000, 20, 1, '454 Trần Cung, Cổ Nhuế, Từ Liêm, Hà Nội, Việt Nam', '{\"0\":\"21.0556078\",\"1\":\"105.78540399999997\"}', '{\"0\":\"phongtro-4JIrE-demo.jpg\"}', 12, 1, 7, '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"V\\u1ec7 sinh ri\\u00eang\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\"}', '2019-01-12 19:57:20', '2019-01-12 19:57:57', '0987125166', 1, 'cho-thue-phong-tro-sinh-vien-o-408-tran-cung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_motelroom` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reports`
--

INSERT INTO `reports` (`id`, `ip_address`, `id_motelroom`, `status`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 7, 2, '2018-05-19 01:30:32', '2018-05-19 01:30:32'),
(2, '127.0.0.1', 7, 1, '2018-05-24 07:24:17', '2018-05-24 07:24:17'),
(3, '127.0.0.1', 1, 2, '2018-05-24 07:24:33', '2018-05-24 07:24:33'),
(4, '127.0.0.1', 24, 2, '2018-12-31 23:04:18', '2018-12-31 23:04:18'),
(5, '127.0.0.1', 24, 2, '2018-12-31 23:06:43', '2018-12-31 23:06:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-avatar.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `right`, `phone`, `avatar`, `remember_token`, `created_at`, `updated_at`, `tinhtrang`) VALUES
(5, 'chu sy tung', 'chusytung', 'chusytung@gmail.com', '$2y$10$D8dSsdRdGQyvOwepr6RlUORz79xB5lILo6mHL6HVw3nuEV9YzOu7y', 1, NULL, 'no-avatar.jpg', 'pDBTU287R1zmR4BwAXXllBqu29eKmeaQ4mkYahsPe2tpC5dmnGTetqm6VdoM', '2018-10-29 01:21:55', '2018-10-29 01:21:55', 1),
(6, 'chu tung', 'chusytung2', 'chusytung2@gmail.com', '$2y$10$.Mq7VaiuOQkA.kw9sPT31.N87Eg8MGPnDiOxajXggYGVklvNQy5DS', 1, NULL, 'no-avatar.jpg', NULL, '2018-11-30 21:23:51', '2018-12-31 21:55:54', 1),
(7, 'Lê Tất Đạt', 'Tatdat', 'letatdat@gmail.com', '$2y$10$XkXODZ0W8da5V8cyNXKXGOuZTp6NT8YT8PAQSpIe0SWWnT0DOpBPa', 0, NULL, 'avatar-Tatdat-1547249039.jpg', 'V8MkG2XHGJHTDR9LcdfQnSSU83sNd2zT2fDe5VrfoK3VsYSPuSNeT3I1HRGz', '2018-12-16 07:39:30', '2019-01-11 16:23:59', 1),
(8, 'Trần Minh Phương', 'tranminhphuong', 'minhphuongtran90@gmail.com', '$2y$10$wZO19z.p2pI8h.Wf/11Ppe6lAXcjFbpcogzAFhwO6fcLFFMRBqOmS', 0, NULL, 'no-avatar.jpg', NULL, '2018-12-16 07:40:15', '2018-12-16 07:40:15', 1),
(9, 'Dương Ngọc Lâm', 'Lam123', 'Duongngoclam90@yahoo.com.vn', '$2y$10$GsNA3CrBiKm7VJ.9pl.ZMePTVpVk0xzFDWxVe9HcMcYs2VYrWUJRi', 0, NULL, 'no-avatar.jpg', NULL, '2018-12-16 07:40:58', '2018-12-16 07:40:58', 1),
(10, 'Phạm Thị Thêu', 'Phamtheu93', 'theupham93@gmail.com', '$2y$10$cUeXP265WBGTGuySevrqhONVI126810F9iq9j9zrTttJN0hfrPTHK', 0, NULL, 'no-avatar.jpg', NULL, '2018-12-16 07:41:33', '2018-12-16 07:41:33', 1),
(11, 'Ngọc Trần', 'tranthingoc', 'ngoctran92@gmail.com', '$2y$10$smJLuBgaxrB9QcmQd5nmeuUGuRmapbjo4jzcxrGf9mVhjVWQtI7cq', 0, NULL, 'no-avatar.jpg', NULL, '2018-12-16 07:42:17', '2018-12-16 07:42:17', 1),
(12, 'Phạm Ngọc Dương', 'phamngocduong', 'ngocduong1437@gmail.com', '$2y$10$LvMMD1lmV5LRJ8nqfkzVT.3VHsqxFrMKiKMsxNke0108VA0cgeUJ.', 0, NULL, 'no-avatar.jpg', 'lDzgkiorAdymDDnKpg0dDQKzUz8rtGaM4ENh2zsr095LR0ICDfdwdRyA4JhI', '2018-12-16 07:43:42', '2018-12-31 23:10:20', 1),
(13, 'Trần Văn Tuấn', 'tranvantuan', 'tuantran1992@gmail.com', '$2y$10$Jl1LxsyrdVD7EliU0/CwAeujH8sNCFFsvAJ56/g73/agxu6S2Q.hC', 0, NULL, 'no-avatar.jpg', NULL, '2018-12-16 07:44:23', '2018-12-16 07:44:23', 1),
(14, 'Trương Quỳnh Anh', 'Truongquynhanh', 'truongquynhanh1162@gmail.com', '$2y$10$s07p1vyeI/CZtw2ZF8V2X.QwU0ImSNEAj6eIIp5JE.wBmLrZzVK8u', 0, NULL, 'no-avatar.jpg', NULL, '2018-12-16 07:45:09', '2018-12-16 07:45:09', 1),
(15, 'Trương Hồng Ngọc', 'Truonghongngoc', 'truonghongngoc@gmail.com', '$2y$10$gdjTRz9WHcV1pId/bfuyJ.R9CdctHEloybCJgWc7GgMAs5RB0bvUG', 0, NULL, 'no-avatar.jpg', 'pdKSGWE1YPfv1EtEuQX6uHzZ0Kxq07sK33wvJjIkighDUIj1oM6U2k39e7Cq', '2019-01-10 07:46:01', '2019-01-10 07:46:01', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `motelrooms`
--
ALTER TABLE `motelrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `motelrooms_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `reports`
--
ALTER TABLE `reports`
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
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `motelrooms`
--
ALTER TABLE `motelrooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `motelrooms`
--
ALTER TABLE `motelrooms`
  ADD CONSTRAINT `motelrooms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Đang đổ dữ liệu cho bảng `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"phongtrohn\",\"table\":\"motelrooms\"},{\"db\":\"phongtrohn\",\"table\":\"comment\"},{\"db\":\"phongtrohn\",\"table\":\"migrations\"},{\"db\":\"phongtrohn\",\"table\":\"users\"},{\"db\":\"phongtrohn\",\"table\":\"districts\"},{\"db\":\"phongtrohn\",\"table\":\"categories\"},{\"db\":\"phongtrohn\",\"table\":\"password_resets\"},{\"db\":\"phongtrohn\",\"table\":\"reports\"},{\"db\":\"phongtrohn2\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Đang đổ dữ liệu cho bảng `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'phongtrohn', 'comment', '[]', '2019-01-09 16:58:36'),
('root', 'phongtrohn', 'motelrooms', '{\"sorted_col\":\"`motelrooms`.`id` ASC\"}', '2019-01-09 18:01:01'),
('root', 'phongtrohn', 'reports', '{\"sorted_col\":\"`reports`.`ip_address` ASC\"}', '2019-01-01 06:00:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-01-13 03:13:14', '{\"lang\":\"vi\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
