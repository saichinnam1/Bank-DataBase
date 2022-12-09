<%-- 
    Document   : AddBenificierFE
    Created on : 31 Oct, 2022, 9:53:29 AM
    Author     : BASAVARAJU
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.ConnectBankDatabase"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Benificier Account</title>
    </head>
    <body>
        <%! Connection con = null;
            Statement stm = null;
        %>
        <% con = ConnectBankDatabase.connectBankDB();
            String sql = "SELECT ifsc from bank";
            stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
        %>
        <div>
            <h1>Add Benficier Account</h1>
        </div>
        <form method="post"action="AddBenificierBE.jsp">
            <table border="1">
                <tr>
                    <th>Enter the Benificier Account Number:</th>
                    <td> <input type="text" name="bacntno"></td></tr>
                <tr>
                    <th>Select the IFSC Code</th>
                            <td><select name="ifsc">
                        <%while(rs.next()){
                            out.println("<option>"+rs.getInt(1)+"</option>");
                        }
                        rs.close();
                        con.close();
                        %>
                        </select></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Add Benificer Account"></td>
                </tr>
            </table>
                        
        </form>
    </body>
</html>
