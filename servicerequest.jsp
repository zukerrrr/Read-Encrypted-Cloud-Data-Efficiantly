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
<form action="servicerequest1.jsp" method="post" name="f1" onsubmit="return valid1()">






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
<td>
<td><img src="images/r.png" width="180" height="150"></td>



<td>

<table align="center">
<tr>
<td>
<td><font color="#33CC33" size="+1">For which server do you <br/>   want send a request....?</font>&nbsp;&nbsp;&nbsp;&nbsp;:</td>

<td> <select name="server"><option value="0">--Select--</option>
<%
int uid=(Integer)session.getAttribute("idx");
Connection cn1=null;
Statement st=null;
ResultSet rs1=null;
String s1="server";
String sx=null;

try
{
cn1=databasecon.getconnection();
st=cn1.createStatement();
rs1=st.executeQuery ("select username from regstration where usertype='"+s1+"'");

while (rs1.next())
{
sx=rs1.getString("username");
%>


<option value="<%=sx%>"><%=sx%></option>
<%
}
}
catch(Exception e)
{
out.print(e);
}
%>
</select></td>
</td>

</tr>
<tr>
<td>&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td align=""><input type="submit" name="submit" value="SUBMIT"></td>
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
<h2 class="sidebar1">ServiceRequest</h2>
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
