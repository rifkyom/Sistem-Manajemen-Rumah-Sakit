-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jan 2024 pada 14.41
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekam_medis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) NOT NULL,
  `nama_dokter` varchar(128) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telephone` varchar(16) NOT NULL,
  `spesialis` text NOT NULL,
  `jadwal` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id`, `nama_dokter`, `alamat`, `telephone`, `spesialis`, `jadwal`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Dr. dr. Rabani, S.Ked,M.Ked', 'Johor, Medan', '0891234455', 'Umum', 'Senin, Rabu & Jumat (07:00-14:00)', '2020-03-03 16:55:00', '2024-01-01 14:02:02', '0000-00-00 00:00:00', 1, 1, 0),
(3, 'Dr. dr. Helena, S.Ked,M.Ked', 'Medan Kota, Medan', '087124256365', 'Umum', 'Selasa, Kamis & Sabtu (07:00-14:00)', '2023-12-21 15:50:55', '2024-01-01 14:00:55', '0000-00-00 00:00:00', 1, 1, 0),
(4, 'Dr. dr. Rusyana, S.Ked,M.Ked', 'Tuntungan, Medan', '081789346574', 'Umum', 'Senin, Rabu & Jumat (14:00-:19.00)', '2024-01-01 08:26:12', '2024-01-01 14:01:31', '0000-00-00 00:00:00', 1, 1, 0),
(5, 'Dr. dr. Ichsan, S.Ked,M.Ked', 'Tuntungan, Medan', '081902374832', 'Umum', 'Selasa, Kamis & Sabtu (14:00-19:00)', '2024-01-01 08:27:53', '2024-01-01 14:02:18', '0000-00-00 00:00:00', 1, 1, 0),
(6, 'Dr. drg. Gintama, S.K.G', 'Polania, Medan', '081823746528', 'Gigi', 'Senin & Selasa (07:00-19:00)', '2024-01-01 08:28:56', '2024-01-01 14:40:53', '0000-00-00 00:00:00', 1, 1, 0),
(7, 'Dr. drg. Sri Kagura, S.K.G', 'Maimun, Medan', '081923457564', 'Gigi', 'Rabu & Kamis (07:00-19:00)', '2024-01-01 08:29:34', '2024-01-01 14:41:00', '0000-00-00 00:00:00', 1, 1, 0),
(8, 'Dr. drg. Sinfazhri, S.K.G', 'Medan Kota, Medan', '089124782643', 'Gigi', 'Jumat & Sabtu (07:00-19:00)', '2024-01-01 08:32:23', '2024-01-01 14:41:06', '0000-00-00 00:00:00', 1, 1, 0),
(9, 'Dr. dr. Fitria, Sp.obgyn', 'Denai, Medan', '081329486523', 'Kandungan', 'Senin & Kamis (07:00-19:00)', '2024-01-01 08:32:55', '2024-01-01 14:04:53', '0000-00-00 00:00:00', 1, 1, 0),
(10, 'Dr. dr. Novytasari, Sp.OG,M.Ked', 'Amplas, Medan', '081231328796', 'Kandungan', 'Selasa & Jumat (07:00-19:00)', '2024-01-01 08:35:39', '2024-01-01 14:05:05', '0000-00-00 00:00:00', 1, 1, 0),
(11, 'Dr. dr. Aprilia, Sp.obgyn', 'Johor, Medan', '081290334672', 'Kandungan', 'Rabu & Sabtu (07:00-19:00)', '2024-01-01 08:37:03', '2024-01-01 14:05:16', '0000-00-00 00:00:00', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `group_id`
--

CREATE TABLE `group_id` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `definition` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varchar(128) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id`, `nama_obat`, `keterangan`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Amoxicillin', 'Antibiotik', '2020-03-03 16:58:23', '2024-01-01 08:46:05', '0000-00-00 00:00:00', 1, 1, 0),
(3, 'Paracetamol', 'Analgesik dan antipiretik', '2023-12-18 12:11:49', '2024-01-01 08:46:14', '0000-00-00 00:00:00', 1, 1, 0),
(5, 'Lisinopril', 'ACE inhibitor (Inhibitor pengubah angiotensin)', '2024-01-01 08:46:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(6, 'Omeprazole', 'Penghambat pompa proton (PPI)', '2024-01-01 08:46:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(7, 'Ibuprofen', 'Antiinflamasi nonsteroid (NSAID)', '2024-01-01 08:46:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(8, 'Simvastatin', 'Statin', '2024-01-01 08:47:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(9, 'Metformin', 'Antidiabetik oral', '2024-01-01 08:47:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(10, 'Ciprofloxacin', 'Antibiotik', '2024-01-01 08:47:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(11, 'Fluoride Toothpaste', 'Pasta gigi', '2024-01-01 08:51:13', '2024-01-01 08:52:55', '0000-00-00 00:00:00', 1, 1, 0),
(12, 'Chlorhexidine Mouthwash', 'Obat kumur', '2024-01-01 08:51:54', '2024-01-01 08:53:03', '0000-00-00 00:00:00', 1, 1, 0),
(13, 'Lidocaine', 'Anti nyeri', '2024-01-01 08:52:42', '2024-01-01 08:53:08', '0000-00-00 00:00:00', 1, 1, 0),
(14, 'Metronidazole', 'Antibiotik', '2024-01-01 08:54:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(15, 'Folic Acid', 'Multivitamin', '2024-01-01 08:54:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(16, 'Iron Supplements', 'Suplemen zat besi', '2024-01-01 08:55:01', '2024-01-01 08:56:38', '0000-00-00 00:00:00', 1, 1, 0),
(17, 'Progesterone', 'Obat hormon', '2024-01-01 08:55:30', '2024-01-01 08:56:45', '0000-00-00 00:00:00', 1, 1, 0),
(18, 'Oxytocin', 'Obat hormon', '2024-01-01 08:56:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(19, 'Ergometrine', 'Anti pendarahan', '2024-01-01 08:57:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `nomor_identitas` varchar(30) DEFAULT NULL,
  `nama_pasien` varchar(128) NOT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `alamat` text NOT NULL,
  `telephone` varchar(16) DEFAULT NULL,
  `no_asuransi` int(11) NOT NULL,
  `asuransi` varchar(25) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nomor_identitas`, `nama_pasien`, `jenis_kelamin`, `alamat`, `telephone`, `no_asuransi`, `asuransi`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '3215082394924', 'Nana', 'p', 'Cianjur', '0989333333333', 88029312, 'BPJS', '2020-03-03 16:55:51', '2024-01-01 14:28:38', '0000-00-00 00:00:00', 1, 1, 0),
