<?php

function makeMySQLConnection(){
	mysql_connect('localhost', 'blag', 'NaltaElgestHerna') or
	die('MySQL connection failed');
	mysql_select_db('matste_bloggen');
}

function checkLogin(){
	makeMySQLConnection();

	if (isset($_POST["user"]))
		login();

	if (isset($_SESSION["user"]) && isset($_SESSION["password"])){

		$sql = "SELECT * FROM users WHERE username='{$_SESSION["user"]}'
		AND password='{$_SESSION["password"]}'";
		$result = mysql_query($sql);
		$array = mysql_fetch_assoc($result);

		if($_SESSION["user"] == $array["username"] && $_SESSION["password"] == $array["password"]){
			return true;
		}
	}
	else return false;
}

function login(){
	if($loggedIn)
		return;

	if(isset($_POST["user"]) && isset($_POST["password"])){
		$password = mysql_real_escape_string($_POST["password"]);
		$user = mysql_real_escape_string($_POST["user"]);

		$md5password = md5($password);

		$sql = "SELECT * FROM users WHERE username='{$user}'
		AND password='{$md5password}'";
		$result = mysql_query($sql);

		if ($result == false)		// Checks for SQL issues
			print "Falken anfaller!". $sql;

		$count = mysql_num_rows($result);

		if ($count == 1){
			$_SESSION["user"] = $_POST["user"];
			$_SESSION["password"] = $md5password;
		}
		else
			header("Location:http://reddit.com");
	}
}

session_start();
$loggedIn = checkLogin();

?>
