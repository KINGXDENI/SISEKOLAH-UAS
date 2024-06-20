-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Jul 2023 pada 12.51
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id_pengaturan` int(11) NOT NULL,
  `jumlah_data` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id_pengaturan`, `jumlah_data`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `jam_maks_sehari` int(11) NOT NULL,
  `batas_ajar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `level` enum('Admin','Guru','Siswa') NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `code` mediumint(9) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `user`, `pass`, `level`, `email`, `foto`, `code`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'admin@gmail.com', '', 0, 'notverified'),
(2, '20TI008', '60a426238e847225af33007f2af8816a', 'Siswa', '20TI008@gmail.com', '', 0, 'notverified'),
(3, '20TI009', '3e838aed2b9921842021bc476eb51097', 'Siswa', '20TI009@gmail.com', 'img-8.png', 0, 'notverified'),
(4, '20TI023', '43e5a21228d80a907c163644df4b7dc7', 'Siswa', '20TI010@gmail.com', 'img-1.png', 0, 'notverified'),
(5, '20TI024', '4b8c5fef13b9291b39f30780341f00e0', 'Siswa', '20TI024@gmail.com', 'img-1.png', 0, 'notverified'),
(6, '20TI025', 'b76c631dd918058bb1e6610090244f08', 'Siswa', '20TI025@gmail.com', 'img-4.png', 0, 'notverified'),
(7, '20TI026', '60daaa61f32d2a34546b479b6bc1ace3', 'Siswa', '20TI026@gmail.com', 'img-12.png', 0, 'notverified'),
(8, '20TI027', 'a970a0c5654afad3c22467e0aaa357a9', 'Siswa', '20TI027@gmail.com', 'img-5.png', 0, 'notverified'),
(9, '20TI028', '6701942999564dce5c2566a9573d4b46', 'Siswa', '20TI028@gmail.com', 'img-4.png', 0, 'notverified'),
(10, '20TI029', '1807cfb17ebabf3151569560331a7346', 'Siswa', '20TI029@gmail.com', 'img-12.png', 0, 'notverified'),
(11, '20TI030', '3773e8fe12160cdbb6bd88409ca1e58b', 'Siswa', '20TI030@gmail.com', 'img-11.png', 0, 'notverified'),
(12, '20TI031', '4ce25f0f53cae314c91fcd459c4c3db7', 'Siswa', '20TI031@gmail.com', 'img-3.png', 0, 'notverified'),
(13, '20TI032', 'ed918b73ba59e649cc5b391bfef065ae', 'Siswa', '20TI032@gmail.com', 'img-2.png', 0, 'notverified'),
(14, '20TI033', '8176af0c4a0a1736f879eb0c5ba5d35c', 'Siswa', '20TI033@gmail.com', 'img-2.png', 0, 'notverified'),
(15, '20TI034', 'ebbb204921e73010a39aab975d0e6dfd', 'Siswa', '20TI034@gmail.com', 'img-4.png', 0, 'notverified'),
(16, '20TI035', '4482cf0f90d7528f97b53526ca4890da', 'Siswa', '20TI035@gmail.com', 'img-6.png', 0, 'notverified'),
(17, '20TI036', 'ed45647cfaa579f6c6488d90892d945f', 'Siswa', '20TI036@gmail.com', 'img-4.png', 0, 'notverified'),
(18, '20TI035', '4482cf0f90d7528f97b53526ca4890da', 'Siswa', '20TI035@gmail.com', 'img-4.png', 0, 'notverified'),
(19, '20TI036', 'ed45647cfaa579f6c6488d90892d945f', 'Siswa', '20TI036@gmail.com', 'img-6.png', 0, 'notverified'),
(20, '20TI037', '2abc754caac107c133242ba899cea40a', 'Siswa', '20TI037@gmail.com', 'img-6.png', 0, 'notverified'),
(21, '20TI038', '09266009f3d4365c953e37958aace42d', 'Siswa', '20TI038@gmail.com', 'img-10.png', 0, 'notverified'),
(22, '20TI039', '8f4444a2bc2f338e15bf7b892ff604c9', 'Siswa', '20TI039@gmail.com', 'img-4.png', 0, 'notverified'),
(23, '20TI040', '1a05c40ba41914bf5909892a9655dfc4', 'Siswa', '20TI040@gmail.com', 'img-10.png', 0, 'notverified'),
(24, '20TI041', 'e8f778c9427a9b8414c9de0dab4fbc91', 'Siswa', '20TI041@gmail.com', 'img-9.png', 0, 'notverified'),
(25, '20TI042', '1bc8cebd418eeb89d21cfb633cac4a2f', 'Siswa', '20TI042@gmail.com', 'img-7.png', 0, 'notverified'),
(26, '20TI043', '66a92b7c71fe718d90a1d89cb3f01ac9', 'Siswa', '20TI043@gmail.com', 'img-7.png', 0, 'notverified'),
(27, '20TI044', '543cdedb9cf8ca9b138871f823ce102e', 'Siswa', '20TI044@gmail.com', 'img-8.png', 0, 'notverified'),
(28, '20TI045', 'd35ff662321d383a5d74d4b5997281d4', 'Siswa', '20TI045@gmail.com', 'img-2.png', 0, 'notverified'),
(29, '20TI046', '92fcb25dd977e0458b6a410013a43356', 'Siswa', '20TI046@gmail.com', 'img-7.png', 0, 'notverified'),
(30, '20TI047', '32e79c08939fb7b8c9e5f5ecadfbf156', 'Siswa', '20TI047@gmail.com', 'img-3.png', 0, 'notverified'),
(31, '20TI048', 'a019cdb32cd21407deb4adebc9e22581', 'Siswa', '20TI048@gmail.com', 'img-5.png', 0, 'notverified'),
(32, '20TI049', 'b098ffce07f1fe77297311b32670d5b3', 'Siswa', '20TI049@gmail.com', 'img-6.png', 0, 'notverified'),
(33, '20TI050', '0880bad632be4d3374f030138f3c85a4', 'Siswa', '20TI050@gmail.com', 'img-4.png', 0, 'notverified'),
(34, '20TI051', 'dedad9f2293b6e4a468616fad336156f', 'Siswa', '20TI051@gmail.com', 'img-6.png', 0, 'notverified'),
(35, '20TI052', '42defd202243f0e45b195f058ce85343', 'Siswa', '20TI052@gmail.com', 'img-11.png', 0, 'notverified'),
(36, '20TI053', '719bfdef83d60d7cd78945752806bf84', 'Siswa', '20TI053@gmail.com', 'img-8.png', 0, 'notverified'),
(37, '20TI054', 'd8a1d20fbedb0428247a98019dc19c54', 'Siswa', '20TI054@gmail.com', 'img-11.png', 0, 'notverified'),
(38, '20TI055', '588463b7ff2e1ff3576a5000eb382d25', 'Siswa', '20TI055@gmail.com', 'img-6.png', 0, 'notverified'),
(39, '20TI056', '4feb81bf70349a99f15d97b3c8957a04', 'Siswa', '20TI056@gmail.com', 'img-12.png', 0, 'notverified'),
(40, '20TI057', '2fd8ad1f3a2880d70183bc7ff250e4aa', 'Siswa', '20TI057@gmail.com', 'img-7.png', 0, 'notverified'),
(41, '20TI058', 'a51e037e68d1ba8a647d789df8f7db20', 'Siswa', '20TI058@gmail.com', 'img-4.png', 0, 'notverified'),
(42, '20TI059', '91613b15999cb4073f643470cff06e94', 'Siswa', '20TI059@gmail.com', 'img-9.png', 0, 'notverified'),
(43, '20TI060', '497edbe2780c4e52903d7c2629434a9c', 'Siswa', '20TI060@gmail.com', 'img-4.png', 0, 'notverified'),
(44, '20TI061', '09ce190ae24c8a26aac86bad91cfa53e', 'Siswa', '20TI061@gmail.com', 'img-7.png', 0, 'notverified'),
(45, '20TI062', '1289fdcde6110efdb4ac3cb25d0763ff', 'Siswa', '20TI062@gmail.com', 'img-4.png', 0, 'notverified'),
(46, 'Suprianto, M.Kom', 'f0339ab5babe218748c8a54cc6011abd', 'Admin', 'Suprianto@gmail.com', 'img-4.png', 0, 'Menikah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `nip` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `agama` varchar(15) NOT NULL,
  `status` enum('Menikah','Belum Menikah') NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`nip`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `status`, `no_hp`, `email`, `foto`) VALUES
('197587459965081', 'Zaeniah, M.Kom', 'Mataram', '1999-06-29', 'Perempuan', 'Islam', 'Belum Menikah', '085123123123', 'Zaeni@gamil.com', 'img-11.png'),
('292041568971621', 'Radin Bima S.Kom', 'mbere', '2021-05-05', 'Laki-Laki', 'Islam', 'Belum Menikah', '087645234134', 'radin konco@gmail.com', 'img-4.png'),
('319037589555146', 'M. Masjun Efendi. M.Kom', 'Masbagik', '1969-06-18', 'Perempuan', 'Islam', 'Menikah', '083123123131', 'Efendi14@gmail.com', 'img-7.png'),
('417374836772206', 'Rian S.Kom', 'Bengkulu', '2022-08-31', 'Laki-Laki', 'Islam', 'Belum Menikah', '062838909874', 'rian@gmail.com', 'img-4.png'),
('563475309129463', 'Restu S.Kom', 'ngele', '2022-08-17', 'Laki-Laki', 'Islam', 'Belum Menikah', '082335476123', 'restu@gmail.com', 'img-3.png'),
('844344778931881', 'Tiran MM', 'Pasuruan', '2022-08-06', 'Perempuan', 'Kristen Katolik', 'Menikah', '584300764325', 'toran@gmail.com', 'img-1.png'),
('871540735758200', 'Rudi Muslim, M.Kom', 'Bandung', '2022-06-16', 'Laki-Laki', 'Islam', 'Menikah', '08212313211', 'rusdimus@gmail.com', 'img-7.png'),
('904448379276041', 'Aril S.Kom', 'NTT', '2022-08-26', 'Laki-Laki', 'Buddha', 'Belum Menikah', '087523951640', 'epos@gmail.col', 'img-2.png'),
('914410951773702', 'Juhartini, M.Kom', 'Dompu', '1979-07-25', 'Perempuan', 'Islam', 'Menikah', '082313231231', 'Juharti@gmail.com', 'img-11.png'),
('937302351972425', 'Suprianto, M.Kom', 'Sumbawa', '2022-08-25', 'Laki-Laki', 'Islam', 'Menikah', '083433323223', 'Suprianto@gmail.com', 'img-4.png'),
('963540703016406', 'Salman, M.TI', 'Aceh', '1979-05-28', 'Laki-Laki', 'Islam', 'Menikah', '081703767507', 'Salmanml@gmail.com', 'img-3.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hari`
--

