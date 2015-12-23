<?php
/**
 * The posts template file
 *
 */
 
	include("header.php");
	require_once("functions.php");
	
	if(isset($_SESSION['admin']))
	{
		$conn = connectToMySQL();
		
		//getting article Id which was passed from in page.php in link and can be seen in URL 
		if (isset($_GET['artId']))
		{
			$artId = $_GET['artId'];
		}
		
		//deleting selected article from the database
		$query = "DELETE FROM tbl_articles WHERE articleId = '$artId'";
		$result = mysqli_query($conn, $query)or die("Error in query: ". mysqli_error($conn));
		write_mysql_log($_SESSION['username']." successfully deleted an article!", $conn);
		header("Location:page.php");

		include("sidebar.php"); 
		include("footer.php");
	}
	else
	{
		header("Location:404.php");
	}
?>