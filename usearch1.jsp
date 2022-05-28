<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*,java.io.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>









<%
Connection con2=null;
PreparedStatement ps=null;



   try
	 {
	 con2=databasecon.getconnection();
	ps=con2.prepareStatement("delete from fileupload1");
	ps.executeUpdate();
    response.sendRedirect("usersearch.jsp");
	}

	 catch(Exception e)
	 {
	 out.print(e);
	 }
	   








%>
</body>
</html>
