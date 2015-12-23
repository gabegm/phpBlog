<?php
/**
 * The Sidebar containing the main widget area
 *
 */
?>

</div> <!-- Container -->
<aside id="sidebar" role="complementary">
	<div id="primary-sidebar" class="widget-area">
		<?php
			if((isset($_SESSION['admin'])) || (isset($_SESSION['registered'])))
			{
				echo "Welcome ".$_SESSION['username']."<br />";
				echo "Session: ".$_SESSION['dateTime']."<br />";
				echo "Client Browser: ".getClientBrowser()."<br />";
				echo "Client Operating System: ".getClientOS()."<br />";
				echo "Client Resolution:<script type='text/javascript'>getClientResolution()</script><br />";
			}
			else
			{
		?>				
				<p>Welcome Guest!</p>
				<form action="login.php" method="post" onsubmit="return validateLogin(this);>
					<label for="username">Username: </label> <br />
					<input type="text" id="username" name="username"> <br />
					<label for="password">Password: </label> <br />
					<input type="password" id="password" name="password"> <br />
					<input type="submit" name="submit" value="Login">
				</form>
				<a href="register.php">Create an account</a><br />
				<?php
					//if login failed
					if(isset($_SESSION['loginFailed']))
					{
						echo $_SESSION['loginFailed'];
					}
					//if fields are empty
					if(isset($_SESSION['emptyFields']))
					{
						echo $_SESSION['emptyFields'];
					}
			} 
				?>
	</div>
</aside>
<nav id="bottom-menu" role="navigation"> <!-- Bottom menu -->
	<a href="index.php">Home</a>
	<a href="about.php">About</a>
	<a href="contact.php">contact</a>
	<?php 
	if(isset($_SESSION['admin'])){
	?>
		<a href="admin.php">Admin</a>
		<a href="logout.php">Logout</a>
	<?php	
	}
	if(isset($_SESSION['registered'])){
	?>
		<a href="logout.php">Logout</a>
	<?php	
	}
	?>
</nav>