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
        
              <h5 class="card-title text-center"><i class="fab fa-battle-net"></i> Einloggen</h5>
              <h1 class="card-title text-left label label-danger"><i class="fab fa-battle-net"></i> Falsche daten! </h1>
              <br>
              <hr>
              <form class="form-signin" action="log.php" method="POST">
                <div class="form-label-group">
                  <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email addresse" required autofocus>
                  <label for="inputEmail">Email addresse</label>
                </div>
  
                <div class="form-label-group">
                  <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Passwort" required>
                  <label for="inputPassword">Passwort</label>
                </div>
                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Einloggen</button>
                <hr class="my-4">
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
            ';
}else if(isset($_GET['success'])){ 
	session_start();
	
   $_SESSION['id'];
   header("Location:../home.php");  
	// }
	
}else if(isset($_GET['logout'])){ 
    session_start();
    session_unset();
    session_destroy();
    header("Location:../home.php");  
  
}	else

echo'
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
			
            <h5 class="card-title text-center"><i class="fab fa-battle-net"></i> Einloggen</h5>
            <form class="form-signin" action="log.php" method="POST">
              <div class="form-label-group">
                <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email addresse" required autofocus>
                <label for="inputEmail">Email addresse</label>
              </div>

              <div class="form-label-group">
                <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Passwort" required>
                <label for="inputPassword">Passwort</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Einloggen</button>
              <a class="btn btn-lg btn-primary btn-block text-uppercase" href="reg.php" role="button"> Registration </a>
              <hr class="my-4">
              </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>
';

?>