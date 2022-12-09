<%-- 
    Document   : CustomerLoginBE
    Created on : 31 Oct, 2022, 11:32:58 AM
    Author     : BASAVARAJU
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.ConnectBankDatabase"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Login Verification</title>
    </head>
    <body>
        <%!Connection con;
            PreparedStatement ps;
        %>
        <%
            String email=request.getParameter("emailid");
            String pwd=request.getParameter("pwd");
            request.getSession(true);
            session.setAttribute("email",email);
           
            con=ConnectBankDatabase.connectBankDB();
            String sql="SELECT email, pwd from customer where email=? and pwd=?";
            ps=con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, pwd);
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
            {
              
                request.getRequestDispatcher("CustomerDashboard.jsp").forward(request, response);
      //          out.println("Email-ID:"+email);
            }
            else
            {
                out.println("<script>alert('Invalid E-Maild ID/Password Entered');</script>");
                request.getRequestDispatcher("CustomerLoginFE.jsp").include(request, response);
            }
            con.close();
            %>
    </body>
</html>
