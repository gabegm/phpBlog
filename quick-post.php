<?php
/**
 * The contact template file
 *
 */
	require_once("functions.php");
	include("header.php");
	 
		if(isset($_SESSION['admin']))
		{	
?>

			<h1 id="pageTitle">Quick Post</h1>

			<?php
				if(isset($_POST['submit']))
					{	
						//Variables from the form 
						$title = $_POST['title'];
						$content = $_POST['content'];
						$file = $_FILES['file']['name'];

						//Check to see if the user left any space empty! 
						if($title == "" || $content == "")
						{
							echo "Please fill all the fields!";
						}
						else if ($_FILES["file"]["error"] > 0)
						{
							echo "Error: " . $_FILES["file"]["error"];
						}
						else
						{
							$conn = connectToMySQL();
							
							write_mysql_log("Upload: " . $_FILES["file"]["name"], $conn);	
							write_mysql_log("Type: " . $_FILES["file"]["type"], $conn);	
							write_mysql_log("Size: " . ($_FILES["file"]["size"] / 1024), $conn);	
							write_mysql_log("Stored in: " . $_FILES["file"]["tmp_name"], $conn);	
							
							$final_save_dir = 'images/';
							move_uploaded_file($_FILES['file']['tmp_name'], $final_save_dir. $_FILES['file']['name']);
							$image = $final_save_dir . $_FILES['file']['name'];

							$query="INSERT INTO tbl_articles(title, content, imgPath) 
									VALUES('$title', '$content', '$image')";
							$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
							
							header("Location:page.php");
						}
					}
					else
					{
			?>
					<article>
						<form action="quick-post.php" method="post" enctype="multipart/form-data">
							<label for="title">Title: </label> <br />
							<input type="text" id="title" name="title" size="50"> <br />
							<label for="content">Content: </label> <br />
							<textarea name="content" id="content" rows="10" cols="80"></textarea>
							<script>
								CKEDITOR.replace( 'content' );
							</script>
							<label for="file">Filename:</label><br />
							<input type="file" name="file" id="file"><br />
							<input type="submit" name="submit" value="Submit">
						</form>
					</article>
			<?php
					}
					
			include("sidebar.php"); 
			include("footer.php");
		}
		else
		{
			header("Location:404.php");
		}
?>