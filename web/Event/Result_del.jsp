
<%@page import="java.sql.*" %>\
<%try
{
    response.setContentType("text/html");
    
    String a=request.getParameter("em");

Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst= con.prepareStatement("delete from result where WID=?");

pst.setString(1,a);

int u= pst.executeUpdate();
response.sendRedirect("Result.jsp");
}

catch(Exception ett)
{
out.print(ett);
}
%>