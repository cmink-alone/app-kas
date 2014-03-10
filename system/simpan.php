<?php
include("../configuration/config.php");
if(isset($_POST['btnPengeluaran'])){
	$nominal = $_POST['nominal'];
	$ket = $_POST['ket'];
	$tanggal = $_POST['tanggalTrx'];
	if($nominal != ""){
		$sql = "INSERT INTO m_pengeluaran VALUES('', '$tanggal', $nominal, '$ket', 1)";
		$query = mysql_query($sql) or die(mysql_error());
		if($query){
			echo "<script>
				alert('Berhasil Di Tambahkan !!');
				location='../form/pengeluaran.php';
				</script>";
		} else {
			echo "<script>
				alert(Di Tambahkan, Coba ulangi lagi !!');
				location='../form/pengeluaran.php';
				</script>";
		}
	} else {
		echo "<script>
				alert('Nominal harus di isi !!');
				location='../form/pengeluaran.php';
				</script>";
	}
}
if(isset($_POST['simpanAll'])){
		//$jumlahChk = $_POST['hidden'];
		$jumlahChk = $_POST['hiddenJmlMhs'];
		$y = 0;
		$tanggal = date("Y-m-d");
		for($i = 1; $i <= $jumlahChk; $i++){
		   $chk = $_POST['checkbox'.$i];
		   $txt = $_POST['txt'.$i];
           $hid = $_POST['hiddenIuran'.$i];
           
		   //if (!empty($chk)){
		   if ($txt != ""){
			  $query = "INSERT INTO m_iuran VALUES('', '$chk', '$txt', '',$hid,'$tanggal')";
			  $gen = mysql_query($query);
			  $y++;
		   }
		}
		if($y > 0){
			 echo"<script>
			 alert('Berhasil !');
			 location='../';
			 </script>";
		} else {
			 echo"<script>
			 alert('Harap Isi Data Salah Satu  !');
			 location='../';
			 </script>";	
		}
	}
	
if(isset($_POST['simpanMhs'])){
	$nim = $_POST['nimMhs'];
	$nama = $_POST['namaMhs'];
	if($nim != "" && $nama != ""){
		$query = mysql_query("INSERT INTO m_mahasiswa VALUES('','$nim','$nama', 1)");
		if($query){
			echo "<script>
				alert('Mahasiswa Baru Berhasil Di Tambahkan !!');
				location='../form/daftar.php';
				</script>";
		} else {
			echo "<script>
				alert('Mahasiswa Baru Gagal Di Tambahkan, NIM sudah Di pakai Coba ulangi lagi !!');
				location='../form/daftar.php';
				</script>";
		}
	} else {
		echo "<script>
				alert('Nama Dan Nim Tidak boleh Kosong !!');
				location='../form/daftar.php';
				</script>";
	}
		
}
?>
