<?php 
include 'libR.php';
include 'libAuth.php';
makeVisitCounter();

if($loggedIn == false){
	header("Location:login.php");
	die();
}

if(isset($_POST["user"])){

	if($_POST["user"] < 3 && $_POST["password" < 6])
		print('Användarnamn måste vara längre än tre tecken och lösenord längre än sex tecken');
	else{
		$password = mysql_real_escape_string($_POST["password"]);
		$user = mysql_real_escape_string($_POST["user"]);
	
		$md5password = md5($password);
		$sql = "INSERT INTO `matste_bloggen`.`users` (
			`username` , `password`
			)
			VALUES ( '{$user}', '{$md5password}'
			);";
		mysql_query($sql);
	}
}
makeHead("Ragistration is verey important!");
?>

<body
<?php if($loggedIn) print ' class="loggedIn"' ?>
 >
 	<div id=runtomkring>
 	
 	<?php makeMeny(true);?>
	
		<div id="main">
			<div id="content">
				<h1>Register</h1>
					<div id="varubox" style="margin:2em 12em; padding:2em">
						<form action="register.php" method="post">
							<label for="Anv">Användarnamn:</label><br />
							<input type="input" id="Anv" name="user" title="Användarnamn"><br /><br />
							<label for="Pass1">Lösenord:</label><br />
							<input type="password" id="Pass1" name="password" title="Lösenord"><br />
							<input type="submit" value="Register"></input>
						</form>
					<script>document.getElementById('Anv').focus();</script>
					<br />
				</div>
			</div>
		<?php 
	makeBottom();
endBody();
?>