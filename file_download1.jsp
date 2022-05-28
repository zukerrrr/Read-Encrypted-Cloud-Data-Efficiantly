<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
	
	String fid=request.getQueryString();
	session.setAttribute("fid",fid);
	
	String fname=null;
	
	

	
	Blob file= null;
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
	 sql = "select AES_DECRYPT(file,'key') from fileup where fileid='"+fid+"'";
	
	try
	{
		
        con=databasecon.getconnection();
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		rs.next();
		file = rs.getBlob(1);
		session.setAttribute("resumeBlob",file);
	}
	catch(Exception e)
	{
	out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
			 

	}
	
response.sendRedirect("file_download2.jsp");
%>

</body>
</html>
