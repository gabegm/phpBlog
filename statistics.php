<?php
/**
 * The statistics template file
 *
 */
 
	include("header.php");

	if(isset($_SESSION['admin']))
	{
?>

		<h1 id="pageTitle">Statistics</h1>

<?php

		require_once("functions.php");
		$conn = connectToMySQL();

		//select number of rows found and return as count
		$query = "SELECT COUNT(*) AS COUNT FROM tbl_logs WHERE logComment LIKE '%successfully logged in%'";
		$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
		$row = mysqli_fetch_row($result);
		$count = $row[0];

		$query2 = "SELECT COUNT(*) AS COUNT FROM tbl_logs WHERE logComment LIKE '%login failed%'";
		$result2 = mysqli_query($conn, $query2) or die(mysqli_error($conn));
		$row2 = mysqli_fetch_row($result2);
		$count2 = $row2[0];

		$query3 = "SELECT COUNT(*) AS COUNT FROM tbl_logs WHERE logComment LIKE '%registration successful%'";
		$result3 = mysqli_query($conn, $query3) or die(mysqli_error($conn));
		$row3 = mysqli_fetch_row($result3);
		$count3 = $row3[0];

		$query4 = "SELECT COUNT(*) AS COUNT FROM tbl_logs WHERE logComment LIKE '%registration unsuccessful%'";
		$result4 = mysqli_query($conn, $query4) or die(mysqli_error($conn));
		$row4 = mysqli_fetch_row($result4);
		$count4 = $row4[0];

?>
		<article>
<?php
			echo "Successful Logins: ".$count."<br />";
			echo "Unsuccessful Logins: ".$count2."<br />";
			echo "Successful Registrations: ".$count3."<br />";
			echo "Unsuccessful Registrations: ".$count4."<br />";
?>
		</article>

<?php
		include("sidebar.php"); 
		include("footer.php");
	}
	else
	{
		header("Location:404.php");
	}
?>