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
<form id="form5" name="form5" method="post" action="">

<table width="90%" border="0" align="center" cellpadding="2" cellspacing="2" class="classTbl2" style="border-collapse:collapse;">
    <tr>
      <td width="70" height="24" style="font-size:10px; text-align:right">
        <a href="daftar.php">
        <div class="divMenu" style=" ">
          <span class="spanMenu">Daftar</span>
        </div>
        </a>
      </td>
      <td width="70" style="font-size:10px; text-align:right">
      <a href="../index.php" >
      <div class="divMenu">
      <span class="spanMenu">Iuran</span>
      </div>
      </a>
      </td>
      <td width="70" style="font-size:10px; font-weight: normal; text-align:right">
      <a href="rekapitulasi.php">
      	<div class="divMenu">
      <span class="spanMenu">Rekapitulasi</span>
      </div>
      </a>
      </td>
      <td width="70" style="font-size:10px; font-weight: normal; text-align:right">
      	
      	<div class="divMenu" style="background-color: #67D7FC; padding-top: 5px;">
      <span class="spanMenu">Pengeluaran</span>
      </div>
      </td>
      <td width="-1" style="font-size:10px; font-weight: normal; text-align:right">&nbsp;</td>
    </tr>
    <tr>
      <td height="80" colspan="4" valign="top" style="font-size:18px; border-top: solid 5px black;">PENGELUARAN</td>
      <td height="80" valign="top" style="font-size:12px; border-top: solid 5px black;" align="right"><fieldset>
        <legend>Advanced Searching</legend>
        <table width="100%" border="0" cellspacing="3" cellpadding="3">
          <tr>
            <td width="0">Tanggal</td>
            <td width="4%">:</td>
            <td width="0">
            <input type="hidden" value="<?php echo $_POST['tanggalMulai']; ?>" id="tanggalMulaiHidden" style="width: 7em;"/>
                <input type="hidden" value="<?php echo $_POST['tanggalAkhir']; ?>" id="tanggalAkhirHidden" style="width: 7em;"/>

                <input type="text" onchange='$("#tanggalAkhir").datepicker( "option", "minDate", this.value);' name="tanggalMulai" value="<?php echo $_POST['tanggalMulai']; ?>" id="tanggalMulai" style="width: 7em;"/>
                s/d
                <input type="text" onchange='$("#tanggalMulai").datepicker( "option", "maxDate", this.value);' name="tanggalAkhir" value="<?php echo $_POST['tanggalAkhir']; ?>" id="tanggalAkhir" style="width: 7em;"/>
            </td>
          </tr>
          <tr>
            <td>Keterangan</td>
            <td width="0">:</td>
            <td><input name="srcKet" type="text" id="srcKet" value="<?php echo $_POST['srcKet']; ?>" />
              <input type="submit" name="cariPengeluaran" id="cariPengeluaran" value="Cari" />
              <input name="passwordMasuk" type="hidden" id="passwordMasuk" value="<?php echo $_POST['passwordMasuk']; ?>" /></td>
          </tr>
        </table>
      </fieldset></td>
    </tr>
  </table>
