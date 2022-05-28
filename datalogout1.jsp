<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*,java.io.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
//String s=request.getQueryString();
//String search1=request.getParameter("search1");
//session.setAttribute("search1",search1);
//String d=(String)session.getAttribute("id");
//out.print(d);
String f1=null,f2=null;
Connection c1=null;
Connection c2=null;
Statement st=null;
ResultSet rs=null;
PreparedStatement ps=null;
Connection conn=null;
PreparedStatement ps1=null;
String sql1="select * from fileupload1";
int idx=0;
try
{

c1=databasecon.getconnection();
st=c1.createStatement();
rs=st.executeQuery(sql1);
while(rs.next())
{
idx=rs.getInt("id");
f1=rs.getString("like1");
f2=rs.getString("unlike1");

try
{
conn=databasecon.getconnection();
ps1=conn.prepareStatement("update fileup set likecommends='"+f1+"',unlikecommends='"+f2+"' where fileid='"+idx+"'");
int i=ps1.executeUpdate();

}
catch(Exception e)
{
out.print(e);
}


}
}
//out.print(f1);
//out.print(f2);
catch(Exception e1)
{
out.println(e1.getMessage());
}

response.sendRedirect("usearch2.jsp");













//String z=(String)session.getAttribute("l1");
//out.print(z);
//String z1=(String)session.getAttribute("ul1");
//out.print(z1);


%>
</body>
</html>
