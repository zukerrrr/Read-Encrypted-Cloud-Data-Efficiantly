<%@ page language="java" import="databaseconnection.*,java.sql.*" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


</head>

<body>
 <%
		
		
		
		String username1=null,uname1=null,utype=null;
		String password1=null,pword1=null,utype1=null;
		username1=request.getParameter("username");
		password1=request.getParameter("Password");
		utype=request.getParameter("utype");
		
		int n=0;
		
		session.setAttribute("uname",username1);
		session.setAttribute("pwd",password1);

		
		String u1="ADMIN";
		String u2="ADMIN";
		if(username1.equals(u1) && password1.equals(u2))
		{
		response.sendRedirect("admin.jsp");
		}
		
		else{
		try
		{
				
		Connection conn2=databasecon.getconnection();
		Statement stmt1=conn2.createStatement();
		ResultSet rs1=stmt1.executeQuery("select * from regstration where username='"+username1+"' AND password='" +password1+"' AND usertype='"+utype+"'");
		if(rs1.next())
		{
		n=rs1.getInt("userid");
		utype=rs1.getString("usertype");
		session.setAttribute("idx",n);
		
		
		if(utype.equals("owner"))
		{
		response.sendRedirect("ownerpage.jsp");
		}
		if(utype.equals("user"))
		{
		response.sendRedirect("userpage.jsp");
		}
		if(utype.equals("server"))
		{
		response.sendRedirect("serverpage.jsp");
		}
		
		}
		
		else{
		
		response.sendRedirect("incorrect.jsp");
		
		}
		
		}
		catch(Exception e)
		{
		out.println(e);
		}
		}		
	  %>
	  
</body>
</html>
