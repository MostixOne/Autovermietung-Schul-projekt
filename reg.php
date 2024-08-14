<?php
include("config/config.inc.php");
include("config/scripts.inc.php");

if(isset($_GET['failure'])){
    echo '  
            <div class="container">
            <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                <div class="card-body">
                <hr class="my-1">
                <label style="font-size:30px;" >Der Benutzer Existiert bereits</label>
                </div>
                </div>
                </div>
            </div>
            </div>
            ';
}else if(isset($_GET['success'])){ 
	session_start();
	
	$ID = $_SESSION['id'];
	echo $ID;
	$sql="SELECT * FROM kundendaten WHERE ID='".$ID."'";
	$result=mysqli_query($con,$sql);
	
	$daten=mysqli_num_rows($result);
	if($daten==1){
		$zeile=mysqli_fetch_array($result);
		$name=$zeile['Name'];
		$nachname=$zeile['Nachname'];
		$zipcode=$zeile['PLZ_ORT'];
		$street=$zeile['Strasse'];
		$email=$zeile['Email'];
		
		echo '  
	<div class="container">
	<div class="row">
	<div class="col-sm-9 col-md-7 col-lg-50 mx-auto">
		<div class="card card-signin my-5">
		<div class="card-body">
		<label center style="font-size:30px;" ><i class="fas fa-sign-in-alt"></i> Erfolgreich Registiert!</label>
		<hr class="my-1">
		<label> Name: </label>
		<input class="form-control" type="text" placeholder="'.$name.'" readonly>
		<hr class="my-1">
		<label> Nachname:</label>
		<input class="form-control" type="text" placeholder=" '.$nachname.'" readonly>
		<hr class="my-1">
		<label> PLZ & ORT: </label>
		<input class="form-control" type="text" placeholder="'.$zipcode.'" readonly>
		<hr class="my-1">
		<label> Straﬂe: </label>
		<input class="form-control" type="text" placeholder="'.$street.'" readonly>
		<hr class="my-1">
		<label> E-mail: </label>
		<input class="form-control" type="text" placeholder="'.$email.'" readonly>
		</div>
		
		</div>
		</div>
	</div>
	</div>
        ';
	}
	
	
	
}else
	echo' <div class="container">
		<div class="row">
		  <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
			<div class="card card-signin my-5">
			  <div class="card-body">
				
				<h5 class="card-title text-center"><i class="fab fa-battle-net"></i> Registrierung</h5>
				<form class="form-signin" action="pages/reg_step_2.php" method="POST">
				<div class="btn-group btn-group-toggle" data-toggle="buttons">
				<label class="btn btn-lg btn-primary active">
					<input type="radio" name="options" id="option1" autocomplete="off" value="Herr" checked> Herr
				</label>
				<label class="btn btn-lg btn-primary">
					<input type="radio" name="options" id="option2" value="Frau" autocomplete="off"> Frau
				</label>
				<label class="btn btn-lg btn-primary">
					<input type="radio" name="options" id="option3" value="Keine Angabe" autocomplete="off"> Keine Angabe
				</label>
				</div>
				<br>
				<br>
				<!-- Namen eingabe-->
				  <div class="form-label-group">
					<input name="name" type="text" id="name" class="form-control" placeholder="Name" required autofocus>
					<label for="name">Name</label>
				  </div>
				  <!-- Nachname eingabe-->
				  <div class="form-label-group">
					<input name="nachname" type="text" id="nachname" class="form-control" placeholder="Nachname" required autofocus>
					<label for="nachname">Nachname</label>
				  </div>
				  <!-- PLZ & ORT eingabe-->
				  <div class="form-label-group">
					<input name="zipcode" type="text" id="zipcode" class="form-control" placeholder="PLZ & ORT" required autofocus>
					<label for="zipcode">PLZ & ORT</label>
				  </div>
				  <!-- Stra√üen eingabe-->
				  <div class="form-label-group">
					<input name="street" type="text" id="street" class="form-control" placeholder="Stra√üe & H.Nummer" required autofocus>
					<label for="street">Straﬂe & H.Nummer</label>
				  </div>
				  <!-- Email-Adresse eingabe-->
				  <div class="form-label-group">
					<input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email-Adresse" required autofocus>
					<label for="inputEmail">Email-Adresse</label>
				  </div>
				  <!-- Passwort eingabe-->
				  <div class="form-label-group">
					<input name="pass" type="password" id="inputPassword" class="form-control" placeholder="Passwort" required>
					<label for="inputPassword">Passwort</label>
				  </div>
				  <button class="btn btn-lg btn-primary btn-block text-uppercase"  type="submit">Registrierung</button>
				  <hr class="my-4">
				</div>
				</form>
			  </div>
			</div>
		  </div>
		</div>
	  </div>';

?>
