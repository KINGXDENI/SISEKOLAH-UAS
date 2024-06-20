	<?php
	$nim = $_SESSION['user'];
	$queryKD = mysqli_query($db, "SELECT * FROM tbl_kelasdetail WHERE nim='$nim' GROUP BY kode_kelas");
	$dataKD = mysqli_fetch_assoc($queryKD);
	$kode_kelas = $dataKD['kode_kelas'];
		// perintah query untuk menampilkan data dari tabel siswa berdasarkan kode_kelas
		$query = mysqli_query($db, "SELECT * FROM tbl_jadwal as tj 
		INNER JOIN tbl_jadwaldetail tjd ON tj.kode_jadwal=tjd.kode_jadwal
		WHERE tjd.kode_kelas='$kode_kelas'")
			or die('Query Error : ' . mysqli_error($db));
		$data = mysqli_fetch_assoc($query);
		$kode_jadwal = $data['kode_jadwal'];
		$semester = $data['semester'];
		$tahun = $data['tahun_ajaran'];

	?>
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
		<?php
		}
		?><form class="needs-validation" action="view/jadwal/proses_simpan_jadwaldetail.php" method="post" enctype="multipart/form-data" novalidate>
			<div class="row">
				<div class="col-md-12">
					<div class="d-sm-flex mb-3">
						<div class="col-10 d-flex">
							<a href="?page=jadwal" class="btn-circle btn-dark text-warning shadow-lg">
								<i class="fas fa-arrow-left"></i>
							</a>
							<h1 class="h2 mb-0 ml-4 text-dark font-weight-bold cap">Data Jadwal Detail</h1>
						</div>
						<button type="submit" class="btn btn-success btn-md btn-icon-split ml-5 shadow-lg" name="simpan" value="Simpan">
							<span class="text text-white cap font-weight-bold">Simpan Data
								<i class="fas fa-save"></i>
							</span>
						</button>
					</div>

					<div class="card border-bottom-warning shadow mb-4 animated bounceIn faster">
						<div class="card-body bg-dark">
							<table class="table table-dark">
								<thead>
									<tr>
										<td width="150" class="bg-warning text-dark cap font-weight-bold">Kode Jadwal</td>
										<td>: <?php echo $kode_jadwal; ?></td>
									</tr>
									<tr>
										<td width="150" class="bg-warning text-dark cap font-weight-bold">Semester</td>
										<td>: <?php echo $semester; ?></td>
									</tr>
									<tr>
										<td width="150" class="bg-warning text-dark cap font-weight-bold">Tahun Ajaran</td>
										<td>: <?php echo $tahun; ?></td>
									</tr>
								</thead>

							</table>
						</div>
					</div>

					<div class="card border-bottom-warning shadow mb-4 animated bounceIn faster">
						<div class="card-body bg-dark">
							<table id="datatables" class="table table-striped table-dark mt-3 style='width:100%'">
								<thead>
									<tr class="cap">
										<th>No.</th>
										<th>Kode Jadwal</th>
										<th>Jam Masuk - Jam Keluar</th>
										<th>Mata Pelajaran</th>
										<th>Kode Kelas</th>
										<th>NIP | Nama Guru</th>
										<th>Tahun Ajaran</th>
									</tr>
								</thead>

								<tbody>
									<?php
									$no =  1;
									$query = mysqli_query($db, "SELECT * FROM tbl_jadwaldetail tjd
                            INNER JOIN tbl_waktu tw ON tjd.id_waktu=tw.id_waktu
                            INNER JOIN tbl_guru tg ON tjd.nip = tg.nip
                            INNER JOIN tbl_matapelajaran tm ON tjd.kode_mapel = tm.kode_mapel
                            INNER JOIN tbl_kelass tk ON tjd.kode_kelas = tk.kode_kelas
							INNER JOIN tbl_kelasdetail ts ON tjd.kode_kelas = ts.kode_kelas
                            WHERE tjd.kode_jadwal = '$kode_jadwal' ORDER BY ts.kode_kelas ")
										or die('Ada kesalahan pada query siswa: ' . mysqli_error($db));

									while ($data = mysqli_fetch_assoc($query)) { ?>
										<tr class="cap">
											<td width="30" class="center"><?php echo $no; ?></td>
											<td width="120" class="center"><?php echo $data['kode_jadwal']; ?></td>
											<td width="180" class="center"><?php echo $data['jam_masuk'] . "-" . $data['jam_keluar']; ?></td>
											<td width="120" class="center"><?php echo $data['nama_mapel']; ?></td>
											<td width="100" class="center"><?php echo $data['nama_kelas']; ?></td>
											<td width="180" class="center"><?php echo $data['nama']; ?></td>
											<td width="120" class="center"><?php echo $data['tahun_ajaran']; ?></td>
											<!-- // membuat tombol ubah dan hapus -->
										</tr>
									<?php
										$no++;
									} ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			</div>
		</form>