<?php
	/**
	 * The main template file
	 *
	 */
	 
	include("header.php");
?>

	<h1 id="pageTitle">Home Page </h1>

<?php

	require_once("functions.php");
	$conn = connectToMySQL();
	$i=1;

	//grabbing the 3 latest articles
	$query = "SELECT * FROM tbl_articles ORDER BY dateTime DESC LIMIT 0,3";
	$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

	//saving values
	while($row = mysqli_fetch_assoc($result))
	{
		$articleId = $row['articleId'];
		$title = $row['title'];
		$dateTime = $row['dateTime'];
		$content = $row['content'];
		$imgPath = $row['imgPath'];
?>
		<h1><a href="single.php?artId=<?php echo $articleId ?>"><?php echo $title ?></a></h1>
<?php
		//displaying values
		echo "<article>
				 $dateTime<br />
				 Posted by: Admin<br />
				 <img src='$imgPath' alt='article image' class='articleImg'><br />
				 $content
			  </article>";
		
		//Show comments related to article
		$query2 = "SELECT * FROM tbl_comments WHERE articleId = '$articleId'";
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
			//increment $i so that we may have an infinite amount of rich textboxes as we cannot use the same name
			$i++;
			//show form where user can input comment
?>
			<form action="article-comment-main.php?artId=<?php echo $articleId; ?>" method="post" id="article-comment" onsubmit="return validateComment(this);>
				<label for="comment">Comment: </label> <br />
				<textarea name="comment" id="comment <?php echo $i; ?> " rows="10" cols="80"></textarea>
					<script>
						CKEDITOR.replace( 'comment <?php echo $i; ?> ' );
					</script>
				<input type="submit" name="submit" value="Post">
			</form>
<?php
		}
	}	

	include("sidebar.php"); 
	include("footer.php");
?>