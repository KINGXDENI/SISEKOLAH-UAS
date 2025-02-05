<?php
$cekdat = mysqli_query($db, "SELECT * FROM tbl_hari");
$row = mysqli_num_rows($cekdat);
if ($row > 0) {

?>
    <?php
    // pengecekan pencarian data
    // jika dilakukan pencarian data, maka tampilkan kata kunci pencarian
    if (isset($_POST['cari'])) {
        $cari = $_POST['cari'];
    }
    // jika tidak maka kosong
    else {
        $cari = "";
    }
    ?>
    <div class="row">
        <div class="col-md-12">
            <?php
            // fungsi untuk menampilkan pesan
            // jika alert = "" (kosong)
            // tampilkan pesan "" (kosong)
            if (empty($_GET['alert'])) {
                echo "";
            }
            // jika alert = 1
            // tampilkan pesan Sukses "Data guru berhasil disimpan"
            elseif ($_GET['alert'] == 1) { ?>
                <div class="flash-data1" data-flashdata1="<?= $_GET['alert'] == 1; ?>"></div>
            <?php
            }
            // jika alert = 2
            // tampilkan pesan Sukses "Data guru berhasil diubah"
            elseif ($_GET['alert'] == 2) { ?>
                <div class="flash-data2" data-flashdata2="<?= $_GET['alert'] == 2; ?>"></div>
            <?php
            }
            // jika alert = 3
            // tampilkan pesan Sukses "Data guru berhasil dihapus"
            elseif ($_GET['alert'] == 3) { ?>
                <div class="flash-data3" data-flashdata3="<?= $_GET['alert'] == 3; ?>"></div>

            <?php
            }
            // jika alert = 4
            // tampilkan pesan Gagal "nip sudah ada"
            elseif ($_GET['alert'] == 4) { ?>
                <div class="flash-data4" data-flashdata4="<?= $_GET['alert'] == 4; ?>"></div>
        </div>
    <?php
            }
    ?>
    <form class="mb-2" action="" method="post">
        <div class="form-row">
            <div class="col-2">
                <h1 class="h2 text-gray-800 font-weight-bold cap animated bounceInLeft faster">Data Hari</h1>

            </div>
            <!-- form cari -->
            <div class="col-3">
                <input type="text" class="form-control" name="cari" placeholder="Cari Kode Hari atau Nama Hari" value="<?php echo $cari; ?>">
            </div>
            <!-- tombol cari -->
            <div class="col-6">
                <button type="submit" class="btn btn-dark">Cari</button>
            </div>
            <!-- tombol tambah data -->
            <div class="col">
                <a class="btn btn-warning animated bounceInRight faster" href="?page=tambahh" role="button"><i class="fas fa-plus"></i><span class="font-weight-bold cap">Tambah</span>
                </a>
            </div>
        </div>
    </form>
    <!-- Tabel hari untuk menampilkan data hari dari database -->
    <div class="card shadow mb-4 border-bottom-dark animated bounceIn faster">
        <div class="card-body bg-dark">
            <table id="datatables" class="table table-striped table-dark mt-3 style='width:100%' ">
                <thead>
                    <tr class="cap">
                        <th>No.</th>
                        <th>Kode Hari</th>
                        <th>Nama Hari</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody id="tampil">
                    <?php
                    // Pagination -------------------------------------------------------------------------------
                    // jumlah data yang ditampilkan setiap halaman
                    $batas = $jumdat;
                    // jika dilakukan pencarian data
                    if (isset($cari)) {
                        // perintah query untuk menampilkan jumlah data hari dari database berdasarkan kode hari atau nama hari yang sesuai dengan kata kunci pencarian
                        $query_jumlah = mysqli_query($db, "SELECT count(kode_hari) as jumlah FROM tbl_hari
WHERE kode_hari LIKE '%$cari%' OR nama_hari LIKE '%$cari%'")
                            or die('Ada kesalahan pada query jumlah:' . mysqli_error($db));
                    }
                    // jika tidak dilakukan pencarian data
                    else {
                        // perintah query untuk menampilkan jumlah data hari dari database
                        $query_jumlah = mysqli_query($db, "SELECT count(kode_hari) as jumlah FROM tbl_hari")
                            or die('Ada kesalahan pada query jumlah:' . mysqli_error($db));
                    }
                    // tampilkan jumlah data
                    $data_jumlah = mysqli_fetch_assoc($query_jumlah);
                    $jumlah = $data_jumlah['jumlah'];
                    $halaman = ceil($jumlah / $batas);
                    $page = (isset($_GET['hal'])) ? (int)$_GET['hal'] : 1;
                    $mulai = ($page - 1) * $batas;
                    // ------------------------------------------------------------------------------------------
                    // nomor urut tabel
                    $no = $mulai + 1;
                    // jika dilakukan pencarian data
                    if (isset($cari)) {
                        // perintah query untuk menampilkan data hari dari database berdasarkan kode_hari atau nama yang sesuai dengan kata kunci pencarian
                        // data yang ditampilkan mulai = $mulai sampai dengan batas = $batas
                        $query = mysqli_query($db, "SELECT * FROM tbl_hari
WHERE kode_hari LIKE '%$cari%' OR nama_hari LIKE '%$cari%'
ORDER BY kode_hari DESC LIMIT $mulai, $batas")
                            or die('Ada kesalahan pada query hari: ' . mysqli_error($db));
                    }
                    // jika tidak dilakukan pencarian data
                    else {
                        // perintah query untuk menampilkan data hari dari database
                        // data yang ditampilkan mulai = $mulai sampai dengan batas = $batas
                        $query = mysqli_query($db, "SELECT * FROM tbl_hari ORDER BY kode_hari DESC LIMIT $mulai, $batas")
                            or die('Ada kesalahan pada query hari: ' . mysqli_error($db));
                    }
                    // tampilkan data
                    while ($data = mysqli_fetch_assoc($query)) { ?>
                        <tr class="cap centr">
                            <td><?php echo $no; ?></td>
                            <td><?php echo $data['kode_hari']; ?></td>
                            <td><?php echo $data['nama_hari']; ?></td>
                            <td>
                                <a title="Ubah" class="btn btn-success" href="?page=ubahh&kode_hari=<?php echo $data['kode_hari']; ?>"><i class="fas fa-edit"></i></a>
                                <a title="Hapus" id="btn-del" class="btn btn-danger" href="view/hari/hari_proses_hapus.php?kode_hari=<?php echo $data['kode_hari']; ?>"><i class="fas fa-trash"></i></a>
                            </td>
                        </tr>
                    <?php
                        $no++;
                    } ?>
                </tbody>
            </table>
        </div>
    </div>
    <!-- Tampilkan Pagination -->
    <?php
    // fungsi untuk pengecekan halaman aktif
    // jika halaman kosong atau tidak ada yang dipilih
    if (empty($_GET['hal'])) {
        // halaman aktif = 1
        $halaman_aktif = '1';
    }
    // selain itu
    else {
        // halaman aktif = sesuai yang dipilih
        $halaman_aktif = $_GET['hal'];
    }
    ?>
    <div class="row">
        <div class="col">
            <!-- tampilkan informasi jumlah halaman dan jumlah data -->
            <a>
                Halaman <?php echo $halaman_aktif; ?> dari <?php echo $halaman; ?> -
                Total <?php echo $jumlah; ?> data
            </a>
        </div>
        <div class="col">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-end">
                    <!-- Button untuk halaman sebelumnya -->
                    <?php
                    // jika halaman aktif = 0 atau = 1, maka button Sebelumnya = disable
                    if ($halaman_aktif <= '1') { ?>
                        <li class="page-item disabled"> <span class="page-link text-white bg-dark">Sebelumnya</span></li>
                    <?php
                    }
                    // jika halaman aktif > 1, maka button Sebelumnya = aktif
                    else { ?>
                        <li class="page-item"><a class="page-link text-warning bg-dark" href="?page=hari&hal=<?php echo $page - 1 ?>">Sebelumnya</a></li>
                    <?php } ?>
                    <!-- Button untuk link halaman 1 2 3 ... -->
                    <?php
                    for ($x = 1; $x <= $halaman; $x++) { ?>
                        <li class="page-item"><a class="page-link text-warning bg-dark" href="?page=hari&hal=<?php echo $x ?>"><?php echo $x ?></a></li>
                    <?php } ?>
                    <!-- Button untuk halaman selanjutnya -->
                    <?php
                    // jika halaman aktif >= jumlah halaman, maka button Selanjutnya = disable
                    if ($halaman_aktif >= $halaman) { ?>
                        <li class="page-item disabled"> <span class="page-link text-white bg-dark">Selanjutnya</span></li>
                    <?php
                    }
                    // jika halaman aktif <= jumlah halaman, maka button Selanjutnya = aktif
                    else { ?>
                        <li class="page-item"><a class="page-link text-warning bg-dark" href="?page=hari&hal=<?php echo $page + 1 ?>">Selanjutnya</a></li>
                    <?php } ?>
                </ul>
            </nav>
        </div>
    </div>
    </div>
    </div>

<?php
} else { ?>
    <script>
        document.location = 'index.php?page=tambahh';
    </script>
<?php
}
?>