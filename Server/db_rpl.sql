-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2018 at 03:20 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'satria', 'admin'),
(2, 'adhi', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `isi_berita` longtext,
  `views` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `tanggal`, `gambar`, `isi_berita`, `views`) VALUES
(36, 'Laskar Pelangi Pecahkan Rekor', '2017-12-25', 'amcc.png', 'Sukses film Laskar Pelangi dalam memecahkan rekor jumlah penonton memberi pembelajaran bahwa penonton film Indonesia bisa menerima inovasi. Mira Lesmana dari Miles Films yang memproduksi film ini mengatakan, sampai Rabu (12/11), pemutaran Laskar Pelangi di 100 layar bioskop di 25 kota menyedot lebih dari 4,4 juta penonton. Padahal, Kamis kemarin, jumlah kota yang memutar film itu bertambah dengan Padang, Tasikmalaya, dan Ambon. Sebelumnya, Ayat-ayat Cinta ditonton 3,7 juta penonton (Kompas, 26/10).<br><br>Jumlah penonton itu belum termasuk penonton layar tancap untuk menjangkau penonton di daerah yang belum memiliki gedung bioskop.<br><br>Menurut Mira, layar tancap di tiga lokasi di Belitung, tempat cerita berlokasi, menyedot penonton lebih dari 60.000 penonton dan di Bangka sekitar 80.000-an orang. Pemutaran layar tancap juga dilakukan di Rantau (Sumatera Utara) dan akan dilakukan di Natuna, Aceh (enam lokasi), Lombok, serta Papua di Timika, Sorong, dan Jayapura.<br><br>Kabar gembira lainnya, film ini menjadi salah satu film yang terpilih untuk menjadi bagian dari Berlin International Film Festival atau Berlinale 2009. Festival ini adalah sebuah peristiwa budaya terpenting di Jerman yang juga adalah salah satu festival film internasional paling bergengsi di dunia.<br><br>Film Laskar Pelangi diangkat dari novel berjudul sama karya Andrea Hirata. Film ini mengangkat realitas sosial masyarakat Belitung, tentang persahabatan, kegigihan dan harapan, dalam bingkai kemiskinan dan ketimpangan kelas sosial.<br><br>\"Jumlah penonton dan panjangnya masa pemutaran film sejak 25 September memperlihatkan penonton butuh sesuatu yang baru, yang inovatif, walau yang ditampilkan realitas tidak gemerlap,\" papar Mira.<br><br>Selama ini, kebanyakan film Indonesia bertema drama cinta, horor, dan komedi, sementara Miles Films dalam empat film terakhirnya menggarap tema realisme sosial-politik.<br><br>Mira mengakui, inovasi itu tidak selalu berhasil secara komersial. Contohnya Gie, juga produksi Miles Films. Meskipun dari sisi kritik film dan kreativitas bagus, tetapi tidak sesukses Laskar Pelangi dalam pemasaran.<br><br>Produksi film ini menghabiskan biaya Rp 9 miliar dan 90 persen dikerjakan di dalam negeri. \"Sound mixing dengan sistem Dolby dan transfer optis untuk suara belum bisa dikerjakan di dalam negeri,\" ujar Mira.<br><br>Miles Films dan para investor, antara lain Mizan Publishing, kini bersiap memproduksi lanjutan Laskar Pelangi. Sang Pemimpi adalah bagian novel tetralogi Andrea Hirata. (sumber: kompas.com)<br>', NULL),
(35, 'Gelombang Solidaritas untuk Palestina', '2017-11-16', 'amcc.png', 'Serangan Israel kepada Palestina yang terjadi mulai akhir Desember 2008 silam telah menewaskan hampir seribu nyawa manusia. Warga sipil yang kebanyakan perempuan dan anak-anak menjadi korban keganasan tentara Israel. Warga dunia pun marah. Saat ini, hampir setiap hari sejumlah unjuk rasa mengecam kebiadaban Israel terjadi di seluruh belahan dunia. Kejahatan Israel adalah kejahatan kemanusiaan dan sudah menjadi isu bersama umat manusia.<br><br>Kecaman tidak hanya datang dari umat Islam, tapi juga dari umat agama lain. Lihat saja sejumlah biksu yang tergabung dalam Perwakilan Umat Buddha Indonesia (Walubi), kemudian Persatuan Tionghoa Indonesia serta Dewan Pemuda Kristen Indonesia.<br><br>Mereka semua ikut berpatisipasi dalam aksi solidaritas untuk Palestina yang dilaksanakan di lapangan Monas, Jakarta Ahad (11/1/2009) lalu. Mereka mengutuk kebiadaban Israel. (sumber: sabili.co.id)<br>', NULL),
(38, 'Google Chrome Susupi Microsoft', '2017-12-08', 'amcc.png', '<p>\r\nBrowser Microsoft, Internet Explorer (IE), bisa mendominasi karena tersedia secara default pada banyak komputer di pasaran. Google Chrome akan menggoyang dengan menyusup di lahan yang sama. Google rupanya sudah bersiap-siap menawarkan Google Chrome secara default pada komputer-komputer baru. \r\n</p>\r\n<p>\r\nPichai juga menjanjikan Chrome akan keluar dari versi Beta (uji coba) pada awal 2009. \r\nJika Google berhasil menyusupkan Chrome dalam lahan yang selama ini jadi &#39;mainan&#39; Microsoft, lanskap perang browser akan mengalami perubahan. \r\n</p>\r\n<p>\r\nSaat ini Microsoft masih mendominasi pada kisaran 70 persen lewat Internet Explorer-nya, sedangkan Firefox menguasai sekitar 20 persen. (sumber: <a href=\"http://detikinet.com\" target=\"_blank\">detikinet.com</a>)\r\n</p>\r\n', NULL),
(39, 'Krisis Ekonomi Amerika, Bukti Gagalnya Kapitalisme', '2017-10-12', 'fossil.png', '<p>\r\nPresiden Ekuador, Rafael Correa menilai krisis yang terjadi di Amerika menjadi bukti kegagalan sistem kapitalis dan periode Kapitalisme telah berakhir serta ekonomi Amerika sebagai pasar terbesar dunia telah dililit krisis. (Kantor Berita Fars Prensa Latina Kuba).\r\n</p>\r\n<p>\r\nCorrea menambahkan, apa yang terjadi di Amerika tidak terbatas pada krisis keuangan, namun bukti kebuntuan sebuah sistem yang dibangun tanpa dicermati secara serius. \r\n</p>\r\n<p>\r\nMenurut Correa, solusi krisis sistem keuangan Amerika tidak akan bisa selesai dengan menyuntikkan dana 700 miliar dolar kepada bank-bank yang telah bangkrut, namun yang lebih penting lagi adalah Amerika harus melakukan perubahan fundamental. (sumber: hidayatullah.com)\r\n</p>\r\n', NULL),
(46, 'Manchester United Incar Zidane Baru', '2017-12-01', 'fossil.png', '<p>\r\nManchester United sedang mengincar pemain muda Perancis berdarah Aljazair. Pemain itu adalah Sofiane Feghouli yang baru berusia 19 tahun.\r\n</p>\r\n<p>\r\nSofiane Feghouli saat ini memperkuat tim Liga Perancis, Grenoble Foot 38. Posisinya adalah di lapangan tengah.\r\n</p>\r\n<p>\r\nPemain yang punya tinggi badan 178 cm itu disebut punya gaya bermain yang serupa dengan Zinedine Zidane. Feghouli sudah masuk dalam tim nasional Perancis U-21.\r\n</p>\r\n<p>\r\nTak hanya MU yang menginginkan pemain yang pernah ditolak Paris Saint-Germain itu. Tim-tim besar macam Barcelona, Liverpool dan Inter Milan juga sedang mengambil ancang-ancang untuk mengajukan tawaran.\r\n</p>\r\n<p>\r\nSeperti diberitakan Tribalfootball, MU sudah berencana untuk melakukan transaksi dengan Grenoble bulan Januari nanti. (Sumber: vivanews.com)\r\n</p>\r\n', NULL),
(43, 'Ahmadinejad: Gaza Akan Jadi Kuburan Israel', '2017-05-04', 'fossil.png', 'Iran dan Israel tampaknya tidak akan pernah melakukan genjatan senjata. Presiden Iran Mahmoud Ahmadinejad melontarkan kata-kata serangan terhadap Israel dengan menyebut negara Yahudi itu akan segera lenyap dari bumi. \"<span style=\"font-weight: bold; font-style: italic;\">Kejahatan yang dilakukan rejim Zionis (Israel) terjadi karena mereka sadar sudah sampai di akhir dan segera lenyap dari muka bumi</span>,\" kata Ahmadinejad dalam pawai anti-Israel yang berlangsung di Teheran, seperti dilaporkan kantor berita Mehr dan dikutip DPA, Sabtu (13/12).<br><br>Dia mengatakan Israel sudah kehilangan arah dan kian sadar bahwa kelompok negara-negara kuat makin ragu untuk menunjukkan dukungan untuk negara Yahudi itu.<br><br>Ahmadinejad juga mengatakan bahwa kejahatan Israel di Gaza bertujuan mengganti pemimpin politik di wilayah itu agar sesuai dengan kepentingan politik Israel. (sumber: <a target=\"_blank\" title=\"Situs Berita Inilah.com\" href=\"http://inilah.com\">inilah.com</a>)<br>', NULL),
(48, 'Tes Berita', '2017-12-08', 'amcc.png', 'TESSSSSSS', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
