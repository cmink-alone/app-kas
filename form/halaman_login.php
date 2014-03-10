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
<script>
	$(function() {
		$("#btnLogin").button();

	});
	</script>
</head>
<?php 
include("../configuration/config.php");
?>
<body>
<table width="90%" border="0" align="center" cellpadding="2" cellspacing="2" class="classTbl2" style="border-collapse:collapse;">
    <tr>
      <td width="70" height="24" style="font-size:10px; text-align:right">&nbsp;</td>
      <td width="70" style="font-size:10px; text-align:right">&nbsp;</td>
      <td width="70" style="font-size:10px; font-weight: normal; text-align:right">&nbsp;</td>
      <td width="70" style="font-size:10px; font-weight: normal; text-align:right">&nbsp;</td>
      <td width="0" style="font-size:10px; font-weight: normal; text-align:right">&nbsp;</td>
    </tr>
    <tr>
      <td height="80" colspan="5" valign="top" style="font-size:18px; border-top: solid 5px black;">Login !!</td>
    </tr>
  </table>
<form id="form1" name="form1" method="post" action="../system/proses_login.php">
  <table width="30%" border="0" align="center" style="border: solid 1px #999; font-weight:bold; font-size: 14px;" cellpadding="0" cellspacing="5">
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td width="8%">&nbsp;</td>
      <td width="34%">Username</td>
      <td width="4%">:</td>
      <td width="54%"><input type="text" name="username" id="username" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Password</td>
      <td>:</td>
      <td><input type="password" name="password" id="password" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><input type="submit" name="btnLogin" id="btnLogin" value="Login" /></td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>