<%-- 
    Document   : AddAdminFE
    Created on : 27 Oct, 2022, 7:18:47 PM
    Author     : Abhi
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.ConnectBankDatabase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD ADMIN DETAILS</title>
    </head>
    <body>
        <% 
            Connection con=ConnectBankDatabase.connectBankDB();
            String sql="select ifsc from bank";
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(sql);
        %>
        <div><h1>ADD ADMIN DETAILS</h1></div>
        <div>
            <form method="post" action="AddAdmin.jsp">
                <table border="1">
                    <tr>
                        <th>
                            Enter Admin ID:
                        </th> 
                        <td>
                            <input type="text" name="aid"><br><br>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Enter Email ID:
                        </th>
                        <td>
                            <input type="email" name="eid"><br><br>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Enter Password: 
                        </th> 
                        <td>
                            <input type="password" name="pwd"><br><br>
                        </td> 
                    </tr>
                    <tr>
                        <th>
                            Enter the Role
                        </th>
                        <td>
                           <input type="radio" name="Manager" value="manager"> Manager
                            <input type="radio" name="Manager" value="Cashier"> Cashier
                        </td>
                    </tr>
                   <tr>
                        <th>
                           Select the IFSC Code
                        </th>
                        <td>
                            <select name="ifsc">
                                <%while(rs.next())
                                {
                                    out.println("<option>"+rs.getInt(1)+"</option>");
                                }
                                con.close();
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Enter the Branch Address
                        </th>
                        <td>
                            <input type="text" name="address">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Enter the Name
                        </th>
                        <td>
                            <input type="text" name="name">
                        </td>
                    </tr>
                   <tr>
                        <td colspan="2"><center><input type="submit" value="Ädd Admin"></center></td>
                    </tr>
                </table>
           </form>
        </div>
    </body>
</html>

