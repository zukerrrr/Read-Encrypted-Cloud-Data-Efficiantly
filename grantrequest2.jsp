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
</head>
<body>
<div class="page-out">
<div class="page-in">
<div class="page">
<div class="main">
<div class="header">
<div >
<h1> <span></span></h1>
</div>
<div class="header-bottom">
<h2>Retrieval of Encrypted Cloud Data<br />
Using Multikeyword</h2>
</div>
<div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a
 href="index.html"><span>Home</span></a></li>
  <li><a href="login.jsp"><span>Logout&nbsp;</span></a></li>
  <li><a href="serverpage.jsp"><span>Back&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<div class="content">

<h1 align="center"> The Password List</h1>

<table align="center" bgcolor="#999966">
<th>Userid&nbsp;&nbsp;&nbsp;</th>
<th>Username&nbsp;&nbsp;&nbsp;</th>
<th>Password&nbsp;&nbsp;&nbsp;</th>
<th>status&nbsp;&nbsp;&nbsp;</th>
<th>Grant service&nbsp;&nbsp;&nbsp;</th>
<%
Connection cn1=null,cn2=null;
Statement st=null;
ResultSet rs3=null;

int n;
String un1=null,un2=null,un3=null;

try{
cn2=databasecon.getconnection();
st=cn2.createStatement();
rs3=st.executeQuery("select * from cloudserverb ");

while(rs3.next())
{
n=rs3.getInt("userid");
un1=rs3.getString("username");
un2=rs3.getString("status");
un3=rs3.getString("userpwd");

%>

<tr>
<td><input type="text" name="id1" value="<%=n%>" disabled>&nbsp;&nbsp;&nbsp;</td>
<td><input type="text" name="uname1" value="<%=un1%>" disabled>&nbsp;&nbsp;&nbsp;</td>
<td><input type="text" name="status" value="<%=un3%>"disabled>&nbsp;&nbsp;&nbsp;</td>
<td><input type="text" name="pwd" value="<%=un2%>"disabled>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;<a href="grantservice2.jsp?<%=n%>">Grant</a></td>
</tr>

<%
}
}
catch(Exception ee)
{
out.print(ee);
}



%>


</table>




<div class="content-right">
<div class="mainmenu">


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
</body>
</html>
