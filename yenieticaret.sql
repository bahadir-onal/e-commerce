-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 27 Eyl 2021, 08:50:28
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yenieticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/22800logo.jpg', 'http://www.joyakademi.com', 'Bahadır Önal E-Ticaret Scripti', 'Yeni E-Ticaret Projesi Bahadır Önal ', 'eticaret, shopping, php, learning, student php', 'Bahadır Önal', '03313313131', '03313113131', '03313113131', 'bahadir@gmail.com', 'Merkez', 'Aksaray', 'Aksaray/Merkez', '7 x 24 açık eticaret scripti', 'ayar_maps_api', 'ayar_analystic', 'https://v2.zopim.com/?5DyUgwL2c2nc43kG0j9udM8FLxy9XfWX', 'www.facebook.com', 'www.twitter.com', 'www.google.com', 'www.youtube.com', 'mail.emrahyuksel.com.tr', 'joyakademi@emrahyuksel.com.tr', 'password', '25', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti Bankası', 'TR98755656564564546', 'Bahadır Önal', '1'),
(2, 'Yapı Kredi', 'TR45646545646545646465546', 'Emrah Yüksel', '1'),
(3, 'Vakıfbank', 'TR455645645646546465465', 'Emrah Yüksel', '1'),
(5, 'Ziraat Bankası', 'TR45646545646awrwerwerwer', 'Emrah Yüksel', '1'),
(6, 'İmar Bankası', 'TR21331313113233313131', 'Ali Veli', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Bahadır Önal E-Ticaret Çalışması', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong> Phasellus viverra viverra eros, eu laoreet leo iaculis vehicula. Nunc pretium volutpat neque, finibus fermentum neque pretium vel. In hac habitasse platea dictumst. Phasellus ipsum lacus, vehicula et fringilla a, dapibus ac mi. Nulla orci tortor, fringilla eget magna in, dictum consequat lectus. Sed tincidunt purus nec erat scelerisque pretium. Aliquam vehicula lacus vel lacus varius egestas.</p><p>Vivamus eget euismod mi. Pellentesque et bibendum libero. Aliquam ullamcorper felis id nisl fermentum fringilla. Curabitur egestas condimentum lacus ut ornare. Donec vitae libero sagittis, pharetra massa ut, aliquam tellus. Proin luctus ex orci, nec pretium purus ultrices id. Nulla facilisi. Donec convallis pellentesque mauris. Suspendisse potenti. Ut viverra ex ante, vel tincidunt massa pellentesque et. Aenean rutrum ut ex facilisis vestibulum. Mauris est nibh, auctor quis efficitur et, pellentesque eu metus.</p><p>Sed auctor maximus nunc ut cursus. Sed ultrices lectus eu turpis tincidunt, id dignissim nisl mattis. Sed in risus justo. Fusce et eleifend elit. Donec sit amet sapien accumsan, ornare diam ut, pellentesque dui. Maecenas ut molestie mauris. Curabitur imperdiet enim ut feugiat vulputate. Quisque dictum dolor a risus facilisis, eu bibendum dolor aliquam. Mauris vestibulum leo mauris, sit amet blandit erat suscipit nec.</p><p>Nam facilisis sem vitae sem cursus, non ultrices dolor ullamcorper. Donec tortor massa, convallis eu tortor ornare, ornare sollicitudin tellus. Pellentesque quis interdum neque. Praesent elementum mauris sit amet nibh scelerisque bibendum. Maecenas aliquet metus lacinia elit bibendum volutpat. Vivamus eget augue eu quam consectetur venenatis. Proin rhoncus, tellus vitae tempor efficitur, eros orci maximus odio, eu rutrum sapien arcu non nisl. Donec egestas mauris eu nisl faucibus, ullamcorper dictum urna efficitur. Aliquam eu velit nisi. Etiam vitae nisi massa. Etiam a auctor felis.</p><p>Vestibulum sem erat, venenatis at blandit in, mollis ut mauris. Donec vitae neque venenatis ante fermentum auctor vel at quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ut auctor lectus, at egestas odio. Donec vestibulum nunc vitae porttitor scelerisque. Aenean non erat facilisis, finibus ex eu, commodo nulla. Pellentesque ornare, sem sit amet laoreet efficitur, sapien enim facilisis nibh, vel imperdiet nunc eros id libero. Suspendisse potenti. Nullam nec fringilla nibh. Duis sed ex a eros interdum faucibus. Duis viverra quis sem ut accumsan.</p>', 'gGXSHaER4h8', 'Joy Akademi ile ilgili hakkımızda vizyon içeriği burada yer alacağından buraya vizyon verisi girilecekitir.', 'Joy Akademi ile ilgili hakkımızda vizyon içeriği burada yer alacağından buraya vizyon verisi girilecekitir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(14, 'Ayakkabı', 0, 'ayakkabi', 1, '1'),
(15, 'T-Shirt', 0, 't-shirt', 2, '1'),
(16, 'Gömlek', 0, 'gomlek', 3, '1'),
(17, 'Pantolon', 0, 'pantolon', 4, '1'),
(20, 'Şapkalar', 0, 'sapkalar', 5, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(147, '2017-07-08 15:21:45', '', '12345678910', '', 'bahadir@gmail.com', '08508408076', 'e10adc3949ba59abbe56e057f20f883e', 'Bahadır Önal', '', '', '', '', '5', 1),
(151, '2017-07-16 17:37:27', '', '', '', 'info@joyakademi.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Murat Harun', '', '', '', '', '1', 1),
(152, '2017-07-16 17:40:24', '', '', '', 'info@muratharuns.com', '08508408076', 'e10adc3949ba59abbe56e057f20f883e', 'Murat Harun', '', '', '', '', '1', 1),
(153, '2017-07-31 11:31:57', '', '', '', 'user@user.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Test User', '', 'İstanbul', 'Çatalca', '', '1', 1),
(156, '2021-05-23 12:32:57', '', '', '', '', '', 'fcea920f7412b5da7be0cf42b8c93759', '', '', '', '', '', '1', 1),
(157, '2021-05-23 12:53:27', '', '', '', 'musteri@bahadir.com', '', 'fcea920f7412b5da7be0cf42b8c93759', 'Bahadır Önal', '', '', '', '', '1', 1),
(158, '2021-05-23 14:37:38', '', '', '', 'ali@ali.com', '', 'fcea920f7412b5da7be0cf42b8c93759', 'ahmet ahmet', '', '', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '', 'hakkimizda', 1, '1', 'hakkimizda'),
(4, '0', 'Kategoriler', '', 'kategoriler', 3, '1', 'kategoriler'),
(11, '', 'Mesafeli satış sözleşmesi', '<p>MESAFELİ S&Ouml;ZLEŞMELER Y&Ouml;NETMELİĞİ</p><p>BİRİNCİ B&Ouml;L&Uuml;M</p><p>Ama&ccedil;, Kapsam, Dayanak ve Tanımlar</p><p><strong>Ama&ccedil;</strong></p><p><strong>MADDE 1 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin amacı, mesafeli s&ouml;zleşmelere ilişkin uygulama usul ve esaslarını d&uuml;zenlemektir.</p><p><strong>Kapsam</strong></p><p><strong>MADDE 2 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik, mesafeli s&ouml;zleşmelere uygulanır.</p><p>(2) Bu Y&ouml;netmelik h&uuml;k&uuml;mleri;</p><p>a) Finansal hizmetler,</p><p>b) Otomatik makineler aracılığıyla yapılan satışlar,</p><p>c) Halka a&ccedil;ık telefon vasıtasıyla telekom&uuml;nikasyon operat&ouml;rleriyle bu telefonun kullanımı,</p><p>&ccedil;) Bahis, &ccedil;ekiliş, piyango ve benzeri şans oyunlarına ilişkin hizmetler,</p><p>d) Taşınmaz malların veya bu mallara ilişkin hakların oluşumu, devri veya kazanımı,</p><p>e) Konut kiralama,</p><p>f) Paket turlar,</p><p>g) Devre m&uuml;lk, devre tatil, uzun s&uuml;reli tatil hizmeti ve bunların yeniden satımı veya değişimi,</p><p>ğ) Yiyecek ve i&ccedil;ecekler gibi g&uuml;nl&uuml;k t&uuml;ketim maddelerinin, satıcının d&uuml;zenli teslimatları &ccedil;er&ccedil;evesinde t&uuml;keticinin meskenine veya işyerine g&ouml;t&uuml;r&uuml;lmesi,</p><p>h) 5 inci maddenin birinci fıkrasının (a), (b) ve (d) bentlerindeki bilgi verme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; ile 18 inci ve 19 uncu maddelerde yer alan y&uuml;k&uuml;ml&uuml;l&uuml;kler saklı kalmak koşuluyla yolcu taşıma hizmetleri,</p><p>ı) Malların montaj, bakım ve onarımı,</p><p>i) Bakımevi hizmetleri, &ccedil;ocuk, yaşlı ya da hasta bakımı gibi ailelerin ve kişilerin desteklenmesine y&ouml;nelik sosyal hizmetler</p><p>ile&nbsp;ilgili s&ouml;zleşmelere uygulanmaz.</p><p><strong>Dayanak</strong></p><p><strong>MADDE 3 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik,&nbsp;7/11/2013&nbsp;tarihli ve 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunun 48 inci ve 84 &uuml;nc&uuml; maddelerine dayanılarak hazırlanmıştır.</p><p><strong>Tanımlar</strong></p><p><strong>MADDE 4 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin uygulanmasında;</p><p>a) Dijital i&ccedil;erik: Bilgisayar programı, uygulama, oyun, m&uuml;zik, video ve metin gibi dijital şekilde sunulan her t&uuml;rl&uuml; veriyi,</p><p>b) Hizmet: Bir &uuml;cret veya menfaat karşılığında yapılan ya da yapılması taahh&uuml;t edilen mal sağlama dışındaki her t&uuml;rl&uuml; t&uuml;ketici işleminin konusunu,</p><p>c) Kalıcı veri saklayıcısı: T&uuml;keticinin g&ouml;nderdiği veya kendisine g&ouml;nderilen bilgiyi, bu bilginin amacına uygun olarak makul bir s&uuml;re incelemesine elverecek şekilde kaydedilmesini ve değiştirilmeden kopyalanmasını sağlayan ve bu bilgiye aynen ulaşılmasına&nbsp;imkan&nbsp;veren kısa mesaj, elektronik posta, internet, disk, CD, DVD, hafıza kartı ve benzeri her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p><p>&ccedil;) Kanun: 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunu,</p><p>d) Mal: Alışverişe konu olan; taşınır eşya, konut veya tatil ama&ccedil;lı taşınmaz mallar ile elektronik ortamda kullanılmak &uuml;zere hazırlanan yazılım, ses, g&ouml;r&uuml;nt&uuml; ve benzeri her t&uuml;rl&uuml; gayri maddi malları,</p><p>e) Mesafeli s&ouml;zleşme: Satıcı veya sağlayıcı ile t&uuml;keticinin eş zamanlı fiziksel varlığı olmaksızın, mal veya hizmetlerin uzaktan pazarlanmasına y&ouml;nelik olarak oluşturulmuş bir sistem &ccedil;er&ccedil;evesinde, taraflar arasında s&ouml;zleşmenin kurulduğu ana kadar ve kurulduğu an da&nbsp;dahil&nbsp;olmak &uuml;zere uzaktan iletişim ara&ccedil;larının kullanılması suretiyle kurulan s&ouml;zleşmeleri,</p><p>f) Sağlayıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye hizmet sunan ya da hizmet sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p><p>g) Satıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye mal sunan ya da mal sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p><p>ğ) T&uuml;ketici: Ticari veya mesleki olmayan ama&ccedil;larla hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p><p>h) Uzaktan iletişim aracı: Mektup, katalog, telefon, faks, radyo, televizyon, elektronik posta mesajı, kısa mesaj, internet gibi fiziksel olarak karşı karşıya gelinmeksizin s&ouml;zleşme kurulmasına&nbsp;imkan&nbsp;veren her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p><p>ı) Yan s&ouml;zleşme: Bir mesafeli s&ouml;zleşme ile ilişkili olarak satıcı, sağlayıcı ya da &uuml;&ccedil;&uuml;nc&uuml; bir kişi tarafından s&ouml;zleşme konusu mal ya da hizmete ilave olarak t&uuml;keticiye sağlanan mal veya hizmete ilişkin s&ouml;zleşmeyi</p><p>ifade&nbsp;eder.</p><p>İKİNCİ B&Ouml;L&Uuml;M</p><p>&Ouml;n Bilgilendirme Y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</p><p><strong>&Ouml;n bilgilendirme</strong></p><p><strong>MADDE 5 &ndash;</strong>&nbsp;(1) T&uuml;ketici, mesafeli s&ouml;zleşmenin kurulmasından ya da buna karşılık gelen herhangi bir teklifi kabul etmeden &ouml;nce, aşağıdaki hususların tamamını i&ccedil;erecek şekilde satıcı veya sağlayıcı tarafından bilgilendirilmek zorundadır.</p><p>a) S&ouml;zleşme konusu mal veya hizmetin temel nitelikleri,</p><p>b) Satıcı veya sağlayıcının adı veya unvanı, varsa MERSİS numarası,</p><p>c) T&uuml;keticinin satıcı veya sağlayıcı ile hızlı bir şekilde irtibat kurmasına&nbsp;imkan&nbsp;veren, satıcı veya sağlayıcının a&ccedil;ık adresi, telefon numarası ve benzeri iletişim bilgileri ile varsa satıcı veya sağlayıcının adına ya da hesabına hareket edenin kimliği ve adresi,</p><p>&ccedil;) Satıcı veya sağlayıcının t&uuml;keticinin&nbsp;şikayetlerini&nbsp;iletmesi i&ccedil;in (c) bendinde belirtilenden farklı iletişim bilgileri var ise, bunlara ilişkin bilgi,</p><p>d) Mal veya hizmetin t&uuml;m vergiler&nbsp;dahil&nbsp;toplam fiyatı, niteliği itibariyle &ouml;nceden hesaplanamıyorsa fiyatın hesaplanma usul&uuml;, varsa t&uuml;m nakliye, teslim ve benzeri ek masraflar ile bunların &ouml;nceden hesaplanamaması halinde ek masrafların &ouml;denebileceği bilgisi,</p><p>e) S&ouml;zleşmenin kurulması aşamasında uzaktan iletişim aracının kullanım bedelinin olağan &uuml;cret tarifesi &uuml;zerinden hesaplanamadığı durumlarda, t&uuml;keticilere y&uuml;klenen ilave maliyet,</p><p>f) &Ouml;deme, teslimat, ifaya ilişkin bilgiler ile varsa bunlara ilişkin taahh&uuml;tler ve satıcı veya sağlayıcının&nbsp;şikayetlere&nbsp;ilişkin &ccedil;&ouml;z&uuml;m y&ouml;ntemleri,</p><p>g) Cayma hakkının olduğu durumlarda, bu hakkın kullanılma şartları, s&uuml;resi, usul&uuml; ve satıcının iade i&ccedil;in &ouml;ng&ouml;rd&uuml;ğ&uuml; taşıyıcıya ilişkin bilgiler,</p><p>ğ) Cayma bildiriminin yapılacağı a&ccedil;ık adres, faks numarası veya elektronik posta bilgileri,</p><p>h) 15 inci madde uyarınca cayma hakkının kullanılamadığı durumlarda, t&uuml;keticinin cayma hakkından faydalanamayacağına ya da hangi koşullarda cayma hakkını kaybedeceğine ilişkin bilgi,</p><p>ı) Satıcı veya sağlayıcının talebi &uuml;zerine, varsa t&uuml;ketici tarafından &ouml;denmesi veya sağlanması gereken depozitolar ya da diğer mali teminatlar ve bunlara ilişkin şartlar,</p><p>i) Varsa dijital i&ccedil;eriklerin işlevselliğini etkileyebilecek teknik koruma &ouml;nlemleri,</p><p>j) Satıcı veya sağlayıcının bildiği ya da makul olarak bilmesinin beklendiği, dijital i&ccedil;eriğin hangi donanım ya da yazılımla birlikte &ccedil;alışabileceğine ilişkin bilgi,</p><p>k) T&uuml;keticilerin uyuşmazlık konusundaki başvurularını T&uuml;ketici Mahkemesine veya T&uuml;ketici Hakem Heyetine yapabileceklerine dair bilgi.</p><p>(2) Birinci fıkrada belirtilen bilgiler, mesafeli s&ouml;zleşmenin ayrılmaz bir par&ccedil;asıdır ve taraflar aksini a&ccedil;ık&ccedil;a kararlaştırmadık&ccedil;a bu bilgiler değiştirilemez.</p><p>(3) Satıcı veya sağlayıcı, birinci fıkranın (d) bendinde yer alan ek masraflara ilişkin bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmezse, t&uuml;ketici bunları karşılamakla y&uuml;k&uuml;ml&uuml; değildir.</p><p>(4) Birinci fıkranın (d) bendinde yer alan toplam fiyatın, belirsiz s&uuml;reli s&ouml;zleşmelerde veya belirli s&uuml;reli abonelik s&ouml;zleşmelerinde, her faturalama d&ouml;nemi bazında toplam masrafları i&ccedil;ermesi zorunludur.</p><p>(5) A&ccedil;ık artırma veya eksiltme yoluyla kurulan s&ouml;zleşmelerde, birinci fıkranın (b), (c) ve (&ccedil;) bentlerinde yer alan bilgilerin yerine a&ccedil;ık artırmayı yapan ile ilgili bilgilere yer verilebilir.</p><p>(6) &Ouml;n bilgilendirme yapıldığına ilişkin ispat y&uuml;k&uuml; satıcı veya sağlayıcıya aittir.</p><p><strong>&Ouml;n bilgilendirme y&ouml;ntemi</strong></p><p><strong>MADDE 6 &ndash;</strong>&nbsp;(1) T&uuml;ketici, 5 inci maddenin birinci fıkrasında belirtilen t&uuml;m hususlarda, kullanılan uzaktan iletişim aracına uygun olarak en az on iki punto b&uuml;y&uuml;kl&uuml;ğ&uuml;nde, anlaşılabilir bir dilde, a&ccedil;ık, sade ve okunabilir bir şekilde satıcı veya sağlayıcı tarafından yazılı olarak veya kalıcı veri saklayıcısı ile bilgilendirilmek zorundadır.</p><p>(2) Mesafeli s&ouml;zleşmenin internet yoluyla kurulması halinde, satıcı veya sağlayıcı;</p><p>a) 5 inci maddenin birinci fıkrasında yer alan bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; saklı kalmak kaydıyla, aynı fıkranın (a), (d), (g) ve (h) bentlerinde yer alan bilgileri bir b&uuml;t&uuml;n olarak, t&uuml;keticinin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; altına girmesinden hemen &ouml;nce a&ccedil;ık bir şekilde ayrıca g&ouml;stermek,</p><p>b) Herhangi bir g&ouml;nderim kısıtlamasının uygulanıp uygulanmadığını ve hangi &ouml;deme ara&ccedil;larının kabul edildiğini, en ge&ccedil; t&uuml;ketici siparişini vermeden &ouml;nce, a&ccedil;ık ve anlaşılabilir bir şekilde belirtmek</p><p>zorundadır.</p><p>(3) Mesafeli s&ouml;zleşmenin sesli iletişim yoluyla kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılır bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p><p>(4) Siparişe ilişkin bilgilerin sınırlı alanda ya da zamanda sunulduğu bir ortam yoluyla mesafeli s&ouml;zleşmenin kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (b), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılabilir bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p><p>(5) &Uuml;&ccedil;&uuml;nc&uuml; ve d&ouml;rd&uuml;nc&uuml; fıkralarda belirtilen y&ouml;ntemlerle kurulan ve anında ifa edilen hizmet satışlarına ilişkin s&ouml;zleşmelerde t&uuml;keticinin, sipariş vermeden hemen &ouml;nce s&ouml;z konusu ortamda 5 inci maddenin birinci fıkrasının sadece (a), (b), (d) ve (h) bentlerinde yer alan hususlarda a&ccedil;ık ve anlaşılır bir şekilde bilgilendirilmesi yeterlidir.</p><p><strong>&Ouml;n bilgilerin teyidi</strong></p><p><strong>MADDE 7 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin 6&nbsp;ncı&nbsp;maddede belirtilen y&ouml;ntemlerle &ouml;n bilgileri edindiğini kullanılan uzaktan iletişim aracına uygun olarak teyit etmesini sağlamak zorundadır. Aksi halde s&ouml;zleşme kurulmamış sayılır.</p><p><strong>&Ouml;n bilgilendirmeye ilişkin diğer y&uuml;k&uuml;ml&uuml;l&uuml;kler</strong></p><p><strong>MADDE 8 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;ketici siparişi onaylamadan hemen &ouml;nce, verilen siparişin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; anlamına geldiği hususunda t&uuml;keticiyi a&ccedil;ık ve anlaşılır bir şekilde bilgilendirmek zorundadır. Aksi halde t&uuml;ketici siparişi ile bağlı değildir.</p><p>(2) T&uuml;keticinin mesafeli s&ouml;zleşme kurulması amacıyla satıcı veya sağlayıcı tarafından telefonla aranması durumunda, her g&ouml;r&uuml;şmenin başında satıcı veya sağlayıcı kimliğini, eğer bir başkası adına veya hesabına arıyorsa bu kişinin kimliğini ve g&ouml;r&uuml;şmenin ticari amacını a&ccedil;ıklamalıdır.</p><p>&Uuml;&Ccedil;&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p><p>Cayma Hakkının Kullanımı ve Tarafların Y&uuml;k&uuml;ml&uuml;l&uuml;kleri</p><p><strong>Cayma hakkı</strong></p><p><strong>MADDE 9 &ndash;</strong>&nbsp;(1) T&uuml;ketici, on d&ouml;rt g&uuml;n i&ccedil;inde herhangi bir gerek&ccedil;e g&ouml;stermeksizin ve cezai şart &ouml;demeksizin s&ouml;zleşmeden cayma hakkına sahiptir.</p><p>(2) Cayma hakkı s&uuml;resi, hizmet ifasına ilişkin s&ouml;zleşmelerde s&ouml;zleşmenin kurulduğu g&uuml;n; mal teslimine ilişkin s&ouml;zleşmelerde ise t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin malı teslim aldığı g&uuml;n başlar. Ancak t&uuml;ketici, s&ouml;zleşmenin kurulmasından malın teslimine kadar olan s&uuml;re i&ccedil;inde de cayma hakkını kullanabilir.</p><p>(3) Cayma hakkı s&uuml;resinin belirlenmesinde;</p><p>a) Tek sipariş konusu olup ayrı&nbsp;ayrı&nbsp;teslim edilen mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son malı teslim aldığı g&uuml;n,</p><p>b) Birden fazla par&ccedil;adan oluşan mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son par&ccedil;ayı teslim aldığı g&uuml;n,</p><p>c) Belirli bir s&uuml;re boyunca malın d&uuml;zenli tesliminin yapıldığı s&ouml;zleşmelerde, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin ilk malı teslim aldığı g&uuml;n</p><p>esas&nbsp;alınır.</p><p>(4) Malın satıcı tarafından taşıyıcıya teslimi, t&uuml;keticiye yapılan teslim olarak kabul edilmez.</p><p>(5) Mal teslimi ile hizmet ifasının birlikte yapıldığı s&ouml;zleşmelerde, mal teslimine ilişkin cayma hakkı h&uuml;k&uuml;mleri uygulanır.</p><p><strong>Eksik bilgilendirme</strong></p><p><strong>MADDE 10 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, cayma hakkı konusunda t&uuml;keticinin bilgilendirildiğini ispat etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r. T&uuml;ketici, cayma hakkı konusunda gerektiği şekilde bilgilendirilmezse, cayma hakkını kullanmak i&ccedil;in on d&ouml;rt g&uuml;nl&uuml;k s&uuml;reyle bağlı değildir. Bu s&uuml;re her hal&uuml;karda cayma s&uuml;resinin bittiği tarihten itibaren bir yıl sonra sona erer.</p><p>(2) Cayma hakkı konusunda gerektiği şekilde bilgilendirmenin bir yıllık s&uuml;re i&ccedil;inde yapılması halinde, on d&ouml;rt g&uuml;nl&uuml;k cayma hakkı s&uuml;resi, bu bilgilendirmenin gereği gibi yapıldığı g&uuml;nden itibaren işlemeye başlar.</p><p><strong>Cayma hakkının kullanımı</strong></p><p><strong>MADDE 11 &ndash;</strong>&nbsp;(1) Cayma hakkının kullanıldığına dair bildirimin cayma hakkı s&uuml;resi dolmadan, yazılı olarak veya kalıcı veri saklayıcısı ile satıcı veya sağlayıcıya y&ouml;neltilmesi yeterlidir.</p><p>(2) Cayma hakkının kullanılmasında t&uuml;ketici,&nbsp;EK&rsquo;te&nbsp;yer alan formu kullanabileceği gibi cayma kararını bildiren a&ccedil;ık bir beyanda da bulunabilir. Satıcı veya sağlayıcı, t&uuml;keticinin bu formu doldurabilmesi veya cayma beyanını g&ouml;nderebilmesi i&ccedil;in internet sitesi &uuml;zerinden se&ccedil;enek de sunabilir.&nbsp;&nbsp;İnternet sitesi &uuml;zerinden t&uuml;keticilere cayma hakkı sunulması durumunda satıcı veya sağlayıcı, t&uuml;keticilerin iletmiş olduğu cayma taleplerinin kendilerine ulaştığına ilişkin teyit bilgisini t&uuml;keticiye derhal iletmek zorundadır.</p><p>(3) Sesli iletişim yoluyla yapılan satışlarda, satıcı veya sağlayıcı,&nbsp;EK&rsquo;te&nbsp;yer alan formu en ge&ccedil; mal teslimine veya hizmet ifasına kadar t&uuml;keticiye g&ouml;ndermek zorundadır. T&uuml;ketici bu t&uuml;r satışlarda da cayma hakkını kullanmak i&ccedil;in bu formu kullanabileceği gibi, ikinci fıkradaki y&ouml;ntemleri de kullanabilir.</p><p>(4) Bu maddede ge&ccedil;en cayma hakkının kullanımına ilişkin ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; t&uuml;keticiye aittir.</p><p><strong>Satıcı veya sağlayıcının y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p><p><strong>MADDE 12 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığına ilişkin bildirimin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde, varsa malın t&uuml;keticiye teslim masrafları da&nbsp;dahil&nbsp;olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri iade etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p><p>(2) Satıcı veya sağlayıcı, birinci fıkrada belirtilen t&uuml;m geri &ouml;demeleri, t&uuml;keticinin satın alırken kullandığı &ouml;deme aracına uygun bir şekilde ve t&uuml;keticiye herhangi bir masraf veya y&uuml;k&uuml;ml&uuml;l&uuml;k getirmeden tek seferde yapmak zorundadır.</p><p>(3) Cayma hakkının kullanımında, 5 inci maddenin birinci fıkrasının (g) bendi kapsamında, satıcının iade i&ccedil;in belirttiği taşıyıcı aracılığıyla malın geri g&ouml;nderilmesi halinde, t&uuml;ketici iadeye ilişkin masraflardan sorumlu tutulamaz. Satıcının &ouml;n bilgilendirmede iade i&ccedil;in herhangi bir taşıyıcıyı belirtmediği durumda ise, t&uuml;keticiden iade masrafına ilişkin herhangi bir bedel talep edilemez. İade i&ccedil;in &ouml;n bilgilendirmede belirtilen taşıyıcının, t&uuml;keticinin bulunduğu yerde şubesinin olmaması durumunda satıcı, ilave hi&ccedil;bir masraf talep etmeksizin iade edilmek istenen malın t&uuml;keticiden alınmasını sağlamakla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p><p><strong>T&uuml;keticinin y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p><p><strong>MADDE 13 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı malı kendisinin geri alacağına dair bir teklifte bulunmadık&ccedil;a, t&uuml;ketici cayma hakkını kullandığına ilişkin bildirimi y&ouml;nelttiği tarihten itibaren on g&uuml;n i&ccedil;inde malı satıcı veya sağlayıcıya ya da yetkilendirmiş olduğu kişiye geri g&ouml;ndermek zorundadır.</p><p>(2) T&uuml;ketici, cayma s&uuml;resi i&ccedil;inde malı, işleyişine, teknik &ouml;zelliklerine ve kullanım talimatlarına uygun bir şekilde kullandığı takdirde meydana gelen değişiklik ve bozulmalardan sorumlu değildir.</p><p><strong>Cayma hakkının kullanımının yan s&ouml;zleşmelere etkisi</strong></p><p><strong>MADDE 14 &ndash;</strong>&nbsp;(1) Kanunun 30 uncu maddesi h&uuml;k&uuml;mleri saklı kalmak koşuluyla, t&uuml;keticinin cayma hakkını kullanması durumunda yan s&ouml;zleşmeler de kendiliğinden sona erer. Bu durumda t&uuml;ketici, 13 &uuml;nc&uuml; maddenin ikinci fıkrasında belirtilen haller dışında herhangi bir masraf, tazminat veya cezai şart &ouml;demekle y&uuml;k&uuml;ml&uuml; değildir.</p><p>(2) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığını yan s&ouml;zleşmenin tarafı olan &uuml;&ccedil;&uuml;nc&uuml; kişiye derhal bildirmelidir.</p><p><strong>Cayma hakkının istisnaları</strong></p><p><strong>MADDE 15 &ndash;</strong>&nbsp;(1) Taraflarca aksi kararlaştırılmadık&ccedil;a, t&uuml;ketici aşağıdaki s&ouml;zleşmelerde cayma hakkını kullanamaz:</p><p>a) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve satıcı veya sağlayıcının kontrol&uuml;nde olmayan mal veya hizmetlere ilişkin s&ouml;zleşmeler.</p><p>b) T&uuml;keticinin istekleri veya kişisel ihtiya&ccedil;ları doğrultusunda hazırlanan mallara ilişkin s&ouml;zleşmeler.</p><p>c) &Ccedil;abuk bozulabilen veya son kullanma tarihi ge&ccedil;ebilecek malların teslimine ilişkin s&ouml;zleşmeler.</p><p>&ccedil;) Tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olan mallardan; iadesi sağlık ve&nbsp;hijyen&nbsp;a&ccedil;ısından uygun olmayanların teslimine ilişkin s&ouml;zleşmeler.</p><p>d) Tesliminden sonra başka &uuml;r&uuml;nlerle karışan ve doğası gereği ayrıştırılması m&uuml;mk&uuml;n olmayan mallara ilişkin s&ouml;zleşmeler.</p><p>e) Malın tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olması halinde maddi ortamda sunulan kitap, dijital i&ccedil;erik ve bilgisayar sarf malzemelerine ilişkin s&ouml;zleşmeler.</p><p>f) Abonelik s&ouml;zleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi s&uuml;reli yayınların teslimine ilişkin s&ouml;zleşmeler.</p><p>g) Belirli bir tarihte veya d&ouml;nemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-i&ccedil;ecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin s&ouml;zleşmeler.</p><p>ğ) Elektronik ortamda anında ifa edilen hizmetler veya t&uuml;keticiye anında teslim edilen&nbsp;gayrimaddi&nbsp;mallara ilişkin s&ouml;zleşmeler.</p><p>h) Cayma hakkı s&uuml;resi sona ermeden &ouml;nce, t&uuml;keticinin onayı ile ifasına başlanan hizmetlere ilişkin s&ouml;zleşmeler.</p><p>D&Ouml;RD&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p><p>Diğer H&uuml;k&uuml;mler</p><p><strong>S&ouml;zleşmenin ifası ve teslimat</strong></p><p><strong>MADDE 16 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin siparişinin kendisine ulaştığı tarihten itibaren taahh&uuml;t ettiği s&uuml;re i&ccedil;inde edimini yerine getirmek zorundadır. Mal satışlarında bu s&uuml;re her hal&uuml;karda otuz g&uuml;n&uuml; ge&ccedil;emez.</p><p>(2) Satıcı veya sağlayıcının birinci fıkrada yer alan y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmemesi durumunda, t&uuml;ketici s&ouml;zleşmeyi feshedebilir.</p><p>(3) S&ouml;zleşmenin feshi durumunda, satıcı veya sağlayıcı, varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri fesih bildiriminin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde t&uuml;keticiye&nbsp;4/12/1984tarihli ve 3095 sayılı Kanuni Faiz ve Temerr&uuml;t Faizine İlişkin Kanunun 1 inci maddesine g&ouml;re belirlenen kanuni faiziyle birlikte geri &ouml;demek ve varsa t&uuml;keticiyi bor&ccedil; altına sokan t&uuml;m kıymetli evrak ve benzeri belgeleri iade etmek zorundadır.</p><p>(4) Sipariş konusu mal ya da hizmet ediminin yerine getirilmesinin&nbsp;imkansızlaştığı&nbsp;hallerde satıcı veya sağlayıcının bu durumu &ouml;ğrendiği tarihten itibaren &uuml;&ccedil; g&uuml;n i&ccedil;inde t&uuml;keticiye yazılı olarak veya kalıcı veri saklayıcısı ile bildirmesi ve varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri bildirim tarihinden itibaren en ge&ccedil; on d&ouml;rt g&uuml;n i&ccedil;inde iade etmesi zorunludur. Malın stokta bulunmaması durumu, mal ediminin yerine getirilmesinin imk&acirc;nsızlaşması olarak kabul edilmez.</p><p><strong>Zarardan sorumluluk</strong></p><p><strong>MADDE 17 &ndash;</strong>&nbsp;(1) Satıcı, malın t&uuml;ketici ya da t&uuml;keticinin taşıyıcı dışında belirleyeceği &uuml;&ccedil;&uuml;nc&uuml; bir kişiye teslimine kadar oluşan kayıp ve hasarlardan sorumludur.</p><p>(2) T&uuml;keticinin, satıcının belirlediği taşıyıcı dışında başka bir taşıyıcı ile malın g&ouml;nderilmesini talep etmesi durumunda, malın ilgili taşıyıcıya tesliminden itibaren oluşabilecek kayıp ya da hasardan satıcı sorumlu değildir.</p><p><strong>Telefon kullanım &uuml;creti</strong></p><p><strong>MADDE 18 &ndash;</strong>&nbsp;(1) Kurulmuş olan s&ouml;zleşmeye ilişkin olarak t&uuml;keticilerin iletişime ge&ccedil;ebilmesi i&ccedil;in satıcı veya sağlayıcı tarafından bir telefon hattı tahsis edilmesi durumunda, bu hat ile ilgili olarak satıcı veya sağlayıcı olağan &uuml;cret tarifesinden daha y&uuml;ksek bir tarife se&ccedil;emez.</p><p><strong>İlave &ouml;demeler</strong></p><p><strong>MADDE 19 &ndash;</strong>&nbsp;(1) S&ouml;zleşme kurulmadan &ouml;nce, s&ouml;zleşme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;nden kaynaklanan ve &uuml;zerinde anlaşılmış esas bedel dışında herhangi bir ilave bedel talep edilebilmesi i&ccedil;in t&uuml;keticinin a&ccedil;ık onayının ayrıca alınması zorunludur.</p><p>(2) T&uuml;keticinin a&ccedil;ık onayı alınmadan ilave &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; doğuran se&ccedil;eneklerin kendiliğinden se&ccedil;ili olarak sunulmuş olmasından dolayı t&uuml;ketici bir &ouml;demede bulunmuş ise, satıcı veya sağlayıcı bu &ouml;demelerin iadesini derhal yapmak zorundadır.</p><p><strong>Bilgilerin saklanması ve ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</strong></p><p><strong>MADDE 20 &minus;</strong>&nbsp;(1) Satıcı veya sağlayıcı, bu Y&ouml;netmelik kapsamında d&uuml;zenlenen cayma hakkı, bilgilendirme, teslimat ve diğer hususlardaki y&uuml;k&uuml;ml&uuml;l&uuml;klerine dair her bir işleme ilişkin bilgi ve belgeyi &uuml;&ccedil; yıl boyunca saklamak zorundadır.</p><p>(2) Oluşturdukları sistem &ccedil;er&ccedil;evesinde, uzaktan iletişim ara&ccedil;larını kullanmak veya kullandırmak suretiyle satıcı veya sağlayıcı adına mesafeli s&ouml;zleşme kurulmasına aracılık edenler, bu Y&ouml;netmelikte yer alan hususlardan dolayı satıcı veya sağlayıcı ile yapılan işlemlere ilişkin kayıtları &uuml;&ccedil; yıl boyunca tutmak ve istenilmesi halinde bu bilgileri ilgili kurum, kuruluş ve t&uuml;keticilere vermekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p><p>(3) Satıcı veya sağlayıcı elektronik ortamda t&uuml;keticiye teslim edilen&nbsp;gayrimaddi&nbsp;malların veya ifa edilen hizmetlerin ayıpsız olduğunu ispatla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p><p>BEŞİNCİ B&Ouml;L&Uuml;M</p><p>&Ccedil;eşitli ve Son H&uuml;k&uuml;mler</p><p><strong>Y&uuml;r&uuml;rl&uuml;kten kaldırılan y&ouml;netmelik</strong></p><p><strong>MADDE 21 &ndash;</strong>&nbsp;(1)&nbsp;6/3/2011&nbsp;tarihli ve 27866 sayılı Resm&icirc; Gazete&rsquo;de yayımlanan Mesafeli S&ouml;zleşmelere Dair Y&ouml;netmelik y&uuml;r&uuml;rl&uuml;kten kaldırılmıştır.</p><p><strong>Y&uuml;r&uuml;rl&uuml;k</strong></p><p><strong>MADDE 22 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik yayımı tarihinden itibaren &uuml;&ccedil; ay sonra y&uuml;r&uuml;rl&uuml;ğe girer.</p><p><strong>Y&uuml;r&uuml;tme</strong></p><p><strong>MADDE 23 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik h&uuml;k&uuml;mlerini G&uuml;mr&uuml;k ve Ticaret Bakanı y&uuml;r&uuml;t&uuml;r.</p><p>&nbsp;</p><p>&nbsp;</p><p>EK</p><p>&Ouml;RNEK CAYMA FORMU</p><p>&nbsp;</p><p>(Bu form, sadece s&ouml;zleşmeden cayma hakkı kullanılmak istenildiğinde doldurup</p><p>g&ouml;nderilecektir.)</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>-Kime:</strong>&nbsp;(Satıcı veya sağlayıcı tarafından doldurulacak olan bu kısımda satıcı veya sağlayıcının ismi, unvanı, adresi varsa faks numarası ve e-posta adresi yer alacaktır.)</p><p>&nbsp;</p><p>&nbsp;</p><p>-Bu formla aşağıdaki malların satışına veya hizmetlerin sunulmasına ilişkin s&ouml;zleşmeden cayma hakkımı kullandığımı beyan ederim.</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>-Sipariş tarihi veya teslim tarihi:</strong></p><p>&nbsp;</p><p>&nbsp;</p><p><strong>-Cayma hakkına konu mal veya hizmet:</strong></p><p>&nbsp;</p><p>&nbsp;</p><p><strong>-Cayma hakkına konu mal veya hizmetin bedeli:</strong></p><p>&nbsp;</p><p>&nbsp;</p><p><strong>-T&uuml;keticinin adı ve soyadı:</strong></p><p>&nbsp;</p><p>&nbsp;</p><p><strong>-T&uuml;keticinin adresi:</strong></p><p>&nbsp;</p><p>&nbsp;</p><p><strong>-T&uuml;keticinin imzası:</strong>&nbsp;(Sadece&nbsp;kağıt&nbsp;&uuml;zerinde g&ouml;nderilmesi halinde)</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>-Tarih:</strong></p><p>&nbsp;</p>', '', 20, '0', 'mesafeli-satis-sozlesmesi'),
(12, '', 'Gizlilik Koşullarımız', '<p>GİZLİLİK KOŞULLARI</p><p>&nbsp;</p><p>PEPSICO web sitesini ziyaret eden t&uuml;m katılımcılar bu gizlilik bildirgesini okuduklarını ve bildirgeye uyacaklarını kabul ve taahh&uuml;t ederler.<br /><br />PEPSICO sitesi ile katılımcılara muhtelif hizmetler verecektir. Anılan hizmetlerin ifası ile ilgili olarak PEPSICO&#39;ın manyetik ortamda, yazılı ve/veya s&ouml;zl&uuml; olarak Katılımcı&#39;ya iletmiş olduğu veya Katılımcı&#39;nın herhangi bir surette &ouml;ğrendiği PEPSICO&#39;a ait her t&uuml;rl&uuml; bilgi-belge gizli tutulacak olup, hi&ccedil;bir şekilde-surette &uuml;&ccedil;&uuml;nc&uuml; kişi-kuruluşlara a&ccedil;ıklanmayacak, aktarılmayacak, kullandırılmayacaktır.<br /><br />Gizli Bilgi&#39;nin Tanımı ve Kapsamı<br /><br />PEPSICO şirket verileri, web sitesi yazılımı, &uuml;r&uuml;n bilgileri, m&uuml;şteri bilgileri, muhasebe verileri, ticari, mali, teknik ve sair konularda s&ouml;zl&uuml;, yazılı ve manyetik ortamda ve diğer herhangi bir surette Katılımcı&#39;ya iletilen ya da Katılımcı&#39;nın herhangi bir surette &ouml;ğrendiği PEPSICO&#39;a, PEPSICO m&uuml;şterilerine, PEPSICO &uuml;r&uuml;nlerine, PEPSICO personeline, PEPSICO imalat&ccedil;ı-tedarik&ccedil;ilerine, PEPSICO ile ticari /akdi /fiili ilişkide olan sair kişi-kuruluşlara ve PEPSICO bilgisayar-elektronik sistemlerine ait, gizliliği Katılımcı&#39;ya bildirilen veya bildirilmeyen her t&uuml;rl&uuml; bilgi-belge ve veri (data) dosyaları, keza PEPSICO&#39;nin i&ccedil;inde yer aldığı PEPSICO Grubu Şirketlerine ait olan aynı mahiyetteki bilgi-belgeler-datalar, raporlar, istatistikler, sorgulamalar ve sorgulama sonu&ccedil;ları, model, y&ouml;ntem, yenilik, buluş, metod ve usuller, velhasıl hert&uuml;rl&uuml; belge ve dok&uuml;mantasyon Gizli Bilgi&#39;dir.<br /><br />Gizli Bilgiler &Uuml;zerinde M&uuml;lkiye Hakkı ve Tasarruf Yetkisi<br /><br />Gizli Bilgiler PEPSICO&#39;nin m&uuml;lkiyetindedir ve s&uuml;resiz olarak m&uuml;lkiyetinde kalmaya devam eder. Gizli Bilgiler &uuml;zerinde her t&uuml;rl&uuml; tasarruf yetkisi PEPSICO&#39;a aittir.<br /><br />Gizli Bilgilerin her t&uuml;rl&uuml; kopyası da PEPSICO&#39;in m&uuml;lkiyetindedir ve bunlar &uuml;zerindeki telif, m&uuml;lkiyet ve her t&uuml;rl&uuml; haklar ile tasarruf yetkisi m&uuml;nhasıran PEPSICO&#39;e aittir.<br /><br />Katılımcı&#39;nın Gizli Bilgilerden Sorumluluğu, Taahh&uuml;t ve Y&uuml;k&uuml;ml&uuml;l&uuml;kleri<br /><br />Katılımcı, gizlilik esaslarına uygun hareket edecek, Gizli Bilgileri hi&ccedil;bir şekilde kullanmayacak, a&ccedil;ıklamayacak, dağıtmayacak, &uuml;&ccedil;&uuml;nc&uuml; kişilere bedelli/bedelsiz aktarmayacak ve kullandırmayacaktır.<br /><br />PEPSICO&#39;in yazılı yada s&ouml;zl&uuml; izni olmadan Gizli Bilgilerin tamamı veya bir kısmı kesinlikle Katılımcı tarafından &ccedil;oğaltılmaz. Gizli Bilgiler hi&ccedil;bir şekilde-surette PEPSICO ortamı dışına &ccedil;ıkarılamaz.<br /><br />Yaptırım - Cezai Şart<br /><br />Katılımcı tarafından gizlilik bildirimine aykırı davranılması halinde, PEPSICO bu sebepten doğmuş-doğacak her t&uuml;rl&uuml; ve b&uuml;t&uuml;n doğrudan-dolaylı maddi ve manevi, m&uuml;sbet ve menfi zarar, ziyan ve kayıplarını Katılımcı&#39;dan nakten ve defaten tazmin etmesini talep edebilir.</p>', '', 30, '0', 'gizlilik-kosullarimiz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(50, 158, 31, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `siparis_banka` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES
(750012, '2017-08-02 18:27:35', NULL, 153, 120.00, 'Banka Havalesi', 'Yapı Kredi', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(11, 750012, 4, 25.00, 1),
(12, 750012, 5, 95.00, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(2, 'Slider 1', 'dimg/slider/26930312292892424358未标题-1-1-1920x700.jpg', 1, '', '1'),
(4, 'Slider 2', 'dimg/slider/261192201021317245513.jpg.crdownload', 2, '', '1'),
(5, 'Slider 3', 'dimg/slider/29955273552268031440fashion2---1920x700.jpg.crdownload', 3, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(20, 17, '2021-05-27 11:26:42', 'Gucci vintage logolu pamuklu pantolon', 'gucci-vintage-logolu-pamuklu-pantolon', '<p>Bir &ccedil;ift koyu bej ipli askeri pamuklu matkap pantolonu, konfor kavramını &ccedil;ağdaş modaya getiriyor.&nbsp;Arkadaki eski Gucci logo yamasıyla vurgulanan stil, zengin tarihle daha da y&uuml;kseltildi.</p><p>Bej yıkanmış askeri pamuklu matkap</p><p>İşlemeli Gucci eski logo yaması</p><p>İpli elastik bel bandı</p><p>Eğik &ouml;n cepler ve arka yama cepler</p><p>D&uuml;z bacak</p><p>Bacak a&ccedil;ıklığı: 22cm</p><p>İtalya&#39;da yapıldı</p><p>Bu resimde g&ouml;sterilen &uuml;r&uuml;n 48 beden (IT)</p>', 8000.00, '', 'vintage,logolu,pamuklu,pantolon', 100, '1', '1'),
(21, 17, '2021-05-27 11:29:34', 'Pamuklu viskon fitilli pantolon', 'pamuklu-viskon-fitilli-pantolon', '<p>&Ouml;n kıvrımlı bu krem ​​pamuk viskon fitilli pantolonlar, farklı bir kolej estetiğine sahiptir.&nbsp;Rahat kesimleri, tanıdık sil&uuml;etlerde yatan olasılıkların bir ifadesidir.</p><ul><li>Krem pamuk viskon dimi</li><li>&Ouml;n cepler</li><li>&Ccedil;ift pileli</li><li>Arka d&uuml;ğmeli cepler</li><li>D&uuml;z bacak</li><li>Kanca ve fermuar kapatma</li><li>İtalya&#39;da yapıldı</li><li>Bu resimde g&ouml;sterilen &uuml;r&uuml;n 48 beden (IT)</li></ul>', 7900.00, '', 'viskon,fitilli,pantolon', 100, '1', '0'),
(22, 17, '2021-05-27 11:31:45', 'Kilitli G yamalı pamuklu pantolon', 'kilitli-g-yamali-pamuklu-pantolon', '<p>House&#39;un kurucusu Guccio Gucci&#39;nin baş harflerinden oluşan Interlocking G logosu, bu pantolonun arkasını s&uuml;sleyen deri etiketi tanımlıyor.&nbsp;D&uuml;z pa&ccedil;a ile tasarlanan sil&uuml;et, vintage etkisi i&ccedil;in yıkanmış bej pamuklu gabardin renginde sunulur.</p><ul><li>Yıkanmış bej pamuklu gabardin</li><li>Arkadaki birbirine kenetlenen G yaması</li><li>&Ouml;n cepler</li><li>Arka d&uuml;ğmeli kapaklı cepler</li><li>&Ouml;n plise detayları</li><li>D&uuml;ğme ve fermuar kapatma</li><li>D&uuml;z bacak</li><li>Bacak a&ccedil;ıklığı: 46 bedene g&ouml;re 40 cm (IT)</li><li>100% pamuk</li><li>İtalya&#39;da yapıldı</li><li>Model 185 cm&#39;dir ve 46 beden (IT) giymektedir.</li></ul>', 7000.00, '', 'g,yakali,pamuk,pantolon', 100, '1', '0'),
(23, 17, '2021-05-27 11:40:09', 'Kadife geniş paça pantolon', 'kadife-genis-paca-pantolon', '<p>Epilogue koleksiyonu, kloş bacakla tasarlanan ve vintage efektli bu kadife pantolon gibi 70&#39;lerden ilham alan sil&uuml;etlerle şekilleniyor.&nbsp;Modanın eski kurallarını geride bıraktığına dair bir mesaj olan koleksiyon, par&ccedil;aların sadece bir sezonda modada değil, zamansız olması gerektiği fikrini taşıyor.</p><ul><li>Kahverengi d&uuml;zensiz boyalı kadife</li><li>Kendinden kaplamalı d&uuml;ğmeler</li><li>&Ouml;n cepler</li><li>Arka d&uuml;ğmeli cepler</li><li>Kanca ve fermuar kapatma</li><li>Flared bacak</li><li>Bacak a&ccedil;ıklığı: 46 bedene g&ouml;re 70 cm (IT)</li><li>% 55 Pamuk% 45 Keten</li><li>İtalya&#39;da yapıldı</li><li>Bu resimde g&ouml;sterilen &uuml;r&uuml;n 46 bedendir (IT).&nbsp;Model 186 cm boyunda</li></ul>', 9000.00, '', 'kadife,genis,paca', 100, '1', '0'),
(24, 15, '2021-05-27 11:42:42', '\'25 Gucci \'baskılı tişört', '25-gucci-baskili-tisort', '<p>Gucci&#39;nin şanlı tarihine dayanan semboller, Ouverture koleksiyonu boyunca par&ccedil;aları s&uuml;sl&uuml;yor.&nbsp;Guccio Gucci&#39;nin mirasını kurduğu 1921 yılı, zamanın &ouml;tesine ge&ccedil;en, s&uuml;rekli gelişen bir stil anlatısına saygı olarak sunuluyor.&nbsp;Kreatif Direkt&ouml;r&#39;&uuml;n uğurlu sayısı olan 25 sayısı sık sık ortaya &ccedil;ıkan bir icat ve yeniden icat kutlamasıdır.&nbsp;&quot;Aşk K&ouml;rl&uuml;ğ&uuml;&quot; ifadesi Gucci ile eşanlamlı hale geldi ve orijinal &quot;L&#39;Aveugle Par Amour&quot; un evrimidir.</p><ul><li>Mavi &#39;25 Gucci Eschatology 1921 ve Blind for Love &#39;baskılı beyaz ağır pamuklu jarse</li><li>Kolda kontrast şeritler</li><li>Crewneck</li><li>B&uuml;y&uuml;k boy kesim</li><li>İtalya&#39;da yapıldı</li></ul>', 5000.00, '', '25,baski,tisort', 100, '1', '0'),
(25, 15, '2021-05-27 11:45:26', 'Gucci disk baskı büyük boy tişört', 'gucci-disk-baski-buyuk-boy-tisort', '<p>Interlocking G, Gucci kelimesiyle &ccedil;evrelenmiş, diskten ilham alan bir baskıda yeniden işlendi.&nbsp;Pre-Fall 2020 koleksiyonu i&ccedil;in tanıtılan yeni bir motif olan tasarım, koyu mavi pamuklu bir jarse tiş&ouml;rt&uuml; tanımlıyor.</p><ul><li>Koyu mavi organik pamuklu jarse</li><li>Sarı Gucci disk baskı</li><li>Bu &uuml;r&uuml;n, yetiştirme ve &uuml;retim s&uuml;recinin kimyasalların kullanımını kısıtladığı, pestisitleri veya suni g&uuml;breleri ortadan kaldıran ve biyolojik &ccedil;eşitliliğe saygı duyan, toprak kalitesini iyileştiren ve su t&uuml;ketimini azaltan y&ouml;ntemler i&ccedil;eren organik pamuk i&ccedil;erir.</li><li>Crewneck</li><li>B&uuml;y&uuml;k boy kesim</li><li>% 100 organik pamuk</li><li>İtalya&#39;da yapıldı</li><li>Bu g&ouml;rselde g&ouml;sterilen &uuml;r&uuml;n, orta b&uuml;y&uuml;kl&uuml;kte bir &uuml;r&uuml;nd&uuml;r</li></ul>', 4000.00, '2mIJMN3902k', 'disk,gucci,oversize', 100, '1', '0'),
(26, 15, '2021-05-27 11:47:38', 'Özel Freya Hartas ICCUG baskılı t-shirt', 'ozel-freya-hartas-iccug-baskili-t-shirt', '<p>Gucci logosunun geriye d&ouml;n&uuml;k oyunu bu sezon tanıtıldı.&nbsp;Bu tiş&ouml;rt&uuml;n &uuml;zerinde efsanevi bir yaratıkla eşleştirilmiş - İngiliz &ccedil;ocuk kitabı &ccedil;izeri Freya Hartas&#39;ın bir baskısı bi&ccedil;iminde hem ironi hem de şiirin bir kutlaması.</p><ul><li>Freya Hartas imzalı ICCUG hayvan baskılı parlak kırmızı pamuklu jarse</li><li>Crewneck</li><li>B&uuml;y&uuml;k boy kesim</li><li>İtalya&#39;da yapıldı</li></ul>', 3500.00, '2mIJMN3902k', 'ıccug,gucci,ozel', 100, '1', '1'),
(27, 15, '2021-05-27 11:49:42', 'Disney x Gucci büyük boy tişört', 'disney-x-gucci-buyuk-boy-tisort', '<p>Mickey Mouse&#39;un eğlenceli g&ouml;r&uuml;nt&uuml;s&uuml;, Gucci vintage logosunun &uuml;zerinde sergileniyor ve bu fuşya yumuşak pamuklu tiş&ouml;rt&uuml; tanımlıyor.&nbsp;&Ccedil;in Fare yılı şerefine, Disney&#39;in efsanevi karakteri, Gucci&#39;nin hazır giyiminde ve Cruise 2020 koleksiyonunun aksesuarlarında renkli baskılar, işlemeli yamalar veya jakar motifleri olarak sergileniyor.</p><ul><li>Disney x Gucci | &copy; Disney</li><li>Fuşya organik pamuklu jarse</li><li>Mickey Mouse baskılı Gucci vintage logo</li><li>Farenin &Ccedil;in Yeni Yılını kutlamak i&ccedil;in Disney ve Gucci &ouml;zel bir koleksiyon i&ccedil;in bir araya geliyor.&nbsp;Vintage esintili bir tavırla, simgesel &ccedil;izgi film karakteri Mickey Mouse, &ouml;zel ambalajı s&uuml;sleyerek yeşil bir arka plana karşı &ouml;ne &ccedil;ıkıyor.</li><li>Crewneck</li><li>B&uuml;y&uuml;k boy kesim</li><li>Tercih ettiğiniz uyumu bulmak i&ccedil;in l&uuml;tfen beden kılavuzuna bakın.</li><li>Uzunluk: 74cm k&uuml;&ccedil;&uuml;k bir bedene g&ouml;re</li><li>% 100 organik pamuk</li><li>İtalya&#39;da yapıldı</li><li>Model 183 cm ve k&uuml;&ccedil;&uuml;k beden giyiyor</li></ul>', 4500.00, '', 'disney,gucci', 100, '1', '1'),
(28, 16, '2021-05-27 11:52:48', 'Disney x Gucci Donald Duck kareli yün gömlek', 'disney-x-gucci-donald-duck-kareli-yun-gomlek', '<p>Eğlenceli bir ruha sahip efsanevi Disney karakterleri, House&#39;un anlatısını zenginleştirmeye devam ederek, imza şekillerine ve tasarımlarına tuhaf bir his katıyor.&nbsp;Donald Duck&#39;ın yeğenleri Huey, Dewey ve Louie, bu kareli y&uuml;n g&ouml;mleğin arkasını s&uuml;sleyen renkli işlemeli yama &uuml;zerinde yeniden &ccedil;alışıldı.</p><ul><li>Mavi ve sarı kareli y&uuml;n</li><li>Manşette dikişli Gucci etiketi</li><li>Geri Huey, Dewey ve Louie yaması &copy; Disney</li><li>25 ve &ccedil;i&ccedil;ek işlemeli i&ccedil; kalp yama</li><li>Yama cepleri</li><li>Uzun kollu</li><li>&Ouml;n d&uuml;ğme</li><li>Uzunluk: 76cm</li><li>Kol uzunluğu: 88cm</li><li>&Ouml;l&ccedil;&uuml;mler 46 bedene (IT) dayanmaktadır</li><li>% 75 Y&uuml;n% 25 Polyamid</li><li>İtalya&#39;da yapıldı</li><li>Model 185 cm&#39;dir ve 52 beden (IT) giymektedir.</li></ul>', 20000.00, '', 'donald,duck,gucci,gomlek', 100, '1', '1'),
(30, 16, '2021-05-27 11:57:13', 'Hawaii desenli bowling gömleği', 'hawaii-desenli-bowling-gomlegi', '<p>Palmiye yaprakları ve canlı kırmızı antoryum &ccedil;i&ccedil;eklerinden oluşan c&ouml;mert bir sahne ile klasik Hawaii baskısının yeni bir yorumu, koyu renkli jakarlı ipek zemin &uuml;zerine a&ccedil;ılıyor.&nbsp;2020 Sonbahar &Ouml;ncesi koleksiyonu i&ccedil;in, bowling kıyafetlerini andıran koordine edici topluluklar, bowling tiş&ouml;rt&uuml; gibi klasik sokak giyim stillerini y&uuml;kselten zarif bir malzeme ve renk şemasıyla yeniden tasarlandı.</p><ul><li>Siyah, yeşil ve kırmızı Hawai baskılı viskon ve ipek</li><li>Sedef d&uuml;ğmelerin annesi</li><li>Arkada Gucci &quot;Maison de l&#39;Amour&quot; ve &quot;Sine Amore Nihil&quot; terzi etiketi</li><li>Kısa kollu</li><li>G&ouml;ğ&uuml;s yama cebi</li><li>Yan siltler</li><li>% 65 viskon ve% 35 ipek</li><li>İtalya&#39;da yapıldı</li><li>Model 184 cm boyundadır.&nbsp;Bu resimde g&ouml;sterilen &uuml;r&uuml;n 46 beden (IT)</li></ul>', 7800.00, '', 'hawai,gucci', 100, '1', '1'),
(31, 14, '2021-05-27 12:00:01', 'The North Face x Gucci erkek ayak bileği botu', 'the-north-face-x-gucci-erkek-ayak-bilegi-botu', '<p>Bu yarım bot &ccedil;ifti, keşif ruhunu kutlamak i&ccedil;in benzer tarih ve değerlere sahip iki markayı birleştiren bir işbirliği olan The North Face x Gucci koleksiyonunun bir par&ccedil;ası.&nbsp;The North Face, benzersiz ve ayırt edici tasarım detaylarıyla stil yaratmada yeniliği zorlayan ve kuralları yıkan zengin bir arşive sahiptir.&nbsp;Kapsayıcılığı benimsemiş, kadınları erkek egemen bir arayışta sonu&ccedil;lar elde etmeleri i&ccedil;in desteklemekle başlayan bir marka olarak kreasyonlarındaki misyonu, maceracıların fiziksel keşifler yapmalarına yardımcı olmak ve bunu yaparken kendilerini keşfetmelerine yardımcı olmaktır.&nbsp;Erkekler ve kadınlar i&ccedil;in kategoriler arası koleksiyon, hazır giyim, yumuşak aksesuarlar, valiz ve ayakkabılardan oluşur.</p><ul><li>Kuzey Y&uuml;z&uuml; x Gucci</li><li>Siyah deri</li><li>Erkeklerin</li><li>The North Face logosu x Gucci Web baskısı</li><li>Ayak bileğinde dolgu</li><li>Lastik &ccedil;ıkıntı tabanı</li><li>Metal delikli bağcıklı kapatma</li><li>İtalya&#39;da yapıldı</li></ul>', 14000.00, '', 'north,face,gucci,bot', 100, '1', '1'),
(33, 14, '2021-05-27 12:03:32', 'Double G\'li erkek bot', 'double-g-li-erkek-bot', '<p>Erkeklerin siyah deri botları kalın, dokulu bir taban ile tanımlanır.&nbsp;Beklenmedik bir detay olan House&#39;un tuğrası, arkada Ophidia serisinden alınmış emaye bir ovalin i&ccedil;inde minyat&uuml;r bir logo olarak g&ouml;r&uuml;n&uuml;yor.</p><ul><li>Siyah deri</li><li>Erkeklerin</li><li>Kahverengi deri d&ouml;şeme</li><li>Arkada metal Double G ile oval emaye detayı</li><li>Kau&ccedil;uk sarmaşık taban</li><li>Yan fermuarlı</li><li>4.5cm topuk y&uuml;ksekliği</li><li>43 bedene g&ouml;re 17 cm şaft y&uuml;ksekliği (IT)</li><li>İtalya&#39;da yapıldı</li></ul>', 8500.00, '', 'double,g,gucci,bot', 100, '1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(255) NOT NULL,
  `urunfoto_sira` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(98, 33, 'dimg/urun/31710296952332824843Double-G2.jpg', 0),
(99, 33, 'dimg/urun/29634217042529824089Double-G1.jpg', 0),
(100, 33, 'dimg/urun/29358261882627022015Double-G3.jpg', 0),
(102, 31, 'dimg/urun/27825306872534920902The-North-Face-x-Gucci-mens-ankle-boot2.jpg', 0),
(103, 31, 'dimg/urun/20423289862175130463The-North-Face-x-Gucci-mens-ankle-boot1.jpg', 0),
(104, 30, 'dimg/urun/31107208943047130033Hawaiian-print-bowling-shirt1.jpg', 0),
(105, 30, 'dimg/urun/31286268732348329892Hawaiian-print-bowling-shirt2.jpg', 0),
(106, 29, 'dimg/urun/31131204203111930358macrame-shirt-with-bow2.jpg', 0),
(107, 29, 'dimg/urun/27221211642223521274macrame-shirt-with-bow1.jpg', 0),
(108, 28, 'dimg/urun/20305245382210428984Gucci-Donald-Duck-check1.jpg', 0),
(109, 28, 'dimg/urun/27361293482214928464Gucci-Donald-Duck-check2.jpg', 0),
(110, 27, 'dimg/urun/22043313842586026223Disney-x-Gucci-oversize-T-shirt1.jpg', 0),
(111, 27, 'dimg/urun/21308227642870925932Disney-x-Gucci-oversize-T-shirt2.jpg', 0),
(114, 25, 'dimg/urun/25311213152749830067disk-print-oversize-T-shirt2.jpg', 0),
(115, 25, 'dimg/urun/28462309063024720549disk-print-oversize-T-shirt1.jpg', 0),
(116, 24, 'dimg/urun/2502624421253572328425-Gucci-print1.jpg', 0),
(117, 24, 'dimg/urun/2442424965229472115225-Gucci-print2.jpg', 0),
(118, 23, 'dimg/urun/23668285972732829495genis-paca1.jpg', 0),
(119, 23, 'dimg/urun/22346272262963528750genis-paca2.jpg', 0),
(120, 22, 'dimg/urun/24451274992362924364G-patch2.jpg', 0),
(121, 22, 'dimg/urun/25455244192267728407G-patch1.jpg', 0),
(122, 21, 'dimg/urun/30667312682250223878viscose-twill-trousers2.jpg', 0),
(123, 21, 'dimg/urun/21017313632205521620viscose-twill-trousers1.jpg', 0),
(124, 20, 'dimg/urun/27559267372040620439vintage-logo2.jpg', 0),
(125, 20, 'dimg/urun/30126282212100227463vintage-logo1.jpg', 0),
(127, 26, 'dimg/urun/31506266603124725235ICCUG-print-t-shirt1.jpg', 0),
(128, 26, 'dimg/urun/24106261233081724019ICCUG-print-t-shirt2.jpg', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorum_onay` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `urun_id`, `yorum_detay`, `yorum_zaman`, `yorum_onay`) VALUES
(31, 158, 32, 'assdasfasfasf', '2021-06-02 12:46:08', '1'),
(32, 158, 32, 'qewrtqtqtgq', '2021-06-02 12:51:23', '1'),
(33, 158, 32, 'dkshadskasdkkalsfdkla\r\n', '2021-06-02 12:51:32', '1'),
(34, 158, 31, 'asdasdasd', '2021-06-02 12:51:52', '1'),
(35, 158, 26, 'adsfasfasfasfasf', '2021-06-02 12:52:24', '1'),
(36, 158, 26, 'sa<fvasgasdgvadsgv', '2021-06-02 12:54:50', '1'),
(37, 158, 26, 'as\r\n', '2021-06-02 12:55:05', '1'),
(38, 158, 26, 'dafa\r\n', '2021-06-02 13:52:19', '1'),
(39, 158, 26, 'selam', '2021-06-02 13:57:03', '1'),
(40, 158, 33, 'sadasfdcas', '2021-06-17 11:16:22', '1'),
(41, 158, 26, 'selam selam selams slaemsleasda ', '2021-06-17 11:38:28', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750013;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
