<?php 
include 'libR.php';
include 'libAuth.php';

makeVisitCounter();
makeHead("Ze loginpage");
?>

<body>
 	<div id=runtomkring>
 
 	<?php makeMeny(true);?>
	
		<div id="main">
			<div id="content">
				<h1>Please log in</h1>
					<div id="varubox" style="margin:2em 12em; padding:2em">
						<form action="publish.php" method="post">
							<label for="Anv">Användarnamn:</label><br />
							<input type="input" id="Anv" name="user" title="Användarnamn"><br /><br />
							<label for="Pass1">Lösenord:</label><br />
							<input type="password" id="Pass1" name="password" title="Lösenord"><br />
							<input type="submit" value="Login"></input>
						</form>
					<script>document.getElementById('Anv').focus();</script>
					<br />
				</div>
			</div>
		<?php 
	makeBottom();
endBody();
?>