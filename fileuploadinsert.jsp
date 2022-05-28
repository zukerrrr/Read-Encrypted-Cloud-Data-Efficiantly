<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String a=request.getParameter("id");
String b=request.getParameter("filename");
String c=request.getParameter("filekey");
String d=request.getParameter("indexm");
String e=request.getParameter("des");
String fn=request.getParameter("datafile");
String path="Q:\\apache-tomcat-6.0.36\\webapps\\Efficient\\file\\";
String fil=path+fn;


String f=b+d;

int c1=0;
int c2=0;
 
int s=1; 
 
 /*			double size=image.length();
		  double  size1=size/1024;
		  double size2=Math.round(size1*100.0)/100.0;
		  String size3=Double.toString(size2);
		  session.setAttribute("filesize",size3);*/


FileInputStream fis = null;
File image = new File(fil);
Connection conn =null;
PreparedStatement ps=null;
try
{
conn = databasecon.getconnection();
ps=conn.prepareStatement ("insert into fileup(fileid,filename,filekey,indexm,describ,file,commonindex,likecommends,unlikecommends,s) values(?,AES_ENCRYPT(?,'key'),?,?,?,AES_ENCRYPT(?,'key'),AES_ENCRYPT(?,'key'),?,?,?)");
//ps=conn.prepareStatement ("insert into fileup(fileid,filename,filekey,indexm,describe,file,commonindex,likecommends,unlikecommends,s) values (?,AES_ENCRYPT(?,'key'),?,?,?,AES_ENCRYPT(?,'key'),AES_ENCRYPT(?,'key'),?,?,?)");
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
fis=new FileInputStream(image);
ps.setBinaryStream(6,(InputStream)fis,(int)(image.length()));
ps.setString(7,f);
ps.setInt(8,c1);
ps.setInt(9,c2);
ps.setInt(10,s);
ps.executeUpdate();
response.sendRedirect("#");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</body>
</html>
