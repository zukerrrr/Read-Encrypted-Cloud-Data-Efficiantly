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
  
  <script type="text/javascript">
function valid1()
{
var a=document.f1.search1.value;
if(a=="")
{
alert("plz enter your search Keywords");
document.f1.search1.focus();
return false;
}
}
</script>  
</head>
<body>
<form action="search1.jsp" method="post" name="f1" onsubmit="return valid1()">
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
<br>
<br>
<br>
<br>
<br>
<table>
<td width="300" ></td><td bgcolor="#00CC66" ><img src="images/123.jpg" width="250" height="250"></td><td>
<table align="center" width="250" height="100">




<tr>


<td><input type="text" name="search1" ></td>


<td><input type="submit" name="submit" value="SEARCH"></td>
</tr>
</table>
</td>
</table>
</div>
<!--<div class="row2">




</div>-->
</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1">FileSearching</h2>
<font size="+1">
<ul >
  <li><a href="viewaccount.jsp">View Account</a></li>
  <li><a href="editaccount.jsp">Edit Account</a></li>
  <li><a href="passwordchange.jsp">Change Password</a></li>
  <li><a href="usersearch.jsp">File Searching</a></li>
  
  
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
