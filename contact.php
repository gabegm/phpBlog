<?php
	/**
	 * The contact template file
	 *
	 */
	 
	include("header.php");
	require_once("functions.php");
?>

<h1 id="pageTitle">Contact</h1>

<!-- Contact form -->
<article>
	<form action="contact-comments-post.php" method="post" enctype="multipart/form-data">
		<label for="name">Name: </label> <br />
		<input type="text" id="name" name="name"> <br />
		<label for="comment">Comment: </label> <br />
		<textarea name="comment" id="comment" rows="10" cols="80"></textarea>
		<script>
			CKEDITOR.replace( 'comment' );
		</script>
		<input type="submit" name="submit" value="Post">
	</form>
</article>

<?php
	include("sidebar.php"); 
	include("footer.php");
?>