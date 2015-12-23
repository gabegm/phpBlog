<?php
/**
 * The template for displaying 404 pages (Not Found)
 *
 */

include("header.php");
require_once("functions.php");
?>

<h1 id="pageTitle">Error 404</h1>
<article>
	The page you have loaded for does not exist.
</article>

<?php
	include("sidebar.php"); 
	include("footer.php");
?>