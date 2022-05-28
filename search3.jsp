<%@ page  import="java.sql.*,databaseconnection.*"%>

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
<form name="f1" action="#">
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
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"></li>
  <li><a href="datalogout1.jsp"><span>Logout&nbsp;</span></a></li>
  <li><a href="datalogout.jsp"><span>Back&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<table align="center" height="265" width="700">
<tr bgcolor="#006633">
<td align="center"><font color="#FFFFFF" size="+1">Name</font></td>
<td align="center"><font color="#FFFFFF" size="+1">View</font></td>
<td align="center"><font color="#FFFFFF" size="+1">Originalcode</font></td>
<td align="center"><font color="#FFFFFF" size="+1">EncryptedCode</font></td>
<td align="center" colspan="2"><font color="#FFFFFF" size="+1">Like</font></td>
<td align="center" colspan="2"><font color="#FFFFFF" size="+1">Unlike</font></td></tr>

<%

String search2=(String)session.getAttribute("search1");
String filename=(String)session.getAttribute("filename");
String fileid=(String)session.getAttribute("fileid");
String likecommends=(String)session.getAttribute("likecommends");
String unlikecommends=(String)session.getAttribute("unlikecommends");

//out.print(search2);
//out.print(filename);
//out.print(fileid);
//out.print(likecommends);
//out.print(unlikecommends);
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;
String id=null,name=null,file=null,commonindex=null,like1=null,unlike1=null;

try
{
con=databasecon.getconnection();
 st=con.createStatement();
 String sqll="select * from fileupload1 where commonindex like '"+'%'+search2+'%'+ "'";
 rs=st.executeQuery(sqll);
while(rs.next())
{
id=rs.getString(1);
session.setAttribute("id",id);
//out.print(id);
name=rs.getString(2);
//out.print(name);
file=rs.getString(3);
//out.print(file);
commonindex=rs.getString(4);
//out.print(commonindex);
like1=rs.getString(5);
session.setAttribute("l1",like1);
//out.print(like1);
unlike1=rs.getString(6);
session.setAttribute("ul1",unlike1);
//out.print(unlike1);
%>


 
	
	
<tr bgcolor="#006633">
<td bgcolor="#009933" align="center"><font color="#FFFFFF"><%=name%></font></td>
<td bgcolor="#009933" align="center"><a href="divideview.jsp?<%=id%>"><font color="#FFFFFF">view</font></a></td>
<td bgcolor="#009933" align="center"><a href="odownload.jsp?<%=id%>"><font color="#FFFFFF">Download</font></a></td>
<td bgcolor="#009933" align="center"><a href="download.jsp?<%=fileid%>"><font color="#FFFFFF">Download</font></a></td>
<td bgcolor="#009933" align="center"><font color="#FFFFFF"><%=like1%></font></td><td bgcolor="#009933">&nbsp;&nbsp;&nbsp;<a href="like.jsp?<%=id%>"><img src="images/likes.jpg" height="50" width="50"></a> </td>
<td bgcolor="#009933" align="center"><font color="#FFFFFF"><%=unlike1%></font></td><td bgcolor="#009933">&nbsp;&nbsp;&nbsp;<a href="unlike.jsp?<%=id%>"><img src="images/un.jpg" height="50" width="50"></a> </td>
</tr>



<%
}
}
catch(Exception e)
{
out.print(e);
}




%>
</table>



<div class="footer">
</div>
</div>
</div>
</div>
</div>
</form>
</body>
</html>















