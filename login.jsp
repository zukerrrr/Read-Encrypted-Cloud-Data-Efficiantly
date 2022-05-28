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
function valid1()
{
var a = document.f1.username.value;
if(a=="")
{
alert ("Enter a User Name");
document.f1.username.focus();
return false;
}
var b= document.f1.Password.value;
if(b=="")
{
alert ("Enter a Password");
document.f1.Password.focus();
return false;
}

}

</script>
  
</head>
<body>

<form name="f1" action="check.jsp" method="post" onsubmit="return valid1()">
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





<table>
			<tr align="char"><tr align="justify"></tr><tr></tr><tr></tr>
			
			
			
			
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
			<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
			
			
			<td>
				<td width="440" height="111">
				<img src="images/lo.jpeg" width="300" height="270">
				</td></td>
				</tr>
				</table>


</div>










</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1">Login</h2>
<table class="s1" height="120"  >

  <tr ><td class="s1" align="right">User Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="username" ></td></tr>
	
	<tr ><td class="s1" align="right">Pass word&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="password" name="Password" ></td></tr>
	
	<tr><td class="s1" align="right">UserType&nbsp;&nbsp;&nbsp;:</td>
        
        <td class="s1"><select name="utype"><option value="select">--Select--</option><option value="owner">Owner</option><option value="server">server</option><option value="user">User</option></select></td></tr>
		
	
	
	<tr ><td class="s1" align="right"></td>
    <td class="s1"><input  type="submit" name="login" value="Login" ></td></tr>
	
	<tr ><td class="s1" align="right">Not Yet a Member</td>
    <td class="s1"><a href="regstration.jsp">New User</a></td></tr>
	
	 
  </table>
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
