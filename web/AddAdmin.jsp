<%-- 
    Document   : AddAdmin
    Created on : 27 Oct, 2022, 7:45:02 PM
    Author     : Abhi
--%>

<%@page import="database.ConnectBankDatabase"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add Admin </h1>
        
        
        <%-- Varaible Declared --%>
        <%!Connection con = null;
            PreparedStatement pstm = null;
        %> 
        <%-- Read the values Entered in the forms --%>
        <%
            
            int aid=Integer.parseInt(request.getParameter("aid"));
            String emailid = request.getParameter("eid");
            String passwrd = request.getParameter("pwd");
            String Role = request.getParameter("Manager");
            int ifsc = Integer.parseInt(request.getParameter("ifsc"));
            String branchaddress = request.getParameter("address");
            String name = request.getParameter("name");
        %>
        
        <table border="1">
            <tr><th>Admin ID</th><th>Email ID</th><th>Password</th><th>Role</th><th>IFSC</th><th>Branch Address</th><th>Name</th> </tr>
            <tr>
                
                <td><%=aid%></td>
                <td><%=emailid%></td>
                <td><%=passwrd%></td>
                <td><%=Role%></td>
                <td><%=ifsc%></td>
                <td><%=branchaddress%></td>
                <td><%=name%></td>
            </tr>
        </table>
            
            
            
             <%-- JDBC Steps --%>
        <%
            Connection con=ConnectBankDatabase.connectBankDB();
            String sql = "INSERT INTO Admin VALUES(?,?,?,?,?,?,?)";
            pstm = con.prepareStatement(sql);
            
             pstm.setInt(1, aid);
             pstm.setString(2, emailid);
             pstm.setString(3, passwrd);
             pstm.setString(4, Role);
             pstm.setInt(5, ifsc);
             pstm.setString(6, branchaddress);
             pstm.setString(7,name);
            int i = pstm.executeUpdate();
            if(i>0){
        %>
        <script> alert("Record Inserted");</script>
        <%} else { %>
        <script> alert("Record Not Inserted");</script>
        <%}
        con.close();
        %>
        
        
        
    </body>
</html>
