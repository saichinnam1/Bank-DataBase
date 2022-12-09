<%-- 
    Document   : GeneratAccount
    Created on : 31 Oct, 2022, 9:07:31 AM
    Author     : BASAVARAJU
--%>

<%@page import="database.ConnectBankDatabase"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generate Account </title>
    </head>
    <body>
        <%! Connection con=null;
            Statement stmt=null; %>
            <%
                con=ConnectBankDatabase.connectBankDB();
             String sql="select ifsc from bank";
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(sql);    
            %>
        <div>
        <h1>Generate Account Number</h1>
        </div>
        <hr>
        <div>
            <form method="post" action ="GenerateAccountBE.jsp">
                <table border="1">
                    <tr>
                        <th>Enter the Account Number</th>
                        <td><input type="text" name="accountno"></td>
                    </tr>
                    <tr>
                        <th>Enter the Aaadhar Number</th>
                        <td><input type="text" name="aadharno"></td>
                    </tr>
                    <tr>
                        <th>Select the IFSC code</th>
                                <td><select name="ifsc">
                               <%while(rs.next()){        
                               out.println("<option>"+rs.getInt(1)+"</option>");
                               }
                               con.close();%>
                                </select></td>
                    </tr>
                    <tr>
                        <th>Select the Date</th>
                        <td><input type="date" name="dot"></td>
                    </tr>
                    <tr>
                    
                        <td colspan="2"><center><input type="submit" value="Generate Account"></center></td>
                    </tr>  
                </table>
            </form>
        </div>
    </body>
</html>
