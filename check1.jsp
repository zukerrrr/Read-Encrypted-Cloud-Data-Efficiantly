<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
 <%
		
		
		
		String username1=null,uname1=null,utypex=null;
		String password1=null,pword1=null,utype1=null;
		username1=request.getParameter("unme");
		password1=request.getParameter("pwd");
		utypex=(String)session.getAttribute("sname1");
		
		
		
	String v1="cloudservera";
	String v2="cloudserverb";
	String v3="cloudserverc";
	
	if(utypex.equals(v1))
	{
	Connection cn1=null;
	Statement st1=null;
	ResultSet rs1=null;
	
		
	try
	{
	
	cn1=databasecon.getconnection();
	st1=cn1.createStatement();
	rs1=st1.executeQuery("select * from cloudservera where username='"+username1+"' AND userpwd='"+password1+"'");
	
	if(rs1.next())
	{
	response.sendRedirect("fileupload1.jsp");
	}
	else
	{
	response.sendRedirect("incorrect1.jsp");
	}
	}
	catch(Exception e)
	{
	out.print(e);
	}
	}
	
	
	if(utypex.equals(v2))
	{
	Connection cn1=null;
	Statement st1=null;
	ResultSet rs1=null;
	
		
	try
	{
	
	cn1=databasecon.getconnection();
	st1=cn1.createStatement();
	rs1=st1.executeQuery("select * from cloudserverb where username='"+username1+"' AND userpwd='"+password1+"'");
	
	if(rs1.next())
	{
	response.sendRedirect("fileupload1.jsp");
	}
	else
	{
	response.sendRedirect("incorrect1.jsp");
	}
	}
	catch(Exception e)
	{
	out.print(e);
	}
	}
	
	
	
	
	
	if(utypex.equals(v3))
	{
	Connection cn1=null;
	Statement st1=null;
	ResultSet rs1=null;
	
		
	try
	{
	
	cn1=databasecon.getconnection();
	st1=cn1.createStatement();
	rs1=st1.executeQuery("select * from cloudserverc where username='"+username1+"' AND userpwd='"+password1+"'");
	
	if(rs1.next())
	{
	response.sendRedirect("fileupload1.jsp");
	}
	else
	{
	response.sendRedirect("incorrect1.jsp");
	}
	}
	catch(Exception e)
	{
	out.print(e);
	}
	}
	
	
	else
	{
	out.print("you have selected invalid servername");
	}
	
		
		
		
	
	
	  %>
	  
</body>
</html>
