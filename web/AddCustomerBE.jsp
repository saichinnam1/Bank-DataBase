<%-- 
    Document   : AddCustomerBE
    Created on : 28 Oct, 2022, 10:42:40 AM
    Author     : BASAVARAJU
--%>

<%@page import="database.ConnectBankDatabase"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Customer Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <%! Connection con = null;
            PreparedStatement pst = null;
        %>
        <%
            con = ConnectBankDatabase.connectBankDB();
            long aadharid = Long.parseLong(request.getParameter("aadharid"));
            String cname = request.getParameter("cname");
            String emailid = request.getParameter("emailid");
            String pwd = request.getParameter("pwd");
            String dob = request.getParameter("dob");
            String address = request.getParameter("address");
            long mno = Long.parseLong(request.getParameter("mno"));
            String pancard = request.getParameter("pancard");
            String sql = "INSERT INTO CUSTOMER VALUES(?,?,?,?,?,?,?,?)";
            pst = con.prepareStatement(sql);
            pst.setLong(1, aadharid);
            pst.setString(2, cname);
            pst.setString(3, emailid);
            pst.setString(4, pwd);
            pst.setString(5, dob);
            pst.setString(6, address);
            pst.setLong(7, mno);
            pst.setString(8, pancard);
            int i = pst.executeUpdate();

        %>
        <h1> Details Added to Database </h1>
        <hr>
        <div class="container">
            <table class="table table-hover" border="2pt">
                <thead>
                    <tr class="table-primary">
                        <th>Aadhar ID</th>
                        <th>Customer Name</th>
                        <th>Email</th>
                        <th>DOB</th>
                        <th>Address</th>
                        <th>Mobile.Number</th>
                        <th>Pan Card No.</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%=aadharid%></td>
                        <td><%=cname%></td>
                        <td><%=emailid%></td>
                        <td><%= dob%></td>
                        <td><%= address%></td>
                        <td><%=  mno%></td>
                        <td><%= pancard%></td>
                    </tr>
            </table>
        </div>
        <div>
            <%
                if (i > 0) {
                    out.println("<h1>Thank You for Registration</h1>");
                } else {
                    out.println("Account Not Created!");
                }
                con.close();
            %>
        </div>
    </body>
</html>