<%@ page  import="java.sql.*,databaseconnection.*"  %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Your Company</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.setup.js"></script>

<link rev="made" href="mailto:contact@rainforestnet.com">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="generator" content="NoteTab Light 4.9">
  <meta name="author" content="TengYong Ng">
  <meta name="description" content="">
  <meta name="keywords" content="">
   <script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>
<style type="text/css">
.s1
{
border:0px ;
font-face:courier
padding:5px;
color:#458B00;
font-weight:Bold;
align:right;
}
</style>

<script type="text/javascript">
	function reg()
	{
	var a = document.f2.name.value;
	if(a=="")
	{
	alert ("Enter a name");
	document.f2.name.focus();
	return false;
	}
	
	if(!isNaN(a))
	{
	alert ("Enter a alphat");
	document.form1.name.select();
	return false;
	}
	
	var b=document.f2.username.value;
	
	if(b=="")
	{
	alert ("Enter user name");
	document.f2.username.focus();
	return false;
	}
	
	var z=document.f2.eid.value;
	if(z=="")
	{
	alert ("enter a mail id");
	document.f2.eid.focus();
	return false;
	}
	
	
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
	var c=emailfilter.test(document.f2.eid.value);
	if(c==false)
	{
	alert(" Enter valid Mail ID");
	document.f2.eid.select();
	return false;
	}
	
	var d=document.f2.pwd.value;
	if(d=="")
	{
	alert ("Enter a password");
	document.f2.pwd.focus();
	return false;
	}
	
	var e=document.f2.conpwd.value;
	if(e=="")
	{
	alert ("enter confirm password");
	document.f2.conpwd.focus();
	return false;
	}
	if(d!=e)
	{
	alert ("Enter correct password");
	document.f2.conpwd.select();
	return false;
	}
	
	var f=document.f2.dob.value;
	if(f=="")
	{
	alert ("Pick date");
	document.f2.dob.focus();
	return false;
	}
	
	var g=document.f2.address.value;
	if(g=="")
	{
	alert ("Enter address");
	document.f2.address.focus();
	return false;
	}
	
	var h=document.f2.mno.value;
	if(h=="")
	{
	alert ("Enter mobile number");
	document.f2.mno.focus();
	return false;
	}
	if(h.length!=10)
	{
	alert ("Enter valid mobile number");
	document.f2.mno.focus();
	return false;
	}
	var i=document.f2.cry.value;
	if(i=="")
	{
	alert ("Enter country");
	document.f2.cry.focus();
	return false;
	}
	
	if ( ( f2.gender[0].checked == false ) && ( f2.gender[1].checked == false ) )
	{
	alert ( "Please choose your Gender: Male or Female" );
	return false;
	}

	
	}
	
	</script>

  
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta http-equiv="Content-Type"
 content="text/html; charset=iso-8859-1">
  <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
Connection con1=null;
Statement st=null;
ResultSet rs=null;

int id=0;
try
{
con1=databasecon.getconnection();
st=con1.createStatement();
rs=st.executeQuery("select max(userid) from regstration");
while(rs.next())
{
if(rs.getInt(1)==0)
id=1;
else
id=rs.getInt(1)+1;
}

session.setAttribute("id",id);

}

 catch(Exception e)
        {
            out.println(e.getMessage());
        }
       


%>
<form name="f2" action="insert.jsp" method="post" onsubmit="return reg()">
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
  <li><a href="login.jsp"><span>Login&nbsp;</span></a></li>
  
</ul>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">
<h1 align="left">&nbsp;&nbsp;&nbsp;&nbsp;REGSTRATION FORM&nbsp;&nbsp;&nbsp;</h1>
  &nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;
  <table><td>
  <table class="s1" height="100" >
  
  <tr ><td class="s1" align="right">User Id&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="id" value="<%=id%>" ></td></tr>
  

  <tr ><td class="s1" align="right">Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="name" ></td></tr>
	
	<tr ><td class="s1" align="right">User Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="username" ></td></tr>
	
	<tr ><td class="s1" align="right">Email id&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="eid" ></td></tr>
	
	
	
	<tr ><td class="s1" align="right">Password&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="password" name="pwd" ></td></tr>
	
	<tr ><td class="s1" align="right">Confirm Password&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="password" name="conpwd" ></td></tr>
	
	<tr ><td class="s1" align="right">Dob&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1" ><input name="dob" type="Text" id="demo1" maxlength="25" size="20"><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td></tr>
	
	<tr ><td class="s1" align="right">Address&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="address" ></td></tr>
	
	<tr ><td class="s1" align="right">Mobile Num&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="mno" ></td></tr>
	
	<tr ><td class="s1" align="right">Country&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="cry" ></td></tr>
	
	
	<tr ><td class="s1" align="right">Gender&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="radio"  name="gender" value="Male" >Male &nbsp;<input type="radio"  name="gender" value="Fe-Male" >Fe-Male</td></tr>
		
	
	<tr><td class="s1" align="right" >UserType&nbsp;&nbsp;&nbsp;:</td>
    
    <td class="s1"><select name="utype"><option value="0">--Select--</option><option value="owner">Owner</option><option value="server">Server</option><option value="user">User</option></select></td></tr>
	
		
	
	<tr ><td class="s1" align="right"></td>
    <td class="s1"><input type="submit" name="submit" value="SUBMIT" >&nbsp;<input type="reset" name="reset"></td></tr>
	
	
		
	 
  </table>
  </td>
  <td><img src="images/1234.jpg" width="250" height="250"></td></table>
</div>
<!--<div class="row2">


</div>-->
</div>
<div class="content-right">


<table>
			<tr align="char"><tr align="justify"></tr><tr></tr><tr></tr>
			
			
			
			
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
			<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
			
			
			<td>
				<td width="640" height="211">
				<img src="images/loginleft.gif" width="175" height="350">
				</td></td>
				</tr>
				</table>






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
