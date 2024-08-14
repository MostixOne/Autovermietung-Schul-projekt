<?php
include("../config/config.inc.php");
include("../config/scripts.inc.php");
session_start();
if (isset($_SESSION['id'])) {
   
    mysqli_query($con,$_SESSION['sql']);
    mysqli_query($con,$_SESSION['sql2']);
    unset($_SESSION['sql']);
    unset($_SESSION['sql2']);
    header("Location: https://www.paypal.me/");
}

?>

