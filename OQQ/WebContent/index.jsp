<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome To Register Form</title>
<link rel="icon" href="logo.png" type="image/x-icon">
<!-- Coding with Anawarul -->
<style type="text/css">
body {
	margin: 0px;
	background-color: #ffffff;
	color: #000000;
	font-family: Arial, Helvetica, sans-serif;
}

#main {
	width: 600px;
	height: 355px;
	margin-left: auto;
	margin-right: auto;
	border-radius: 5px;
	padding-left: 10px;
	margin-top: 45px;
	border-top: 3px double #020202;
	border-bottom: 3px double #1f1919;
	padding-top: 20px;
}

#main .h-tag {
	text-align: center;
}

#main table {
	font-family: "Comic Sans MS", cursive;
	font-weight: bold;
}
/* css code for textbox */
#main .tb {
	height: 28px;
	width: 230px;
	border: 1px solid #27a465;
	color: #27a465;
	font-weight: bold;
	opacity: 0.9;
}

#main .tb:hover {
	border-radius: 8px;
}

/* css code for button*/
#main .btn {
	width: 80px;
	height: 32px;
	outline: none;
	font-weight: bold;
	border: 0px solid #27a465;
	text-shadow: 0px 0.5px 0.5px #fff;
	border-radius: 2px;
	font-weight: 600;
	background-color: rgb(255, 228, 228);
	color: #27a465;
	letter-spacing: 1px;
	font-size: 14px;
	-webkit-transition: 1s;
	-moz-transition: 1s;
	transition: 1s;
}

#main .btn:hover {
	background-color: #27a465;
	outline: none;
	border-radius: 10px;
	color: #f1f1f1;
	border: 1px solid #f1f1f1;
}
</style>

<script>
    
    function register()
	{
        var mnumber = document.getElementById("number").value;
		var fname = document.getElementById("name").value;
        var uname = document.getElementById("email").value;
		var pwd = document.getElementById("pwd1").value;
		var filterA = /([(A-z)])/;
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if(mnumber =='')
		{
			alert("Please Enter Mobile Number.");
		}
        else if(!filterA.test(fname))
		{
        	alert("Please Enter Full Name.");
		}
        else if(!filter.test(uname))
		{
			alert("Please Enter Email I'd.");
		}
		else if(pwd=='')
		{
            alert("Please Enter The Password");
		}
        else if(mnumber.length < 10 || mnumber.length > 10)
		{
			alert("Mobile Number Length is 10.");
		}
        else if(fname.length < 5 || fname.length > 20)
		{
			alert("Full Name Min Length 5 And Max Length is 20.");
		}
        else if(!filter.test(uname))
		{
			alert("Enter Valid Email I'd.");
		}
		else if(pwd.length < 6 || pwd.length > 6)
		{
			alert("Password Min And Max Length is 6.");
		}
		else
		{
	alert('Thank You For Registration');
  //Redirecting to other page or webste code or you can set your own html page.
       window.location = "messages.jsp";
			}
	}
	//Reset Inputfield code.
	function clearFunc()
	{
        document.getElementById("number").value="";
		document.getElementById("name").value="";
        document.getElementById("email").value="";
		document.getElementById("pwd1").value="";
	}	
	

    
    </script>

</head>

<body>
	<!-- Main div code -->
	<div id="main">
		<div class="h-tag">
			<h2>Welcome To Registration Form</h2>
		</div>
		<div class="register">
		<form action='backend.jsp' method='post'>
			<table cellspacing="2" align="center" cellpadding="8" border="0">
				<tr>
					<td>Mobile Number :</td>
					<td><input type="text" placeholder="Enter Mobile Number here"
						id="number" class="tb" name="number" /></td>
				</tr>
				<tr>
					<td>Enter Full Name :</td>
					<td><input type="text" placeholder="Enter Full Name here"
						id="name" class="tb" name="name" /></td>
				</tr>
				<tr>
					<td>Enter Email I'd :</td>
					<td><input type="text" placeholder="Enter Email i'd here"
						id="email" class="tb" name="email" /></td>
				</tr>
				<tr>
					<td>Enter Password :</td>
					<td><input type="password" placeholder="Enter Password here"
						id="pwd1" class="tb" name="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Reset" onclick="clearFunc()"
						class="btn" /> <input type="submit" value="Register" class="btn"
						onClick="register()" /></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
	<!-- Main div ending here... -->


</body>
</html>