(2, '3215082394923', 'Boi', 'l', 'Bekasi', '08561234567', 77124492, 'JKN', '2020-03-03 16:56:25', '2024-01-01 14:28:51', '0000-00-00 00:00:00', 1, 1, 0),
(4, '3', 'Barkah', 'l', 'Bandung', '087124256765', 88212456, 'BPJS', '2023-12-18 12:10:57', '2024-01-01 14:28:23', '0000-00-00 00:00:00', 1, 1, 0),
(5, '5', 'Faruzan', 'p', 'Jakarta', '081526268128', 0, 'UMUM', '2024-01-01 07:34:43', '2024-01-01 14:28:59', '0000-00-00 00:00:00', 1, 1, 0),
(6, '4', 'Faishal', 'l', 'Serang', '0817172343458', 0, 'UMUM', '2024-01-01 07:35:27', '2024-01-01 14:29:06', '0000-00-00 00:00:00', 1, 1, 0),
(7, '6', 'Junaedi', 'l', 'Bekasi', '081906437826', 0, 'UMUM', '2024-01-01 07:36:05', '2024-01-01 14:29:11', '0000-00-00 00:00:00', 1, 1, 0),
(8, '7', 'Anisa', 'p', 'Karawang', '081702347283', 88147892, 'BPJS', '2024-01-01 07:41:20', '2024-01-01 14:29:32', '0000-00-00 00:00:00', 1, 1, 0),
(9, '8', 'Taufani', 'p', 'Medan', '081923849275', 77029332, 'JKN', '2024-01-01 08:00:35', '2024-01-01 14:29:43', '0000-00-00 00:00:00', 1, 1, 0),
(10, '9', 'Purbaya', 'p', 'Medan', '08172649273', 77921203, 'JKN', '2024-01-01 08:00:52', '2024-01-01 14:29:52', '0000-00-00 00:00:00', 1, 1, 0),
(11, '10', 'Mumtaz', 'l', 'Jakarta', '081732956473', 0, 'UMUM', '2024-01-01 08:01:17', '2024-01-01 14:29:58', '0000-00-00 00:00:00', 1, 1, 0),
(12, '11', 'Raffi', 'l', 'Tangerang', '0817238572845', 0, 'UMUM', '2024-01-01 08:01:50', '2024-01-01 14:30:04', '0000-00-00 00:00:00', 1, 1, 0),
(13, '12', 'Hilda', 'p', 'Malingping', '081722228888', 88128239, 'BPJS', '2024-01-01 08:03:02', '2024-01-01 14:30:22', '0000-00-00 00:00:00', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `poligigi`
--

CREATE TABLE `poligigi` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `poligigi`
--

INSERT INTO `poligigi` (`id`, `pasien_id`, `keterangan`) VALUES
(7, 1, 'Cabut gigi'),
(8, 5, 'Bersihkan karang gigi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `polikandungan`
--

CREATE TABLE `polikandungan` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `polikandungan`
--

INSERT INTO `polikandungan` (`id`, `pasien_id`, `keterangan`) VALUES
(3, 9, 'Konsultasi Bulanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poliumum`
--

CREATE TABLE `poliumum` (
  `id` int(11) NOT NULL,
  `pasien_id` int(20) NOT NULL,
  `keterangan1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `poliumum`
--

INSERT INTO `poliumum` (`id`, `pasien_id`, `keterangan1`) VALUES
(10, 6, 'Meriang dingin'),
(11, 11, 'Batuh berdahak'),
(12, 12, 'Gatal-gatal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `keluhan` text NOT NULL,
  `diagnosa` text NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `rekam_medis`
--

INSERT INTO `rekam_medis` (`id`, `pasien_id`, `dokter_id`, `ruang_id`, `keluhan`, `diagnosa`, `tanggal`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(13, 4, 1, 1, 'Lemas', 'Demam tinggi', '2024-01-01', '2024-01-01 14:34:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(14, 8, 1, 1, 'Bersin-bersin', 'Avian fluenza', '2024-01-01', '2024-01-01 14:35:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(16, 13, 11, 5, 'Nyeri perut', 'Hamil bulan kedua', '2024-01-01', '2024-01-01 14:40:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rm_obat`
--

CREATE TABLE `rm_obat` (
  `id` int(11) NOT NULL,
  `obat_id` int(11) NOT NULL,
  `rm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `rm_obat`
--

INSERT INTO `rm_obat` (`id`, `obat_id`, `rm_id`) VALUES
(5, 3, 13),
(6, 1, 14),
(8, 7, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id` int(11) NOT NULL,
  `nama_ruang` varchar(128) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id`, `nama_ruang`, `keterangan`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Poli Umum', 'Lantai 1, Gedung Pusat', '2020-03-03 16:57:35', '2024-01-01 08:40:03', '0000-00-00 00:00:00', 1, 1, 0),
(2, 'Poli Gigi', 'Lantai 1, Gedung Barat', '2020-03-03 16:57:44', '2024-01-01 08:39:46', '0000-00-00 00:00:00', 1, 1, 0),
(5, 'Poli Kandungan', 'Lantai 1, Gedung Pusat', '2024-01-01 08:39:25', '2024-01-01 08:40:21', '0000-00-00 00:00:00', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `group_id`, `username`, `password`, `last_login`, `created_at`) VALUES
(1, 1, 'admin', '$2y$10$8DltCLYI6oYQP4UZBo4WruiqSUXxxq1I8Rqs1523kXNi6xTtusKUu', '0000-00-00 00:00:00', '2020-03-03 16:30:35');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `group_id`
--
ALTER TABLE `group_id`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `poligigi`
--
ALTER TABLE `poligigi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indeks untuk tabel `polikandungan`
--
ALTER TABLE `polikandungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indeks untuk tabel `poliumum`
--
ALTER TABLE `poliumum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indeks untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokter_id` (`dokter_id`),
  ADD KEY `ruang_id` (`ruang_id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indeks untuk tabel `rm_obat`
--
ALTER TABLE `rm_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obat_id` (`obat_id`),
  ADD KEY `rm_id` (`rm_id`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `group_id`
--
ALTER TABLE `group_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `poligigi`
--
ALTER TABLE `poligigi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `polikandungan`
--
ALTER TABLE `polikandungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `poliumum`
--
ALTER TABLE `poliumum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `rm_obat`
--
ALTER TABLE `rm_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD CONSTRAINT `rekam_medis_ibfk_2` FOREIGN KEY (`dokter_id`) REFERENCES `dokter` (`id`),
  ADD CONSTRAINT `rekam_medis_ibfk_3` FOREIGN KEY (`ruang_id`) REFERENCES `ruang` (`id`),
  ADD CONSTRAINT `rekam_medis_ibfk_4` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`);

--
-- Ketidakleluasaan untuk tabel `rm_obat`
--
ALTER TABLE `rm_obat`
  ADD CONSTRAINT `rm_obat_ibfk_1` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`),
  ADD CONSTRAINT `rm_obat_ibfk_2` FOREIGN KEY (`rm_id`) REFERENCES `rekam_medis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
