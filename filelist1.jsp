<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
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
<h2><font size="6">Retrieval of Encrypted Cloud Data<br /> Using Multikeyword</font></h2></pre>
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









<form>
<table width="500"  align="center" bgcolor="#006600">
<tr>
<td><font size="+1" color="#FFFFFF">Fileid</font></td>
<td><font size="+1" color="#FFFFFF">Filename</font></td>
<td><font size="+1" color="#FFFFFF">Likecommends</font></td>
<td><font size="+1" color="#FFFFFF">Unlikecommends</font></td>

</tr>
<%

ArrayList list1 = new ArrayList();
Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;

String fid=null;
String a=null;
String b=null;
String c=null;

try
{
        con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select fileid,AES_DECRYPT(filename,'key'),likecommends,unlikecommends from fileup";
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		
		 while(rs1.next())
		
		
/*Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/searchendata","root","admin");
PreparedStatement ps=con.prepareStatement("select fileid,AES_DECRYPT(filename,'key'),likecommends,unlikecommends from fileup");
ResultSet rs=ps.executeQuery();
while (rs.next())*/
{
fid=rs1.getString(1);
a=rs1.getString(2);
b=rs1.getString(3);
c=rs1.getString(4);




%>

<tr bgcolor="#00CC66">
<td><font color="#FFFFFF"><%=fid%></font></td>
<td><font color="#FFFFFF"><%=a%></font></td>
<td><font color="#FFFFFF"><%=b%></font></td>
<td><font color="#FFFFFF"><%=c%></font></td>
</tr>
<%
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
























</table>

</form>

</div>
</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1">FileList</h2>
<font size="+1">
<ul >
 <li><a href="ownerlist.jsp">OwnerList</a></li>
  <li><a href="serverlist.jsp">ServerList</a></li>
  <li><a href="userlist.jsp">UserList</a></li>
  <li><a href="filelist1.jsp">File List</a></li>
  
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
