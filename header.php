<?php
/**
 * The Header for our theme
 *
 * Displays all of the <head> section and everything up till <div id="container">
 *
 */
 
	session_start();
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, maxiumum-scale=1.0, minimum-scale=1.0, initial-scale=1.0, user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="style.css" />
		<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
		<script type="text/javascript" src="js/functions.js"></script>
		<script type="text/javascript" src="plugins/ckeditor/ckeditor.js"></script>
		<!--[if lt IE 9]>
			<script src="js/html5.js"></script>
		<![endif]-->
		<title>Association Website</title>
	</head>
	<body>
		<div id="wrapper" class="hfeed">
			<header id="header" role="banner">
				<a href="http://www.gabriel.gaucimaistre.com/about">
				<img src="images/banner.jpg" alt="Banner"/>
				</a>
			</header>
			<nav id="top-menu" role="navigation">
				<a href="index.php">Home</a>
				<a href="about.php">About</a>
				<a href="contact.php">contact</a>
				<?php 
					//if user is admin
					if(isset($_SESSION['admin']))
					{
				?>
						<a href="quick-post.php">Quick Post</a>
						<a href="page.php">Posts</a>
						<a href="logs.php">Logs</a>
						<a href="statistics.php">Statistics</a>
						<a href="contact-comments.php">Contact Comments</a>
						<a href="logout.php">Logout</a>
				<?php	
					}
					//if user is not admin
					if(isset($_SESSION['registered'])){
				?>
						<a href="logout.php">Logout</a>
				<?php	
					}
				?>
				<form  method="post" action="search.php?go" class="search-form" id="searchForm"> 
					<input  type="text" name="name"> 
					<input  type="submit" name="submit" value="Search"> 
				</form> 
			</nav>
			<div id="container">