CREATE TABLE `tbl_hari` (
  `kode_hari` varchar(10) NOT NULL,
  `nama_hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_hari`
--

INSERT INTO `tbl_hari` (`kode_hari`, `nama_hari`) VALUES
('KH001', 'Senin'),
('KH002', 'Selasa'),
('KH003', 'Rabu'),
('KH004', 'Kamis'),
('KH005', 'Juma\'t'),
('KH006', 'Sabtu'),
('KH007', 'Minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `kode_jadwal` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `tahun_ajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kode_jadwal`, `semester`, `tahun_ajaran`) VALUES
('KDJD001', 5, 2022),
('KDJD002', 2, 2021),
('KDJD003', 4, 2020),
('KDJD004', 6, 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwaldetail`
--

CREATE TABLE `tbl_jadwaldetail` (
  `kode_jadwaldt` varchar(10) NOT NULL,
  `kode_jadwal` varchar(10) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `id_waktu` varchar(10) NOT NULL,
  `tahun_ajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jadwaldetail`
--

INSERT INTO `tbl_jadwaldetail` (`kode_jadwaldt`, `kode_jadwal`, `kode_mapel`, `kode_kelas`, `nip`, `id_waktu`, `tahun_ajaran`) VALUES
('001', 'KDJD002', 'MP001', 'KK001', '197587459965081', 'IDW001', 2022),
('002', 'KDJD003', 'MP003', 'KK002', '319037589555146', 'IDW002', 2022),
('003', 'KDJD003', 'MP002', 'KK003', '417374836772206', 'IDW003', 2026),
('004', 'KDJD001', 'MP002', 'KK003', '319037589555146', 'IDW003', 2021),
('005', 'KDJD002', 'MP002', 'KK002', '292041568971621', 'IDW002', 2025),
('006', 'KDJD001', 'MP003', 'KK001', '904448379276041', 'IDW002', 2022);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kode_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`kode_jurusan`, `nama_jurusan`) VALUES
('RPL', 'Rekayasa Perangkat Lunak'),
('RS', 'Rekayasa Sistem'),
('RSK', 'Rekayasa Sistem Komputer'),
('SI', 'Sistem Informasi'),
('TI', 'Teknik Informatika'),
('TK', 'Teknik Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelasdetail`
--

CREATE TABLE `tbl_kelasdetail` (
  `kode_kelas` varchar(5) NOT NULL,
  `nim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelasdetail`
--

INSERT INTO `tbl_kelasdetail` (`kode_kelas`, `nim`) VALUES
('KK001', '20TI023'),
('KK001', '20TI024'),
('KK001', '20TI025'),
('KK001', '20TI028'),
('KK001', '20TI030'),
('KK001', '20TI031'),
('KK001', '20TI032'),
('KK001', '20TI033'),
('KK001', '20TI034'),
('KK004', '20TI001'),
('KK004', '20TI002'),
('KK004', '20TI003'),
('KK004', '20TI006'),
('KK003', '20TI004'),
('KK002', '20TI005'),
('KK002', '20TI008'),
('KK002', '20TI029'),
('KK005', '20TI007'),
('KK005', '20TI009'),
('KK005', '20TI026'),
('KK005', '20TI027'),
('KK004', '20TI040'),
('KK004', '20TI042'),
('KK004', '20TI043'),
('KK004', '20TI044'),
('KK004', '20TI045'),
('KK003', '20TI047'),
('KK003', '20TI048'),
('KK003', '20TI049'),
('KK003', '20TI050'),
('KK003', '20TI051'),
('KK001', '20TI035'),
('KK005', '20TI060'),
('KK005', '20TI061'),
('KK005', '20TI062'),
('KK003', '20TI052');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelass`
--

CREATE TABLE `tbl_kelass` (
  `kode_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `tingkat` int(11) NOT NULL,
  `wali_kelas` varchar(15) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `tahun` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kelass`
--

INSERT INTO `tbl_kelass` (`kode_kelas`, `nama_kelas`, `tingkat`, `wali_kelas`, `kode_jurusan`, `semester`, `tahun`) VALUES
('KK001', 'TI', 1, '197587459965081', 'TI', 4, '2024'),
('KK002', 'SI', 2, '914410951773702', 'SI', 3, '2019'),
('KK003', 'RPL', 1, '319037589555146', 'RPL', 6, '2021'),
('KK004', 'RSK', 5, '292041568971621', 'RSK', 4, '2022'),
('KK005', 'TK', 2, '963540703016406', 'TK', 7, '2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matapelajaran`
--

CREATE TABLE `tbl_matapelajaran` (
  `kode_mapel` varchar(6) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL,
  `semester` int(11) NOT NULL,
  `kode_jurusan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_matapelajaran`
--

INSERT INTO `tbl_matapelajaran` (`kode_mapel`, `nama_mapel`, `semester`, `kode_jurusan`) VALUES
('MP001', 'Kalkulus', 3, 'RSK'),
('MP002', 'Sistem Infomasi', 4, 'RS'),
('MP003', 'Programmer web', 3, 'TI'),
('MP004', 'Sistem Informasi Managemen', 2, 'RSK'),
('MP005', 'Technoprenerurship', 5, 'TI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nim`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `kode_jurusan`, `no_hp`, `foto`) VALUES
('20TI001', 'Muh deni setiawan', 'mataram', '2002-08-19', 'Perempuan', 'Kristen Katolik', 'dompu, nusa tenggara barat', 'RSK', '082144323683', 'img-4.png'),
('20TI002', 'Athaur Muttaqin', 'Bima', '2022-06-06', 'Perempuan', 'Hindu', 'Bima, Sape', 'RSK', '0823390701', 'img-2.png'),
('20TI003', 'M. Firas Rizaldiansyah', 'Sumbawa', '2001-08-15', 'Perempuan', 'Buddha', 'Sumbawa, Lunyuk', 'RSK', '08523829276', 'img-4.png'),
('20TI004', 'Hari kun', 'smbawa', '2022-07-27', 'Perempuan', 'Islam', 'mataram', 'RPL', '082359321001', 'img-12.png'),
('20TI005', 'Muhammad isnaini', 'lobar', '2001-08-16', 'Laki-Laki', 'Islam', 'lobar', 'SI', '088123456789', 'img-4.png'),
('20TI006', 'Aulia Hikmah', 'Mataram', '2022-07-05', 'Perempuan', 'Kristen Katolik', 'Mataram', 'RSK', '0821443243332', 'img-8.png'),
('20TI007', 'Heri Irawan', 'Lombok Utara', '2022-07-14', 'Laki-Laki', 'Buddha', 'KLU', 'TK', '0823434332323', 'img-1.png'),
('20TI008', 'Yogi Pranatayoga', 'Mataram', '2022-06-28', 'Laki-Laki', 'Kristen Katolik', 'Mataram', 'SI', '0821321312321', 'img-3.png'),
('20TI009', 'Mustofa arizaki', 'Lombok Timur', '2022-06-28', 'Laki-Laki', 'Islam', 'lotim', 'TK', '082323232323', 'img-3.png'),
('20TI023', 'Eldi Royan Hadi Sapura', 'Lombok Tengah', '2022-07-09', 'Laki-Laki', 'Islam', 'NTB', 'TI', '081775008478', 'img-1.png'),
('20TI024', 'Alfian Hidaytaullah', 'Mataram', '2001-11-10', 'Laki-Laki', 'Islam', 'Mataram', 'TI', '0987654321', 'img-1.png'),
('20TI025', 'Sahban', 'DOMPU', '2000-07-01', 'Laki-Laki', 'Islam', 'DOMPU', 'TI', '0883232323232', 'img-4.png'),
('20TI026', 'Thita Hafsari', 'DOMPU', '2022-08-05', 'Perempuan', 'Islam', 'DOMPU', 'TK', '0865656444332', 'img-12.png'),
('20TI027', 'Dwi Aulia', 'Sumbawa', '2022-08-18', 'Perempuan', 'Hindu', 'Sumbawa', 'TK', '0876544343323', 'img-5.png'),
('20TI028', 'B. Sri Cahaya Nisa', 'Lombok Barat', '2022-08-12', 'Perempuan', 'Islam', 'Lombok Barat', 'TI', '0821313213132', 'img-4.png'),
('20TI029', 'Baiq Istitin Sari', 'Lombok Timur', '2022-08-26', 'Perempuan', 'Islam', 'Masbagik', 'SI', '0821323123132', 'img-12.png'),
('20TI030', 'Baiq Sinta Lesmana Willia', 'Jawa Barat', '2022-08-18', 'Perempuan', 'Islam', 'Mataram', 'TI', '0821231231322', 'img-11.png'),
('20TI031', 'Muhammad Hirsan', 'Lombok Utara', '2022-08-10', 'Laki-Laki', 'Hindu', 'Lombok Utara', 'TI', '0821312321312', 'img-3.png'),
('20TI032', 'Agung Kurniawan', 'Lombok Selatan', '2022-02-15', 'Laki-Laki', 'Hindu', 'Lombok Selatan', 'TI', '0821313131321', 'img-2.png'),
('20TI033', 'Ahmad Rifki', 'Mataram', '2022-08-29', 'Laki-Laki', 'Buddha', 'Kekalek Jaya', 'TI', '0821344332234', 'img-2.png'),
('20TI034', 'Khaerul Fahmi', 'Madagaskar', '2022-08-24', 'Laki-Laki', 'Hindu', 'Kabupaten Lombok Utara', 'TI', '0832132112123', 'img-4.png'),
('20TI035', 'Nizam Pranata', 'Lombok Timur', '2022-08-11', 'Laki-Laki', 'Kristen Katolik', 'Pancor', 'TI', '0823131312334', 'img-4.png'),
('20TI036', 'Darmawansyah', 'Dompu', '2022-08-17', 'Laki-Laki', 'Hindu', 'Simpasai', 'RS', '0823144133221', 'img-3.png'),
('20TI037', 'Zuriatun Toyibah', 'Lombok Barat', '2022-08-18', 'Laki-Laki', 'Hindu', 'Kekalek', 'RS', '0831321313122', 'img-9.png'),
('20TI038', 'Magfirah', 'Bima', '2022-08-05', 'Perempuan', 'Kristen Katolik', 'Bolo', 'RS', '0833132321313', 'img-10.png'),
('20TI039', 'Taufan Maulana', 'Dompu', '2022-08-18', 'Laki-Laki', 'Hindu', 'Kampasi Meci', 'RS', '0831323243432', 'img-4.png'),
('20TI040', 'Sri Haryati', 'Kota Bima', '2022-08-24', 'Perempuan', 'Hindu', 'Rade Bolo', 'RSK', '0823123231231', 'img-10.png'),
('20TI041', 'Haerunisah', 'Maluku', '2020-06-16', 'Perempuan', 'Islam', 'Maluku', 'RS', '0821323121334', 'img-9.png'),
('20TI042', 'Komariah', 'Bali', '2022-08-10', 'Perempuan', 'Islam', 'Denpasar', 'RSK', '0833434223423', 'img-7.png'),
('20TI043', 'Novi Asdianti', 'Kalimantan Selatan', '2022-08-11', 'Perempuan', 'Kristen Katolik', 'Kalimantan Selatan', 'RSK', '0832133432212', 'img-7.png'),
('20TI044', 'Restiana', 'Kalimantan Selatan', '2022-08-19', 'Perempuan', 'Kristen Katolik', 'Kalimantan Selatan', 'RSK', '0823821738123', 'img-8.png'),
('20TI045', 'Almi Ramdani', 'Sulawesi Tenggara', '2022-08-11', 'Laki-Laki', 'Kristen Katolik', 'Sulsel', 'RSK', '0831321313321', 'img-2.png'),
('20TI046', 'Prasetia Ayu Diani', 'Mataram', '2022-08-18', 'Perempuan', 'Islam', 'Mataram', 'TI', '08323311231', 'img-7.png'),
('20TI047', 'Veri Irawan', 'Bandung', '2022-08-18', 'Laki-Laki', 'Hindu', 'Bandung', 'RPL', '0832313123123', 'img-3.png'),
('20TI048', 'Ari Wahyu Sanjaya', 'Papua', '2022-08-24', 'Laki-Laki', 'Kristen Katolik', 'Papua', 'RPL', '0832112312355', 'img-5.png'),
('20TI049', 'Muhammad Riski', 'Kuala Lumpur', '2022-08-18', 'Laki-Laki', 'Kristen Katolik', 'Kuala Lumpur', 'RPL', '0831332132312', 'img-5.png'),
('20TI050', 'Raka Putra Pratama', 'Dompu', '2022-08-24', 'Laki-Laki', 'Kristen Protestan', 'Tekasire', 'RPL', '0831127363736', 'img-4.png'),
('20TI051', 'Muhajirin', 'Aceh', '2022-08-10', 'Laki-Laki', 'Hindu', 'Aceh', 'RPL', '0883478374837', 'img-5.png'),
('20TI052', 'Restiana', 'Lombok Timur', '2022-08-26', 'Perempuan', 'Kristen Katolik', 'Selong', 'RPL', '0823213134343', 'img-11.png'),
('20TI053', 'Hayatun Nurul Fatiha', 'Jawa Barat', '2022-08-18', 'Perempuan', 'Hindu', 'Jawa Barat', 'RS', '0887376373223', 'img-8.png'),
('20TI054', 'Sandikawati', 'Dompu', '2022-08-17', 'Perempuan', 'Islam', 'Tambora', 'SI', '0832134312313', 'img-11.png'),
('20TI055', 'Imam Alfian', 'Papua', '2022-08-03', 'Perempuan', 'Kristen Katolik', 'Ende', 'SI', '0832132343433', 'img-4.png'),
('20TI056', 'Putri Dwi Kalisa', 'Paris', '2022-08-23', 'Perempuan', 'Kristen Katolik', 'Prancis', 'SI', '0832131233555', 'img-12.png'),
('20TI057', 'Kadek Restika', 'Bali', '2022-08-18', 'Perempuan', 'Hindu', 'Denpasar', 'SI', '0832131313222', 'img-7.png'),
('20TI058', 'Irwanto', 'Serang', '2022-08-18', 'Laki-Laki', 'Islam', 'Banten', 'SI', '0832312321322', 'img-4.png'),
('20TI059', 'Fika Amila', 'Maluku', '2022-08-24', 'Perempuan', 'Kristen Katolik', 'Ambon', 'SI', '0823123443121', 'img-9.png'),
('20TI060', 'Wulan Utami', 'Bali', '2022-08-29', 'Perempuan', 'Kristen Katolik', 'Denpasar', 'TK', '0831233213321', 'img-4.png'),
('20TI061', 'Julia Sifa', 'Aceh', '2022-08-09', 'Perempuan', 'Kristen Katolik', 'Aceh', 'TK', '0832371637267', 'img-7.png'),
('20TI062', 'Ilham Akbar', 'Bandung', '2022-08-17', 'Laki-Laki', 'Islam', 'Kota Lama', 'TK', '0823213123213', 'img-4.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_waktu`
--

CREATE TABLE `tbl_waktu` (
  `id_waktu` varchar(11) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_waktu`
--

INSERT INTO `tbl_waktu` (`id_waktu`, `jam_masuk`, `jam_keluar`) VALUES
('IDW001', '07:30:00', '09:00:00'),
('IDW002', '08:30:00', '10:30:00'),
('IDW003', '10:40:00', '12:10:00'),
('IDW004', '13:00:00', '14:50:00'),
('IDW005', '15:32:00', '17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'siswa', 'siswa', 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Siswa','Guru','Admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `nama_lengkap`, `password`, `level`) VALUES
(9, 'siswa', 'muh deni', 'bcd724d15cde8c47650fda962968f102', 'Siswa'),
(10, 'siswa', 'muh deni', 'bcd724d15cde8c47650fda962968f102', 'Siswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `tbl_hari`
--
ALTER TABLE `tbl_hari`
  ADD PRIMARY KEY (`kode_hari`);

--
-- Indeks untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kode_jadwal`);

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indeks untuk tabel `tbl_kelass`
--
ALTER TABLE `tbl_kelass`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indeks untuk tabel `tbl_matapelajaran`
--
ALTER TABLE `tbl_matapelajaran`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tbl_waktu`
--
ALTER TABLE `tbl_waktu`
  ADD PRIMARY KEY (`id_waktu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id_pengaturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
