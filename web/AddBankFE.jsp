<%-- 
    Document   : AddBankFE
    Created on : 27 Oct, 2022, 12:14:45 PM
    Author     : BASAVARAJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Bank Details</title>
    </head>
    <body>
         <body>
        <div> <h1> Add Bank Details </h1> </div>
        <hr>
        <div>
            <form method="post" action="AddBankDet.jsp">
                <table border="1">
                    <tr>
                        <th>
                            Enter the IFSC Code
                        </th>
                        <td>
                            <input type="text" name="ifsc">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Select the Bank Name
                        </th>
                        <td>
                            <select name="bankname">
                                <option>Axis </option>
                                <option>SBI</option>
                                <option>HDFC</option>
                                <option>ICICI</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Enter the Branch Name
                        </th>
                        <td>
                            <input type="text" name="branchname">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><center><input type="submit" value="Ädd Bank"></center></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
    </body>
</html>