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
<style type="text/css">
.s1
{
border:0px solid red;
background-color:white;
padding:5px;
color:#458B00;
font-weight:Bold;
align:right;
}
</style>
</head>
<body>
<form name="udet" action="editaccount1.jsp" method="post" onsubmit="#">
<%
Connection con1=null;
Statement st=null;
ResultSet rs=null;
int i=(Integer)session.getAttribute("idx");

String name=null,username=null,emailid=null,dob1=null,address=null,mno1=null,cry1=null,gender1=null,utype=null;
try
{
con1=databasecon.getconnection();
st=con1.createStatement();
rs=st.executeQuery("select * from regstration where userid='"+i+"'");
while(rs.next())
{
name=rs.getString("name");
username=rs.getString("username");
emailid=rs.getString("emailid");
dob1=rs.getString("dob");
address=rs.getString("address");
mno1=rs.getString("mobilenumber");
cry1=rs.getString("country");
gender1=rs.getString("gender");
utype=rs.getString("usertype");


}

}

 catch(Exception e)
        {
            out.println(e.getMessage());
        }
       


%>

<div class="page-out">
<div class="page-in">
<div class="page">
<div class="main">
<div class="header">
<div >
<h1> <span></span></h1>
</div>
<div class="header-bottom">
<pre>
<h2><font size="6">Retrieval of Encrypted Cloud Data<br /> Using Multikeyword</font><br/></h2></pre>
</div>
<div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a
 href="index.html"><span>Home</span></a></li>
  <li><a href="index.html"><span>Logout&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">
<h2 align="center">Account Information</h2>
	<table><td>
		<table class="s1" height="120" >
  
  <tr ><td class="s1" align="right">User Id&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="id" size="30" value="<%=i%>" disabled ></td></tr>
  

  <tr ><td class="s1" align="right">Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="name" size="30"  value="<%=name%>"></td></tr>
	
	<tr ><td class="s1" align="right">User Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="username" size="30" value="<%=username%>"></td></tr>
	
	<tr ><td class="s1" align="right">Email id&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="eid" size="30" value="<%=emailid%>"  ></td></tr>
	
	
	
	
	<tr ><td class="s1" align="right">Dob&nbsp;&nbsp;&nbsp;:</td>
   <td class="s1" ><input name="dob" type="Text" id="demo1" value="<%=dob1%>"  maxlength="25" size="30"><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td></tr>

	
	<tr ><td class="s1" align="right">Address&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="address" size="30" value="<%=address%>" ></td></tr>
	
	<tr ><td class="s1" align="right">Mobile Num&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="mno"size="30"value="<%=mno1%>" ></td></tr>
	
	<tr ><td class="s1" align="right">Country&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="cry" size="30" value="<%=cry1%>" ></td></tr>
	
	
	<tr ><td class="s1" align="right">Gender&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="gen" size="30"value="<%=gender1%>" ></td></tr>
		
	
	<tr><td class="s1" align="right" >UserType&nbsp;&nbsp;&nbsp;:</td>
    
    <td class="s1"><input type="text" name="utype" size="30" value="<%=utype%>" disabled ></td></tr>
	
	<tr ><td class="s1" align="right"></td>
    <td class="s1"><input type="submit" name="submit" value="Update" >&nbsp;<input type="reset" name="reset"></td></tr>
	
		
	</table>
	</td>
	<td><img src="images/12345.jpg" width="220"></td>
	</table>

</div>
<!--<div class="row2">

</div>-->
</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1">EditAccount</h2>
<font size="+1">
<ul >
  <li><a href="viewaccount.jsp">View Account</a></li>
  <li><a href="editaccount.jsp">Edit Account</a></li>
  <li><a href="passwordchange.jsp">Change Password</a></li>
  <li><a href="usersearch.jsp">File Searching</a></li>
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
</body>
</html>
