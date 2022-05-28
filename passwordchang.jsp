<%@ page  import="java.sql.*,databaseconnection.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Your Company</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta http-equiv="Content-Type"
 content="text/html; charset=iso-8859-1">
  <link href="css/style.css" rel="stylesheet" type="text/css">
  <style type="text/css">
.s1
{
border:0px solid red;
background-color:white;
padding:5px;
color:#458B00;
font-weight:Bold;
align:right;
}
</style>

<script type="text/javascript">
function valid5()
{
var b=document.p1.newpwd.value;
	if(b=="")
	{
	alert ("enter a new password");
	document.p1.newpwd.focus();
	return false;
	}
	var c=document.p1.conpwd.value;
	if(c=="")
	{
	alert ("enter a confirm password");
	document.p1.conpwd.focus();
	return false;
	}
	if(b!=c)
	{
	alert ("enter a correct confirm password");
	document.p1.conpwd.select();
	return false;
	}
	}
	
</script>


</head>
<body>
<form name="p1" action="passwordchange1.jsp" method="post" onsubmit="return valid5()">
<div class="page-out">
<div class="page-in">
<div class="page">
<div class="main">
<div class="header">
<div >
<h1> <span></span></h1>
</div>
<div class="header-bottom">
<pre>
<h2><font size="6">Retrieval of Encrypted Cloud Data<br /> Using Multikeyword</font><br/></h2></pre>
</div>
<div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a
 href="index.html"><span>Home</span></a></li>
  <li><a href="index.html"><span>Logout&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">

<h2 align="center">Password Change</h2>
	<table><td>
		<table class="s1" height="120" >
  
  <tr ><td class="s1" align="right">New password&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="password" name="newpwd" size="20"  ></td></tr>
  

  <tr ><td class="s1" align="right">Confirm Password &nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="password" name="conpwd" size="20"  ></td></tr>
	
   
	
	<tr ><td class="s1" align="right"></td>
    <td class="s1"><input type="submit" name="submit" value="Update" >&nbsp;<input type="reset" name="reset"></td></tr>
	
		
	</table>
	</td>
	<td><img src="images/c.jpg" width="220"></td>
	</table>

	
	
</div>
<!--<div class="row2">

</div>-->
</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1">PasswordChange</h2>
<font size="+1">
<ul >
  <li><a href="viewaccount1.jsp">View Account</a></li>
  <li><a href="editaccound.jsp">Edit Account</a></li>
  <li><a href="passwordchang.jsp">Change Password</a></li>
  <li><a href="grantrequest.jsp">Grant Service</a></li>
  
</ul>
</font>
</div>
</div>
</div>
<div class="footer">

</div>
</div>
</div>
</div>
</div>
</form>
</body>
</html>
