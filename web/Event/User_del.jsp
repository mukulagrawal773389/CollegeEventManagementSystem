
<%@page import="java.sql.*" %>\
<%try
{
    response.setContentType("text/html");
    
    String a=request.getParameter("em");

Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst= con.prepareStatement("delete from applicant where email=?");

pst.setString(1,a);

int u= pst.executeUpdate();
response.sendRedirect("Users.jsp");
}

catch(Exception ett)
{
out.print(ett);
}
%>