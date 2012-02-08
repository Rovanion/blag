<?php
include 'libAuth.php';
include 'libR.php';

makeVisitCounter();
makeHead('Iama chargin my keyboardz!');

$antal = $_GET[antal];
if (!isset($antal)){
	$antal = 1;
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
			<?php
				$start = ($sida * $antal - $antal);
				$sql = "SELECT * FROM `posts` ORDER BY `number` DESC LIMIT {$start},{$antal}";
				$posts = mysql_query($sql);
				
				while($post = mysql_fetch_assoc($posts)){
					$postArray = explode('<div><br></div><div>', $post[post]);
					if ($postArray[1] == false){
						$postArray = explode('<br><br>', $post[post]);
					}
					echo '<h1>'. $post[title]. '</h1><h5 class="timestamp">'. $post[dateTime]. '</h5><p>';
					
					for ($i = 0; $i < count($postArray); $i++){
						$postArray[$i] = str_replace("</div>", "", $postArray[$i]);
						if ($i == 0)
							echo '<b>'. $postArray[$i]. '</b><br /><br />';
						else
							echo $postArray[$i]. '<br /> <br />';
					}
					echo '</p>';
				}
				
				$sql = "SELECT `timmar` FROM `tid`";
				$result = mysql_query($sql);
				while($array = mysql_fetch_assoc($result)){
					$totalTid += $array[timmar];
				}
				echo('<div class="barBorder" id="indexBar"><div class="bar" style="width:'. $totalTid .'%">
					<h5 class="bar">'. $totalTid. ' timmar av hundra</h5>
					</div></div>');
				
				
				$antalsVal = array(1, 2, 3, 5, 10);
				echo '<table class="right"> <tr><td class="noPadding"> <h5>Inlägg per sida: </h5></td>';
				foreach ($antalsVal as $val){
					echo '<td style="padding:0.7em"> <a href="http://lamp.skola.skelleftea.se/~matste/elever/christian_l/blag/index.php?
						antal='. $val. '&sida='. 1 . '"> '. $val. ' </a></td>';
				}
				echo '</table>';

				
				$sql = "SELECT * FROM `posts`";
				$posts = mysql_query($sql);	
				$count = mysql_num_rows($posts);
				echo '<table class="left"> <tr> <td class="noPadding"> <h5>Sida: </td>';
				if($start > 3){
					echo '<td style="padding:0.5em"> <a href="http://lamp.skola.skelleftea.se/~matste/elever/christian_l/blag/index.php
							?antal='. $antal. '&sida=1"><<</a></td>';
				}
				for($i = 1; $i < ($count / $antal + 1); $i++){
					if($i == ($start + 1)){
						echo '<td style="padding:0.5em"><b>'. $i. '</b></td>';
					}
					else if($i <= ($start + 4) && $i >= ($start - 2)){
						echo '<td style="padding:0.5em"> <a href="http://lamp.skola.skelleftea.se/~matste/elever/christian_l/blag/index.php
							?antal='. $antal. '&sida='. $i. '"> '. $i. ' </a></td>';
					}
				}
				if($start < ($count - 4)){
					echo '<td style="padding:0.5em"> <a href="http://lamp.skola.skelleftea.se/~matste/elever/christian_l/blag/index.php
							?antal='. $antal. '&sida='. $count. '">>></a></td>';
				}
				echo '</table><br /><br /><br />';
				?>
			</div>
		<?php
	makeBottom();
endBody();
?>

