<%@ page import="java.sql.*,javax.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
String a=request.getQueryString();
//out.print(a);
Connection cn1=null;
Statement st=null;
ResultSet rs=null;
int m=0;
int z1=0;
try
{

cn1=databasecon.getconnection();
st=cn1.createStatement();
rs=st.executeQuery("select * from fileupload1 where id='"+a+"'");
while(rs.next())
{
 m=rs.getInt("unlike1");
 
}
z1=m+2;
session.setAttribute("z2",z1);
}

catch(Exception e)
{
out.print(e);
}
Connection conn=null;
PreparedStatement ps=null;
try
{
conn=databasecon.getconnection();
ps=conn.prepareStatement("update fileupload1 set unlike1='"+z1+"'where id='"+a+"'");

int i=ps.executeUpdate();
response.sendRedirect("search3.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</body>
</html>
