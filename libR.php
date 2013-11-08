<?php

function makeHead($title){
	echo('
		<!DOCTYPE HTML>
		<html>
			<head>
			<meta http-equiv="Content-Type" content="text/html; charset="iso-8859-1">
			<link href="style.css" rel="stylesheet" type="text/css">
			<LINK REL="SHORTCUT ICON" href="img/icon.ico">
			<title>'. $title. '</title>
		</head>
	');
}

function endBody(){
  	print('
	 	</div>
		</body>
		</html>
	');
 }

function makeVisitCounter(){
 	$i = $_COOKIE['bes�k'] + 1;
	setcookie("bes�k", $i, time() + 3600 * 24 * 7);
	$_SESSION['bes�k'] += 1;
	$y = $_SESSION['bes�k'];
 }

function makeBottom(){
 	print('<div id="bottom">');
 	if ($_COOKIE["bes�k"] == 1)
 		echo "<h6>V�lkommen p� ditt f�rsta bes�k</h6>";
 	else{
 		$timmar = 20;

		print('
		<h6> Det h�r �r ditt '. $_COOKIE["bes�k"]. ':e bes�k</h6>'
		);
	}
		/* '<h6> Antal bes�k den h�r sessionen: '. $_SESSION[bes�k] */
 }

function makeMeny($noLogin){
	global $loggedIn;

 	print('
 		<div id="best�llning">
		<h2>Meny</h2>
		<h3>
		<a href="./tid.php">Tid</a><br />
		<a href="./index.php">Blog</a><br />
		<a href="./tidsplan.php">Tidsplan</a><br />
		<a href="./projektplan.php">Projektplan</a><br />
	');

 	if($loggedIn){				//Om n�gon �r inloggad visas inte inloggningsf�lten
 		print ('
			<br />
 			<a href="./publish.php">Publisera</a><br />
 			<a href="./timepublish.php">Addera tid</a><br />
 			<a href="./register.php">Registrera</a><br /><br/>
 			<a href="./logout.php"> Logga ut</a>
 			</h3></div>
			<div id=fulingen></div>'
 		);
 	}
 	elseif($noLogin)
 		print('
 			</h3>
 			</div>
			<div id=fulingen></div>'
 		);
 	else{
	 	  ?>
	 	  	</h3>
	 		<br /><!--
	 			<form  action="" method="post">
					<label for="Anv">Anv�ndarnamn:</label>
					<input type="text" style="width:7em" id="Anv" name="user" title="Anv�ndarnamn" maxlenght="30"><br />
					<label for="Pass1">L�senord:</label>
					<input type="password" style="width:7em" id="Pass1" name="password" title="L�senord"><br />
					<input type="submit" value="Login" name="login"></input>
				</form>
				-->
	 		</div>
			<div id=fulingen></div>
	 	<?php
 	}
}

function currentURL() {
	$pageURL = 'http';
	if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
	$pageURL .= "://";
	if ($_SERVER["SERVER_PORT"] != "80") {
	 	$pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
	} else {
	 	$pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
	}
	return $pageURL;
}

?>