-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2024 at 03:04 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoplaptop`
--
CREATE DATABASE `shoplaptop` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shoplaptop`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nguoidung`
--

DROP TABLE IF EXISTS `tbl_nguoidung`;
CREATE TABLE IF NOT EXISTS `tbl_nguoidung` (
  `MaNguoiDung` int(10) NOT NULL,
  `TenNguoiDung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `QuyenHan` tinyint(1) NOT NULL,
  `Khoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_nguoidung`
--

INSERT INTO `tbl_nguoidung` (`MaNguoiDung`, `TenNguoiDung`, `TenDangNhap`, `MatKhau`, `QuyenHan`, `Khoa`) VALUES
(1, 'Trần Văn A', 'tva', 'e10adc3949ba59abbe56e057f20f883e', 1, 0),
(2, 'Nguyễn Văn Hùng', 'nvhung', 'e10adc3949ba59abbe56e057f20f883e 	', 1, 0),
(3, 'Nguễn Thị D', 'ntd', 'e10adc3949ba59abbe56e057f20f883e', 2, 0),
(4, 'Trần Văn C', 'tvc123456', 'e10adc3949ba59abbe56e057f20f883e', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhasanxuat`
--

DROP TABLE IF EXISTS `tbl_nhasanxuat`;
CREATE TABLE IF NOT EXISTS `tbl_nhasanxuat` (
  `IdNhaSanXuat` int(20) NOT NULL AUTO_INCREMENT,
  `TenNhaSanXuat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IdNhaSanXuat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_nhasanxuat`
--

INSERT INTO `tbl_nhasanxuat` (`IdNhaSanXuat`, `TenNhaSanXuat`) VALUES
(1, 'Dell'),
(2, 'Acer'),
(3, 'Lenovo'),
(4, 'Asus'),
(5, 'MacBook'),
(6, 'HP');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

DROP TABLE IF EXISTS `tbl_sanpham`;
CREATE TABLE IF NOT EXISTS `tbl_sanpham` (
  `IdSanPham` int(10) NOT NULL AUTO_INCREMENT,
  `MaSanPham` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TenSanPham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `IdNhaSanXuat` int(20) NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(10) NOT NULL,
  `MoTa` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(10) NOT NULL,
  `TiLeGiamGia` int(4) NOT NULL,
  `CauHinh` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `LuotXem` int(11) NOT NULL,
  PRIMARY KEY (`IdSanPham`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`IdSanPham`, `MaSanPham`, `TenSanPham`, `IdNhaSanXuat`, `HinhAnh`, `DonGia`, `MoTa`, `SoLuong`, `TiLeGiamGia`, `CauHinh`, `LuotXem`) VALUES
(1, 'Dell001', 'Laptop Dell Inspiron 15 N3530 i5', 1, 'images/dell001.jpg', 19000000, 'Dell Inspiron 15 N3530 không chỉ là một chiếc laptop thương hiệu Mỹ mạnh mẽ mà còn là một người bạn đồng hành lý tưởng cho sinh viên và dân văn phòng.', 20, 5, '<h1>Laptop Dell Inspiron 15 N3530 i5 1335U/16GB/512GB/15.6&quot;FHD/NVIDIA MX550 2GB/Win11/Office HS21</h1>\r\n', 62),
(3, 'Acer001', 'Acer Aspire Lite AL15-51M-55NB i5', 2, 'images/acer001.jpg', 16000000, 'Intel Iris Xe Graphics\r\n\r\n15.6 inch, 1920 x 1080 Pixels, IPS, 60, FHD\r\n\r\nIntel, Core i5, 1155G7\r\n\r\n8 GB, DDR4\r\n\r\nSSD 512 GB', 90, 4, '<h1>Laptop Acer Aspire Lite AL15-51M-55NB i5-1155G7/8GB/512GB/15.6&quot;FHD/Win11</h1>\r\n', 7),
(4, 'Dell002', 'Laptop Dell Latitude 3420 i5', 1, 'images/dell002.jpg', 28000000, '14 inch, 1920 x 1200 Pixels, WVA, 60 Hz, 250 nits, Wide-Viewing Angle (WVA)', 10, 4, '<h1>Laptop Dell Latitude 3420 i5 1135G7/8GB/512GB/14&quot;FHD/Fedora</h1>\r\n', 8),
(5, 'Dell003', 'Laptop Dell Inspiron 14', 1, 'images/dell003.jpg', 20000000, 'Laptop Dell Inspiron 14 7430 i5 1335U (N7430I58W1) sở hữu hiệu năng vượt trội từ con chip Intel gen 13 hiện đại, tính năng gập mở 360 độ độc đáo', 50, 5, '<p>Dell Inspiron 14 T7430 i5 1335U/8GB/512GB/Touch/Pen/OfficeHS/Win11</p>\r\n', 4),
(6, 'Dell004', 'Laptop Dell Precision 15 3581 i7', 1, 'images/del004.jpg', 24000000, 'Laptop Dell Precision 15 3581 i7 13800H (71024679) mang thiết kế hiện đại, khối lượng linh động hơn hẳn so với những mẫu laptop mobile workstation thông thường', 40, 5, '<p>Dell Inspiron 14 T7430 i5 1335U/8GB/512GB/Touch/Pen/OfficeHS/Win11</p>\r\n', 6),
(7, 'Dell005', 'Laptop Dell Precision 15 3581 i7 ', 1, 'images/Dell005.jpg', 30000000, 'Laptop Dell Precision 15 3581 i7 13800H (71024679) mang thiết kế hiện đại, khối lượng linh động hơn hẳn so với những mẫu laptop mobile workstation thông thường', 100, 2, '<p>Dell Precision 15 3581 i7 13800H/32GB/1TB/6GB RTXA1000/Win11 Pr</p>\r\n', 6),
(8, 'Dell006', 'Laptop Dell Precision 15 3581 i7', 1, 'images/Dell006.jpg', 20000000, 'Laptop Dell sử dụng con chip Intel Core i7 13800H với xung nhịp cao tối đa lên tận 5.20 GHz đi cùng card rời NVIDIA GeForce RTX A1000 6 GB chuyên dụng', 25, 8, '<p>Dell Precision 15 3581 i7 13800H/32GB/1TB/6GB RTXA1000/Win11 Pro</p>\r\n', 27),
(9, 'Dell007', 'Laptop Dell Inspiron 15 3530 i5', 1, 'images/Dell007.jpg', 26000000, 'Laptop Dell được trang bị bộ vi xử lý Intel Core i5 1335U kết hợp cùng card Intel UHD Graphics giúp hoàn thành tốt mọi tác vụ công việc thường ngày hay giải trí xem phim, lướt web,...', 20, 1, '<p>Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/120Hz/OfficeHS/Win11</p>\r\n', 14),
(10, 'Acer002', 'Laptop Acer Aspire 3 A315 59 38PG i3', 2, 'images/acer002.jpg', 30000000, 'Laptop Acer Aspire 3 A315 59 38PG i3', 90, 5, '<p>Laptop Acer Aspire 3 A315 59 38PG i3 1215U/8GB/512GB/Win11&nbsp;</p>\r\n', 0),
(11, 'Acer003', 'ACER Aspire 3 A315-35-C06G', 2, 'images/asus003.jpg', 20000000, 'ACER Aspire 3 A315-35-C06G', 50, 2, '<h1>15.6&#39; FHD IPS non-glare | Intel Celeron N4500 | 4GB DDR4 | 128GB SSD | Intel UHD Graphics | Windows 11 Home in S-Mode</h1>\r\n', 1),
(12, 'Acer004', 'Acer Aspire 3 A315-24PT-R90Z Ryzen 5-7520U', 2, 'images/acer004.jpg', 20000000, 'Acer Aspire 3 A315-24PT-R90Z Ryzen 5-7520U', 10, 3, '<h1>Acer Aspire 3 A315-24PT-R90Z, Procesador: AMD Ryzen 5-7520U, Memoria RAM: 8GB,</h1>\r\n', 2),
(13, 'Acer005', 'Acer Aspire 3 15.6" Laptop', 2, 'images/acer005.jpg', 24000000, 'Acer Aspire 3 15.6" Laptop - Intel Core i3 8GB-RAM 256GB-SSD (A315-510P-34EJ)', 20, 2, '<p>Acer Aspire 3 15.6&quot; Laptop - Intel Core i3 8GB-RAM 256GB-SSD (A315-510P-34EJ)</p>\r\n', 0),
(14, 'Acer006', 'Acer Aspire 3 A315-59-57WY (PS), Processor, Intel® Core™ i5-1235U', 2, 'images/acer006.jpg', 21000000, 'Acer Aspire 3 A315-59-57WY (PS), Processor, Intel® Core™ i5-1235U', 20, 5, '<p>Acer Aspire 3 A315-59-57WY (PS), Processor, Intel&reg; Core&trade; i5-1235U</p>\r\n', 1),
(15, 'Acer007', 'Acer Aspire 3 A315-58-71US Price & Specs in MY', 2, 'images/acer007.jpg', 34000000, 'Acer Aspire 3 A315-58-71US Price & Specs in MY | Harga April 2024', 50, 6, '<h1>Acer Aspire 3 A315-58-71US Price &amp; Specs in MY | Harga April 2024</h1>\r\n', 2),
(16, 'Asus001', 'Laptop Asus X515EA-EJ3633W', 4, 'images/asus001.jpg', 22000000, 'Laptop Asus X515EA-EJ3633W', 20, 8, '<h1>Laptop Asus X515EA-EJ3633W</h1>\r\n', 1),
(17, 'Asus002', 'Laptop Asus Vivobook 15 OLED A1505VA L1052W', 4, 'images/asus002.jpg', 19000000, 'Laptop Asus Vivobook 15 OLED A1505VA L1052W', 10, 9, '<h1>Laptop Asus Vivobook 15 OLED A1505VA L1052W | CPU i5-13500H | RAM 8GB LPDDR4 | SSD 512GB</h1>\r\n', 0),
(18, 'Asus003', 'Laptop Asus VivoBook 15 OLED A1505VA-L1201W', 4, 'images/asus003.jpg', 12000000, 'Laptop Asus VivoBook 15 OLED A1505VA-L1201W', 60, 8, '<h1>Laptop Asus VivoBook 15 OLED A1505VA-L1201W</h1>\r\n', 1),
(19, 'Asus004', 'Laptop Asus E210MA-GJ537W Celeron N4020 | RAM 4GB', 4, 'images/asus004.jpg', 26000000, 'Laptop Asus E210MA-GJ537W Celeron N4020 | RAM 4GB', 78, 2, '<h1>Laptop Asus E210MA-GJ537W Celeron N4020 | RAM 4GB | SSD 128G | UHD600</h1>\r\n', 1),
(20, 'HP001', 'Laptop HP Pavilion 15 eg2034TX i7 ', 6, 'images/hp001.jpg', 22000000, 'Laptop HP Pavilion 15 eg2034TX i7 ', 20, 9, '<h1><span style="font-size:18px">Laptop HP Pavilion 15 eg2034TX i7 1255U/8GB/512GB/2GB MX550/Win11 (6K780PA)</span></h1>\r\n', 1),
(21, 'Lenovo001', 'Laptop Lenovo Ideapad 3 15IAU7 i3 1215U', 3, 'images/lenovo001.jpg', 28000000, 'Laptop Lenovo Ideapad 3 15IAU7 i3 1215U', 80, 10, '<p>Laptop Lenovo Ideapad 3 15IAU7 i3 1215U</p>\r\n', 0),
(22, 'Lenovo002', 'Laptop Lenovo ThinkPad E570', 3, 'images/lenovo002.jpg', 24000000, 'Laptop Lenovo ThinkPad E570', 20, 7, '<h1>Laptop Lenovo ThinkPad E570 | Intel Core i3-7100U Ram 8GB SSD 128GB 15.6 FHD</h1>\r\n', 1),
(23, 'Lenovo003', 'Lenovo Ideapad Slim 5 15ITL05', 3, 'images/lenovo003.jpg', 26000000, 'Lenovo Ideapad Slim 5 15ITL05', 70, 6, '<h1>Lenovo Ideapad Slim 5 15ITL05</h1>\r\n', 1),
(24, 'Lenovo004', 'Laptop Lenovo IdeaPad 3 14', 3, 'images/lenovo004.jpg', 30000000, 'Laptop Lenovo IdeaPad 3 14', 20, 9, '<h1>Laptop Lenovo IdeaPad 3 14IAU7 82RJ001CVN</h1>\r\n', 2),
(25, 'Lenovo005', 'Laptop Lenovo IdeaPad 3 14', 3, 'images/lenovo005.jpg', 18000000, 'Laptop Lenovo IdeaPad 3 14', 30, 6, '<h1>Laptop Lenovo IdeaPad 3 14IAU7 82RJ001AVN</h1>\r\n', 0),
(26, 'MacBook001', 'MacBook Pro 14-Inch', 5, 'images/MacBook001.jpg', 20000000, 'MacBook Pro 14-Inch', 20, 9, '<h1>MacBook Pro 14-Inch (2023)</h1>\r\n', 0),
(27, 'MacBook002', 'I nuovi MacBook Pro 14 e 16 M2 sono ', 5, 'images/MacBook002.jpg', 15000000, 'I nuovi MacBook Pro 14 e 16 M2 sono ', 20, 8, '<h1>I nuovi MacBook Pro 14 e 16 M2 sono&nbsp;</h1>\r\n', 1),
(28, 'MacBook003', 'Apple MacBook Pro M3 – 1 Month Later', 5, 'images/MacBook003.jpg', 16000000, 'Apple MacBook Pro M3 – 1 Month Later', 10, 7, '<h1>Apple MacBook Pro M3 &ndash; 1 Month Later: Not What I Expected!</h1>\r\n', 1),
(29, 'MacBook004', 'MacBook Pro M1 2020 Apple', 5, 'images/MacBook004.jpg', 15000000, 'MacBook Pro M1 2020 Apple', 14, 8, '<h1>MacBook Pro M1 2020 Apple M1 8GB 256GB&nbsp;</h1>\r\n', 0),
(30, 'HP002', 'HP 15s fq1107TU Core i3-1005G1 /4Gb /256Gb ', 6, 'images/HP002.jpg', 29000000, 'HP 15s fq1107TU Core i3-1005G1 /4Gb /256Gb ', 100, 10, '<h1>HP 15s fq1107TU Core i3-1005G1 /4Gb /256Gb&nbsp;</h1>\r\n', 0),
(31, 'HP003', 'HP Laptop 14-em0010nt HP® Türkiye', 6, 'images/HP003.jpg', 20000000, 'HP Laptop 14-em0010nt HP® Türkiye', 40, 8, '<h1>HP Laptop 14-em0010nt HP&reg; T&uuml;rkiye, 41% OFF</h1>\r\n', 1),
(32, 'HP004', 'Laptop HP 14s-dq5054TU 6R9M7PA Bạc', 6, 'images/HP004.jpg', 21000000, 'Laptop HP 14s-dq5054TU 6R9M7PA Bạc', 20, 8, '<h1>Laptop HP 14s-dq5054TU 6R9M7PA Bạc</h1>\r\n', 2),
(33, 'HP005', 'HP Laptop 14s DR5000TU (2022)', 6, 'images/HP005.jpg', 25000000, 'HP Laptop 14s DR5000TU (2022)', 100, 9, '<h1>HP Laptop 14s DR5000TU (2022)</h1>\r\n', 5),
(34, 'Dell008', 'Dell Inspiron 15 3501 i3-1115G4 8GB ', 1, 'images/Dell008.jpg', 25000000, 'Dell Inspiron 15 3501 i3-1115G4 8GB ', 35, 2, '<h1>Dell Inspiron 15 3501 i3-1115G4 8GB SSD 256GB FHD Touch</h1>\r\n', 0),
(35, 'Dell009', 'Laptop Dell Latitude 7490 I7', 1, 'images/Dell009.jpg', 26000000, 'Laptop Dell Latitude 7490 I7', 20, 12, '<h1>Laptop Dell Latitude 7490 I7</h1>\r\n', 1),
(36, 'Dell010', 'Dell Latitude 3500, Laptop dell 3500, dell 3500', 1, 'images/Dell010.jpg', 20000000, 'Dell Latitude 3500, Laptop dell 3500, dell 3500', 70, 2, '<h1>Dell Latitude 3500, Laptop dell 3500, dell 3500</h1>\r\n', 2),
(37, 'Asus005', 'Laptop Asus E210MA-GJ537W Celeron N4020', 4, 'images/asus005.jpg', 20000000, 'Laptop Asus E210MA-GJ537W Celeron N4020', 20, 5, '<h1>Laptop Asus E210MA-GJ537W Celeron N4020 | RAM 4GB | 128G EMMC | UHD600 | 11.6 inch HD | Peacock blue</h1>\r\n', 2),
(38, 'Asus006', 'Laptop ASUS Vivobook X515E i3', 4, 'images/asus006.jpg', 25000000, 'Laptop ASUS Vivobook X515E i3', 40, 9, '<h1>Laptop ASUS Vivobook X515E i3-1115G4/4GB/128GB/15.6</h1>\r\n', 1),
(39, 'Asus007', 'Laptop Asus X543MA-DM502 ', 4, 'images/asus007.jpg', 20000000, 'Laptop Asus X543MA-DM502 ', 70, 8, '<h1>Laptop Asus X543MA-DM502 15,6/N4000/4GB/480GB/Win10</h1>\r\n', 1),
(40, 'Asus008', 'ASUS Notebook E210 11.6” Ultra Thin', 4, 'images/asus008.jpg', 25000000, 'ASUS Notebook E210 11.6” Ultra Thin', 70, 8, '<h1>ASUS Notebook E210 11.6&rdquo; Ultra Thin, Intel Celeron Vietnam</h1>\r\n', 0),
(41, 'Dell011', 'Laptop Cũ Dell Latitude 3420 - Intel Core i5', 1, 'images/Dell011.jpg', 25000000, 'Laptop Cũ Dell Latitude 3420 - Intel Core i5', 70, 9, '<h1>Laptop Cũ Dell Latitude 3420 - Intel Core i5-1135G7 | 14 inch Full HD</h1>\r\n', 1),
(42, 'Dell012', 'Laptop Dell G3 15-3500 (i7-10750H) ', 1, 'images/Dell012.jpg', 28000000, 'Laptop Dell G3 15-3500 (i7-10750H) ', 70, 10, '<h1>Laptop Dell G3 15-3500 (i7-10750H)&nbsp;</h1>\r\n', 8),
(43, 'Acer008', 'Laptop Acer Aspire 5 A515-58M-951T i9-13900H', 2, 'images/acer008.jpg', 25000000, 'Laptop Acer Aspire 5 A515-58M-951T i9-13900H', 20, 2, '<h1>Laptop Acer Aspire 5 A515-58M-951T i9-13900H</h1>\r\n', 1),
(44, 'Dell013', 'Laptop Dell Latitude 7400', 1, 'images/Dell013.jpg', 25000000, 'Laptop Dell Latitude 7400', 20, 9, '<h1>Laptop Dell Latitude 7400</h1>\r\n', 1),
(45, 'Dell014', 'Laptop Dell Latitude 5490 (Core i5-8350U / RAM 8GB', 1, 'images/Dell014.jpg', 28000000, 'Laptop Dell Latitude 5490 (Core i5-8350U / RAM 8GB', 100, 8, '<h1>Laptop Dell Latitude 5490 (Core i5-8350U / RAM 8GB / SSD 256GB / 14 inch FullHD) / WL + BT&nbsp;</h1>\r\n', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
