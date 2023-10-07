<%@page import="java.sql.*" %>
<%
   try
{
response.setContentType("text/html");
String a=request.getParameter("e1");

Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst=con.prepareStatement("select * from applicant where email=?");
pst.setString(1,a);

ResultSet rs=pst.executeQuery();

if(rs.next())
{
pw.print("name is "+rs.getString(1)+"<br>");
pw.print("email is "+rs.getString(2)+"<br>");
pw.print("Pwd "+rs.getString(3)+"<br>");
}
else
 {
RequestDispatcher rd = request.getRequestDispatcher("Adminhome.html");
pw.print("Incorrect Email ..........");
rd.include(request,response);
}
}
catch(Exception ett)
{
try
{
PrintWriter out=res.getWriter();

out.print(ett);
}
catch(Exception et)
{

}

%>
