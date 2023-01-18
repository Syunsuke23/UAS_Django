-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2023 pada 04.09
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusdjango`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$Rjfrd8eXa54IY936vWZPjT$2a5gkVbpA0jDLNcOGHmmS0r2P2Aua0ik7Dc5v0oXLi0=', '2023-01-08 05:48:27.560904', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-01-08 05:47:08.808632');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-01-08 06:34:00.470728', '1', 'Post object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-01-08 06:43:23.468105', '2', 'Masih Belajar', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-01-08 08:14:09.654600', '1', 'Atomic Habits', 2, '[{\"changed\": {\"fields\": [\"Cover buku\"]}}]', 7, 1),
(4, '2023-01-08 08:15:27.081261', '1', 'Atomic Habits', 2, '[{\"changed\": {\"fields\": [\"Cover buku\"]}}]', 7, 1),
(5, '2023-01-08 08:36:33.340557', '1', 'Atomic Habits', 2, '[{\"changed\": {\"fields\": [\"Cover buku\"]}}]', 7, 1),
(6, '2023-01-12 07:39:08.695092', '1', 'Atomic Habits', 2, '[{\"changed\": {\"fields\": [\"Cover buku\"]}}]', 7, 1),
(7, '2023-01-12 07:39:18.977474', '2', 'Masih Belajar', 2, '[{\"changed\": {\"fields\": [\"Cover buku\"]}}]', 7, 1),
(8, '2023-01-12 08:05:02.197081', '1', 'Atomic Habits', 2, '[{\"changed\": {\"fields\": [\"Cover buku\"]}}]', 7, 1),
(9, '2023-01-12 08:05:10.227211', '2', 'Masih Belajar', 2, '[{\"changed\": {\"fields\": [\"Cover buku\"]}}]', 7, 1),
(10, '2023-01-14 09:19:56.010558', '2', 'MASIH BELAJAR', 2, '[{\"changed\": {\"fields\": [\"Judul\"]}}]', 7, 1),
(11, '2023-01-14 09:20:09.299845', '1', 'ATOMIC HABITS', 2, '[{\"changed\": {\"fields\": [\"Judul\"]}}]', 7, 1),
(12, '2023-01-14 09:37:00.135620', '3', 'BUMI', 1, '[{\"added\": {}}]', 7, 1),
(13, '2023-01-14 09:39:18.227109', '4', 'SEBUAH SENI UNTUK BERSIKAP BODO AMAT', 1, '[{\"added\": {}}]', 7, 1),
(14, '2023-01-14 09:43:59.000977', '5', 'GAGAL MENJADI MANUSIA', 1, '[{\"added\": {}}]', 7, 1),
(15, '2023-01-14 09:47:51.626662', '6', 'FILOSOFI TERAS', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'perpus', 'post'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-08 05:43:52.479934'),
(2, 'auth', '0001_initial', '2023-01-08 05:43:53.660393'),
(3, 'admin', '0001_initial', '2023-01-08 05:43:53.963153'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-08 05:43:53.980329'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-08 05:43:54.011368'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-08 05:43:54.175144'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-08 05:43:54.305238'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-08 05:43:54.340581'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-08 05:43:54.355258'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-08 05:43:54.452694'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-08 05:43:54.465284'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-08 05:43:54.485415'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-08 05:43:54.540402'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-08 05:43:54.575223'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-08 05:43:54.610286'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-08 05:43:54.625276'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-08 05:43:54.660328'),
(18, 'sessions', '0001_initial', '2023-01-08 05:43:54.730516'),
(19, 'perpus', '0001_initial', '2023-01-08 06:26:16.439615');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('afhhu6cv2962t19qc33owwlktbpno4o5', '.eJxVjEEOwiAQRe_C2hAGaWFcuvcMBAZGqgaS0q6Md7dNutDte-__t_BhXYpfe579lMRFgDj9shjomesu0iPUe5PU6jJPUe6JPGyXt5by63q0fwcl9LKtmREB2WqLrMAGExKOTimreDDWgCGtSDsaYnJn2oBDHkFhBBsjE4jPF8MsNyI:1pEOXj:Wd7QM9ZCGqOrtrmF1Z36LiklsDxFYtuNpgJPLouEl6Q', '2023-01-22 05:48:27.569924');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perpus_post`
--

