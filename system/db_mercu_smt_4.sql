-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Waktu pembuatan: 09. April 2013 jam 21:55
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Dumping data untuk tabel `m_iuran`
-- 

