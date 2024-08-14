<!DOCTYPE html>
<?php
include("config/config.inc.php");
include("config/scripts.inc.php");
$email = $_POST['email'];
$password = $_POST['password'];
$sql = "SELECT * FROM kundendaten WHERE Email='$email' AND Passwort = '$password'";
$sqlcnt = "SELECT  COUNT(*) as cnt  FROM kundendaten WHERE Email='$email' AND Passwort = '$password'";
echo $sqlcnt;
$query = mysqli_query($con,$sql);
$querycnt = mysqli_query($con,$sqlcnt);
while ($row = mysqli_fetch_assoc($querycnt)or die ("MySQL-Error: " . mysqli_error($con))) {
    if($row['cnt'] == 0){
            header("Location:../login.php?failure");
            echo $row['cnt'];
    }
    else{
        $daten = mysqli_num_rows($query);
        if($daten == 1)
        $row2=mysqli_fetch_array($query);
        session_start([
            'cookie_lifetime' => 86400,
        ]);
        $_SESSION['id']=$row2['ID'];
		// if($insert){
					// $_SESSION['id']=$row['ID'];
					
		// }		

		// echo'<form method="POST" action="/reg.php?success">
		  // <input type="hidden" id="wname" name="wname" placeholder="'.$name.'" readonly disabled><br><br>
		  // <input type="hidden" id="wnachname" name="wnachname" placeholder="'.$nachname.'" readonly disabled><br><br>
		  // <input type="hidden" id="wzipcode" name="wzipcode" placeholder="'.$zipcode.'" readonly disabled><br><br>
		  // <input type="hidden" id="wstreet" name="wstreet" placeholder="'.$street.'" readonly disabled><br><br>
		  // <input type="hidden" id="wemail" name="wemail" placeholder="'.$email.'" readonly disabled><br><br>
		  // <input type="hidden" id="wpassword" name="wpassword" placeholder="'.$password.'" readonly disabled><br><br>
		  // <input type="hidden" id="wanrede" name="wanrede" value="'.$anrede.'" placeholder="'.$anrede.'" readonly disabled><br><br>
		// <button class="btn btn-lg btn-primary btn-block text-uppercase"  type="submit">Registrierung</button>
		// </form>';
		// 
		header("Location:../login.php?success");
		
	}
}


// echo $query;

?>

