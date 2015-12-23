<?php
/**
 * The logout template file
 *
 */
 
	session_start();
	require_once("functions.php");
	
	$conn = connectToMySQL();
	
	//grabbing the username from the session
	if(isset($_SESSION['username']))
	{
		write_mysql_log($_SESSION['username']." successfully logged out!", $conn);
	}
	
	header("Location:index.php");
	//destroying the session
	$_SESSION = array();
	session_destroy();
?>