<?php
/**
 * The login template file
 *
 */

	session_start();
	require_once("functions.php");

	if(isset($_POST['submit']))
	{	
		//Variables from the form 
		$name = $_POST['name'];
		$comment = $_POST['comment'];
		
		//Check to see if the user left any space empty! 
		if($comment == "" || $name == "")
		{
			echo "Please fill all the fields!";
		}
		else
		{	
			//saving xml file directory
			$xml_file = "xml/file.xml";
			$date = date('m/d/Y h:i:s a', time());
			
			//Writing elements to xml file
			$xml_file = fopen($xml_file, "a");
			
			/*if(!file_exists($xml_file))
			{
				fwrite( $xml_file, "<?xml version='1.0' encoding='ISO-8859-1' ?>".PHP_EOL);
			}*/
			
			fwrite( $xml_file, "<entry>".PHP_EOL);
			fwrite( $xml_file, "<date>");
			fwrite( $xml_file, $date);
			fwrite( $xml_file, "</date>".PHP_EOL);
			fwrite( $xml_file, "<name>");
			fwrite( $xml_file, $name);
			fwrite( $xml_file, "</name>".PHP_EOL);
			fwrite( $xml_file, "<comment>");
			fwrite( $xml_file, $comment);
			fwrite( $xml_file, "</comment>".PHP_EOL);
			fwrite( $xml_file, "</entry>".PHP_EOL);
			
			fclose( $xml_file );
			
			header("Location:contact.php");
		}
	}
?>