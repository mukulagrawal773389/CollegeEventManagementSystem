<%@page import="java.sql.*" %>
<%    
    response.setContentType("text/html");
    
        String a= request.getParameter("n1");
        String b= request.getParameter("e1");
        String c= request.getParameter("ph");
        String d= request.getParameter("m1");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
        PreparedStatement pst= con.prepareStatement("insert into contact values(?,?,?,?)");
        
        pst.setString(1,a);
        pst.setString(2,b);
        pst.setString(3,c);
        pst.setString(4,d);
       int r=pst.executeUpdate();
        if(r>0)
        {
            out.print("<script>alert('You are Successfully registered')</script>");
        response.sendRedirect("index.html");
        }
      
%>
