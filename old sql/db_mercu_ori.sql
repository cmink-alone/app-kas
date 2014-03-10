-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Sep 29, 2012 at 06:03 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `db_mercu`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `m_iuran`
-- 

CREATE TABLE `m_iuran` (
  `id` int(5) NOT NULL auto_increment,
  `nim` varchar(20) NOT NULL,
  `jumlah` decimal(15,2) default NULL,
  `ket` text,
  `tanggal` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

-- 
-- Dumping data for table `m_iuran`
-- 

INSERT INTO `m_iuran` VALUES (1, '41811110177', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (2, '41811110122', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (3, '41811110091', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (4, '41811110087', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (5, '41811110015', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (6, '41811110093', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (7, '41811110127', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (8, '41811110144', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (9, '41811110046', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (10, '41811110121', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (11, '41811110109', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (12, '41811110102', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (13, '41811110050', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (14, '41811110193', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (15, '41811110081', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (16, '41811110126', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (17, '41811110188', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (18, '41811110085', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (19, '41811110125', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (20, '41811110179', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (21, '41811110177', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (22, '41811110122', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (23, '41811110087', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (24, '41811110015', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (25, '41811110093', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (26, '41811110127', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (27, '41811110144', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (28, '41811110046', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (29, '41811110102', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (30, '41811110050', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (31, '41811110193', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (32, '41811110081', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (33, '41811110126', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (34, '41811110085', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (35, '41811110125', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (36, '41811110179', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (37, '41811110091', 10000.00, '', '2012-09-23');
INSERT INTO `m_iuran` VALUES (38, '41811110121', 10000.00, '', '2012-09-23');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_mahasiswa`
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
-- Dumping data for table `m_mahasiswa`
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
