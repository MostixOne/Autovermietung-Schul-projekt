<!DOCTYPE html>

<?php
include("config/config.inc.php");
include("config/scripts_b.inc.php");
$katquery = 'SELECT * FROM Katogorien';
$katres = mysqli_query($con,$katquery);
$katimg='';
$autoimg='';
for($i=0;$i < mysqli_num_rows($katres);$i++){
$katrow = mysqli_fetch_array($katres);
$katname = $katrow['Katname'];
$katimgsrc = $katrow['img'];
$pfad = $katrow['KatID'];
$katimg .= '

<div class="container">
  
  <div class="content">
    <a href="vermietung.php?Kat='.$pfad.'">
      <div class="content-overlay"></div>
      <img class="content-image" src="'.$katimgsrc.'" style="width:100%; height:200px;">
      <div class="content-details fadeIn-top">
        <h3>'.$katname.'</h3>
        <p>'.$katname.'</p>
      </div>
    </a>
  </div>
</div>
';

}





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
if(isset($_GET['Kat'])){
  if($_GET['Kat'] == 1){
  $autoquery = "SELECT * FROM marken ";

  $autores = mysqli_query($con,$autoquery);
 for ($i=0 ; $i < mysqli_num_rows($autores); $i++ ) { 
  $rows = mysqli_fetch_array($autores);
  $number = $rows['Marke'];
  $autoimg .= '
  <div class="container">
    
    <div class="content">
      <a href="vermietung.php?Kat='.$_GET['Kat'].'&Marke='.$number.'">
        <div class="content-overlay"></div>
        <img class="content-image" src="../img/'.$number.'.png"style="width:80; height:200px;;">
        <div class="content-details fadeIn-top">
          <h3 style="left;">'.$number.'</h3>
          <p>'.$number.'</p>
        </div>
      </a>
    </div>
  </div>
  ';

 }
}
elseif($_GET['Kat'] == 2){
  $autoquery = "SELECT * FROM marken ";

  $autores = mysqli_query($con,$autoquery);
 for ($i=0 ; $i < mysqli_num_rows($autores); $i++ ) { 
  $rows = mysqli_fetch_array($autores);
  $number = $rows['Marke'];
  $autoimg .= '
  <div class="container">
    
    <div class="content">
      <a href="vermietung.php?Kat='.$_GET['Kat'].'&Marke='.$number.'">
        <div class="content-overlay"></div>
        <img class="content-image" src="../img/'.$number.'.png"style="width:80; height:200px;;">
        <div class="content-details fadeIn-top">
          <h3 style="left;">'.$number.'</h3>
          <p>'.$number.'</p>
        </div>
      </a>
    </div>
  </div>
  ';

 }
}
 elseif($_GET['Kat'] == 3){
  $autoquery = "SELECT * FROM marken ";
  $autores = mysqli_query($con,$autoquery);
 for ($i=0 ; $i < mysqli_num_rows($autores); $i++ ) { 
  $rows = mysqli_fetch_array($autores);
  $number = $rows['Marke'];
  $autoimg .= '
  <div class="container">
    
    <div class="content">
      <a href="vermietung.php?Kat='.$_GET['Kat'].'&Marke='.$number.'">
        <div class="content-overlay"></div>
        <img class="content-image" src="../img/'.$number.'.png"style="width:80; height:200px;;">
        <div class="content-details fadeIn-top">
          <h3 style="left;">'.$number.'</h3>
          <p>'.$number.'</p>
        </div>
      </a>
    </div>
  </div>
  ';

 }
}
 elseif($_GET['Kat'] == 4){
  $autoquery = "SELECT * FROM marken ";

  $autores = mysqli_query($con,$autoquery);
 for ($i=0 ; $i < mysqli_num_rows($autores); $i++ ) { 
  $rows = mysqli_fetch_array($autores);
  $number = $rows['Marke'];
  $autoimg .= '
  <div class="container">
    <div class="content">
      <a href="vermietung.php?Kat='.$_GET['Kat'].'&Marke='.$number.'">
        <div class="content-overlay"></div>
        <img class="content-image" src="../img/'.$number.'.png"style="width:80; height:200px;;">
        <div class="content-details fadeIn-top">
          <h3 style="left;">'.$number.'</h3>
          <p>'.$number.'</p>
        </div>
      </a>
    </div>
  </div>
  ';

 }
}
 elseif($_GET['Kat'] == 5){
  $autoquery = "SELECT * FROM marken ";
  // echo $autoquery;
  $autores = mysqli_query($con,$autoquery);
 for ($i=0 ; $i < mysqli_num_rows($autores); $i++ ) { 
  $rows = mysqli_fetch_array($autores);
  $number = $rows['Marke'];
  $autoimg .= '
  <div class="container">
    
    <div class="content">
      <a href="vermietung.php?Kat='.$_GET['Kat'].'&Marke='.$number.'">
        <div class="content-overlay"></div>
        <img class="content-image" src="../img/'.$number.'.png"style="width:80; height:200px;;">
        <div class="content-details fadeIn-top">
          <h3 style="left;">'.$number.'</h3>
          <p>'.$number.'</p>
        </div>
      </a>
    </div>
  </div>
  ';

 }
}
 elseif($_GET['Kat'] == 6){
  $autoquery = "SELECT * FROM marken ";
  // echo $autoquery;
  $autores = mysqli_query($con,$autoquery);
 for ($i=0 ; $i < mysqli_num_rows($autores); $i++ ) { 
  $rows = mysqli_fetch_array($autores);
  $number = $rows['Marke'];
  $autoimg .= '
  <div class="container">
    
    <div class="content">
     <a href="vermietung.php?Kat='.$_GET['Kat'].'&Marke='.$number.'">
        <div class="content-overlay"></div>
        <img class="content-image" src="../img/'.$number.'.png"style="width:80; height:200px;;">
        <div class="content-details fadeIn-top">
          <h3 style="left;">'.$number.'</h3>
          <p>'.$number.'</p>
        </div>
      </a>
    </div>
  </div>
  ';

 }
}

 echo $autoimg;


if(isset($_GET['Marke'])){
    

    $autoquery = "SELECT * FROM autos ";

    $autores = mysqli_query($con,$autoquery);
    for($cars = 0 ;$cars <mysqli_num_rows($autores);$cars++){
      $carrow = mysqli_fetch_array($autores);
      $Model = $carrow['Model'];
      $chersteller = $carrow['Hersteller'];
      $Kraftstoff = $carrow['Kraftstoff'];
      $KM = $carrow['KM'];
      $preis = $carrow['Preis'];
      $baujahr = $carrow['Baujahr'];
      $Getriebe = $carrow['Getriebe'];
      $typ = $carrow['Typ'];
      $ps = $carrow['PS'];
      $cimg = $carrow['IMG'];
      
      if($typ == $_GET['Kat'] && $chersteller== $_GET['Marke']){
        echo'   

  <div class="container">
      <div class="content">
      <div class="card">
      <form method="POST" action="check.php">
        <img class="card-img-top" src="'.$cimg.'" style="height:300px;"  alt="..">
        <input type="hidden" name="cimg" id="cimg" value='.$cimg.'  >
          <div class="card-body">
          <label>
            <h5 class="card-title"><u>'.$chersteller.' '.$Model.' </u></h5>
            <input type="hidden" name="chersteller" id="chersteller" value="'.$chersteller.' '.$Model.' " >
              <p class="card-text">
               KM-Stand: '.$KM.' KM
               <input type="hidden" name="KM" id="KM" value='.$KM.'  >
              <br>  Baujahr: '.$baujahr.'
              <input type="hidden" name="baujahr" id="baujahr" value='.$baujahr.'  >
              <br> Kraftstoff: '.$Kraftstoff.'
              <input type="hidden" name="Kraftstoff" id="Kraftstoff" value='.$Kraftstoff.'  >
              <br> Preis: '.$preis.'&euro; Pro Tag
              <input type="hidden" name="preis" id="preis" value='.$preis.'  >
              <br> Getriebe: '.$Getriebe.'
              <input type="hidden" name="Getriebe" id="Getriebe" value='.$Getriebe.'  >
              <br> PS: '.$ps.'
              <input type="hidden" name="ps" id="ps" value='.$ps.'  >
              <br> Tage: 
              <input name="dauer" id="dauer" placeholder="Tage" required type="number" value="" min="1" max="28"/>
              </label>
          </div>
';

if (isset($_SESSION['id'])) {

  
    echo 
    '<hr style = "  border: 1px solid lightblue; border-radius: 5px;">
    <button style="border-radius: 40px;" class="btn btn-lg btn-primary btn-block text-uppercase"  type="submit"><i class="fas fa-shopping-basket"></i> Mieten!</button>   
    ';


}
else{ 
  echo '
        <hr style = "  border: 1px solid lightblue; border-radius: 5px;">
        <div class="alert alert-danger" role="alert" id="chLogin" >
        Bitte erst einloggen !!
        </div>
        <a style="border-radius: 40px;" href="#chLogin" class="btn btn-lg btn-primary btn-block text-uppercase " disabled> <i class="fas fa-shopping-basket"></i> Mieten!</a>

        ';
  }
          echo '</div>
          </form>
          </div>
    </div>
  </div>

';  


  }



} 


}


 }

else
  echo'

        '.$katimg.'

    </body>
  </html>';

  
?>
