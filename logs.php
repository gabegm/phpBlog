<?php
	/**
	 * The main template file
	 *
	 */
	 
	include("header.php");

	if(isset($_SESSION['admin']))
	{
?>

		<h1 id="pageTitle">Logs</h1>

<?php

		require_once("functions.php");
		$conn = connectToMySQL();

		//grabbing all logs from the database in order by date time
		$query = "SELECT * FROM tbl_logs ORDER BY dateTime DESC";
		$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

		while($row = mysqli_fetch_assoc($result))
		{
			echo "<article class='logs'>
					  $row[dateTime], $row[requestUri], $row[logComment]
				  </article>";
		}

		include("sidebar.php"); 
		include("footer.php");
	}
	else
	{
		header("Location:404.php");
	}
?>