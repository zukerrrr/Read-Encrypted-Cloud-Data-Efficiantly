<%@ page  import="java.sql.*,databaseconnection.*"  %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<%

String o1="cloudservera";
String o2="cloudserverb";
String o3="cloudserverc";



int x=(Integer)session.getAttribute("idx");
String n1=(String)session.getAttribute("uname");
String n2=(String)session.getAttribute("pwd");

String st1="service request";




if(n1.equals(o1))
{
response.sendRedirect("grantrequest1.jsp");
}

if(n1.equals(o2))
{
response.sendRedirect("grantrequest2.jsp");
}

if(n1.equals(o3))
{
response.sendRedirect("grantrequest3.jsp");
}

%>
</body>
</html>
