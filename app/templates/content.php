<?php
if (isset($_GET['page'])) {

	switch ($_GET['page']) {
		case 'dokter':
			require_once 'app/dokter/views/index.php';
			break;
		case 'tambah-dokter':
			require_once 'app/dokter/views/create.php';
			break;
		case 'edit-dokter':
			require_once 'app/dokter/views/edit.php';
			break;
		case 'hapus-dokter':
			require_once 'app/dokter/proses/delete.php';
			break;
		case 'pasien':
			require_once 'app/pasien/views/index.php';
			break;
		case 'tambah-pasien':
			require_once 'app/pasien/views/create.php';
			break;
		case 'edit-pasien':
			require_once 'app/pasien/views/edit.php';
			break;
		case 'hapus-pasien':
			require_once 'app/pasien/proses/delete.php';
			break;
		case 'obat':
			require_once 'app/obat/views/index.php';
			break;
		case 'tambah-obat':
			require_once 'app/obat/views/create.php';
			break;
		case 'edit-obat':
			require_once 'app/obat/views/edit.php';
			break;
		case 'hapus-obat':
			require_once 'app/obat/proses/delete.php';
			break;
		case 'ruang':
			require_once 'app/ruang/views/index.php';
			break;
		case 'tambah-ruang':
			require_once 'app/ruang/views/create.php';
			break;
		case 'ant-poligigi':
			require_once 'app/poligigi/views/index.php';
			break;
		case 'hapus-poligigi':
			require_once 'app/poligigi/proses/delete.php';
			break;
		case 'edit-polikan':
			require_once 'app/polikandungan/views/edit.php';
			break;
		case 'ant-polikan':
			require_once 'app/polikandungan/views/index.php';
			break;
		case 'hapus-polikan':
			require_once 'app/polikandungan/proses/delete.php';
			break;
		case 'tambah-polikan':
			require_once 'app/polikandungan/views/create.php';
			break;
		case 'edit-poligigi':
			require_once 'app/poligigi/views/edit.php';
			break;
		case 'ant-poliumum':
			require_once 'app/poliumum/views/index.php';
			break;
		case 'tambah-poligigi':
			require_once 'app/poligigi/views/create.php';
			break;
		case 'tambah-poliumum':
			require_once 'app/poliumum/views/create.php';
			break;
		case 'hapus-poliumum':
			require_once 'app/poliumum/proses/delete.php';
			break;
		case 'edit-poliumum':
			require_once 'app/poliumum/views/edit.php';
			break;
		case 'edit-ruang':
			require_once 'app/ruang/views/edit.php';
			break;
		case 'hapus-ruang':
			require_once 'app/ruang/proses/delete.php';
			break;
		case 'rekam-medis':
			require_once 'app/rekam-medis/views/index.php';
			break;
		case 'tambah-rekam-medis':
			require_once 'app/rekam-medis/views/create.php';
			break;
		case 'edit-rekam-medis':
			require_once 'app/rekam-medis/views/edit.php';
			break;
		case 'hapus-rekam-medis':
			require_once 'app/rekam-medis/proses/delete.php';
			break;
		case 'lap-rekam-medis':
			require_once 'app/laporan/views/rekam-medis.php';
			break;
	}
} else {
	require_once 'app/dashboard/views/index.php';
}
