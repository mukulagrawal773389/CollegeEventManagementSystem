<%@page import="java.sql.*" %>
<%
   
    String na=request.getParameter("na");
    String em=request.getParameter("em");
    String eid=request.getParameter("eid");
    String ena=request.getParameter("ename");
    String ed=request.getParameter("edt");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
    PreparedStatement pst= con.prepareStatement("insert into bevent values(?,?,?,?,?)");
        
        pst.setString(1,na);
        pst.setString(2,em);
        pst.setString(3,eid);
        pst.setString(4,ena);
        pst.setString(5,ed);
        int r=pst.executeUpdate();
        if(r>0)
        {
            response.sendRedirect("user_dashboard.jsp");
        }
%>