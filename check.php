<!DOCTYPE html>
<?php

include("config/config.inc.php");
include("config/scripts.inc.php");

session_start();

$dauer = $_POST['dauer'];
$baujahr = $_POST['baujahr'];
$preis = $_POST['preis'];
$Kraftstoff = $_POST['Kraftstoff'];
$Getriebe = $_POST['Getriebe'];
$ps = $_POST['ps'];
$KM = $_POST['KM'];
$cimg = $_POST['cimg'];
$chersteller = $_POST['chersteller'];
$summe = $dauer * $preis;

if (isset($_SESSION['id'])) {
    $ID = $_SESSION['id'];
    $sql="SELECT * FROM kundendaten WHERE ID='".$ID."'";
    
    $result=mysqli_query($con,$sql);
    $daten=mysqli_num_rows($result);
    if($daten==1){
		$zeile=mysqli_fetch_array($result);
		$name=$zeile['Name'];
		$nachname=$zeile['Nachname'];
    }

         $sql='INSERT INTO bestellung VALUES ("",'.$ID.' ,"'.$name.'" , "'.$nachname.'","'.$chersteller.'",'.$dauer.','.$summe.')';
         $sql2='INSERT INTO toasts VALUES ("" ,"'.$name.'" , "'.$nachname.'","Hat einen '.$chersteller.'gemietet ('.$dauer.' Tag/e).",'.$summe.')';
         $_SESSION['sql'] = $sql;
         $_SESSION['sql2'] = $sql2;

}
echo '

<meta charset="utf-8">

<div class="container pressdown" >
    <table id="cart" class="table table-light" style="border-radius: 20px;" >
    				<thead>
						<tr>
							<th style="width:50%">Produkt</th>
							<th style="width:10%">Preis</th>
							<th style="width:8%">Tage</th>
							<th style="width:22%" class="text-center">Zwischensumme</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td data-th="Produkt">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img src="'.$cimg.'" alt="..." class="img-responsive"/></div>
									<div class="col-sm-10">
                                    <label>  
                                        <h4 class="nomargin">'.$chersteller.'</h4>
										<p> 
                                         KM-Stand: '.$KM.' KM
                                        <br> <label for="baujahr" name="baujahr" id="baujahr">Baujahr: '.$baujahr.'</label>
                                        <br> Kraftstoff: '.$Kraftstoff.'
                                        <br> Preis: '.$preis.'&euro; Pro Tag
                                        <br> Getriebe: '.$Getriebe.'
                                        <br> PS: '.$ps.'
                                        </p>
                                        </label>
									</div>
								</div>
							</td>
							<td data-th="Preis">&euro;'.$summe.'</td>
							<td data-th="Tage">
								<input type="number" class="form-control text-center" disabled value="'.$dauer.'">
							</td>
							<td data-th="Zwischensumme" class="text-center">&euro;'.$summe.'</td>
		
						</tr>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"> <strong>&euro;'.$summe.'</strong></td>
						</tr>
						<tr>
							
                            <td colspan="3" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total &euro;'.$summe.'</strong></td>
							<td><a href="/pages/cash.php" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
                           
                        ';
                        
 

                        echo '</tr>
					</tfoot>
                </table>

</div>


';

?>

