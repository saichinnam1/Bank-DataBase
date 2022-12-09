<%-- 
    Document   : TransferMoney
    Created on : 31 Oct, 2022, 11:56:55 AM
    Author     : BASAVARAJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Money</title>
    </head>
    <body>
        <h1> Transer Money</h1>
        <form method="post" action="UpdateMoney.jsp">
            <table border="1">
                <tr>
                    <th>Enter the Account Number of Receiver:</th>
                    <td><input type="text" name="bacountno"></td>
                </tr>
                <tr>
                    <th>Enter the Amount to be Transfer:</th>
                    <td><input type="text" name="amount"></td>
                </tr>
                <tr>
                    <th>Enter the Account Number of Sender:</th>
                    <td><input type="text" name="sendaccountno"></td>
                </tr>
                <tr>
                    <td colspan="2">
                <center><input type="submit" valie="Send Money"></center>
                </tr>
            </table>
    </body>
</html>

