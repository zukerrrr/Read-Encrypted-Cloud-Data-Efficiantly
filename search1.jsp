<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*,java.io.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String s=request.getQueryString();
String search1=request.getParameter("search1");
session.setAttribute("search1",search1);
String f1=null,f2=null,f3=null,f4=null,f5=null;
Blob datafile=null;

Connection c1=null;
Connection c2=null;
Statement st=null;
ResultSet rs=null;
PreparedStatement ps=null;


String sql1="select fileid,AES_DECRYPT(filename,'key'),AES_DECRYPT(file,'key'),AES_DECRYPT(commonindex,'key'),likecommends,unlikecommends from fileup";

try
{
c1=databasecon.getconnection();
st=c1.createStatement();
rs=st.executeQuery(sql1);

while(rs.next())
{
f1=rs.getString(1);
session.setAttribute("f1",f1);
f2=rs.getString(2);
datafile=rs.getBlob(3);
f3=rs.getString(4);
f4=rs.getString(5);
f5=rs.getString(6);
//session.setAttribute("f1",f1);

/*out.print(f1);
out.print(f2);
out.print(datafile);
out.print(f3);
out.print(f4);
out.print(f5);*/

try
{
c2=databasecon.getconnection();
ps=c2.prepareStatement("insert into fileupload1 (id,name,file,commonindex,like1,unlike1) values (?,?,?,?,?,?)");
ps.setString(1,f1);
ps.setString(2,f2);
ps.setBlob(3,datafile);
ps.setString(4,f3);
ps.setString(5,f4);
ps.setString(6,f5);


ps.executeUpdate();
response.sendRedirect("search2.jsp");
//out.print("value stored");
session.setAttribute("fileid",f1);
session.setAttribute("filename",f2);
session.setAttribute("likecommends",f4);
session.setAttribute("unlikecommends",f5);

//out.print(f1);
response.sendRedirect("search2.jsp");
}
catch(Exception e1)
{
out.print(e1);
}

}
}
catch(Exception e)
{
out.print(e);
}








%>
</body>
</html>
