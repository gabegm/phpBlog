<?php
/**
 * The page template file
 *
 */
	include("header.php");
	require_once("functions.php");
	
	if(isset($_SESSION['admin']))
	{	
		$conn = connectToMySQL();
		
		$query = "SELECT * FROM tbl_articles";
		$result = mysqli_query($conn, $query)or die("Error in query: ". mysqli_error($conn));

		//displaying all available articles
		while ($row = mysqli_fetch_assoc($result))
		{
			echo "<h1>$row[title]</h1>
				  <article>
					  Posted: $row[dateTime]<br />
					  Posted by: Admin<br />
					  <img src='$row[imgPath]' alt='article image' class='articleImg'><br />
					  $row[content]<br />
					  <a href='page-update.php?artId=$row[articleId]'>Edit</a>
					  <a href='page-delete.php?artId=$row[articleId]' class='confirmation'>Delete</a>
				  </article><br/>";
		}

		include("sidebar.php"); 
		include("footer.php");
	}
	else
	{
		header("Location:404.php");
	}
?>