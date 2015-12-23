<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme and one
 * of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query,
 * e.g., it puts together the home page when no home.php file exists.
 *
 */
 
include("header.php");
?>

<h1 id="pageTitle">Register Page </h1>

<?php
	if(isset($_POST['submit']))
	{
		require_once("functions.php");
		$conn = connectToMySQL();
	
		//Variables from the table
		$username = $_POST['username'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$confirmPassword = $_POST['confirmPassword'];
		
		//Prevent MySQL Injections
		$username = stripslashes($username);
		$password = stripslashes($password);
		
		$username = mysqli_real_escape_string($conn, $username);
		$password = mysqli_real_escape_string($conn, $password);
		
		//Check to see if the user left any space empty! 
		if($username == "" || $email == "" ||$password == "" || $confirmPassword == "")
		{
			echo "Please fill all the fields!";
		}
		//Check to see if passwords match
		else if ($password != $confirmPassword)
		{
			echo "Password do not match!";
		}
		//Check to see if password is less than 8 characters long
		else if(strlen($password) < 8)
		{
			echo "Password must be at least 8 characters long!";
		}
		//Check to see if email is valid
		else if(!validate_email($email))
		{
			echo "You have entered an invalid email!";
		}
		else
		{
			//check to see if username exists
			$query = "SELECT count(*) FROM tbl_users 
					  WHERE username='$username'";
			 
			$result = mysqli_query($conn, $query)or die("Error in query: ". mysqli_error($conn));
			$row = mysqli_fetch_row($result);
			$count = $row[0];
			
			//if the username exists
			if($count>0)
			{
				$failedRegistration="Incorrect username and/or password";
				$_SESSION['failedRegistration']=$failedRegistration;
				write_mysql_log("Registration unsuccessful!", $conn);			
			}
			//if the username is available
			else
			{
				$query2 = "INSERT INTO tbl_users (username, email, password, role)
						   VALUES ('$username', '$email', sha1('$password'), 'registered')";
				$result2 = mysqli_query($conn, $query2)or die("Error in query: ". mysqli_error($conn));
				write_mysql_log("Registration successful!", $conn);
				header("Location:index.php");
			}	
		}
	}
	else
	{
?>
		<article id="register">
			<form action="register.php" method="post" onsubmit="return validate(this);">
				<label for="email">Email: </label> <br />
				<input type="text" id="email" name="email"> <br />
				<label for="username">Username: </label> <br />
				<input type="text" id="registerUsername" name="username"> <br />
				<label for="password">Password: </label> <br />
				<input type="password" id="registerPassword" name="password">
				<span id="result"></span><br />
				<label for="confirmPassword">Confirm Password: </label> <br />
				<input type="password" id="confirmPassword" name="confirmPassword"> <br />
				<input type="submit" name="submit" value="Register">
			</form>
		</article>
<?php	
	}
	
	include("sidebar.php"); 
	include("footer.php");
?>