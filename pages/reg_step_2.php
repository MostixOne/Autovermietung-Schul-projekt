<?php
header("Content-Type: text/html; charset=utf-8");
include("../config/config.inc.php");
include("../config/scripts.inc.php");
$name = $_POST['name'];
$nachname = $_POST['nachname'];
$zipcode = $_POST['zipcode'];
$street = $_POST['street'];
$email = $_POST['email'];
$password = $_POST['pass'];
$anrede=$_POST['options'];
// echo $anrede;
$n = "d";
$sql = "SELECT  COUNT(*) as cnt  FROM kundendaten WHERE Name='$name' AND Nachname='$nachname' AND PLZ_ORT='$zipcode' AND Strasse='$street' AND Email='$email'" ;
$cnt = mysqli_query($con,$sql);







while ($row = mysqli_fetch_assoc($cnt)or die ("MySQL-Error: " . mysqli_error($con))) {
    if($row['cnt'] !=0){
			header("Location:../reg.php?failure");
    }
    else{
		session_start();

		$sql = "INSERT INTO kundendaten values ('','$name','$nachname','$zipcode','$street','$email','$password','$anrede')" or die ("MySQL-Error: " . mysqli_error($con));
		$insert = mysqli_query($con,$sql) or die ("MySQL-Error: " . mysqli_error($con));
		if($insert){
					$_SESSION['id']=mysqli_insert_id($con);
					
		}		

		
		 header("Location:../reg.php?success");
		
	}
}



?>

