<!DOCTYPE html>
<?php
include("config/config.inc.php");
include("config/scripts.inc.php");




//slider DB Dynamisch;
$sliderqer = "SELECT * FROM Slider;";
$getSlider = mysqli_query($con,$sliderqer);
$list = '';
$i = 0;
$divslider = '';

while ($row=mysqli_fetch_array($getSlider)) {
  $sname=$row['name'];
  $date=$row['date'];
  $pfad=$row['pfad'];
  $Sponsor=$row['Sponsor'];
  $Sponsor_von=$row['Sponsor_von'];
  if ($i == 0) {
    $list .= '<li data-target="#myCarousel" data-slide-to="'.$i.'" class="active"></li>';
    if($Sponsor == 'ja'){
      $divslider .= '<div class="item active">
      <img src="'.$row['pfad'].'" alt="'.$sname.'" style="overflow:hidden; width:100%; height:400px;">
      <div class="carousel-caption">
      <h3>'.$sname.'</h3>
      <p>Gesponsort von '.$Sponsor_von.'</p>
     </div>
      ';
    }else {
      $divslider .= '<div class="item active">
      <img src="'.$row['pfad'].'" alt="'.$sname.'" style="overflow:hidden; width:100%; height:400px;">
      <div class="carousel-caption">
      <h3>'.$sname.'</h3>
     </div>
      ';
    }

  }else {
    $list .= '<li data-target="#myCarousel" data-slide-to="'.$i.'"></li>';

    
    if($Sponsor == 'ja'){
      $divslider .= '<div class="item">
      <img src="'.$row['pfad'].'" alt="'.$sname.'" style="overflow:hidden; width:100%; height:400px;">
      <div class="carousel-caption">
        <h3>'.$sname.'</h3>
  
        <p calss="thiccnes">Gesponsort von '.$Sponsor_von.'</p>
      </div>';
    }else {
      $divslider .= '<div class="item">
      <img src="'.$row['pfad'].'" alt="'.$sname.'" style="overflow:hidden; width:100%; height:400px;">
      <div class="carousel-caption">
        <h3>'.$sname.'</h3>
      </div>';
    }
  }
  $divslider .='</div>';
  //echo $list;
  $i++;
}

//Dynamische Toasts
$tqer = "SELECT  * FROM toasts  LIMIT 8";
$getToasts = mysqli_query($con,$tqer);
$tToast = '';
$tmake ='';
$addDelaytime;
$ToastText = '';

for($ti =0;$ti < mysqli_num_rows($getToasts);$ti++ ){
  $addDelaytime  = $ti+1;
  $trow = mysqli_fetch_array($getToasts);
  $tname=$trow['name'];
  $tdate=$trow['nachname'];
  $tpfad=$trow['text'];
  $tSponsor=$row['item'];

 
    $tmake .='    <div class="toast ml-auto w3-animate-bottom" role="alert" data-delay="'.$addDelaytime.'700" data-autohide="true">
    <div class="toast-header">
        <strong class="mr-auto text-primary"><i class="fas fa-newspaper"></i> '.$tname.' '.$tdate.' </strong>
        <small class="text-muted">8 mins ago</small>
        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
            <span aria-hidden="true"><i class="fas fa-window-close"></i></span>
        </button>
    </div>
    <div class="toast-body"> '.$tpfad.' </div>

</div>
';

}


//Dynamisches Sidepanel(CARD MAX )
$ksqer = "SELECT  * FROM Kundenservice  LIMIT 8";
$getKudenservice = mysqli_query($con,$ksqer);
$tes = '';
$setstar = '';
$setstar2 = '';
for($te = 0 ;$te < mysqli_num_rows($getKudenservice);$te++){
	$starrow = mysqli_fetch_array($getKudenservice);
	$namebet = $starrow['name'];
	$Sterne = $starrow['sterne'];
	$rank = $starrow['rank'];
	if($Sterne >1){
		for($si = 0;$si <$Sterne;$si++){
			$setstar .= '<i class="fa fa-star star"></i>';
		}
		}else{  
			for($si2 = 0;$si2 <$Sterne;$si2++){
				$setstar = '<i class="fa fa-star-half star"></i>';
			}
			
	}
	
	$tes .='
	<li><h2>'.$namebet.'</h2>
	<label>'.$rank.'</label>
	</li>
	Bewertung: '.$setstar.'


	' ;
$setstar = '';

}
?>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" size="7" href="#"><i class="fab fa-battle-net"></i>Autovermietung</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="home.php">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="vermietung.php">Vermietung</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="teststrecke.php">Teststrecken</a>
        </li>

      </ul>

    </div>
<?php
  session_start();
if (isset($_SESSION['id'])) {
 

  echo'
  <ul class="navbar-nav ml-auto">
  <li class="nav-item">
  <a class="btn btn-primary" href="login.php?logout" role="button"><i class="fa fa-sign-in-alt"></i> Logout

  </a>
  </li>
  </ul>';

}
else
echo'

  <ul class="navbar-nav ml-auto">
  <li class="nav-item">
  <a class="btn btn-primary" href="login.php" role="button"><i class="fa fa-sign-in-alt"></i> login

  </a>
  </li>
  </ul>';
?>
 </nav>
</head>
 <body>
   
<!-- toast -->
   <div class="position-absolute w-100 d-flex flex-column p-4 ">
  <?php
    echo $tmake;
  ?>
  </div>
  <!-- Toast ende -->
</div>  

<div class="container">
    <div  id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">

      <?php
      echo $list;
      
      ?>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <?php
          echo $divslider;
      ?>

    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>

  </div>
  
</div>

<div class="card pressside">
    <h1 align ="center">Kundenservice</h1>
    <hr>
  <ol>

    <?php
      
      echo $tes;    
    ?>
  </ol>

  </div>
  
</body>
<script src="/js/animation.js"></script>
</html>