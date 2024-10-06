-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2024 lúc 12:12 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `htqlks`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accumulated_points`
--

CREATE TABLE `accumulated_points` (
  `id_dtl` int(11) NOT NULL,
  `dtl` int(11) NOT NULL,
  `khach_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id_hd` int(11) NOT NULL,
  `khach_hang` int(11) NOT NULL,
  `don_dat_phong` int(11) NOT NULL,
  `phi_dv` int(11) NOT NULL,
  `tre_han` int(11) NOT NULL,
  `phi_them` int(11) NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `phuong_thuc_tt` varchar(20) DEFAULT NULL,
  `tien_kh_gui` int(11) NOT NULL,
  `tien_thua` int(11) NOT NULL,
  `trang_thai_hd` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id_hd`, `khach_hang`, `don_dat_phong`, `phi_dv`, `tre_han`, `phi_them`, `tong_tien`, `phuong_thuc_tt`, `tien_kh_gui`, `tien_thua`, `trang_thai_hd`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, 0, 0, 1600000, NULL, 0, 0, 'Chưa thanh toán', 1, '2024-10-03 03:49:27', '2024-10-03 03:49:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_form`
--

CREATE TABLE `booking_form` (
  `id_don` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `id_loai_phong` int(11) NOT NULL,
  `id_phong` int(11) DEFAULT NULL,
  `ngay_nhan_phong` date NOT NULL,
  `ngay_tra_phong` date NOT NULL,
  `so_ngay_o` int(11) NOT NULL,
  `tinh_trang` varchar(30) NOT NULL,
  `ghi_chu` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `gn` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking_form`
--

INSERT INTO `booking_form` (`id_don`, `id_kh`, `id_loai_phong`, `id_phong`, `ngay_nhan_phong`, `ngay_tra_phong`, `so_ngay_o`, `tinh_trang`, `ghi_chu`, `status`, `gn`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 6, '2024-10-03', '2024-10-05', 2, 'Đã xác nhận', NULL, 1, 1, '2024-10-03 10:48:45', '2024-10-03 10:48:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `form_service_details`
--

CREATE TABLE `form_service_details` (
  `id_ct` int(11) NOT NULL,
  `id_ddp` int(11) NOT NULL,
  `id_dv` int(11) NOT NULL,
  `ngay_su_dung` date NOT NULL,
  `so_luong_ct` int(11) NOT NULL,
  `ghi_chu_ct` varchar(200) DEFAULT NULL,
  `tinh_trang_ct` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `gn` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `form_service_details`
--

INSERT INTO `form_service_details` (`id_ct`, `id_ddp`, `id_dv`, `ngay_su_dung`, `so_luong_ct`, `ghi_chu_ct`, `tinh_trang_ct`, `status`, `gn`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2024-10-03', 2, 'SPA1: Gói 1, Gói 3. CSSK1 : đến lúc 16h PM', 'Đã xác nhận', 1, 1, '2024-10-03 10:51:28', '2024-10-03 10:51:28'),
(2, 1, 4, '2024-10-03', 1, 'SPA1: Gói 1, Gói 3. CSSK1 : đến lúc 16h PM', 'Đã xác nhận', 1, 1, '2024-10-03 10:51:28', '2024-10-03 10:51:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `id_phong` int(3) NOT NULL,
  `so_phong` int(11) NOT NULL,
  `loai_phong` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`id_phong`, `so_phong`, `loai_phong`, `status`, `created_at`, `updated_at`) VALUES
(1, 101, 1, 1, '2024-09-05 16:10:09', '2024-09-05 16:10:09'),
(2, 102, 1, 1, '2024-09-12 06:16:34', '2024-09-12 06:16:34'),
(3, 103, 1, 1, '2024-09-12 07:15:33', '2024-09-12 07:15:33'),
(4, 104, 1, 1, '2024-09-12 07:15:39', '2024-09-12 07:15:39'),
(5, 105, 1, 1, '2024-09-12 07:15:45', '2024-09-12 07:15:45'),
(6, 201, 3, 1, '2024-09-17 18:33:18', '2024-09-17 18:33:18'),
(7, 202, 3, 1, '2024-09-19 17:46:43', '2024-09-19 17:46:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_type`
--

CREATE TABLE `room_type` (
  `id_lp` int(11) NOT NULL,
  `ten_lp` varchar(100) NOT NULL,
  `mo_ta` varchar(300) NOT NULL,
  `tien_nghi` varchar(100) NOT NULL,
  `gia_lp` int(11) DEFAULT NULL,
  `suc_chua` int(1) NOT NULL,
  `dien_tich` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room_type`
--

INSERT INTO `room_type` (`id_lp`, `ten_lp`, `mo_ta`, `tien_nghi`, `gia_lp`, `suc_chua`, `dien_tich`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Single', 'Đây là loại phòng chỉ có 1 giường đơn, dành cho 1 khách lưu trú.', 'Giường đơn : 1m2 x 1m9', 500000, 1, '21m²', 1, '2024-09-07 08:35:43', '2024-10-01 11:09:32'),
(3, 'Twin', 'Loại phòng có 2 giường đơn, dành cho 2 khách lưu trú.', '2 giường đơn : 1m2 x 2m', 800000, 2, '40m²', 1, '2024-09-05 15:31:48', '2024-09-08 01:00:48'),
(7, 'Double', 'Đây là loại phòng có 1 giường đôi vừa, thoải mái cho cả 2 người nằm , có thể 2 người lớn + 1 trẻ', 'Giường đôi : 1.6m x 2m', 800000, 2, '40m²', 1, '2024-09-07 12:39:16', '2024-09-08 09:52:09'),
(8, 'Triple', 'Đây là loại phòng có 1 giường đơn + 1 giường đôi vừa· , thích hợp cho 3 khách ( ngoài ra có thể kèm 1 trẻ nhỏ )', 'Giường đơn : 1m2 x 1m9 , Giường đôi : 1m6 x 2m', 1000000, 3, '50m²', 1, '2024-09-08 00:46:22', '2024-09-08 09:53:42'),
(9, 'Family Suite', 'Phòng Family có diện tích 80m² bao gồm 2 phòng ngủ riêng biệt, tiện lợi cho khách hàng gia đình (hoặc nhóm bạn thân 4 người + 1 trẻ nhỏ). Trong đó có 1 phòng dành cho bố mẹ thiết kế với 1 giường đôi, phòng vệ sinh riêng. Phòng còn lại thiết kế với 2 giường đơn. Phòng có ban công thoáng mát.', '2 Giường đơn : 1m2 x 2m , Giường đôi : 1m8 x 2m', 1550000, 4, '80m²', 1, '2024-09-08 01:00:06', '2024-09-08 10:59:52'),
(15, 'Junior Suite', 'Được thiết kế 1 ngủ và 1 phòng khách riêng biệt , 2 giường đôi vừa được đặt tại 2 phòng thích hợp cho gia đình nhỏ hoặc cặp đôi mới cưới.', '2 giường đôi vừa : 1m6 x 2m', 1350000, 4, '60m²', 1, '2024-09-08 09:31:32', '2024-09-08 11:00:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id_dv` int(11) NOT NULL,
  `ten_dv` varchar(30) NOT NULL,
  `loai_dv` int(11) NOT NULL,
  `don_gia_dv` int(11) NOT NULL,
  `mo_ta_dv` varchar(200) NOT NULL,
  `menu` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id_dv`, `ten_dv`, `loai_dv`, `don_gia_dv`, `mo_ta_dv`, `menu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DVA1 - Bữa ăn 1 buổi', 1, 100000, 'Đây là dịch vụ áp dụng 1 buổi ăn trong ngày. Khách hàng sẽ được chọn thức ăn và nước uống bất kỳ trên menu dành riêng cho gói dịch vụ này. ', 'Món ăn :.\r\n (1) Súp cua.\r\n (2) Mỳ ý.\r\n (3) Gỏi Mực Thái.\r\n (4) Bò sốt vang Marzano + bánh mì.\r\nNước uống :.\r\n (NU1) Nước Ép Orange.\r\n (NU2) Coffee ( nóng / lạnh ).\r\n (NU3) Bạc sỉu (nóng / lạnh ).\r\n (NU4) Trà xanh hoa nhài Dilmah.', 1, '2024-09-19 11:12:44', '2024-09-19 11:12:44'),
(2, 'DVA2 - Bửa ăn cả ngày', 1, 160000, 'Đây là dịch vụ áp dung 1 bửa ăn trong ngày (2 buổi). Khách hàng sẽ được chọn thức ăn và nước uống bất kỳ trên menu dành riêng cho gói dịch vụ này.', 'Vui lòng tham khảo menu từ bửa ăn 1 buổi.', 1, '2024-09-19 11:21:59', '2024-09-19 11:21:59'),
(3, 'SPA1', 2, 1200000, 'Khách hàng được chọn 1 gói tùy ý được để xuất.', 'Gói 1: Gội đầu + face massage + bấm huyệt. \r\nGói 2: Full body + face massage.          \r\nGói 3: Xông hơi 30\' + gội đầu.', 1, '2024-09-19 11:33:13', '2024-09-19 11:33:13'),
(4, 'CSSK1', 2, 800000, 'Khách hàng được lựa chọn tùy ý khung giờ từ 9:00 AM - 19:00 PM.\r\n ', 'Khách hàng được lựa chọn tùy ý khung giờ từ 9:00 AM - 19:00 PM.\r\n ', 1, '2024-09-19 11:35:25', '2024-09-19 11:35:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_incentives`
--

CREATE TABLE `service_incentives` (
  `id_uddv` int(11) NOT NULL,
  `id_ud` int(11) NOT NULL,
  `id_dv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `service_incentives`
--

INSERT INTO `service_incentives` (`id_uddv`, `id_ud`, `id_dv`) VALUES
(1, 1, 3),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_type`
--

CREATE TABLE `service_type` (
  `id_ldv` int(11) NOT NULL,
  `ten_ldv` varchar(50) NOT NULL,
  `mo_ta_ldv` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `service_type`
--

INSERT INTO `service_type` (`id_ldv`, `ten_ldv`, `mo_ta_ldv`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dịch vụ ăn uống', 'Dịch vụ ăn uống tại khách sạn HazBin mang đến cho quý khách một trải nghiệm ẩm thực đáng nhớ với nhiều lựa chọn, từ ẩm thực truyền thống đến quốc tế. Chúng tôi phục vụ bữa ăn đa dạng và nguyên liệu tươi ngon mỗi ngày. Bữa ăn sáng , trưa nhẹ nhàng hay bữa tối sang trọng , quý khách có thể tùy ý chọn món . HazBin cam kết mang đến những trải nghiệm ẩm thực hoàn hảo, kết hợp giữa hương vị tuyệt vời và dịch vụ chuyên nghiệp.', 1, '2024-09-19 10:47:50', '2024-10-03 11:23:40'),
(2, 'Dịch vụ spa & chăm sóc sức khỏe', 'Dịch vụ spa & Chăm sóc sức khỏe tại khách sạn HazBin sẽ mang đến cho quý khách trải nghiệm toàn diện với các liệu trình chăm sóc sắc đẹp,thư giãn kết hợp cùng những hoạt động thể chất giúp bạn đạt được sự cân bằng cả về thể lực và tinh thần. Chúng tôi tự hào cung cấp dịch vụ Gym và Yoga với không gian thoáng đãng, trang thiết bị hiện đại, và đội ngũ huấn luyện viên chuyên nghiệp.', 1, '2024-09-19 10:47:54', '2024-09-19 10:47:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `special_offers`
--

CREATE TABLE `special_offers` (
  `id_ud` int(11) NOT NULL,
  `ten_ud` varchar(50) NOT NULL,
  `giam` int(11) NOT NULL,
  `tg_ap_dung` date NOT NULL,
  `tg_ket_thuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `special_offers`
--

INSERT INTO `special_offers` (`id_ud`, `ten_ud`, `giam`, `tg_ap_dung`, `tg_ket_thuc`) VALUES
(1, 'Giảm 10% khi đăng ký 2 gói dịch vụ SPA', 10, '2024-09-24', '2024-11-24'),
(2, 'Tặng kèm 1 buổi ăn khi đặt từ 3 phần', 0, '2024-09-01', '2024-11-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(250) NOT NULL,
  `DTL` int(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` tinyint(1) NOT NULL,
  `token` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ho_ten`, `gioi_tinh`, `sdt`, `email`, `dia_chi`, `DTL`, `password`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', 0, '0967355277', 'nva@gmail.com', 'Cần Thơ', NULL, '$2y$12$2bGrsJsQGEdvuqe.USOqt.3jwXoVCxC24nxcHSkSmN2BhYxEAKyCC', 0, NULL, '2024-08-31 12:00:21', '2024-08-31 12:00:21'),
(2, 'Võ Ngọc Huyền', 1, '0967433525', 'vnhuyen221@gmail.com', 'An Giang', NULL, '$2y$12$EFQvZWcHDRsJyF3l43p1QucmKjPLkXlWHfmYSWrX2UfSvRujAtRgm', 1, 'VkKeygpcugFNmjmz9elapsZpvtMNeArvsClrrVbM', '2024-09-18 18:13:44', '2024-09-18 18:13:44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accumulated_points`
--
ALTER TABLE `accumulated_points`
  ADD PRIMARY KEY (`id_dtl`),
  ADD KEY `fk_dtl_kh` (`khach_hang`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_hd`),
  ADD KEY `fk_bill_user` (`khach_hang`),
  ADD KEY `fk_bill_bk` (`don_dat_phong`);

--
-- Chỉ mục cho bảng `booking_form`
--
ALTER TABLE `booking_form`
  ADD PRIMARY KEY (`id_don`),
  ADD KEY `fk_bf_rt` (`id_loai_phong`),
  ADD KEY `fk_bkf_room` (`id_phong`),
  ADD KEY `fk_bkf_ctm` (`id_kh`);

--
-- Chỉ mục cho bảng `form_service_details`
--
ALTER TABLE `form_service_details`
  ADD PRIMARY KEY (`id_ct`),
  ADD KEY `fk_fsd_bf` (`id_ddp`),
  ADD KEY `fk_fsd_sv` (`id_dv`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id_phong`),
  ADD KEY `fk_room_roomtype` (`loai_phong`);

--
-- Chỉ mục cho bảng `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id_lp`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_dv`),
  ADD KEY `fk_dv_ldv` (`loai_dv`);

--
-- Chỉ mục cho bảng `service_incentives`
--
ALTER TABLE `service_incentives`
  ADD PRIMARY KEY (`id_uddv`),
  ADD KEY `fk_si_so` (`id_ud`),
  ADD KEY `fk_si_sv` (`id_dv`);

--
-- Chỉ mục cho bảng `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`id_ldv`);

--
-- Chỉ mục cho bảng `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id_ud`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accumulated_points`
--
ALTER TABLE `accumulated_points`
  MODIFY `id_dtl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id_hd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `booking_form`
--
ALTER TABLE `booking_form`
  MODIFY `id_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `form_service_details`
--
ALTER TABLE `form_service_details`
  MODIFY `id_ct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `id_phong` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id_lp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id_dv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `service_incentives`
--
ALTER TABLE `service_incentives`
  MODIFY `id_uddv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `service_type`
--
ALTER TABLE `service_type`
  MODIFY `id_ldv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id_ud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accumulated_points`
--
ALTER TABLE `accumulated_points`
  ADD CONSTRAINT `fk_dtl_kh` FOREIGN KEY (`khach_hang`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_bk` FOREIGN KEY (`don_dat_phong`) REFERENCES `booking_form` (`id_don`),
  ADD CONSTRAINT `fk_bill_user` FOREIGN KEY (`khach_hang`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `booking_form`
--
ALTER TABLE `booking_form`
  ADD CONSTRAINT `fk_bf_rt` FOREIGN KEY (`id_loai_phong`) REFERENCES `room_type` (`id_lp`),
  ADD CONSTRAINT `fk_bkf_ctm` FOREIGN KEY (`id_kh`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_bkf_room` FOREIGN KEY (`id_phong`) REFERENCES `room` (`id_phong`);

--
-- Các ràng buộc cho bảng `form_service_details`
--
ALTER TABLE `form_service_details`
  ADD CONSTRAINT `fk_fsd_bf` FOREIGN KEY (`id_ddp`) REFERENCES `booking_form` (`id_don`),
  ADD CONSTRAINT `fk_fsd_sv` FOREIGN KEY (`id_dv`) REFERENCES `service` (`id_dv`);

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_room_roomtype` FOREIGN KEY (`loai_phong`) REFERENCES `room_type` (`id_lp`);

--
-- Các ràng buộc cho bảng `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_dv_ldv` FOREIGN KEY (`loai_dv`) REFERENCES `service_type` (`id_ldv`);

--
-- Các ràng buộc cho bảng `service_incentives`
--
ALTER TABLE `service_incentives`
  ADD CONSTRAINT `fk_si_so` FOREIGN KEY (`id_ud`) REFERENCES `special_offers` (`id_ud`),
  ADD CONSTRAINT `fk_si_sv` FOREIGN KEY (`id_dv`) REFERENCES `service` (`id_dv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
