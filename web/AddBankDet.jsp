<%-- 
    Document   : AddBankDet
    Created on : 27 Oct, 2022, 12:16:52 PM
    Author     : BASAVARAJU
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Bank Details</title>
    </head>
    <body>
        <%-- Varaible Declared --%>
        <%!Connection con = null;
            PreparedStatement pstm = null;
        %> 
        <%-- Read the values Entered in the forms --%>
        <%
            int ifsc = Integer.parseInt(request.getParameter("ifsc"));
            String bankname = request.getParameter("bankname");
            String branchname = request.getParameter("branchname");
        %>
        <%-- Printed the values read from the form in table format--%>
        <table border="1">
            <tr><th>IFSC</th><th>Bank Name</th><th> Branch Name</th> </tr>
            <tr>
                <td><%=ifsc%></td>
                <td><%=bankname%></td>
                <td><%=branchname%></td>
            </tr>
        </table>
            <%-- JDBC Steps --%>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bankdetails";
            String user = "root";
            String password = "root123";
            con = DriverManager.getConnection(url, user, password);
            String sql = "INSERT INTO BANK VALUES(?,?,?)";
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, ifsc);
            pstm.setString(2, bankname);
            pstm.setString(3, branchname);
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
