

<%@page import="java.sql.*" %>
<%    
    try
    {
    response.setContentType("text/html");
    
        
        String b= request.getParameter("Etype");
        String c= request.getParameter("Ename");
        String d= request.getParameter("Edate");
        String e= request.getParameter("Estart");
        String f= request.getParameter("Eend");
        int g= Integer.parseInt(request.getParameter("price1"));
        int h= Integer.parseInt(request.getParameter("price2"));
        int i= Integer.parseInt(request.getParameter("price3"));
        String j= request.getParameter("OrgBy");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
        PreparedStatement pst= con.prepareStatement("insert into event(Etype,Ename,EDate,Estart,Eend,price1,price2,price3,orgby)values(?,?,?,?,?,?,?,?,?)");
        
        pst.setString(1,b);
        pst.setString(2,c);
        pst.setString(3,d);
        pst.setString(4,e);
        pst.setString(5,f);
        pst.setInt(6,g);
        pst.setInt(7,h);
        pst.setInt(8,i);
        pst.setString(9,j);
        int r=pst.executeUpdate();
        if(r>0)
        {
            out.print("<script>alert('You are Successfully registered')</script>");
        response.sendRedirect("Event_management.jsp");
        }
    }
catch(Exception ett)
{
        response.sendRedirect("error.html");
}    
        
      
%>