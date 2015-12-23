<?php
	/**
	 * The contact comments template file
	 *
	 */
	include("header.php");
	
	//Checking if the user has the required privileges to view the page
	if(isset($_SESSION['admin']))
	{
		require_once("functions.php");
				
		//saving xml file directory
		$xml_file = "xml/file.xml";
		
		/* Loading the created XML file to check contents */
		$file = file_get_contents("$xml_file");
		echo $file; 
		
		//echo "<script>loadXML()</script>";

		include("sidebar.php"); 
		include("footer.php");
	}
	//user does not have the required privileges, redirecting...
	else
	{
		header("Location:404.php");
	}
?>