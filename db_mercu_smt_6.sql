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
