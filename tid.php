<?php
include 'libAuth.php';
include 'libR.php';

makeVisitCounter();
makeHead('Iama chargin my keyboardz!');

$antal = $_GET[antal];
if (!isset($antal)){
	$antal = 5;
}

$sida = $_GET[sida];
if (!isset($sida)){
	$sida = 1;
}

?>
 <body
 <?php if($loggedIn) print ' class="loggedIn"' ?>
 >
 	<div id=runtomkring>
 	<?php makeMeny(false);?>
	
	<div id="main">
		<div id="content">
			<br />
			<?php
				$sql = "SELECT `timmar` FROM `tid`";
				$result = mysql_query($sql);
				while($array = mysql_fetch_assoc($result)){
					$totalTid += $array[timmar];
				}
				echo('<div class="barBorder"><div class="bar" style="width:'. $totalTid .'%">
					<h5 class="bar">'. $totalTid. ' timmar av hundra</h5>
					</div></div>');
				
				
				$start = ($sida * $antal - $antal);
				$sql = "SELECT * FROM `tid` ORDER BY `index` DESC LIMIT {$start}, {$antal}";
				$posts = mysql_query($sql);
				
				echo '<br /><br /><h1>Spenderad tid</h1><br /><table>';
				 
				while($post = mysql_fetch_assoc($posts)){
					echo '<tr><td class="noPadding"><h2 class="timeTitle">'. 
					$post[timmar];
					
					if($post[timmar] == 1) echo ' timme';
					else echo ' timmar';
					
					echo '</h2></td></tr><tr><td class="date"><h5>'. 
					$post[timestamp]. '</h5></td><td>'. 
					$post[kommentar]. '</td></tr><div class="spacer"></div>';
				}
				echo '</table> <br /><br />';
				
				$antalsVal = array(3, 5, 10, 20, 50);
				echo '<table class="right"> <tr><td class="noPadding"> <h5>Inlägg per sida: </h5></td>';
				foreach ($antalsVal as $val){
					echo '<td style="padding:0.7em"> <a href="http://lamp.skola.skelleftea.se/~matste/elever/christian_l/blag/tid.php?
						antal='. $val. '&sida='. 1 . '"> '. $val. ' </a></td>';
				}
				echo '</table>';

				
				$sql = "SELECT * FROM `tid`";
				$posts = mysql_query($sql);	
				$count = mysql_num_rows($posts);
				$sidoVal = array();
				
				for($i = 1; $i < ($count / $antal + 1); $i++){
					$sidoVal[$i] = $i;
				}
				echo '<table class="left"> <tr> <td class="noPadding"> <h5>Sida: </td>';
				foreach ($sidoVal as $val){
					echo '<td style="padding:0.7em"> <a href="http://lamp.skola.skelleftea.se/~matste/elever/christian_l/blag/tid.php
						?antal='. $antal. '&sida='. $val. '"> '. $val. ' </a></td>';
				}
				echo '</table><br /><br /><br />';
				?>
			</div>
		<?php
	makeBottom();
endBody();
?>

