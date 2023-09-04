-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Sep 2023 pada 20.14
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_lod`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_artikel`
--

CREATE TABLE `db_artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `konten` text NOT NULL,
  `tanggal_publikasi` date NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_artikel`
--

INSERT INTO `db_artikel` (`id`, `judul`, `penulis`, `konten`, `tanggal_publikasi`, `kategori`) VALUES
(3, 'Harimau', 'Wikipedia', 'Harimau (Panthera tigris) adalah spesies kucing terbesar yang masih hidup dari genus Panthera. Harimau tidak sama dengan maung.Harimau memiliki ciri loreng yang khas pada bulunya, berupa garis-garis vertikal gelap pada bulu oranye, dengan bulu bagian bawah berwarna putih. Harimau adalah pemangsa puncak, mereka terutama memangsa ungulata seperti rusa dan babi celeng. Harimau adalah hewan teritorial dan umumnya merupakan pemangsa soliter yang penyendiri, tetapi tetap memiliki sisi sosial, mereka tetap tinggal di area-area yang berdekatan, untuk mendukung kebutuhan makanan dan membesarkan keturunannya. Anak harimau tinggal bersama ibu mereka selama sekitar dua tahun, kemudian akan hidup mandiri dan meninggalkan daerah jelajah ibu mereka untuk membangun rumah mereka sendiri.\n\nIstilah lain untuk harimau adalah Macan yang diambil dari Bahasa Jawa, namun kini masyarakat hanya menganggap macan adalah dari jenis Panthera pardus dan semua subspesiesnya. Padahal Leopard atau Panthera pardus ini bisa disebut macan apabila ditambah nama belakangnya, yakni Macan Tutul. Nama Harimau sendiri berasal dari Bahasa Melayu, digunakan pula untuk menyebut Leopard yakni Harimau Bintang.\n\nHarimau pertama kali dideskripsikan secara ilmiah pada tahun 1758 dan pernah tersebar luas dari Kawasan Anatolia Timur di barat hingga lembah Sungai Amur di timur. Harimau juga ditemukan di daerah selatan kaki pegunungan Himalaya hingga ke Bali di Kepulauan Sunda. Sejak awal abad ke-20, populasi harimau terus menurun hingga 93% dan mengalami kepunahan di Asia Barat, Asia Tengah, serta di pulau Jawa dan Bali. Harimau juga dinyatakan punah di sebagian besar wilayah Asia Tenggara, Asia Selatan, dan Tiongkok. Hari ini, jangkauan harimau terfragmentasi, membentang dari kawasan hutan beriklim sedang di Siberia hingga hutan subtropis dan tropis di anak benua India, Indocina, dan Sumatra.\n\nHarimau terdaftar sebagai spesies Terancam Punah di Daftar Merah IUCN. Pada tahun 2015, populasi harimau liar di seluruh dunia diperkirakan hanya tersisa sekitar 3.062 hingga 3.948 individu dewasa, sebagian besar populasi harimau hidup di kantong-kantong kecil yang terisolir. India saat ini memiliki populasi harimau terbesar. Penyebab utama penurunan populasi harimau adalah perusakan habitat, fragmentasi habitat, dan perburuan liar. Harimau juga menjadi korban konflik manusia-satwa liar, terutama di negara-negara dengan kepadatan populasi manusia yang tinggi.\n\nHarimau adalah salah satu megafauna karismatik dunia yang paling dikenal dan populer. Harimau banyak diangkat dalam mitologi kuno dan cerita rakyat di berbagai budaya dan rentang sejarah. Harimau hingga kini sering digambarkan dalam film dan sastra modern, simbol harimau juga muncul di banyak bendera, lambang, dan dipakai sebagai maskot tim olahraga. Harimau merupakan hewan nasional di India, Bangladesh, Malaysia dan Korea Selatan.', '2023-09-01', 'Fauna'),
(4, 'Paus Biru', 'Wikipedia', 'Paus biru (Balaenoptera musculus) adalah mamalia laut yang tergolong dalam subordo paus balin.[9] Panjangnya mencapai lebih dari 33 meter dan massanya tercatat sebesar 181 ton atau lebih. Binatang ini diyakini merupakan hewan terbesar yang pernah diketahui.[10][11][12]\n\nPaus yang panjang dan ramping ini memiliki bagian belakang (dorsal) yang berwarna abu-abu kebiruan dan bagian depan (ventral) yang lebih terang.[13] Terdapat paling tidak tiga subspesies paus biru: B. m. musculus di Atlantik Utara dan Pasifik Utara, B. m. intermedia di Samudra Selatan, dan B. m. brevicauda (juga disebut paus biru kerdil) di Samudra Hindia dan Samudra Pasifik Selatan. B. m. indica yang hidup di Samudra Hindia mungkin merupakan subspesies lain. Seperti paus balin lainnya, makanan pokok paus biru adalah crustacea kecil yang disebut krill.[14]\n\nPaus biru sangat berlimpah di hampir seluruh samudra hingga awal abad ke-20. Selama lebih dari satu abad, paus ini diburu sampai hampir punah sebelum akhirnya dilindungi oleh komunitas internasional pada tahun 1966. Menurut sebuah laporan pada tahun 2002, terdapat sekitar 5.000 hingga 12.000 paus biru di seluruh dunia[15] yang terbagi dalam sedikitnya lima kelompok. Penelitian terkini subspesies paus biru kerdil menunjukkan bahwa perkiraan ini mungkin terlalu rendah.[16] Sebelum berlangsungnya perburuan paus, populasi terbesar berada di Antartika, yang jumlahnya kurang lebih sebesar 239.000 (antara 202.000 hingga 311.000).[17] Saat ini konsentrasi kelompok di Samudra Pasifik Utara bagian timur, Antartika, dan Samudra Hindia jauh lebih rendah daripada angka sebelumnya (kurang lebih 2.000). Terdapat pula dua kelompok lain di Samudra Atlantik Utara, dan paling tidak dua kelompok lagi di Belahan Selatan.', '2023-09-01', 'Fauna'),
(5, 'Hiu Putih', 'Wikipedia', 'Hiu putih (nama ilmiah Carcharodon carcharias), juga dikenal sebagai hiu putih besar, pointer putih, hiu putih, atau si putih yang mematikan), adalah hiu lamniformes besar yang ada di pesisir perairan di seluruh permukaan lautan utama. Hiu putih besar dikenal karena ukurannya, dengan individu terbesar yang panjang tubuhnya 6 meter, dan dengan berat sebesar 1.100 kg saat sudah dewasa.[2][3][4] Hiu ini berwarna abu-abu atau abu-abu kebiruan dengan sedikit warna putih di bagian perut.[5] Hiu ini memiliki gigi berjumlah 300 gigi yang tajamnya seperti tepian gergaji.[5] Gigi hiu ini dapat panjangnya dapat tumbuh mencapai 7,5 cm.[5] Hiu jenis ini akan mencapai kedewasaan saat berumur 15 tahun, dan dapat hidup sekitar 30 tahun.\n\nHiu putih ini bisa dibilang hiu terbesar yang dikenal di dunia dan merupakan salah satu predator utama untuk mamalia laut. Selain itu, ia juga memangsa berbagai hewan laut lainnya, termasuk ikan, pinnipeds, dan juga burung laut. Ini adalah hidup hanya dikenal spesies dari perusahaan genus, Carcharodon, dan berada pada peringkat pertama dalam daftar jumlah serangan hewan yang tercatat pada manusia. IUCN (International Union for Conservation of Nature) memperlakukan hiu putih sebagai spesies yang hampir punah, walau termasuk dalam Appendix II dari CITES.\n\nNovel best-selling Jaws oleh Peter Benchley yang disusul oleh film blockbuster Steven Spielberg menggambarkan hiu putih sebagai \"pemakan manusia yang ganas\". Pada kenyataannya, manusia bukanlah mangsa yang disukai oleh hiu putih tersebut.', '2023-09-01', 'Fauna'),
(15, 'Jaguar', 'Wikipedia', '<p><strong>Jaguar</strong>&nbsp;adalah hewan sejenis&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kucing_besar\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">kucing besar</a>&nbsp;yang tergolong dalam genus&nbsp;<a href=\"https://id.wikipedia.org/wiki/Panthera\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\"><em>Panthera</em></a>. Binatang ini merupakan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kucing_liar\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">kucing liar</a>&nbsp;ketiga setelah&nbsp;<a href=\"https://id.wikipedia.org/wiki/Harimau\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">harimau</a>&nbsp;dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Singa\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">singa</a>, dan juga merupakan kucing terbesar di&nbsp;<a href=\"https://id.wikipedia.org/wiki/Belahan_Barat\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">belahan Barat</a>. Binatang ini meliputi wilayah&nbsp;<a href=\"https://id.wikipedia.org/wiki/Meksiko\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">Meksiko</a>&nbsp;utara, melintasi&nbsp;<a href=\"https://id.wikipedia.org/wiki/Amerika_Tengah\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">Amerika Tengah</a>&nbsp;hingga ke&nbsp;<a href=\"https://id.wikipedia.org/wiki/Paraguay\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">Paraguay</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Argentina\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">Argentina</a>&nbsp;utara dan selatan.</p><p>Jaguar adalah binatang pemangsa yang mempunyai gigitan yang luar biasa kuat sehingga cangkang&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kura-kura\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(51, 102, 204);\">kura-kura</a>&nbsp;yang begitu kuat pun sanggup ditembusnya dalam sekali gigitan. Mereka hidup dengan memangsa rusa, tapir, anjing, rubah dan juga binatang air seperti ikan bahkan ular anaconda yang bertubuh besarpun bisa menjadi mangsanya.</p>', '2023-09-05', 'Fauna');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_artikel`
--
ALTER TABLE `db_artikel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `db_artikel`
--
ALTER TABLE `db_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
