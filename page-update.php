<?php
/**
 * The contact template file
 *
 */
	include("header.php");
	require_once("functions.php");
	$conn = connectToMySQL();
	 
		if(isset($_SESSION['admin']))
		{	
			if (isset($_GET['artId']))
			{
				$artId = $_GET['artId'];
			}
?>

			<h1 id="pageTitle">Update Post</h1>

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
					//if image returns an error
					else if ($_FILES["file"]["error"] > 0)
					{
						echo "Error: " . $_FILES["file"]["error"];
					}
					else
					{	
						//write image details to log
						write_mysql_log("Upload: " . $_FILES["file"]["name"], $conn);	
						write_mysql_log("Type: " . $_FILES["file"]["type"], $conn);	
						write_mysql_log("Size: " . ($_FILES["file"]["size"] / 1024), $conn);	
						write_mysql_log("Stored in: " . $_FILES["file"]["tmp_name"], $conn);	
						
						//move image from temp location to images folder
						$final_save_dir = 'images/';
						move_uploaded_file($_FILES['file']['tmp_name'], $final_save_dir. $_FILES['file']['name']);
						$image = $final_save_dir . $_FILES['file']['name'];

						$query2="UPDATE tbl_articles SET title='$title', content='$content', imgPath='$image'  
								 WHERE articleId='$artId'";
						$result2 = mysqli_query($conn, $query2) or die(mysqli_error($conn));
						
						header("Location:page.php");
					}
				}
				else
				{
					//getting article Id which was passed from in page.php in link and can be seen in URL 
					
					$query = "SELECT * FROM tbl_articles WHERE articleId = '$artId'";
					$result = mysqli_query($conn, $query)or die("Error in query: ". mysqli_error($conn));
					$row = mysqli_fetch_assoc($result);
		?>
					<article>
						<form action="page-update.php?artId=<?php echo $artId; ?>" method="post" enctype="multipart/form-data">
							<label for="title">Title: </label> <br />
							<input type="text" id="title" name="title" value="<?php echo $row['title'] ?>"> <br />
							<label for="content">Content: </label> <br />
							<textarea name="content" id="content" rows="10" cols="80"><?php echo $row['content'] ?></textarea>
							<!-- replacing default textarea with ckeditor -->
							<script>
								CKEDITOR.replace( 'content' );
							</script>
							<label for="file">Filename:</label><br />
							<input type="file" name="file" id="file" value="<?php echo $row['imgPath'] ?>"><br />
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