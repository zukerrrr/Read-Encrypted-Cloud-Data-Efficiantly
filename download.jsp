<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>
<body background="Images/clouds_background.jpg">
<%
Thread.sleep(2000);
%>
<%
	session.removeAttribute("resumeBlob");
	String fileid=(String)session.getAttribute("fileid");
	
	Blob resume = null;
	
	Connection con1 = null;
	PreparedStatement ps1 = null;
	ResultSet rs1 = null;
	String sql1 = "select file from fileup where fileid = ?";
	try
	{
		con1 = databasecon.getconnection();
		ps1 = con1.prepareStatement(sql1);
		ps1.setString(1,fileid);
		rs1 = ps1.executeQuery();
		rs1.next();
		resume = rs1.getBlob(1);
	}
	catch(Exception e)
	{
		out.println("Exception :"+e);
	}
	finally
	{
		if(con1 != null)
			con1.close();
		if(ps1 != null)
			ps1.close();
		if(rs1 != null)
			rs1.close();
	}
	
	session.setAttribute("resumeBlob",resume);
	response.sendRedirect("download1.jsp");
%>

</body>
</html>