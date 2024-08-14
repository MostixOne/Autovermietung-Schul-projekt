<!DOCTYPE html>

<?php
include("config/config.inc.php");
include("config/scripts_b.inc.php");



echo'<html>
<link rel="stylesheet" href="../css/auswahl.css">
<head>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Autovermietung</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="home.php">Home</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="vermietung.php">Vermietung<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="teststrecke.php">Teststrecken</a>
      </li>

    </ul>

  </div>
 ';

  session_start();
if (isset($_SESSION['id'])) {
 

 echo'
  <ul class="navbar-nav ml-auto">
  <li class="nav-item">
  <a class="btn btn-primary" href="login.php?logout" role="button"><i class="fa fa-sign-in-alt"></i> Logout</a>
  </li>
  </ul>';

}
else
echo'
  <ul class="navbar-nav ml-auto">
  <li class="nav-item">
  <a class="btn btn-primary" href="login.php" role="button"><i class="fa fa-sign-in-alt"></i> login</a>
  </li>
  </ul>
';
echo ' </nav>';




    

    $streckequery = "SELECT * FROM tstrecke ";

    $streckeres = mysqli_query($con,$streckequery);
    for($tstrecke = 0 ;$cars <mysqli_num_rows($streckeres);$tstrecke++){
      $trow = mysqli_fetch_array($streckeres);
      $Tname = $trow['Teststrecke'];
      $Tstadt = $trow['Stadt'];
      $Timg = $trow['timg'];
   echo'   

  <div class="container">
      <div class="content">
      <div class="card">
      <form method="POST" action="check.php">
        <img class="card-img-top" src="'.$Timg.'" style="height:300px;"  alt="..">
          <div class="card-body">
          <label>
            <h5 class="card-title"><u>'.$Tname.' </u></h5>
              <p class="card-text">
               KM-Stand: Die Strecke befindet sich in'.$Tstadt.'
              <br> nur für Sport,Luxus,Elektro Autos! 
              </label>
          </div>
        </div>
          </form>
          </div>
    </div>
  </div>

';  
?>
