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

<div class="header-bottom">
<h2>Retrieval of Encrypted Cloud Data<br />
Using Multikeyword</h2>
</div>
<div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a
 href="index.html"><span>Home</span></a></li>
  <li><a href="datalogout.jsp"><span>Logout&nbsp;</span></a></li>
  <li><a href="usearch1.jsp"><span>Back&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">

<%  
 ArrayList list1 = new ArrayList();
    String search1=(String)session.getAttribute("search1");
	//out.print(search1);	
	int n;

	Connection con1 = null;
	Connection con2=null;
	Statement st2=null;
PreparedStatement ps=null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String fileid=null, filename=null,file=null, commonindex=null,like1=null,unlike1=null;
	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select id,name,file,commonindex,like1,unlike1 from fileupload1 where commonindex like '"+'%'+search1+'%'+ "'";
		rs1=st1.executeQuery(sql1);		
		 while(rs1.next())
		
       {
	   
			fileid=rs1.getString(1);
		    filename=rs1.getString(2);
			file=rs1.getString(3);
			commonindex=rs1.getString(4);
			like1=rs1.getString(5);
			unlike1=rs1.getString(6);					    	    
			
		 //session.setAttribute("fileid",fileid);
		 //session.setAttribute("file",file);  
		 //out.print(file);
		 //session.setAttribute("filename",filename); 
			//out.print(filename);
	// String fileid1=(String)session.getAttribute("fileid1");					
	 	
 //String unlikecommends=(String)session.getAttribute("unlikecommends");	
			
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
<td><font color="#FFFFFF"><%=like1%></font>&nbsp;&nbsp;&nbsp;<a href="like.jsp?<%=fileid%>"><font color="#FFFFFF">Like</font></a> </td>
<td><font color="#FFFFFF"><%=unlike1%></font>&nbsp;&nbsp;&nbsp;<a href="unlike.jsp?<%=fileid%>"><font color="#FFFFFF">UnLike</font></a> </td>



</tr>
 
   <%
 
//String fileid1=rs1.getString(1);
  	
	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.print(e2.getMessage());
	   }
	   
	   
	   
	  
	 
	       
%>
</table>
</div>
</div>
<div class="content-right">
<div class="mainmenu">
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
