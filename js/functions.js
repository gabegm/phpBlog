/**
 * Portfolio functions and definitions
 *
 */
 
 //gets the clients resolution
function getClientResolution()
{
	var width = window.screen.width;
	var height = window.screen.height;
	
	document.write(width, "x", height);
}

function validate(form) 
{
  //stores form elements in variable
  var e = form.elements;

  /* validation code. */

  if(e['password'].value != e['confirmPassword'].value) 
  {
    alert('Your passwords do not match. Please type more carefully.');
    return false;
  }
  else if(e['username'].value == '' || e['email'].value == '' || e['password'].value == '' || e['confirmPassword'].value == '') 
  {
    alert('Please fill in all the fields!');
    return false;
  }
  else if(e['password'].length < 8) 
  {
    alert('Password is too short!');
    return false;
  }
  else if(!validateEmail(e['email'].value)) 
  {
    alert('Email is invalid!');
    return false;
  }
  return true;
}

function validateLogin(form) 
{
  //stores form elements in variable
  var e = form.elements;

  /* validation code. */

  if(e['username'].value == '' || e['password'].value == '') 
  {
    alert('Please fill in all the fields!');
    return false;
  }
  return true;
}

function validateComment(form) 
{
  //stores form elements in variable
  var e = form.elements;

  /* validation code. */

  if(e['comment'].value == '') 
  {
    alert('Please fill in all the fields!');
    return false;
  }
  return true;
}

//validates the user's email
function validateEmail(email) 
{ 
    //regex to validate email
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
} 

/*
	jQuery document ready.
*/
$(document).ready(function()
{
	//article delete confirmation
	$('.confirmation').on('click', function () {
		return confirm('Are you sure?');
	});

	/*
		assigning keyup event to password field
		so everytime user type code will execute
	*/

	$('#password').keyup(function()
	{
		$('#result').html(checkStrength($('#password').val()))
	})	
	
	/*
		checkStrength is function which will do the 
		main password strength checking for us
	*/
	
	function checkStrength(password)
	{
		//initial strength
		var strength = 0
		
		//if the password length is less than 8, return message.
		if (password.length < 8) { 
			$('#result').removeClass()
			$('#result').addClass('short')
			return 'Too short' 
		}
		
		//length is ok, lets continue.
		
		//if length is 8 characters or more, increase strength value
		if (password.length > 7) strength += 1
		
		//if password contains both lower and uppercase characters, increase strength value
		if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))  strength += 1
		
		//if it has numbers and characters, increase strength value
		if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/))  strength += 1 
		
		//if it has one special character, increase strength value
		if (password.match(/([!,%,&,@,#,$,^,*,?,_,~])/))  strength += 1
		
		//if it has two special characters, increase strength value
		if (password.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1
		
		//now we have calculated strength value, we can return messages
		
		//if value is less than 2
		if (strength < 2 )
		{
			$('#result').removeClass()
			$('#result').addClass('weak')
			return 'Weak'			
		}
		else if (strength == 2 )
		{
			$('#result').removeClass()
			$('#result').addClass('good')
			return 'Good'		
		}
		else
		{
			$('#result').removeClass()
			$('#result').addClass('strong')
			return 'Strong'
		}
	}
});
