<?php

function makeHead($title){
	echo('
		<!DOCTYPE HTML>
		<html>
			<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
			<link href="style" rel="stylesheet" type="text/css">
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
 	$i = $_COOKIE['besök'] + 1;
	setcookie("besök", $i, time() + 3600 * 24 * 7);
	$_SESSION['besök'] += 1;
	$y = $_SESSION['besök'];
 }
 
function makeBottom(){
 	print('<div id="bottom">');
 	if ($_COOKIE["besök"] == 1)
 		echo "<h6>Välkommen på ditt första besök</h6>";
 	else{
 		$timmar = 20;
 		
		print(' 
		<h6> Det här är ditt '. $_COOKIE["besök"]. ':e besök</h6>'
		);
	}
		/* '<h6> Antal besök den här sessionen: '. $_SESSION[besök] */
 }
 
function makeMeny($noLogin){
	global $loggedIn;

 	print('
 		<div id="beställning">
		<h2>Meny</h2>
		<h3>
		<a href="./tid.php">Tid</a><br />
		<a href="./index.php">Blog</a><br />
		<a href="./tidsplan.php">Tidsplan</a><br />
		<a href="./projektplan.php">Projektplan</a><br />
	');

 	if($loggedIn){				//Om någon är inloggad visas inte inloggningsfälten
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
	 		<br />
	 			<form  action="" method="post">
					<label for="Anv">Användarnamn:</label>
					<input type="text" style="width:7em" id="Anv" name="user" title="Användarnamn" maxlenght="30"><br />
					<label for="Pass1">Lösenord:</label>
					<input type="password" style="width:7em" id="Pass1" name="password" title="Lösenord"><br />
					<input type="submit" value="Login" name="login"></input>
				</form>
		
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