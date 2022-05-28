<%@ page  import="java.sql.*,databaseconnection.*"  %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<%
String n=request.getParameter("server");

String o1="cloudservera";
String o2="cloudserverb";
String o3="cloudserverc";



int x=(Integer)session.getAttribute("idx");
String n1=(String)session.getAttribute("uname");
String n2=(String)session.getAttribute("pwd");
int n3=(int)(Math.random()*200000);




String st1="service request";




if(n.equals(o1))
{
Connection cn1=null,cn2=null;
PreparedStatement ps=null;
Statement st=null;
ResultSet rs3=null;



try{
cn2=databasecon.getconnection();
st=cn2.createStatement();
rs3=st.executeQuery("select * from cloudservera where username='"+n1+"'");

if(rs3.next())
{
response.sendRedirect("wrongrequest.jsp");
}
else
{
try
{

cn1=databasecon.getconnection();
ps=cn1.prepareStatement("insert into cloudservera (userid,username,status,userpwd) values(?,?,?,?)");
ps.setInt(1,x);
ps.setString(2,n1);
ps.setString(3,st1);
ps.setInt(4,n3);

int x1 =ps.executeUpdate();

   if(x1==0)
                {
                response.sendRedirect("servicerequest.jsp?message=success");}
            else
                {
                response.sendRedirect("servicerequest.jsp?message=success");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }

}
}
catch(Exception e)
        {
            out.println(e.getMessage());
        }



}

if(n.equals(o2))
{
Connection cn1=null,cn2=null;
PreparedStatement ps=null;
Statement st=null;
ResultSet rs3=null;



try{
cn2=databasecon.getconnection();
st=cn2.createStatement();
rs3=st.executeQuery("select * from cloudserverb where username='"+n1+"'");

if(rs3.next())
{
response.sendRedirect("wrongrequest.jsp");
}
else
{
try
{

cn1=databasecon.getconnection();
ps=cn1.prepareStatement("insert into cloudserverb (userid,username,status,userpwd) values(?,?,?,?)");
ps.setInt(1,x);
ps.setString(2,n1);
ps.setString(3,st1);
ps.setInt(4,n3);

int x1 =ps.executeUpdate();

   if(x1==0)
                {
                response.sendRedirect("servicerequest.jsp?message=success");}
            else
                {
                response.sendRedirect("servicerequest.jsp?message=success");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }

}
}
catch(Exception e)
        {
            out.println(e.getMessage());
        }








}

if(n.equals(o3))
{
Connection cn1=null,cn2=null;
PreparedStatement ps=null;
Statement st=null;
ResultSet rs3=null;



try{
cn2=databasecon.getconnection();
st=cn2.createStatement();
rs3=st.executeQuery("select * from cloudserverc where username='"+n1+"'");

if(rs3.next())
{
response.sendRedirect("wrongrequest.jsp");
}
else
{
try
{

cn1=databasecon.getconnection();
ps=cn1.prepareStatement("insert into cloudserverc (userid,username,status,userpwd) values(?,?,?,?)");
ps.setInt(1,x);
ps.setString(2,n1);
ps.setString(3,st1);
ps.setInt(4,n3);

int x1 =ps.executeUpdate();

   if(x1==0)
                {
                response.sendRedirect("servicerequest.jsp?message=success");}
            else
                {
                response.sendRedirect("servicerequest.jsp?message=success");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }

}
}
catch(Exception e)
        {
            out.println(e.getMessage());
        }






}

%>
</body>
</html>
