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
  
  if(document.f1.server.selectedIndex==0)
	{
	alert("Select Any Server");

	document.f1.server.focus();

	return false;
	}
	}
	</script>
</head>
<body>
<form action="check1.jsp" method="post" name="f1" onsubmit="return valid1()">
<%
String sname=request.getParameter("server");
System.out.println("server name : "+ sname);
session.setAttribute("sname1",sname);
%>
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

<table>
<td>
<td><img src="images/aut.jpg" width="200" height="170"></td>



<td>
<table align="center">
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><table><tr><td><font color="#009900" size="+1">UserName</font>&nbsp;&nbsp;&nbsp;&nbsp;:</td><td><input type="text" name="unme" placeholder="Enter a User Name"></td></tr><tr><td><font color="#009900" size="+1">Password</font>&nbsp;&nbsp;&nbsp;&nbsp;:</td><td><input type="password" name="pwd" placeholder="EnterService Req pwd"></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="submit" name="submit" value="SUBMIT"></td></tr></table></td>
</tr>
</table>
</td>
</td>
</table>

</div>
<!--<div class="row2">




</div>-->
</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1">FileUpload</h2>
<font size="+1">
<ul >
  <li><a href="filelist.jsp">File List</a></li>
  <li><a href="fileupload.jsp">File upload</a></li>
  <li><a href="servicerequest.jsp">Service Request</a></li>
  <li><a href="requestpwdlist.jsp">Request Password List</a></li>
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
