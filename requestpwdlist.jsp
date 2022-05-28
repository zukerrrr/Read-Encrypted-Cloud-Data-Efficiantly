<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*,java.io.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
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
  
</ul>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">




<%
int id=(Integer)session.getAttribute("idx");


//utypex=(String)session.getAttribute("sname1");
//ArrayList list1 = new ArrayList();
Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;

//String fid=null;
String a=null;
String b=null;
String c=null;

try
{
        con1=databasecon.getconnection();
	    st1=con1.createStatement();
		rs1=st1.executeQuery("select cloudservera.userpwd,cloudserverb.userpwd,cloudserverc.userpwd from cloudservera,cloudserverb,cloudserverc where cloudservera.userid='"+id+"' and cloudserverb.userid='"+id+"' and cloudserverc.userid='"+id+"'");
while(rs1.next())
{

a=rs1.getString(1);
b=rs1.getString(2);
c=rs1.getString(3);

}
//out.print(b);
//out.print(a);
//out.print(c);
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
<table width="500"  align="center" bgcolor="#006600">
<tr>
<td colspan="2" align="center"><font size="+1" color="#FFFFFF">PasswordList</font></td>
</tr>
<tr>
<td align="center"><font size="+1" color="#FFFFFF">Servername</font></td>
<td align="center"><font size="+1" color="#FFFFFF">Password</font></td>
</tr>
<tr bgcolor="#00CC66">
<td><font size="+1" color="#FFFFFF">ServerA</font></td>
<td><font size="+1" color="#FFFFFF"><%=a%></font></td>
</tr>
<tr bgcolor="#00CC66">
<td><font size="+1" color="#FFFFFF">ServerB</font></td>
<td><font size="+1" color="#FFFFFF"><%=b%></font></td>
</tr>
<tr bgcolor="#00CC66">
<td><font size="+1" color="#FFFFFF">ServerC</font></td>
<td><font size="+1" color="#FFFFFF"><%=c%></font></td>
</tr>




</table>
</td>
</table>
</div>
</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1">RequestPasswordList</h2>
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
</body>
</html>
