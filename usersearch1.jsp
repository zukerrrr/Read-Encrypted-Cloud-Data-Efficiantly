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
<div>
<h1> <span></span></h1>
</div>
<div class="header-bottom">
<h2>Retrieval of Encrypted Cloud Data<br /> Using Multikeyword</h2>
</div>
<div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a
 href="index.html"><span>Home</span></a></li>
  <li><a href="login.jsp"><span>Login&nbsp;</span></a></li>
</ul>
</div>
</div>
<div class="content">

<%  
 ArrayList list1 = new ArrayList();
    String search1=request.getParameter("search1");
	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String fileid=null, filename=null, commonindex=null,likecommends=null, unlikecommends=null;

	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select fileid,AES_DECRYPT(filename,'key'),AES_DECRYPT(commonindex,'key'),likecommends,unlikecommends from fileupload where commonindex like '"+'%'+search1+'%'+ "'";
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		
		 while(rs1.next())
		
       {
	   
			fileid=rs1.getString(1);
		    filename=rs1.getString(2);		    
			commonindex=rs1.getString(3);		    
			likecommends=rs1.getString(4);
		    unlikecommends=rs1.getString(5);
		   
		    			
			
			
%>

<table align="center" bgcolor="#CC3399" >
  <tr style="font-family:verdana;font-size:12px;"> 
  <tr><td colspan="7"><span><%=commonindex%></span></td></tr>
    <td> <a href="#"><span>View;</span></a> </td>
	<td> <a href="#"><span>Download;</span></a> </td>
	<td> <a href="#"><span>like</span></a> </td>
	<td> <a href="#"><span>Dislike</span></a> </td>   </tr>
    
	</table>
	
	
       <%
 
String fileid1=rs1.getString(1);

%>
      	
   
<%
	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    
%>







</div>
<div class="footer">
</div>
</div>
</div>
</div>
</div>
</body>
</html>
