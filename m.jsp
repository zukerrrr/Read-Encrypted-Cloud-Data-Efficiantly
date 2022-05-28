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
<h2>Retrieval of Encrypted Cloud Data<br />
Using Multikeyword</h2>
</div>
<div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a
 href="index.html"><span>Home</span></a></li>
  <li><a href="login.jsp"><span>Logout&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">






<%
String s=request.getQueryString();
String search1=request.getParameter("search1");
session.setAttribute("search1",search1);
String f1=null,f2=null,f3=null,f4=null,f5=null;
Blob datafile=null;

Connection c1=null;
Connection c2=null;
Statement st=null;
ResultSet rs=null;
PreparedStatement ps=null;


String sql1="select fileid,AES_DECRYPT(filename,'key'),AES_DECRYPT(file,'key'),AES_DECRYPT(commonindex,'key'),likecommends,unlikecommends from fileup";

try
{
c1=databasecon.getconnection();
st=c1.createStatement();
rs=st.executeQuery(sql1);

while(rs.next())
{
f1=rs.getString(1);
f2=rs.getString(2);
datafile=rs.getBlob(3);
f3=rs.getString(4);
f4=rs.getString(5);
f5=rs.getString(6);

/*out.print(f1);
out.print(f2);
out.print(datafile);
out.print(f3);
out.print(f4);
out.print(f5);*/

try
{
c2=databasecon.getconnection();
ps=c2.prepareStatement("insert into fileupload1 (id,name,file,commonindex,like1,unlike1) values (?,?,?,?,?,?)");
ps.setString(1,f1);
ps.setString(2,f2);
ps.setBlob(3,datafile);
ps.setString(4,f3);
ps.setString(5,f4);
ps.setString(6,f5);


ps.executeUpdate();
response.sendRedirect("search2.jsp");
//out.print("value stored");
session.setAttribute("fileid",f1);
session.setAttribute("filename",f2);
session.setAttribute("likecommends",f4);
session.setAttribute("unlikecommends",f5);
//out.print(f1);
//response.sendRedirect("search2.jsp");
}
catch(Exception e1)
{
out.print(e1);
}

}
}
catch(Exception e)
{
out.print(e);
}








%>











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
ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String id=null,name=null,file=null,commonindex=null,like1=null,unlike1=null;

try
{
con=databasecon.getconnection();
 st1=con.createStatement();
 String sqll="select * from fileupload1 where commonindex like '"+'%'+search2+'%'+ "'";
 rs1=st.executeQuery(sqll);
while(rs.next())
{
id=rs1.getString(1);
//out.print(id);
name=rs1.getString(2);
//out.print(name);
file=rs1.getString(3);
//out.print(file);
commonindex=rs1.getString(4);
//out.print(commonindex);
like1=rs1.getString(5);
//out.print(like1);
unlike1=rs1.getString(6);
//out.print(unlike1);
%>

<table align="center" bgcolor="#009900" height="100" width="500">
  <tr style="font-family:verdana;font-size:12px;"> 
   <tr>
   <td></td>
   <td></td>
   <td></td>
   <td> <font color="#FFFFFF"><input type="text" id="box" disabled="true" value="<%=filename%>" name="f1"></font></td>
   </tr>
	
	
<tr><td></td>
<td><a href="divideview.jsp?<%=fileid%>"><font color="#FFFFFF">view</font></a></td>
<td><a href="odownload.jsp?<%=fileid%>"><font color="#FFFFFF">Originalcode</font></a></td>
<td><a href="download.jsp?<%=fileid%>"><font color="#FFFFFF">Encrypt Downloads</font></a></td>
<td><font color="#FFFFFF"><%=likecommends%></font>&nbsp;&nbsp;&nbsp;<a href="like.jsp?<%=fileid%>"><font color="#FFFFFF">Like</font></a> </td>
<td><font color="#FFFFFF"><%=unlikecommends%></font>&nbsp;&nbsp;&nbsp;<a href="unlike.jsp?<%=fileid%>"><font color="#FFFFFF">UnLike</font></a> </td>
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


</div>
<!--<div class="row2">
</div>-->
</div>
<div class="content-right">

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