CREATE TABLE `perpus_post` (
  `id` bigint(20) NOT NULL,
  `cover_buku` varchar(100) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `sinopsis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perpus_post`
--

INSERT INTO `perpus_post` (`id`, `cover_buku`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `sinopsis`) VALUES
(1, 'cover/atomic_habits.jpg', 'ATOMIC HABITS', 'James Clear', 'Gramedia Pustaka', 2019, 'Buku Atomic Habits adalah buku tentang bagaimana mengubah kebiasaan-kebiasaan kita menjadi lebih baik dan tentunya menjadi perubahan yang permanen. James Clear mengajarkan kita untuk mencapai tujuan jangka panjang kita melalui kebiasaan-kebiasaan kecil yang kita lakukan setiap harinya'),
(2, 'cover/masih_belajar.jpg', 'MASIH BELAJAR', 'Iman Usman', 'Gramedia Pustaka', 2019, 'Masih Belajar adalah autobiografi Iman Usman yang bercerita tentang kisah hidup dan pemikiran-pemikirannya. Di dalamnya, Iman bercerita dari dirinya yang menjual jubah, tongkat, dan pernak-pernik sihir Harry Potter saat sekolah dasar, mendirikan Ruangguru, sampai menjadi pembicara di World Economic Forum tahun lalu.'),
(3, '', 'BUMI', 'Tere Liye', 'Gramedia Pustaka', 2014, 'Novel ini mengisahkan tentang petualangan 3 remaja yang berusia 15 tahun bernama Raib, Ali dan Seli. Namun mereka bukanlah remaja biasa, melainkan remaja yang memiliki kekuatan khusus seperti Raib yang bisa menghilang, Seli yang bisa mengeluarkan petir dan Ali seorang pelajar yang sangat jenius.'),
(4, '', 'SEBUAH SENI UNTUK BERSIKAP BODO AMAT', 'Mark Manson', 'Gramedia WIdiarasana', 2018, 'Novel ini merupakan kisah nyata Bukowski yang intinya bagaimana ia menyikapi kegagalan dan kesulitan yang dihadapi dalam kehidupannya dengan cara bersikap “bodo amat” sehingga dia bertahan, merasa baik dan menerima disaat keadaan buruknya sehingga dia bisa menghadapi kesulitan-kesulitan tersebut. Dengan bersikap bodo amat akan hal-hal atau masalah yang dihadapi maka kita sudah berhasil memutus rantai lingkaran setan.'),
(5, '', 'GAGAL MENJADI MANUSIA', 'Dazai Osamu', 'Mai', 2020, 'Gagal Menjadi Manusia berkisah mengenai kehidupan Oba Yozo, seorang pemuda yang berasal dari keluarga berada dan gemar melawak untuk menghibur dirinya dan keluarganya. Akan tetapi, di balik semua lawakan yang ia tuturkan, tersimpan sisi kelam yang ada di dalam dirinya. Ia melihat manusia sebagai sosok yang menyeramkan, yang dapat menipu dengan mudahnya, yang dapat berlaku jahat di balik semua sikap baik yang mereka pertontonkan kepada orang lain.'),
(6, '', 'FILOSOFI TERAS', 'Henry Menampiring', 'Kompas', 2019, 'diawali dengan menceritakan tentang sebuah survei kekhawatiran nasional yang semakin masif sekaligus menyajikan tentang sekilas kehidupan si penulis yang dipenuhi oleh emosi negatif yang berlebihan.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `perpus_post`
--
ALTER TABLE `perpus_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `perpus_post`
--
ALTER TABLE `perpus_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
