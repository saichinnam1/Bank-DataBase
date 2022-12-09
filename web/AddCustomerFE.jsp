<%-- 
    Document   : AddCustomerFE
    Created on : 28 Oct, 2022, 10:10:45 AM
    Author     : BASAVARAJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Customer Details</title>
        <script type="text/javascript" src="ValidateAdID.js"></script>
    </head>
    <body>
        <div>
        <h1>Customer Sign UP</h1>
        </div>
        <hr>
        <div>
            <form name="f1"method="post" action="AddCustomerBE.jsp">
                <table border="1">
                    <tr>
                        <th>Enter the Aadhar ID</th>
                        <td><input type="text" name="aadharid"></td>
                    </tr>
                    <tr>
                        <th>Enter the Customer Name</th>
                        <td><input type="text" name="cname"></td>
                    </tr>
                    <tr>
                        <th>Enter the E-Mail ID</th>
                        <td><input type="email" name="emailid"></td>
                    </tr>
                    <tr>
                        <th>Enter the Password</th>
                        <td><input type="password" name="pwd"></td>
                    </tr>
                    <tr>
                        <th>Enter the DOB</th>
                        <td><input type="date" name="dob"></td>
                    </tr>
                    <tr>
                        <th>Enter the Address</th>
                        <td><input type="text" name="address"></td>
                    </tr>
                    <tr>
                        <th>Enter the Mobile Number</th>
                        <td><input type="text" name="mno"></td>
                    </tr>
                    <tr>
                        <th>Enter the Pancard</th>
                        <td><input type="text" name="pancard"></td>
                    </tr>
                    <tr>
                            <td colspan="2"><center><input type="submit" value="Sign UP" onclick="return validate();"></center></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
