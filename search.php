<?php
/**
 * The template for displaying Search Results pages
 *
 */

	include("header.php");
	require_once("functions.php");
?>

<h1 id="pageTitle">Search</h1>

<?php
	if(isset($_POST['submit']))
	{
		
	} 
	
	include("sidebar.php"); 
	include("footer.php");
?>