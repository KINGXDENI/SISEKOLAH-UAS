<?php
    // panggil file database.php untuk koneksi ke database
    require_once "../../config/database.php";
    // jika tombol simpan diklik
    if (isset($_POST['simpan'])) {
        // ambil data hasil submit dari form
        $kode_jadwaldt = mysqli_real_escape_string($db, trim($_POST['kode_jadwaldt']));
        $kode_jadwal = mysqli_real_escape_string($db, trim($_POST['kode_jadwal']));
        $id_waktu = mysqli_real_escape_string($db, trim($_POST['id_waktu']));
        $kode_mapel = mysqli_real_escape_string($db, trim($_POST['kode_mapel']));
        $kode_kelas = mysqli_real_escape_string($db, trim($_POST['kode_kelas']));
        $nip = mysqli_real_escape_string($db, trim($_POST['nip']));
        $tahun_ajaran = mysqli_real_escape_string($db, trim($_POST['tahun_ajaran']));

        // perintah query untuk menampilkan kode_jadwal dari tabel siswa berdasarkan kode_jadwal dari hasil submit form
                $insert = mysqli_query($db, "INSERT INTO tbl_jadwaldetail(kode_jadwal,kode_jadwaldt,id_waktu,kode_mapel,kode_kelas,nip,tahun_ajaran)
VALUES('$kode_jadwal','$kode_jadwaldt','$id_waktu','$kode_mapel','$kode_kelas','$nip','$tahun_ajaran')")
                    or die('Ada kesalahan pada query insert : ' . mysqli_error($db));
                // cek query
                if ($insert) {
                    // jika berhasil tampilkan pesan berhasil simpan data
                    header("location: ../../index.php?alert=1&page=jadwaldetail&kode_jadwal=$kode_jadwal");
                }
            
        }
    // tutup koneksi
    mysqli_close($db);
