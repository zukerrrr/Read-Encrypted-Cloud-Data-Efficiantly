<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>

<body>
<%
Thread.sleep(2000);
%>		
<%
		Blob b = (Blob)session.getAttribute("resumeBlob1");
		
		//out.print(b);
		if(b != null)
		{
			String fileName = "documentfile";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/msword");
			response.setHeader("Content-Disposition","attachment; filename=\""+fileName+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			session.removeAttribute("document1");
		}
		else
		{
			response.sendRedirect("search2.jsp");
		}
%>

</body>
</html>