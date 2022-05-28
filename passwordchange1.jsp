<%@ page import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>

<body>
<% 
String n1=request.getParameter("newpwd");
String un1=request.getParameter("conpwd");

int s1=(Integer)session.getAttribute("idx");
Connection conn3=null;
PreparedStatement pstmt1=null;

try
{

conn3=databasecon.getconnection();
pstmt1 = conn3.prepareStatement ("update regstration set password='"+n1+"',confirmpassword='"+un1+"'where userid='"+s1+"'");

int x=pstmt1.executeUpdate();
response.sendRedirect("login.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}





%>









</body>
</html>
