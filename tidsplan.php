<?php
include 'libR.php';
include 'libAuth.php';

makeVisitCounter();
makeHead('Tidsplan');

?>
 <body
 <?php if($loggedIn) print ' class="loggedIn"' ?>
 >
 	<div id=runtomkring>
 	<?php makeMeny(false);?>
	
	<div id="main">
		<div id="content">
		
			<h1>Tidsplan</h1><br />
			<iframe width='580px' height='800px' frameborder='0' src='https://spreadsheets.google.com/pub?key=0ArggIiMxgpugdFZsZkp3OGtZNzQzT1haWXc4dWtPZmc&hl=sv&single=true&gid=0&output=html&widget=true'>
			</iframe>
			<br /><br /><br />
		</div>
	<?php
	makeBottom();
endBody();
?>

