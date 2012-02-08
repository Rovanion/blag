<?php
include 'libR.php';
include 'libAuth.php';
session_start();
makeVisitCounter();
makeHead('Projektplan');

?>
 <body
 <?php if($loggedIn) print ' class="loggedIn"' ?>
 >
 	<div id=runtomkring>
 	<?php makeMeny(false);?>
	
	<div id="main">
		<div id="content">
			<h1>Projektplan</h1> <br />
			<iframe width='580px' height='800px'
				src="https://docs.google.com/document/pub?id=1KMjZmodSIidB8S6QxsMgPIrchJq0a15eu6Dcd0qEAX8&amp;embedded=true">
			</iframe>
			<br /><br /><br />
			
		</div>
	<?php
	makeBottom();
endBody();
?>

