<?php
session_start();
if (empty($_SESSION['id'])) {
  echo"<script>
  location='../index.php';
  </script>";
} else {
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>App Iuran</title>
<link type="text/css" href="../css/jquery-ui-1.8.23.custom.css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui-1.8.23.custom.min.js"></script>

<script type="text/javascript" src="../js/main.js"></script>

<style type="text/css">
	@import "../css/feldy.css"; 
</style>
</head>
<?php 
include("../configuration/config.php");
?>
<body>
<table width="90%" border="0" align="center" cellpadding="2" cellspacing="2" class="classTbl2" style="border-collapse:collapse;">
    <tr>
      <td width="70" height="24" style="font-size:10px; text-align:right">
      <a href="daftar.php">
      <div class="divMenu">
      <span style="text-decoration: none;">Daftar</span>
      </div> </a>
      </td>
      <td width="70" style="font-size:10px; text-align:right">
      <a href="../index_admin.php" >
      <div class="divMenu">
      <span class="spanMenu">Iuran</span>
      </div>
      </a>
      
      </td>
      <td width="70" style="font-size:10px; font-weight: normal; text-align:right">
      
      	<div class="divMenu" style="background-color: #67D7FC; padding-top: 5px;">
      <span class="spanMenu">Rekapitulasi</span>
      </div>
      </td>
      <td width="70" style="font-size:10px; font-weight: normal; text-align:right">
      <a href="pengeluaran.php">
      	<div class="divMenu">
      <span class="spanMenu">Pengeluaran</span>
      </div>
      </a>
      </td>
      <td width="70" style="font-size:10px; font-weight: normal; text-align:right">
       <a href="logout.php">
        <div class="divMenu">
      <span class="spanMenu">Logout !!</span>
      </div>
      </a>
      
      </td>
      <td width="0" style="font-size:10px; font-weight: normal; text-align:right">&nbsp;</td>
  </tr>
    <tr>
      <td height="80" colspan="6" valign="top" style="font-size:18px; border-top: solid 5px black;">REKAPITULASI IURAN</td>
      <td height="80" style="border-top: solid 5px black;" align="right"><fieldset style="width: 100%;">
        <legend>Advanced Searching by</legend>
        <form id="form2" name="form2" method="post" action="rekapitulasi.php">
          <table width="100%" border="0">
            <tr>
              <td width="21%">Nama</td>
              <td width="3%">:</td>
              <td width="76%"><input type="text" value="<?php echo $_POST['namaRekap']?>" name="namaRekap" id="textfield2" style="width: 14em;" />
                <input name="btnSearchGo" type="submit" class="ui-button-text-icons" id="btnSearchGo" value="Go" /></td>
            </tr>
            <tr>
              <td>Iuran Ke-</td>
              <td>:</td>
              <td><input type="text" name="iuranKe" value="<?php echo $_POST['iuranKe']?>" id="textfield3" style="width: 3em;;"/></td>
            </tr>
            <tr>
              <td>Tanggal</td>
              <td>:</td>
              <td>
                <input type="hidden" value="<?php echo $_POST['tanggalMulai']; ?>" id="tanggalMulaiHidden" style="width: 7em;"/>
                <input type="hidden" value="<?php echo $_POST['tanggalAkhir']; ?>" id="tanggalAkhirHidden" style="width: 7em;"/>

                <input type="text" onchange='$("#tanggalAkhir").datepicker( "option", "minDate", this.value);' name="tanggalMulai" value="<?php echo $_POST['tanggalMulai']; ?>" id="tanggalMulai" style="width: 7em;"/>
                s/d
                <input type="text" onchange='$("#tanggalMulai").datepicker( "option", "maxDate", this.value);' name="tanggalAkhir" value="<?php echo $_POST['tanggalAkhir']; ?>" id="tanggalAkhir" style="width: 7em;"/></td>
            </tr>
          </table>
        </form>
      </fieldset></td>
    </tr>
</table>
<form id="form1" name="form1" method="post" action="">

<table width="90%" border="1" align="center" cellpadding="3" cellspacing="3" style="border: none; margin-left: 65px;">
  <?php
  
  	$nama  = "";
	$iuran = "";
	$tglAwal = "";
	$tglAkhir = "";
	if(isset($_POST['btnSearchGo'])){
		$nama  = $_POST['namaRekap'];
		$iuran = $_POST['iuranKe'];
		$tglAwal = $_POST['tanggalMulai'];
		$tglAkhir = $_POST['tanggalAkhir'];
		$qiuran = "";
		$qTanggal = "";
		if($iuran != ""){
			$qiuran = "AND 	irn.iuranKe = $iuran";
		}
		
		if($tglAwal != "" && $tglAkhir != ""){
			$qTanggal = "AND 	irn.tanggal BETWEEN '$tglAwal' AND '$tglAkhir' ";
		}
	}
$sql = "SELECT  	mhs.nim as nim, 
	        		mhs.nama as nama,
					irn.tanggal as tanggal,
					irn.ket as ket,
                    irn.iuranKe as iuranKe,
					irn.jumlah as jumlah,
					(select count(*) from m_iuran ir2 where mhs.nim = ir2.nim) as iuran,
					(select SUM(ir2.jumlah) from m_iuran ir2 where mhs.nim = ir2.nim) as total			
		FROM 		m_mahasiswa mhs
        INNER   	JOIN m_iuran irn ON mhs.nim = irn.nim 
		WHERE 		mhs.nama like '%$nama%' 
		$qiuran $qTanggal 
		ORDER 		BY irn.tanggal ASC";
		
		//echo $sql;
						
	$query = mysql_query($sql) or die (mysql_error());
	$count = mysql_num_rows($query);
	if($count > 0){
  ?>
    <tr>
      <th width="24" class="thBorder">No</th>
      <th width="103" class="thBorder" >Tanggal</th>
      <th width="380" class="thBorder" >Nama Mahasiswa</th>
      <th width="229" class="thBorder">Jumlah</th>
      <!-- <th width="108" class="thBorder">Iuran ke</th> -->
    </tr>
    </table>
   	<div style="width: 90%; height: 500px; border: none; margin-top: 15px; margin-left: 65px; overflow: auto;" align="center">
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="3" style="border: none;">
    <?php

		$i = 0;
		$jumlah  = 0;
		while($arr=mysql_fetch_array($query)){
		
		$i++;
	?>
    
    <tr class="trBorder">
      <td width="24" class="tdBorder"><?php echo $i;?></td>
      <td width="103" class="tdBorder" style="text-align: left; font-weight:bold;"><?php echo $arr['tanggal'];?></td>
      <td width="380" class="tdBorder" style="text-align: left; font-weight:bold;"><?php echo $arr['nama'];?></td>
      <td width="229" class="tdBorder" style="text-align: right; font-weight:bold;"><strong>Rp.<?php echo number_format($arr['jumlah'], 2, ",",".");?></strong></td>
     <!-- <td width="108" class="tdBorder">Ke-<?php echo $arr['iuranKe']?></td> -->
    </tr>
    <?php 
	$jumlah = $jumlah + $arr['jumlah'];
	} 
	}else { echo '<div style="color: red; text-align: center; font-weight: bold;">Data Tidak Ditemukan !! </div>';} ?>
   
    
    
  </table>

</div>
 <div style="width: 90%; border: none; margin-top: 15px; margin-left: 65px; overflow: auto;" align="center">
 <strong>Total Transaksi : <font color="#FF0000"><?php echo $count; ?></font> | <font color="#0033FF"><?php echo "Total Pemasukan"; ?></font> = <font color="#FF0000"><?php echo "Rp. ".number_format($jumlah, 2, ",","."); ?></font></strong>
 </div>
</form>
</body>
<script>
  $(function() {
    $("#tanggalMulai").datepicker();
    $("#tanggalMulai").datepicker("option", "dateFormat", "yy-mm-dd");
    $("#btnSearchGo").button();
    $("#tanggalAkhir").datepicker();
    $("#tanggalAkhir").datepicker("option", "dateFormat", "yy-mm-dd");
    
    var tglAwal  = document.getElementById('tanggalMulaiHidden').value;
    var tglAkhir = document.getElementById('tanggalAkhirHidden').value;

    // var tglAwalJS  =
    // var tglAkhirJS =
    $("#tanggalMulai").datepicker("setDate", tglAwal);//<?php echo $_POST['tanggalMulai'];?> );
    $("#tanggalAkhir").datepicker("setDate", tglAkhir);//<?php echo $_POST['tanggalAkhir'];?> );
    
    $("#tanggalMulai").datepicker( "option", "maxDate", new Date(tglAkhir));
    $("#tanggalAkhir").datepicker( "option", "minDate", new Date(tglAwal));
    //getter
    var altField = $("#tanggalMulai").datepicker("option", "altField");
    //setter
    $("#tanggalMulai").datepicker("option", "altField", "yy-mm-dd");
  });
  </script>
</html>
<? } ?>