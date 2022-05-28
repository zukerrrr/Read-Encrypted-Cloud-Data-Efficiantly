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
<pre>
<h2><font size="6">Retrieval of Encrypted Cloud Data<br /> Using Multikeyword</font><br/></h2></pre>
</div>
<div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a
 href="index.html"><span>Home</span></a></li>
  <li><a href="index.html"><span>Logout&nbsp;</span></a></li>
  <li><a href="serverpage.jsp"><span>Back&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">



<table align="center" height="179" width="550">
<tr bgcolor="#006633">
<td height="46" align="center"><font color="#FFFFFF" size="+1">Userid</font></td>
<td align="center"><font color="#FFFFFF" size="+1">Username</font></td>
<td align="center"><font color="#FFFFFF" size="+1">Password</font></td>
<td align="center"><font color="#FFFFFF" size="+1">status</font></td>
<td align="center"><font color="#FFFFFF" size="+1">Grant service</font></td>


<%
Connection cn1=null,cn2=null;
Statement st=null;
ResultSet rs3=null;

int n;
String un1=null,un2=null,un3=null;

try{
cn2=databasecon.getconnection();
st=cn2.createStatement();
rs3=st.executeQuery("select * from cloudservera ");

while(rs3.next())
{
n=rs3.getInt("userid");
un1=rs3.getString("username");
un2=rs3.getString("status");
un3=rs3.getString("userpwd");

%>
<tr bgcolor="#006633">
<td bgcolor="#009933" align="center"><font color="#FFFFFF"><%=n%></font></td>
<td bgcolor="#009933" align="center"><font color="#FFFFFF"><%=un1%></font></td>
<td bgcolor="#009933" align="center"><font color="#FFFFFF"><%=un3%></font></td>
<td bgcolor="#009933" align="center"><font color="#FFFFFF"><%=un2%></font></td>
<td bgcolor="#009933" align="center"><font color="#FFFFFF"><a href="grantservice1.jsp?<%=n%>">Grant</font></td>
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




</div>
<!--<div class="row2">

</div>-->
</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1">ServiceGrand</h2>
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
</body>
</html>
