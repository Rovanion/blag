<?php 
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
	$sql = "INSERT INTO `matste_bloggen`.`posts` 
	(`dateTime`, `title`, `post`)
	VALUES (CURRENT_TIMESTAMP, '{$title}', '{$content}')";
	$i = mysql_query($sql);
	echo $i ? "true":"false";
	
	echo '<p>Det var någonting i Submit-vektorn, nu får du hoppas att det tog sig hela vägen in i databasen också.</p>';
}
makeHead("Publish a blag post");
?>

<body
<?php if($loggedIn) print ' class="loggedIn"' ?>
 >
 	<div id=runtomkring>
 
 	<?php makeMeny(true);?>
	
	<div id="main">
		<div id="content">
			<h1>Dela dina tankar</h1><br>
			<script type="text/javascript" src="nicEdit.js"></script>
			<script type="text/javascript">
				bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
			</script>

			<form method=post action=publish.php>
				<label for=titel> Titel: </label> 
				<input type=text id=title name=title>
				<label for=content> Inlägg: </label> 
				<textarea name=content id=content style="width:44em"></textarea>
				<input type=submit name=submit value=Publicera>
			</form>	
			<?php
				$sql = "SELECT * FROM `posts` ORDER BY `number` DESC";
				$posts = mysql_query($sql);
				
				echo '<br /><br /><br /></br><h3>Tabell över existerande poster</h3>
				<table style="padding:0.5em 1em 0.5em 1em">';
				while($post = mysql_fetch_assoc($posts)){
				echo '<tr><td>'. $post[title]. '</td><td>'. $post[dateTime]. '</td></tr>';
				}
				echo '</table> <br /><br />';
			?>
		</div>
	<?php 
	makeBottom();
endBody();
?>

