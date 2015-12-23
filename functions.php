<?php
/**
 * Functions and definitions
 *
 */
 
$user_agent     =   $_SERVER['HTTP_USER_AGENT'];
 
//Returns connection to MySQL database
function connectToMySQL()
{
	$conn = mysqli_connect("localhost", "root", "", "gabrielgaucimaistre2ed6");
	if (mysqli_connect_errno())
	{
		echo "Error: Could not connect to database. Please try again later";
		exit;
	}
	return $conn;
}

//Validates client's email
function validate_email($email) 
{
	$valid = 0;
	if(!filter_var($email, FILTER_VALIDATE_EMAIL))
	{
		$valid = 0;
	}
	else
	{
		$valid = 1;
	}
	return $valid;
}

//Returns the client's browser
function getClientBrowser() 
{
    global $user_agent;

    //default browser
	$browser        =   "Unknown Browser";

    //saving browser lists
	$browser_array  =   array(
                            '/msie/i'       =>  'Internet Explorer',
                            '/firefox/i'    =>  'Firefox',
                            '/safari/i'     =>  'Safari',
                            '/chrome/i'     =>  'Chrome',
                            '/opera/i'      =>  'Opera',
                            '/netscape/i'   =>  'Netscape',
                            '/maxthon/i'    =>  'Maxthon',
                            '/konqueror/i'  =>  'Konqueror',
                            '/mobile/i'     =>  'Handheld Browser'
                        );

    foreach ($browser_array as $regex => $value) 
	{ 
        //if match is found
		if (preg_match($regex, $user_agent)) 
		{
            $browser    =   $value;
        }
    }

    return $browser;
}

//returns the clients operating system
function getClientOS() 
{ 
    global $user_agent;

    //default operating system
	$os_platform    =   "Unknown OS Platform";

    //saving operating system lists
	$os_array       =   array(
                            '/windows nt 6.3/i'     =>  'Windows 8.1',
                            '/windows nt 6.2/i'     =>  'Windows 8',
                            '/windows nt 6.1/i'     =>  'Windows 7',
                            '/windows nt 6.0/i'     =>  'Windows Vista',
                            '/windows nt 5.2/i'     =>  'Windows Server 2003/XP x64',
                            '/windows nt 5.1/i'     =>  'Windows XP',
                            '/windows xp/i'         =>  'Windows XP',
                            '/windows nt 5.0/i'     =>  'Windows 2000',
                            '/windows me/i'         =>  'Windows ME',
                            '/win98/i'              =>  'Windows 98',
                            '/win95/i'              =>  'Windows 95',
                            '/win16/i'              =>  'Windows 3.11',
                            '/macintosh|mac os x/i' =>  'Mac OS X',
                            '/mac_powerpc/i'        =>  'Mac OS 9',
                            '/linux/i'              =>  'Linux',
                            '/ubuntu/i'             =>  'Ubuntu',
                            '/iphone/i'             =>  'iPhone',
                            '/ipod/i'               =>  'iPod',
                            '/ipad/i'               =>  'iPad',
                            '/android/i'            =>  'Android',
                            '/blackberry/i'         =>  'BlackBerry',
                            '/webos/i'              =>  'Mobile'
                        );

    foreach ($os_array as $regex => $value) 
	{ 
		//if match is found
        if (preg_match($regex, $user_agent)) 
		{
            $os_platform    =   $value;
        }
    }   

    return $os_platform;
}

//Saves log to database when requested by a script
function write_mysql_log($message, $conn)
{
	// Check database connection
	if( ($conn instanceof MySQLi) == false) 
	{
		return array('status' => false, message => 'MySQL connection is invalid');
	}

	// Check message
	if($message == '') 
	{
		return array('status' => false, message => 'Message is empty');
	}

	// Get IP address
	if( ($remote_addr = $_SERVER['REMOTE_ADDR']) == '') 
	{
		$remote_addr = "REMOTE_ADDR_UNKNOWN";
	}

	// Get requested script
	if( ($request_uri = $_SERVER['REQUEST_URI']) == '') 
	{
		$request_uri = "REQUEST_URI_UNKNOWN";
	}

	// Escape values
	$message     = $conn->escape_string($message);
	$remote_addr = $conn->escape_string($remote_addr);
	$request_uri = $conn->escape_string($request_uri);

	// Construct query
	$query = "INSERT INTO tbl_logs (remoteAddress, requestUri, logComment) VALUES('$remote_addr', '$request_uri','$message')";

	// Execute query and save data
	$result = mysqli_query($conn, $query)or die("Error in query: ". mysqli_error($conn));
}