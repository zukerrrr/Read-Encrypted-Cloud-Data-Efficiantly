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
  <li><a href="login.jsp"><span>Logout&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">
<%  
 ArrayList list1 = new ArrayList();
    
	String search1=(String)session.getAttribute("search1");
	
	
	//int n;

	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String fileid=null, filename=null, commonindex=null,likecommends=null, unlikecommends=null;
	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select fileid,AES_DECRYPT(filename,'key'),AES_DECRYPT(commonindex,'key'),likecommends,unlikecommends from fileup where indexm like '"+'%'+search1+'%'+ "'";
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		
		 while(rs1.next())
		
       {
	   
			fileid=rs1.getString(1);
		    filename=rs1.getString(2);		    
			commonindex=rs1.getString(3);		    
			likecommends=rs1.getString(4);
		    unlikecommends=rs1.getString(5);
		   
		    			
		
		
		
		
		
	session.setAttribute("fileid",fileid);	
		
		
		
		
			
			
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
<td><a href="view.jsp"><font color="#FFFFFF">view</font></a></td>
<td><a href="download.jsp?<%=fileid%>"><font color="#FFFFFF">Downloads</font></a></td>
<td> <font color="#FFFFFF"><%=likecommends%></font>&nbsp;&nbsp;&nbsp;<a href="like.jsp?<%=fileid%>"><font color="#FFFFFF">Likecommends</font></a> </td>
<td> <font color="#FFFFFF"><%=unlikecommends%></font>&nbsp;&nbsp;&nbsp;<a href="unlike.jsp?<%=fileid%>"><font color="#FFFFFF">UnLikecommends</font></a> </td>
</tr>
 
   <%
 
String fileid1=rs1.getString(1);


      	
 

	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.print(e2.getMessage());
	   }
	   
	   
	   //StringBuffer sb=new StringBuffer(commonindex);
		//StringBuffer sb1=new StringBuffer(commonindex);
		
		
		
		//n=sb.indexOf(search1);
	//z=sb1.lastIndexOf(search1);
		
		//if(n!=0)
		//{
		//out.print(n);
		//}
		
		//if(z!=0)
		//{
		//out.print(z);
		//}
		
		//else;
		//{
		//out.print("false");
		//}
		
	   
	   
	   
	   
	   
	   	   	    
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