</form>
  <br  />
  <?php 
  $pass = $_POST['passwordMasuk'];
  if(md5($pass) === 'c694ca53d1a7ba1b011eca810bb923c9'){
  
  ?>
  
  
 
<form id="form1" name="form1" method="post" action="../system/simpan.php">
 <table width="64%" border="1" align="center" cellpadding="3" cellspacing="3" style="border: none;">
    <tr>
      <th class="thBorder" width="4%">No.</th>
      <th class="thBorder" width="18%">Tanggal</th>
      <th width="29%" colspan="2" class="thBorder">Nominal</th>
      <th colspan="2" class="thBorder">Keterangan</th>
    </tr>
 </table>
<div style="width: 70%; height: 420px; border: none; margin-top: 15px; margin-left: 150px; overflow: auto;" align="center">
  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="3" style="border: none;">
   <?php 
   	$ket = "";
	$tglAwal = "";
	$tglAkhir = "";
	if(isset($_POST['cariPengeluaran'])){
		$ket = $_POST['srcKet'];
		$tglAwal = $_POST['tanggalMulai'];
		$tglAkhir = $_POST['tanggalAkhir'];
		$qKet = "";
		$qTanggal = "";
		if($ket != ""){
			$qKet = "AND keterangan like '%$ket%'";
		}
		if($tglAwal != "" && $tglAkhir != ""){
			$qTanggal = "AND 	tanggal BETWEEN '$tglAwal' AND '$tglAkhir' ";
		}
	}
   
   
   $sql = 	"SELECT 	
   						tanggal,
   						nominal,
						keterangan
   			FROM 		m_pengeluaran 
			WHERE 		isActive = 1 
						$qKet $qTanggal ";
	$sql2 = "SELECT 	SUM(nominal) as totalJumlah
   			FROM 		m_pengeluaran 
			WHERE 		isActive = 1 ";
   $queryOut = mysql_query($sql);
   $queryOut2 = mysql_query($sql2);
   $arrOu2t = mysql_fetch_array($queryOut2);
   
   $iOut = 0;
   $jumTot = $arrOu2t['totalJumlah'];
   while($arrOut = mysql_fetch_array($queryOut)){
	$iOut++;	   
   
   ?>
    <tr>
      <td width="4%" height="26px" align="center" class="tdBorder"  style="font-weight:bold;" ><?php echo $iOut;?></td>
      <td width="18%" align="center" class="tdBorder"  style="font-weight:bold;" ><?php echo $arrOut['tanggal'];?></td>
      <td width="4%" class="tdBorder" align="center"  style="font-weight:bold; border-right: hidden;" >Rp.</td>
      <td class="tdBorder" align="right"  style="font-weight:bold;" ><?php echo number_format($arrOut['nominal'], 2, ",",".");?></td>
      <td colspan="2" align="left" class="tdBorder"  style="font-weight:bold;" ><?php echo $arrOut['keterangan'];?></td>
    </tr>
    <?php 
	
	} 
	 
	$sql = "SELECT SUM(jumlah) as jumlah  FROM m_iuran";
	$arrSum = mysql_fetch_array(mysql_query($sql));
	
	?>
     <tr>
      <td class="tdBorder" align="center"  style="font-weight:bold;"><?php echo $iOut + 1;?></td>
      <td class="tdBorder" align="center"  style="font-weight:bold;"><input type="text" name="tanggalTrx" value="<?php echo $_POST['tanggalTrx']; ?>" id="tanggalTrx" style="width: 6em;"/>
      </td>
      <td class="tdBorder" style="font-weight:bold; border-right: hidden;">Rp. </td>
      <td class="tdBorder" ><input name="nominal" type="text" id="nominal" size="25" /></td>
      <td width="30%" class="tdBorder" ><input name="ket" type="text" id="ket" size="35" /></td>
      <td width="10%" class="tdBorder" ><input type="submit" name="btnPengeluaran" id="btnPengeluaran" value="Simpan" /></td>
    </tr>
  </table>
   </div>
  <br />
  <table width="60%" border="0" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td width="22%" style="font-weight:bold;">Total Pemasukan</td>
      <td width="3%" style="font-weight:bold;">:</td>
      <td width="5%" style="font-weight:bold;">Rp.</td>
      <td width="23%" style="font-weight:bold;" align="right"><?php echo  number_format($arrSum['jumlah'], 2, ",","."); ?></td>
      <td width="47%">&nbsp;</td>
    </tr>
    <tr>
      <td style="border-bottom: solid 2px #000; font-weight:bold;">Total Pengeluaran </td>
      <td style="border-bottom: solid 2px #000;font-weight:bold;">:</td>
      <td style="border-bottom: solid 2px #000;font-weight:bold;">Rp.</td>
      <td style="border-bottom: solid 2px #000;font-weight:bold;" align="right"><?php echo number_format($jumTot, 2, ",","."); ?></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="font-weight:bold; color:#F00;" >Saldo</td>
      <td style="font-weight:bold; color:#F00;" >:</td>
      <td style="font-weight:bold; color:#F00;" >Rp.</td>
      <?php
      $saldo = $arrSum['jumlah'] - $jumTot;
	  if($arrSum['jumlah'] <= $jumTot){
	  ?>
	  
      <td style="font-weight:bold; color:#F00;" align="right"><?php echo number_format($saldo, 2, ",","."); ?></td>
      <?php } else { ?>
      <td style="font-weight:bold; color:#00F;" align="right"><?php echo number_format($saldo, 2, ",","."); ?></td>
      <?php } ?>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<?php }else { ?>
<div style="width: 100%; text-align: center">
<form method="post" action="">
	Masukan Password untuk transaksi : 
   <input type="password" name="passwordMasuk"/>
</form>
</div>
<?php } ?>
</body>
<script>
	$(function() {
		$("#btnPengeluaran").button();
		$("#cariPengeluaran").button();
		
	$("#tanggalMulai").datepicker();
    $("#tanggalMulai").datepicker("option", "dateFormat", "dd-mm-yy");
    $("#tanggalAkhir").datepicker();
    $("#tanggalAkhir").datepicker("option", "dateFormat", "dd-mm-yy");
    $("#tanggalTrx").datepicker();
    $("#tanggalTrx").datepicker("option", "dateFormat", "dd-mm-yy");
    
    var tglAwal  = document.getElementById('tanggalMulaiHidden').value;
    var tglAkhir = document.getElementById('tanggalAkhirHidden').value;

    // var tglAwalJS  =
    // var tglAkhirJS =
    $("#tanggalMulai").datepicker("setDate", tglAwal);//<?php echo $_POST['tanggalMulai'];?> );
    $("#tanggalAkhir").datepicker("setDate", tglAkhir);//<?php echo $_POST['tanggalAkhir'];?> );
    
    $("#tanggalMulai").datepicker( "option", "maxDate", new Date(tglAkhir));
    $("#tanggalAkhir").datepicker( "option", "minDate", new Date(tglAwal));
    //sette
	});
	</script>
</html>
