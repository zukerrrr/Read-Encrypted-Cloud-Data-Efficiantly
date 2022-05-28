<%@ page  import="java.sql.*,databaseconnection.*"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Your Company</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta http-equiv="Content-Type"
 content="text/html; charset=iso-8859-1">
  <link href="css/style.css" rel="stylesheet" type="text/css">
  
  <script type="text/javascript">
function valid1()
{
var a=document.f1.search1.value;
if(a=="")
{
alert("plz enter your search Keywords");
document.f1.search1.focus();
return false;
}
}
</script>  
</head>
<body>
<form action="se.jsp" method="post" name="f1" onsubmit="return valid1()">
<div class="page-out">
<div class="page-in">
<div class="page">
<div class="main">
<div class="header">
<div >
<h1> <span></span></h1>
</div>
<div class="header-bottom">
<h2>Retrieval of Encrypted Cloud Data<br />
Using Multikeyword</h2>
</div>
<div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a
 href="index.html"><span>Home</span></a></li>
  <li><a href="login.jsp"><span>Logout&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">
<br>
<br>
<br>
<br>
<br>











<%  
 //ArrayList list1 = new ArrayList();
    String search1=request.getParameter("search1");
	
	session.setAttribute("search1",search1);
	
	int n;

	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String fileid=null, filename=null,file=null, commonindex=null,likecommends=null, unlikecommends=null;
	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select id,name,file,commonindex,likecommends,unlikecommends from fileupload1 where commonindex like '"+'%'+search1+'%'+ "'";
		rs1=st1.executeQuery(sql1);
		//list1.add(sql1);
		
		 while(rs1.next())
		
       {
	   
			fileid=rs1.getString(1);
		    filename=rs1.getString(2);
			file=rs1.getString(3);		    
			commonindex=rs1.getString(4);		    
			likecommends=rs1.getString(5);
		    unlikecommends=rs1.getString(6);
		//session.setAttribute("file",file);
		
%>

<table align="center" bgcolor="#009900" height="100" width="500">
  <tr style="font-family:verdana;font-size:12px;"> 
   <tr>
   <td></td>
   <td></td>
   <td></td>
   <td> <font color="#FFFFFF"><input type="text" id="box" disabled="true" value="<%=filename%>" name="f1"></font></td>
   </tr>

   <%
 
String fileid1=rs1.getString(1);

	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.print(e2.getMessage());
	   }
	   
	   	   	    
%>

</table>






































</div>
<!--<div class="row2">




</div>-->
</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1"><a href="userpage.jsp">User Account</a></h2>
<font size="+1">
<ul >
  <li><a href="viewaccount.jsp">View Account</a></li>
  <li><a href="editaccount.jsp">Edit Account</a></li>
  <li><a href="passwordchange.jsp">Change Password</a></li>
  <li><a href="#"></a></li>
  
</ul>
</font>
</div>
</div>
</div>
<div class="footer">

</div>
</div>
</div>
</div>
</div>
</form>
</body>
</html>
