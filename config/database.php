 <?php // tag pembuka syntax PHP
    // set default timezone
    date_default_timezone_set("ASIA/JAKARTA");

    //koneksi database offline
    $server = "localhost"; // server database, default “localhost” atau “127.0.0.1”
    $username = "root"; // username database, default “root”
    $password = ""; // password database, default kosong
    $database = "db_sekolah"; // memilih database yang akan digunakan

    //dbonline
    // $server = "sql202.epizy.com "; // server database, default “localhost” atau “127.0.0.1”
    // $username = "epiz_32237877"; // username database, default “root”
    // $password = "diKK70pcadmcTQ"; // password database, default kosong
    // $database = "epiz_32237877_db_sekolahden"; // memilih database yang akan digunakan

    //dbonline
    // $server = "www.db4free.net"; // server database, default “localhost” atau “127.0.0.1”
    // $username = "muhdenisetiawan"; // username database, default “root”
    // $password = "123dendut"; // password database, default kosong
    // $database = "db_sekolahdeni"; // memilih database yang akan digunakan
    // koneksi database
    $db = mysqli_connect($server, $username, $password, $database);

    // cek koneksi
    if (!$db) {
        // cek koneksi gagal, tampilkan pesan gagal
        die('Koneksi Database Gagal : ' . mysqli_connect_error());
    }
    ?>
<!-- tag penutup syntax PHP -->