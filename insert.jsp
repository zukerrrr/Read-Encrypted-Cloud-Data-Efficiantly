<%@ page import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String name1=null,username1=null,emailid1=null,password1=null,confirmpassword1=null,dob1=null,address1=null;
String country1=null,gender1=null,mobilenum1=null,utype=null;
int id1=(Integer)session.getAttribute("id");
Connection conn=null;
PreparedStatement ps=null;

try
{

conn=databasecon.getconnection();
ps=conn.prepareStatement ("insert into regstration (userid,name,username,emailid,password,confirmpassword,dob,address,country,gender,mobilenumber,usertype) values (?,?,?,?,?,?,?,?,?,?,?,?)");

name1=request.getParameter("name");
username1=request.getParameter("username");
emailid1=request.getParameter("eid");
password1=request.getParameter("pwd");
confirmpassword1=request.getParameter("conpwd");
dob1=request.getParameter("dob");
address1=request.getParameter("address");
country1=request.getParameter("cry");
gender1=request.getParameter("gender");
mobilenum1=request.getParameter("mno");
utype=request.getParameter("utype");



ps.setInt(1,id1);
ps.setString(2,name1);
ps.setString(3,username1);
ps.setString(4,emailid1);
ps.setString(5,password1);
ps.setString(6,confirmpassword1);
ps.setString(7,dob1);
ps.setString(8,address1);
ps.setString(9,country1);
ps.setString(10,gender1);
ps.setString(11,mobilenum1);
ps.setString(12,utype);

int x=ps.executeUpdate();

            if(x==0)
                {
                response.sendRedirect("sucessreg.jsp");}
            else
                {
                response.sendRedirect("sucessreg.jsp");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
        
%>

</body>
</html>
