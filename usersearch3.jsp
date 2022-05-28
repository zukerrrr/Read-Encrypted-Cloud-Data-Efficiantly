<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Slicing: A New Approach to Privacy Preserving Data Publishing</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="stylegreen.css" rel="stylesheet" type="text/css" />
<style type="text/css">

	#inputArea
	{
	    font-family: verdana;
	    font-size: 13px;
	    margin-bottom: 5px;
	    display: block;
	    padding: 4px;
	    width: 300px;
	}
  .submit {

	background:#FFFFFF url("img/submit.jpg") no-repeat left ;
	font-size:11px;
	font-weight:bold;
	width:94px;
	height:30px;
}
    </style>
<script language="JavaScript">
function valid()
{
var a = document.f.search1.value;
if(a=="")
{
alert("Enter Disease Name");
document.f.des.focus();
return false;
}
}
</script>
</head>

<body>
<form action="#" name="f" method="get" onSubmit="return valid();">
<div id="outerwrapper">

<div id="head">
   <div id="logo">
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Slicing: A New Approach to Privacy Preserving

	  <div align="center">Data Publishing </div></div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
                   </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="500">


<%  
 ArrayList list1 = new ArrayList();
    String search1=request.getParameter("search1");
	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String fileid=null, filename=null, commonindex=null,likecommends=null, unlikecommends=null;

	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select fileid,AES_DECRYPT(filename,'key'),AES_DECRYPT(commonindex,'key'),likecommends,unlikecommends from fileupload where indexm like '"+'%'+search1+'%'+ "'";
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		
		 while(rs1.next())
		
       {
	   
			fileid=rs1.getString(1);
		    filename=rs1.getString(2);		    
			commonindex=rs1.getString(3);		    
			likecommends=rs1.getString(4);
		    unlikecommends=rs1.getString(5);
		   
		    			
			
			
%>
  <table align="center" bgcolor="#006600" height="150" width="700">
  <tr style="font-family:verdana;font-size:12px;"> 
   <tr> <td> <font color="#FFFFFF"><input type="text" value="<%=filename%>" name="f1"></font></td>
	<td colspan="4"><a href="login.jsp"><font color="#FFFFFF"><%=commonindex%></font></a> </td></tr>
	<tr><td></td><td><a href="login.jsp"><font color="#FFFFFF">view</font></a></td><td><a href="login.jsp"><font color="#FFFFFF">Downloads</font></a></td>
		<td> <font color="#FFFFFF"><%=likecommends%></font>&nbsp;&nbsp;&nbsp;<a href="like.jsp?<%=filename%>"><font color="#FFFFFF">Likecommends</font></a> </td>
	<td> <font color="#FFFFFF"><%=unlikecommends%></font>&nbsp;&nbsp;&nbsp;<a href="login.jsp"><font color="#FFFFFF">UnLikecommends</font></a> </td></tr></table>
 
        <%
 
String fileid1=rs1.getString(1);

%>
      	
    </tr>
<%
	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    
%>
</table>
</td>
</tr>
</table>  <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> 
</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;&nbsp;Slicing: A New Approach to Privacy Preserving Data Publishing</span>
</p>
</div>
</div>
</form>
</body>
</html>
