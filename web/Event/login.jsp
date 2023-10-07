<%@page import="java.sql.*" %>
<%    
    try{
    response.setContentType("text/html");
    
        String a= request.getParameter("e1");
        String b= request.getParameter("p1");        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
        PreparedStatement pst= con.prepareStatement("select * from applicant where email=? and pwd=?");
        
        pst.setString(1,a);
        pst.setString(2,b);
 
       ResultSet rs=pst.executeQuery();
        if(rs.next())
        {
        session.setAttribute("na",rs.getString(1));
        session.setAttribute("em",a);
        response.sendRedirect("user_dashboard.jsp");
        }
        else
        {
            response.sendRedirect("error.html");
        }
    }
catch(Exception ett)
{
        response.sendRedirect("error.html");
}    
        
    
%>