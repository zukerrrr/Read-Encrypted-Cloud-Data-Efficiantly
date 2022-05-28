<%@ page  import="java.sql.*,databaseconnection.*"  %>


<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String  h=request.getQueryString();
int k=Integer.parseInt(h);
String a1="grant";
int xx=(int)(Math.random()*100000);

Connection con1=null;
PreparedStatement ps1=null;

try
{
con1=databasecon.getconnection();
ps1=con1.prepareStatement("update cloudserverb set status='"+a1+"',userpwd='"+xx+"'where userid ='"+k+"'");
int x=ps1.executeUpdate();
response.sendRedirect("serverpage.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}



%>
</body>
</html>
