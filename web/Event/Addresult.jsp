

<%@page import="java.sql.*" %>
<%    
    try
    {
    response.setContentType("text/html");
    
        
        int a= Integer.parseInt(request.getParameter("EID"));
        String b= request.getParameter("Etype");
        String c= request.getParameter("Ename");
        String d= request.getParameter("Edate");
        String e= request.getParameter("WID");
        String f= request.getParameter("Wname");
        int g= Integer.parseInt(request.getParameter("rank"));
        

        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
        PreparedStatement pst= con.prepareStatement("insert into result(EID,Etype,Ename,EDate,WID,Wname,rank)values(?,?,?,?,?,?,?)");
        
        pst.setInt(1,a);
        pst.setString(2,b);
        pst.setString(3,c);
        pst.setString(4,d);
        pst.setString(5,e);
        pst.setString(6,f);
        pst.setInt(7,g);
   
        int r=pst.executeUpdate();
        if(r>0)
        {
            out.print("<script>alert('You are Successfully registered')</script>");
        response.sendRedirect("Result.jsp");
        }
    }
catch(Exception ett)
{
        response.sendRedirect("error.html");
}    
        
      
%>