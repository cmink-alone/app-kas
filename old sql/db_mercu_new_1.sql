-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Waktu pembuatan: 05. Oktober 2012 jam 00:49
-- Versi Server: 5.0.41
-- Versi PHP: 5.2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `db_mercu`
-- 

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `m_iuran`
-- 

CREATE TABLE `m_iuran` (
  `id` int(5) NOT NULL auto_increment,
  `nim` varchar(20) NOT NULL,
  `jumlah` decimal(15,2) default NULL,
  `ket` text,
  `iuranKe` int(5) default NULL,
  `tanggal` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=133 ;

-- 
-- Dumping data untuk tabel `m_iuran`
-- 

INSERT INTO `m_iuran` VALUES (1, '41811110177', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (2, '41811110177', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (3, '41811110177', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (4, '41811110177', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (5, '41811110177', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (6, '41811110122', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (7, '41811110084', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (8, '41811110091', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (9, '41811110087', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (10, '41811110015', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (11, '41811110093', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (12, '41811110127', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (13, '41811110144', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (14, '41811110046', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (15, '41811110121', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (16, '41811110109', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (17, '41811110102', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (18, '41811110050', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (19, '41811110193', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (20, '41811110081', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (21, '41811110126', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (22, '41811110188', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (23, '41811110085', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (24, '41811110125', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (25, '41811110179', 10000.00, '', 1, '2012-10-03');
INSERT INTO `m_iuran` VALUES (26, '41811110093', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (27, '41811110177', 10000.00, '', 6, '2012-10-03');
INSERT INTO `m_iuran` VALUES (28, '41811110122', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (29, '41811110084', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (30, '41811110091', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (31, '41811110087', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (32, '41811110015', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (33, '41811110093', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (34, '41811110127', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (35, '41811110144', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (36, '41811110046', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (37, '41811110121', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (38, '41811110109', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (39, '41811110102', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (40, '41811110050', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (41, '41811110193', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (42, '41811110081', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (43, '41811110126', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (44, '41811110188', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (45, '41811110085', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (46, '41811110125', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (47, '41811110179', 10000.00, '', 2, '2012-10-03');
INSERT INTO `m_iuran` VALUES (48, '41811110177', 10000.00, '', 7, '2012-10-03');
INSERT INTO `m_iuran` VALUES (49, '41811110122', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (50, '41811110084', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (51, '41811110091', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (52, '41811110087', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (53, '41811110015', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (54, '41811110093', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (55, '41811110127', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (56, '41811110144', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (57, '41811110046', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (58, '41811110121', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (59, '41811110109', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (60, '41811110102', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (61, '41811110050', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (62, '41811110193', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (63, '41811110081', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (64, '41811110126', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (65, '41811110188', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (66, '41811110085', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (67, '41811110125', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (68, '41811110179', 10000.00, '', 3, '2012-10-03');
INSERT INTO `m_iuran` VALUES (69, '41811110177', 10000.00, '', 8, '2012-10-03');
INSERT INTO `m_iuran` VALUES (70, '41811110122', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (71, '41811110084', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (72, '41811110091', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (73, '41811110087', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (74, '41811110015', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (75, '41811110093', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (76, '41811110127', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (77, '41811110144', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (78, '41811110046', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (79, '41811110121', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (80, '41811110109', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (81, '41811110102', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (82, '41811110050', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (83, '41811110193', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (84, '41811110081', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (85, '41811110126', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (86, '41811110188', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (87, '41811110085', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (88, '41811110125', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (89, '41811110179', 10000.00, '', 4, '2012-10-03');
INSERT INTO `m_iuran` VALUES (90, '41811110177', 10000.00, '', 9, '2012-10-03');
INSERT INTO `m_iuran` VALUES (91, '41811110122', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (92, '41811110084', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (93, '41811110091', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (94, '41811110087', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (95, '41811110015', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (96, '41811110093', 10000.00, '', 6, '2012-10-03');
INSERT INTO `m_iuran` VALUES (97, '41811110127', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (98, '41811110144', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (99, '41811110046', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (100, '41811110121', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (101, '41811110109', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (102, '41811110102', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (103, '41811110050', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (104, '41811110193', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (105, '41811110081', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (106, '41811110126', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (107, '41811110188', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (108, '41811110085', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (109, '41811110125', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (110, '41811110179', 10000.00, '', 5, '2012-10-03');
INSERT INTO `m_iuran` VALUES (111, '41811110084', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (112, '41811110127', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (113, '41811110144', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (114, '41811110102', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (115, '41811110015', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (116, '41811110127', 10000.00, '', 7, '2012-10-04');
INSERT INTO `m_iuran` VALUES (117, '41811110177', 10000.00, '', 10, '2012-10-04');
INSERT INTO `m_iuran` VALUES (118, '41811110122', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (119, '41811110084', 10000.00, '', 7, '2012-10-04');
INSERT INTO `m_iuran` VALUES (120, '41811110091', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (121, '41811110087', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (122, '41811110127', 10000.00, '', 8, '2012-10-04');
INSERT INTO `m_iuran` VALUES (123, '41811110144', 10000.00, '', 7, '2012-10-04');
INSERT INTO `m_iuran` VALUES (124, '41811110046', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (125, '41811110121', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (126, '41811110109', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (127, '41811110102', 10000.00, '', 7, '2012-10-04');
INSERT INTO `m_iuran` VALUES (128, '41811110050', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (129, '41811110081', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (130, '41811110126', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (131, '41811110085', 10000.00, '', 6, '2012-10-04');
INSERT INTO `m_iuran` VALUES (132, '41811110179', 10000.00, '', 6, '2012-10-04');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `m_mahasiswa`
-- 

CREATE TABLE `m_mahasiswa` (
  `id` int(5) NOT NULL auto_increment,
  `nim` varchar(20) default NULL,
  `nama` varchar(50) default NULL,
  `isActive` int(2) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nim` (`nim`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Dumping data untuk tabel `m_mahasiswa`
-- 

INSERT INTO `m_mahasiswa` VALUES (1, '41811110015', 'Endra Krisna Putra', 1);
INSERT INTO `m_mahasiswa` VALUES (2, '41811110046', 'Hasbiyalloh', 1);
INSERT INTO `m_mahasiswa` VALUES (3, '41811110050', 'Muhammad Syaiful Mutaqin', 1);
INSERT INTO `m_mahasiswa` VALUES (4, '41811110081', 'Novi Mustika Sari', 1);
INSERT INTO `m_mahasiswa` VALUES (5, '41811110084', 'Arfian Nugroho', 1);
INSERT INTO `m_mahasiswa` VALUES (6, '41811110085', 'Siti Chodijah', 1);
INSERT INTO `m_mahasiswa` VALUES (7, '41811110087', 'Bunarto', 1);
INSERT INTO `m_mahasiswa` VALUES (8, '41811110091', 'Budi Chandra', 1);
INSERT INTO `m_mahasiswa` VALUES (9, '41811110093', 'Feldi Yusuf', 1);
INSERT INTO `m_mahasiswa` VALUES (10, '41811110102', 'Muhammad Okta', 1);
INSERT INTO `m_mahasiswa` VALUES (11, '41811110109', 'Moch Nanang Suryana', 1);
INSERT INTO `m_mahasiswa` VALUES (12, '41811110121', 'Heru Ari Pambudi', 1);
INSERT INTO `m_mahasiswa` VALUES (13, '41811110122', 'Andreas Edi Setiawan', 1);
INSERT INTO `m_mahasiswa` VALUES (14, '41811110125', 'Taufik Ismail', 1);
INSERT INTO `m_mahasiswa` VALUES (15, '41811110126', 'Rizky Pratama', 1);
INSERT INTO `m_mahasiswa` VALUES (16, '41811110127', 'Gugun Yunia Rahman', 1);
INSERT INTO `m_mahasiswa` VALUES (17, '41811110144', 'Hartono', 1);
INSERT INTO `m_mahasiswa` VALUES (18, '41811110177', 'Aditya Paramayuda', 1);
INSERT INTO `m_mahasiswa` VALUES (19, '41811110179', 'Urmila Utami Karmani', 1);
INSERT INTO `m_mahasiswa` VALUES (20, '41811110188', 'Robby Zemi Kurniawan', 1);
INSERT INTO `m_mahasiswa` VALUES (21, '41811110193', 'Nikko Hunarko', 1);

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `m_pengeluaran`
-- 

CREATE TABLE `m_pengeluaran` (
  `id` int(5) NOT NULL auto_increment,
  `tanggal` varchar(25) collate latin1_general_ci default NULL,
  `nominal` int(15) default NULL,
  `keterangan` text collate latin1_general_ci,
  `isActive` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=17 ;

-- 
-- Dumping data untuk tabel `m_pengeluaran`
-- 

INSERT INTO `m_pengeluaran` VALUES (1, '05-05-2012', 1, 'tatta', 1);
INSERT INTO `m_pengeluaran` VALUES (2, '04-10-2012', 1, 'lkjlj', 1);
INSERT INTO `m_pengeluaran` VALUES (3, '04-10-2012', 1, 'test', 1);
INSERT INTO `m_pengeluaran` VALUES (4, '05-10-2012', 500000, '', 1);
INSERT INTO `m_pengeluaran` VALUES (5, '05-10-2012', 1, '', 1);
INSERT INTO `m_pengeluaran` VALUES (6, '05-10-2012', 1, '', 1);
INSERT INTO `m_pengeluaran` VALUES (7, '05-10-2012', 1, '', 1);
INSERT INTO `m_pengeluaran` VALUES (8, '05-10-2012', 12, '', 1);
INSERT INTO `m_pengeluaran` VALUES (9, '05-10-2012', 13, '', 1);
INSERT INTO `m_pengeluaran` VALUES (10, '05-10-2012', 13, '', 1);
INSERT INTO `m_pengeluaran` VALUES (11, '05-10-2012', 132, '', 1);
INSERT INTO `m_pengeluaran` VALUES (12, '05-10-2012', 132, '', 1);
INSERT INTO `m_pengeluaran` VALUES (13, '05-10-2012', 521, '', 1);
INSERT INTO `m_pengeluaran` VALUES (14, '05-10-2012', 53, '', 1);
INSERT INTO `m_pengeluaran` VALUES (15, '05-10-2012', 354, '', 1);
INSERT INTO `m_pengeluaran` VALUES (16, '05-10-2012', 4646, 'sdf', 1);
