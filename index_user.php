<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>App Iuran</title>

<!-- <script type="text/javascript" src="js/main.js"></script> -->
<style type="text/css">
	@import "css/feldy.css"; 
</style>
</head>
<?php 
include("configuration/config.php");
?>
<body>
<form id="form1" name="form1" method="post" action="index.php">
  <table width="90%" border="0" align="center" cellpadding="2" cellspacing="2" class="classTbl2" style="border-collapse:collapse;">
    <tr>
      <td width="70" style="font-size:10px; text-align:right; text-decoration: none;"  >
        <a href="form/halaman_login.php">
        <div class="divMenu">
          <span style="text-decoration: none;">Log In</span>
        </div> </a>
      </td>
      <td width="70" style="font-size:10px; text-align:right"></td>
      <td width="70" style="font-size:10px; font-weight: normal; text-align:right"></td>
      <td width="70" style="font-size:10px; font-weight: normal; text-align:right"></td>
      <td width="0" style="font-size:10px; font-weight: normal; text-align:right">
      Pencarian:
        <select name="pilihan" id="pilihan">
          <option value="semua" <?php if($_POST['pilihan']=="semua"){echo"selected='selected'";};?>>Semua</option>
          <option value="mhs.nim"<?php if($_POST['pilihan']=="mhs.nim"){echo"selected='selected'";};?>>NIM</option>
          <option value="mhs.nama"<?php if($_POST['pilihan']=="mhs.nama"){echo"selected='selected'";};?>>Nama</option>
        </select>
        <input type="text" name="criteria" id="criteria" value="<?php echo $_POST['criteria']; ?>"/>
        <input type="submit" name="buttonGo" id="buttonGo" value="Go" />
      </td>
    </tr>
    <tr>
      <td height="20" colspan="5" valign="top" style="font-size:18px; border-top: solid 5px black;">IURAN MAHASISWA SEMESTER 6  </td>
    </tr>
  </table>
</form>
<form id="test" name="test" method="post" action="system/simpan.php">
<?php
	$pilihan = "mhs.nim";
	$criteria = "";
	if(isset($_POST['buttonGo'])){
		$pilihan = $_POST['pilihan'];
		if($pilihan == "semua"){
			$criteria = "";
			$pilihan = "mhs.nim";
		} else {
			$criteria = $_POST['criteria'];
		}
	}
	$sql = "SELECT  	mhs.nim as nim, 
				  		mhs.nama as nama,
                        irn.iuranKe as iuranKe,
						(select count(*) from m_iuran ir where mhs.nim = ir.nim) as iuran, 
						(select SUM(ir.jumlah) from m_iuran ir where mhs.nim = ir.nim) as total
			FROM        m_mahasiswa mhs 
            LEFT    	JOIN m_iuran irn ON mhs.nim = irn.nim 
			WHERE       $pilihan like '%$criteria%'
            GROUP       BY mhs.nama
			ORDER       BY nama ASC";
	//echo $sql;					
	$query = mysql_query($sql) or die (mysql_error());
	$count = mysql_num_rows($query);
	if($count > 0){
		
	
?>
  <table width="70%" border="1" align="center" cellpadding="3" cellspacing="0" style="border: none;">
    <tr>
      <th width="15px" class="thBorder">No</th>
     <!--
      <th width="20" class="thBorder">
      <input type="checkbox" onclick="checkAll(document.getElementById('hidden').value)" name="checkboxMaster" id="checkboxMaster" /></th> -->
      <th width="0" class="thBorder" >Nama Mahasiswa</th>
     <!--  <th width="0" class="thBorder">Bayar</th> -->
      <!-- <th width="78" class="thBorder">Iuran ke</th> -->
      <th class="thBorder" colspan="2">Total</th>
    </tr>
    <?php	
	$i = 0;
	$jumlah  = 0;
	while($arr=mysql_fetch_array($query)){
	
	$i++;
    if($i%2 == 0){
		echo '<tr class="trBorder" bgcolor="#C4F0FD" id="trIuranID'.$i.'" >';
	} else {
		echo '<tr class="trBorder" bgcolor="#FFFFFF" id="trIuranID'.$i.'">';
	}
	?>
      <td width="0" class="tdBorder" ><?php echo $i;?>
      	 <input type="hidden" 
      name="checkbox<?php echo $i;?>" 
      id="checkbox<?php echo $i;?>" 
      value="<?php echo $arr['nim'];?>"/>
      <input type="hidden" name="hiddenIuran<?php echo $i;?>" value="<?php echo $arr['iuran'] + 1 ;?>"/>
      </td>
     <!-- <td class="tdBorder">
      <input type="checkbox" 
      name="checkbox<?php //echo $i;?>" 
      id="checkbox<?php //echo $i;?>" 
      onclick="checkedTrueMaster(document.getElementById('hidden').value)"
      value="<?php //echo $arr['nim'];?>"/>
      <input type="hidden" name="hiddenIuran<?php echo $i;?>" value="<?php echo $arr['iuran'] + 1 ;?>"/>
	 </td> -->
      <td width="0" class="tdBorder"  style="text-align: left; font-weight:bold;"><?php echo $arr['nama'];?></td>
     <!-- <td class="tdBorder" >Ke-<?php echo $arr['iuran'];?></td> -->
      <td width="10px"  class="tdBorder" style="border-right:hidden; font-weight:bold;">Rp.</td>
      <td width="150px"  class="tdBorder" style="text-align: right;"><strong><?php echo number_format($arr['total'], 2, ",",".");?></strong></td>
      <!-- onclick="trOnClick(document.getElementById('hidden').value, <?php //echo $i;?>)" -->
    </tr>
    <?php   
	$jumlah = $jumlah + $arr['total'];
	} ?>
    <tr>
    	 <td colspan="1" style="border: none; font-weight:bold;" align="left">
         </td>
        <td style="border: none;font-weight:bold;" align="right"><span style="border: none; font-weight:bold;">Jml. Mahasiswa: <span style="color: #F00;"><?php echo $count; ?></span> </span><input type="hidden" name="hiddenJmlMhs" value="<?php echo $count;?>"/></td>
      <td colspan="2" style="border: none;font-weight:bold;" align="right">Jumlah :
        Rp.<span style="border: none;font-weight:bold; color: #00F"><?php echo number_format($jumlah, 2, ",",".");?></span></td>
       
    </tr>
    <tr>
   	  <td colspan="6" style="border: none;">
        
      </td>
    </tr>
    
  </table>
  <?php } else { echo '<div style="color: red; text-align: center; font-weight: bold;">Data Tidak Ditemukan !! </div>';}?>
</form>
</body>
</html>