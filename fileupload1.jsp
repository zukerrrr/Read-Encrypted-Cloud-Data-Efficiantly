<%@ page  import="java.sql.*,databaseconnection.*,java.util.*"  %>

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
var a=document.f1.filename.value;
var b=document.f1.indexm.value;
var c=document.f1.des.value;
//var d=document.f1.file.value;


if(a=="")
{
alert("Enter Filename enter here");
document.f1.filename.focus();
return false;
}

 if(b=="")
{
alert("Enter Index");
document.f1.indexm.focus();
return false;
}
if(c=="")
{
alert("PLz provide Dscription of the project");
document.f1.des.focus();
return false;
} 
/*if(d=="")
{
alert("PLz select the file");
document.f1.file.focus();
return false;
}
  */
  
  
	}
	</script>
</head>
<body>

<%
Connection con1=null;
Statement st=null;
ResultSet rs=null;
int id=0;
String id1=null;
try
{
con1=databasecon.getconnection();
st=con1.createStatement();
rs=st.executeQuery("select max(fileid) from fileup");
while(rs.next())
{
if(rs.getInt(1)==0)
id=1;
else
id=rs.getInt(1)+1;
 id1=Integer.toString(id);


System.out.println(id1);
}
session.setAttribute("id2",id1);

}

 catch(Exception e)
        {
            out.println(e.getMessage());
      	  
	  
	    }
		
		
		
	      
%>
<form action="fileuploadinsert.jsp" method="post" name="f1" onsubmit="return valid1()">
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
<h2><font size="6">Efficient Similarity Search over <br/>              Encrypted Data</font><br/></h2></pre>
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

<br>

<table align="center" bgcolor="#009933"  cellspacing="3">

<tr ><td class="s1" align="right"><font color="#FFFFFF" size="+1">File Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
    <td class="s1"><input type="text" name="id" value="<%=id%>" ></td></tr>

<tr>
<td>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;</td>
</tr>


<tr>
<td><font color="#FFFFFF" size="+1">File Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
<td><input type="text" name="filename" ></td>
</tr>

<tr>
<td>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;</td>
</tr>


<tr>
<td><font color="#FFFFFF" size="+1">File Key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
<td><input type="text" name="filekey" value="<%=(int)(Math.random()*1000)%>"  ></td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
<td><font color="#FFFFFF" size="+1">Index&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
<td><input type="text" name="indexm" ></td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
<td><font color="#FFFFFF" size="+1">File Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
<td><textarea name="des" cols="20"></textarea></td>
</tr>

<tr>
<td>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
<td><font color="#FFFFFF" size="+1">File&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
<td><input type="file" name="datafile" ></td>
</tr>

<tr>
<td>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;</td>
</tr>

<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><input type="submit" name="submit" value="SUBMIT" ></td>
</tr>

</table>


</div>
<!--<div class="row2">



</div>-->
</div>
<div class="content-right">
<div class="mainmenu">
<h2 class="sidebar1">FileUpload</h2>
<font size="+1">
<ul >
  <li><a href="fileupload.jsp">Back</a></li>
  
  
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
