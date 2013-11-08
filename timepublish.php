<?php 
error_reporting(0);
include 'libR.php';
include 'libAuth.php';

makeVisitCounter();
 	
if($loggedIn == false){
	header("Location:login.php");
	die();
}
	
if (isset($_POST[submit])){
	$title = mysql_real_escape_string($_POST[title]);
	$content = mysql_real_escape_string($_POST[content]);
	$sql = "INSERT INTO `bloggen`.`tid` 
	(`timestamp`, `timmar`, `kommentar`)
	VALUES (CURRENT_TIMESTAMP, '{$title}', '{$content}')";
	$i = mysql_query($sql);
	
	echo $i ? "true":"false";
	echo '<p>Det var någonting i Submit-vektorn, nu får du hoppas att det tog sig hela vägen in i databasen också.</p>';
}
makeHead("Add some time to the meter");
?>

<body
<?php if($loggedIn) print ' class="loggedIn"' ?>
 >
 	<div id=runtomkring>
 
 	<?php makeMeny(true);?>
	
	<div id="main">
		<div id="content">
			<h1>Nå 100 timmar!</h1><br>
			<script type="text/javascript" src="nicEdit.js"></script>
			<script type="text/javascript">
				bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
			</script>

			<form method=post action=timepublish.php>
				<label for=titel> Timmar: </label> 
				<input type=text id=title name=title>
				<label for=content> Kommentar: </label> 
				<textarea name=content id=content style="width:44em"></textarea>
				<input type=submit name=submit value=Publicera>
			</form>	
			<?php
				$sql = "SELECT * FROM `tid` ORDER BY `index` DESC";
				$posts = mysql_query($sql);
				
				echo '<br /><br /><br /></br><h3>Tabell över hittills spenderad tid</h3>
				<table style="padding:0.5em 1em 0.5em 1em">';
				while($post = mysql_fetch_assoc($posts)){
					echo '<tr><td class="noBorder">'. $post[timestamp]. '</td><td>'. $post[timmar]. '</td><td>'. $post[kommentar]. '</td></tr>';
				}
				echo '</table> <br /><br />';
			?>
		</div>
	<?php 
	makeBottom();
endBody();
?>

