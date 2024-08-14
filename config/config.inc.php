<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "vermietung";
$con = mysqli_connect($host, $user, $pass, $db);
if(!$con)
{
  exit("Verbindungsfehler: ".mysqli_connect_error());
}
mysqli_set_charset($con,"utf8");

?>
