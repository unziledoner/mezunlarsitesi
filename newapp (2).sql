-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Haz 2018, 01:53:05
-- Sunucu sürümü: 10.1.16-MariaDB
-- PHP Sürümü: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `newapp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `mesaj_id` int(11) NOT NULL,
  `mesaj_kime` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj_gonderen` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj_konu` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj_aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `mesaj_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`mesaj_id`, `mesaj_kime`, `mesaj_gonderen`, `mesaj_konu`, `mesaj_aciklama`, `mesaj_tarih`) VALUES
(1, 'buse', '53', 'calÄ±sÄ±yosun eyv', 'calÄ±sÄ±rÄ±m eyv', '2018-06-08 18:04:35'),
(2, 'unzile', '53', 'dkkdskf', 'sdÃ¶fldlld', '2018-06-09 00:21:26'),
(3, 'unzile', '53', 'dkkdskf', 'sdÃ¶fldlld', '2018-06-09 00:21:29'),
(4, 'unzile', '53', 'aaa', 'slm', '2018-06-09 20:57:43'),
(5, 'buse', '51', 'selam', 'selam', '2018-06-11 09:59:32'),
(6, 'buse', '51', 'selam', 'qerter', '2018-06-11 19:04:48'),
(7, 'buse', '51', 'rth', 'q45eh45h', '2018-06-11 19:06:28'),
(9, 'fatma', '51', 'selam', 'selam', '2018-06-11 21:08:25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mezunlar`
--

CREATE TABLE `mezunlar` (
  `id` int(11) NOT NULL,
  `adsoyad` varchar(100) CHARACTER SET latin1 NOT NULL,
  `username` varchar(32) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `bolum_adi` varchar(100) CHARACTER SET latin1 NOT NULL,
  `yil` int(11) NOT NULL,
  `fotograf` varchar(250) CHARACTER SET latin1 NOT NULL,
  `kurum` varchar(150) CHARACTER SET latin1 NOT NULL,
  `mail` varchar(150) CHARACTER SET latin1 NOT NULL,
  `telefon` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `aciklama` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `gizlilik` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `mezunlar`
--

INSERT INTO `mezunlar` (`id`, `adsoyad`, `username`, `password`, `bolum_adi`, `yil`, `fotograf`, `kurum`, `mail`, `telefon`, `aciklama`, `gizlilik`) VALUES
(3, 'gafbfbf ', 'acfgfd', '@hatice5885', 'Bilgisayar Teknolojileri Bölümü', 1995, '', 'gh', 'gafv@gmail.com', '424', NULL, 0),
(45, 'unzile doner', 'unzile1', '$2y$11$bhd7lOQugQrUlVhKqbIL4emJDYXjdOC/Z1eDSpeViIVJNZtJhzMFS', 'bilgisayar programciligi', 2018, '43526834cf7d4828f922b6fde3f7ffe4.jpg', 'Belediye', 'unzile58@gmail.com', '123456', '--', 0),
(46, 'hat', 'hatice', '$2y$11$B6D9fxT7fEdCMGfOcb2lHOHFd2c4egUkbBSchi5Od9TVcV39TuCAu', 'cvwgr', 121, 'images.jpg', 'fdbfb', 'htcshn5885@gmail.com', '215463', 'bdhftd', 0),
(47, 'unzile doner', 'unc?l', '@6161unzile', 'Pazarlama ve D?? Ticaret Bölümü', 2005, '', '', '', NULL, NULL, 0),
(50, 'ayse sahin', 'ayse', '$2y$11$kWhoMsDowqDSa.KklJQseeOBYfdMwL0a9TTZTbjTNeb97MjL8CRf2', 'Finans-Bankacilik ve Sigortacilik Bölümü', 2014, 'e3bff68927b6a864c3a8975ed19aac84.jpg', 'cu', 'ayse@gmail.com', '05545545212', '', 1),
(51, 'fatma doner', 'fatma', '$2y$11$0tpg.iviMvsXk7SHRvUb.OsCc3ymSEDIaGYdeyDw7Iiy6km7kd7Hu', 'Yönetim ve Organizasyon Bölümü', 2015, '434809b60750af2209e6d1f9f3527e14.jpg', 'belediye', 'fatma@gmail.com', '05536174971', '', 0),
(52, 'buse koc', 'buse', '$2y$11$Jbuw0xqD0ctN/zeArpNGkuvyfT5SKJ/l1v3tqhaZSp.byZ/6HKDVG', 'Gida isleme Bölümü', 2004, '4f964acf14d8ba0a4cab21bef20a5361.jpg', 'samsun belediyesi', 'buse@gmail.com', '05536174971', '', 0),
(53, 'sena sahin', 'sena', '$2y$11$qZgM30mzh.Zw9396Xq4xQu2iI/0SV1YdRPhmq4KQZ3j5hQCeo9tYi', 'Bilgisayar Teknolojileri Bölümü', 2015, 'e8ebc32369cf76fa1e3a1ca8635ce837.jpg', 'cu', 'ceriyeni99@gmail.com', '5532454525', '', 0),
(54, 'merve sabuncu', 'merve', '$2y$11$2XHc2NPV5YQzVG7xtT3z8etaRjhBREQ2C6Xryd9g/6QblTCysjtGK', 'Su Ürünleri Bölümü', 2014, '4d36d3198b108cfd723a0e218635f20b.jpg', 'cu', 'merve@gmail.com', '5532454524', '', 0),
(55, 'sevda polat', 'sevda', '$2y$11$eZfDgPKQWhcS2BvZa6366e5J3BcNxF8Pur1F4rNnWnO7vw3XDk96S', 'Bilgisayar Teknolojileri Bölümü', 2014, '25e51cfa8ec0586288750048a823f779.jpg', 'cuzem', 'sevdaa@gmail.com', '05532454526', '', 0),
(56, 'kubra turan', 'kubra', '$2y$11$hhRQ2dHi./YV5Flubg2FruMAIFlWWEDrXZM.u5hQC6HURaTnR7a.u', 'Bilgisayar Teknolojileri Bölümü', 2014, 'f0d6d267c2cb5381d1b8248343a4e603.jpg', 'cuzem', 'kubra@gmail.com', '5532454524', '', 0),
(57, 'mutlu insan', 'mutlu', '$2y$11$1oGrDS8r1o4WCsrp1M06e.tibufuNqhiFjqTASKD1W2X9h9N9MjxC', 'Bilgisayar Teknolojileri Bölümü', 2014, 'a14124f1bb491ab1df4d4a174797a369.jpg', 'cuzem', 'mutlu@gmail.com', '05532454526', '', 0),
(58, 'sevgi insan', 'sevgi', '$2y$11$ylKj1BO.ZC5LddKyL8B42Ou/5S1H6f.8sLDZHjEszCwsdXXruKIWG', 'Bilgisayar Teknolojileri Bölümü', 2014, '5dff82d9551ce5ad80315b8718ca2132.jpg', 'cuzem', 'sevgi@gmail.com', '05532454524', '', 0),
(59, 'busra yilmaz', 'busra', '$2y$11$oF5/38G1kY/eipCLbmV88uZ8A4Qwtn7M7DRZJ9kBhuLBhFfM25giO', 'Su Ürünleri Bölümü', 2014, 'd005fe02b144c0399029fe9a24e3a643.jpg', 'cuzem', 'busra@gmail.com', '05532454522', '', 0),
(60, 'ayse polatli', 'badn', '$2y$11$b2kOBv/vcgik88PH5zvl..D6XQJe.dUkl1MNZk8E1Skf.WB3/Jd2K', 'Su Ürünleri Bölümü', 0, 'eabe0f6f99cf9fe4f49e7bcbd2330580.jpg', 'cuzem', 'ayse45@gmail.com', '05532454532', '', 0),
(61, 'sadcv', 'bsgfcb', '$2y$11$NMpgP3IK7KxRTpJZaB18FutY9tpucpp5DZeCI96/WmCb6a.8vWkJu', 'Bilgisayar Teknolojileri Bölümü', 2014, 'images.jpg', 'cuzem', 'asds@gmail.com', '05532454526', '', 0),
(62, 'kadir osmanoglu', 'kadir', '$2y$11$tXKXUtJK1yawnen7W6ESSO4klh9Pqzsoob3g0mfWMGTVcfndmzEwS', 'Bilgisayar Teknolojileri Bölümü', 2014, 'images.jpg', 'aselsan', 'ceri58@gmail.com', '05532454526', '', 0),
(63, 'bahar polat', 'bahar', '$2y$11$AuwetO1SZw8RRJfEqlGMB.F6ZKCOQRbuOtl7mm9C0r3HafUXWbiGG', 'Bilgisayar Teknolojileri Bölümü', 2014, 'images.jpg', 'aselsan', 'bahar@gmail.com', '05532454525', '', 0),
(64, 'xcdvfbsgnh', 'xyzt', '$2y$11$94HztQsrxYv0jp.PmFJLfeW2QiuX.NlbhUz5mNZH1/B2tCEFnSaNa', 'Su Ürünleri Bölümü', 2014, 'images.jpg', 'cuzem', 'xyzt@gmail.com', '5532454524', '', 0),
(65, 'unzile doner', 'unzile', '$2y$11$Ls8dYdXF.iN3.5y2Ws9O7efPVimZ9pcTEqA6LNTVx6G4eK2lpq3j2', 'Bilgisayar Teknolojileri Bölümü', 2014, 'images.jpg', 'cuzem', 'unzile@gmail.com', '05532454526', '', 0),
(66, 'fadime acikgoz', 'fadime', '$2y$11$AJ8ufF45Wi6rdQAbKlgVCOEqwzMJEnN1J/qvkD2MxrZX.riNnliza', 'Su Ürünleri Bölümü', 2014, 'images.jpg', 'cu', 'fadime99@gmail.com', '05532454526', '', 0),
(67, 'ayse polatas', 'ayse58', '$2y$11$eRU9wpkyZQx2OAYi9yUR1u3fsZis5n47RFJR3kJDymbcPdTPZ4DFa', 'Su Ürünleri Bölümü', 2014, 'images.jpg', '', 'ce9@gmail.com', '05532454526', '', 0),
(68, 'leyla sahin', 'leyla', '$2y$11$cVNZJOQHCfSr9lE68H0YduKNIAo8lrdU0BffxVpci2Ou4OpUPnPyi', 'Bilgisayar Teknolojileri Bölümü', 2014, 'images.jpg', 'aselsan', 'leyla58@gmail.com', '05532454526', '', 0),
(69, 'burak sahin', 'burak', '$2y$11$OyMUu1SAj.7wTQIGBHVR0eATUnPi2fpT.xW9as3IH3nHAUad5sK1e', 'Bilgisayar Teknolojileri Bölümü', 2014, 'images.jpg', 'cuzem', 'burak@gmail.com', '5532454524', '', 0),
(70, 'hamza sahin', 'hamza', '$2y$11$tZwM3G2qcBiGdg/fIySzEuwBewruzhgyQ5bqqhNZ065ca90QUwkYq', 'Su Ürünleri Bölümü', 2014, 'images.jpg', 'cuzem', 'hamza@gmail.com', '05532454526', '', 0),
(71, 'poncik', 'kadirhatice', '$2y$11$xgl47TBxBBafe8xX2mhyvuzTss.YQWxRrSZd7AIelrC4F9I8cs9rS', 'Su Ürünleri Bölümü', 2014, 'images.jpg', 'aselsan', 'kadircik@gmail.com', '05532454526', 'haticeye asigim', 1),
(72, 'aysegul ozfidan sahin', 'aysegul', '$2y$11$FgYP/l/WNhoyzWmWEm1rlOMqr3pJ/YFON0EoGT2u.ecYy3NEYY.xa', 'Su Ürünleri Bölümü', 2014, 'images.jpg', 'cu', 'aysegul@gmail.com', '05532454526', '', 1),
(73, 'deneme', 'dene', '$2y$11$hjrl8vneLWSzQwSbWPSKOOW6OnoJvtmYjXe3Pbz5bUwK0wTPQs.AK', 'Bilgisayar Teknolojileri Bölümü', 2014, 'images.jpg', 'cuzem', 'dene@gmail.com', '05532454526', '', 0),
(74, 'kadir hatice', 'kdrhtc', '$2y$11$2XJuGnt.ekg6M/oR5LvMV.NTk8gMrLwi890DO2pXRKnQ/hskCsoPu', 'Bilgisayar Teknolojileri Bölümü', 2016, 'images.jpg', 'aselsan', 'kdrhtc@gmail.com', '05532454526', 'haticeye asigim', 0),
(75, 'selam', 'selam', '$2y$11$TX0ucdWj5BDaXt8CgVgiXenCqj.Bx.znp6JPnceWj4U5xPd9FEGWW', 'Bilgisayar Teknolojileri Bölümü', 2016, 'images.jpg', 'cuzem', 'selam@gmail.com', '05532454526', '', 1),
(76, 'naber', 'naber', '$2y$11$4/Xz/0R.Rwgrwy0ohWbk3O3i5S/Ce9XlY1CTtK6AavdzpBVWRVwru', 'Bilgisayar Teknolojileri Bölümü', 2016, 'images.jpg', 'cu', 'naber@gmail.com', '05532454526', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE `resimler` (
  `id` int(11) NOT NULL,
  `resim_yol` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`mesaj_id`);

--
-- Tablo için indeksler `mezunlar`
--
ALTER TABLE `mezunlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `mesaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `mezunlar`
--
ALTER TABLE `mezunlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- Tablo için AUTO_INCREMENT değeri `resimler`
--
ALTER TABLE `resimler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
