-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 May 2019, 21:20:35
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `library`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `userpass` varchar(10) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`aid`, `username`, `userpass`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `books`
--

CREATE TABLE `books` (
  `bid` int(11) NOT NULL,
  `book_name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `book_type` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `book_lang` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `comment` varchar(1500) COLLATE utf8_turkish_ci NOT NULL,
  `publishing_house` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `shelf_number` varchar(5) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `books`
--

INSERT INTO `books` (`bid`, `book_name`, `author_name`, `book_type`, `book_lang`, `comment`, `publishing_house`, `shelf_number`) VALUES
(1, 'Savaş ve Barış', 'Tolstoy', 'klasik', 'türkçe', 'iyi kitap', 'can', '1'),
(2, 'Binboğalar Efsanesi', 'Yaşar Kemal', 'dram', 'türkçe', '', 'can', '2'),
(3, 'Yüzyıllık Yalnızlık', 'Gabriel Garcia Marquez', 'klasik', 'ingilizce', '', 'panora', '3'),
(4, 'Germinal', 'Emile Zola', 'dram', 'türkçe', '', 'oda', '4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `books_category`
--

CREATE TABLE `books_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `stant_no` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `stant_adress` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `books_category`
--

INSERT INTO `books_category` (`id`, `category_name`, `stant_no`, `stant_adress`) VALUES
(1, 'Dram', '1', 'Birinci koridor'),
(2, 'Klasik', '5', 'Üçüncü koridor'),
(3, 'dram', '3', 'İkinci koridor'),
(4, 'dram', '4', 'üçüncü koridor');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Tablo için indeksler `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bid`);

--
-- Tablo için indeksler `books_category`
--
ALTER TABLE `books_category`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `books`
--
ALTER TABLE `books`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `books_category`
--
ALTER TABLE `books_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
