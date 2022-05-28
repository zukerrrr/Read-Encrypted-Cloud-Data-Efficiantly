<%@ page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
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
  #box
{
background-color:green;
}
</style>  
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
 href="search2.jsp"><span>Back&nbsp;</span></a></li>
  
 
</ul>
</div>
</div>



<%
//String a=request.getQueryString();
//out.print(a);

String a1=request.getQueryString();


String fid=null,fname=null,describ1=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/searchendata","root","admin");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/searchendata","root","");

PreparedStatement ps=con.prepareStatement("select fileid,AES_DECRYPT(filename,'key'),describ from fileup where fileid='"+a1+"'");
ResultSet rs=ps.executeQuery();	
while(rs.next())
 {
 fid=rs.getString(1);
 fname=rs.getString(2);
 describ1=rs.getString(3);
//out.print(fid);
//out.print(fname);
//out.print(describ1);

%>
<table align="center" background="images/g.jpg" height="300" width="1000">
  <tr style="font-family:verdana;font-size:12px;">      
   <td colspan="2" align="center"><font color="#FFFFFF" size="+2">This is a abstract of <%=fname%></font></td>
   </tr>
	<tr>
	
	
	</tr>
	
<tr><td></td>

<td align="center"><textarea rows="5" cols="75"><%=describ1%></textarea></td>
 <td></td>
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

<!--<div class="row2">
</div>-->
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






