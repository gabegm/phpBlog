<?php
/**
 * The posts template file
 *
 */
 
	include("header.php");
	require_once("functions.php");
	$conn = connectToMySQL();
	
	//getting article Id which was passed from in index.php in link and can be seen in URL 
	if (isset($_GET['artId']))
	{
		$artId = $_GET['artId'];
		$_SESSION['articleId']=$artId; 
	}
	
	$query = "SELECT * FROM tbl_articles WHERE articleId = ".$_SESSION['articleId'];
	$result = mysqli_query($conn, $query)or die("Error in query: ". mysqli_error($conn));

	while ($row = mysqli_fetch_assoc($result))
	{
		echo "<h1>$row[title]</h1>
			  <article>
				  $row[dateTime]<br />
				  Posted by: Admin<br />
				  <img src='$row[imgPath]' alt='article image' class='articleImg'><br />
			      $row[content]
			  </article><br/>";
	}
	
	//Show comments related to article
	$query2 = "SELECT * FROM tbl_comments WHERE articleId = ".$_SESSION['articleId'];
	$result2 = mysqli_query($conn, $query2)or die("Error in query: ". mysqli_error($conn));
	
	while ($row = mysqli_fetch_assoc($result2))
	{
		$query3 = "SELECT * FROM tbl_users WHERE userId = '$row[userId]'";
		$result3 = mysqli_query($conn, $query3)or die("Error in query: ". mysqli_error($conn));
		$row2 = mysqli_fetch_assoc($result3);
		
		echo "<article id='comments'>
			      $row2[username] says<br/>
			      $row[comment]<br/>
			  </article>";
	}
	
	if((isset($_SESSION['admin'])) || (isset($_SESSION['registered'])))
	{
		//show form where user can input comment
?>
		<article>
			<form action="article-comment.php?artId=<?php echo $articleId; ?>" method="post" onsubmit="return validateLogin(this);>
				<label for="comment">Comment: </label> <br />
				<textarea name="comment" id="comment" rows="10" cols="80"></textarea>
					<script>
						CKEDITOR.replace( 'comment' );
					</script>
				<input type="submit" name="submit" value="Post">
			</form>
		<article>
<?php
	}

	include("sidebar.php"); 
	include("footer.php");
?>