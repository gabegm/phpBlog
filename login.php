<?php
/**
 * The login template file
 *
 */

	session_start();
	require_once("functions.php");
	$conn = connectToMySQL();
	$date = date('m/d/Y h:i:s a', time());
		
	if(isset($_POST['submit']))
	{	
		//Variables from the table 
		$username = $_POST['username'];
		$password = $_POST['password'];
		
		//Prevent MySQL Injections
		$username = stripslashes($username);
		$password = stripslashes($password);
		
		$username = mysqli_real_escape_string($conn, $username);
		$password = mysqli_real_escape_string($conn, $password);
		
		//Check to see if the user left any space empty! 
		if($username == "" || $password == "")
		{
			$emptyFields="Please fill all the fields!";
			$_SESSION['emptyFields']=$emptyFields;
			header("Location:index.php");
		}
		//Check to see if the username AND password MATCHES the username AND password in the DB 
		else
		{
			$query = "SELECT count(*) FROM tbl_users 
					  WHERE username='$username'
					  AND password = sha1('$password')";
			 
			$result = mysqli_query($conn, $query)or die("Error in query: ". mysqli_error($conn));
			$row = mysqli_fetch_row($result);
			$count = $row[0];
			 
			//YES WE FOUND A MATCH! 
			if($count>0)
			{
				$query2 = "SELECT role, userId FROM tbl_users
						  WHERE username = '$username'";
				$result = mysqli_query($conn, $query2)or die("Error in query: ". mysqli_error($conn));
				$row2 = mysqli_fetch_row($result);
				$role = $row2[0];
				$userId = $row2[1];
				
				header("Location:index.php");	
			 
				if($role=='admin')
				{
					$_SESSION['admin'] = true; //Create a session for the admin
					$_SESSION['username']=$username;
					$_SESSION['userId']=$userId;
					$_SESSION['dateTime']=$date;  
					write_mysql_log($_SESSION['username']." successfully logged in!", $conn); //write log
				}
				else
				{
					$_SESSION['registered'] = true; //Create a session for the user
					$_SESSION['username']=$username;
					$_SESSION['userId']=$userId;
					$_SESSION['dateTime']=$date;  
					write_mysql_log($_SESSION['username']." successfully logged in!", $conn);
				}	
			}
			else
			{
				$loginFailed="Incorrect username and/or password";
				$_SESSION['loginFailed']=$loginFailed; 
				write_mysql_log("Login failed!", $conn);
			}
		}
	}