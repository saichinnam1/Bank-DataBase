<%-- 
    Document   : CursotmerLoginFE
    Created on : 31 Oct, 2022, 11:22:52 AM
    Author     : BASAVARAJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
        <div>
            <h1>Admin Login</h1>
        </div>
        <hr>
        <form method="post" action="AdminLoginBE.jsp">
            <table border="1">
                <tr>
                    <th>Enter the E-Mail ID:</th>
                    <td><input type="email" name="emailid"></td>
                </tr>
                <tr>
                    <th>Enter the Password:</th>
                    <td><input type="password" name="pwd"></td>
                </tr>
                <tr>
                    <td colspan="2">
                <center><input type="submit" value="Login"></center>
                </td>
                </tr>
            </table>
        </form>

    </body>
</html>
