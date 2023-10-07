
<%@page import="java.sql.*" %>\
<%try
{
    response.setContentType("text/html");
    
    String a=request.getParameter("em");

Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst= con.prepareStatement("delete from event where EventID=?");

pst.setString(1,a);

int u= pst.executeUpdate();
response.sendRedirect("Event_management.jsp");
}

catch(Exception ett)
{
out.print(ett);
}
%>