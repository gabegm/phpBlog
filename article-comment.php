<?php
/**
 * The article comments template file
 *
 */
 
	session_start();
	require_once("functions.php");
	$conn = connectToMySQL();
		
	if(isset($_POST['submit']))
	{	
		//Variables from the form 
		$comment = $_POST['comment'];
		
		//Check to see if the user left any space empty! 
		if($comment == "")
		{
			echo "Please fill all the fields!";
		}
		else
		{	
			//Inserting the comment into the database
			$query = "INSERT INTO tbl_comments (comment, articleId, userId)
					   VALUES ('$comment', '$_SESSION[articleId]', '$_SESSION[userId]')";
			$result = mysqli_query($conn, $query)or die("Error in query: ". mysqli_error($conn));
			write_mysql_log("User successfully posted a comment!", $conn);
			header("Location:single.php");
		}
	}