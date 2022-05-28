<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@ page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<% 

 
    String search1=request.getParameter("search1");
	
	//out.print(search1);
	session.setAttribute("search1",search1);
	
	//String id2=(String)session.getAttribute("id2");

    //int n=Integer.parseInt(id2);

	
	
	//int n=0;
   //String o="1";
	Connection con1 = null;
	Connection con2=null;
	
	PreparedStatement ps=null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String fileid=null, filename=null,likecommends=null,unlikecommends=null, commonindex=null,s=null;
	Blob fil=null;
	//String n="440";
	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select fileid,AES_DECRYPT(filename,'key'),AES_DECRYPT(file,'key'),AES_DECRYPT(commonindex,'key'),likecommends,unlikecommends from fileup";
				
	
		rs1=st1.executeQuery(sql1);
				
		 while(rs1.next())
		
       {
			fileid=rs1.getString(1);
			//out.print(fileid);
        filename=rs1.getString(2);
			//out.print(filename);
			fil=rs1.getBlob(3);
			//out.print("filevalue"+file);
			//session.setAttribute("file",file);		    
	 	//out.print(fil);
			commonindex=rs1.getString(4);
			likecommends=rs1.getString(5);
			unlikecommends=rs1.getString(6);
		//out.print(likecommends);
		//out.print(unlikecommends);
			
			
		//out.print(s);
		
		
		//session.setAttribute("fileid1",fileid);
			session.setAttribute("likecommends",likecommends);
			//session.setAttribute("unlikecommends",unlikecommends);
			
		
			
		 
try
			{
			con2=databasecon.getconnection();
			ps=con2.prepareStatement("insert into fileupload1(id,name,file,commonindex,like1,unlike1) values (?,?,?,?,?,?)");
			ps.setString(1,fileid);
			ps.setString(2,filename);
			ps.setBlob(3,fil);
			ps.setString(4,commonindex);
			ps.setString(5,likecommends);
			ps.setString(6,unlikecommends);
			ps.setString(7,s);
			ps.executeUpdate();
			
			
			
			
		response.sendRedirect("se1.jsp");
			}
			catch(Exception e)
			{
		
		out.print(e);
		}
	
			
  }
 
	 
	 }
	   catch(Exception e2)
	   {
	     out.print(e2.getMessage());
	   }
  
	   
%>
</body>
</html>


