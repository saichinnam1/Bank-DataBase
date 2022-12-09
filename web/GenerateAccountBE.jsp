<%-- 
    Document   : GenerateAccountBE
    Created on : 31 Oct, 2022, 9:31:33 AM
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
        <title>Generate Account</title>
    </head>
    <body>
        <%! Connection con=null;
        PreparedStatement pst=null; %>
        <% 
        long accountno=Long.parseLong(request.getParameter("accountno"));
        long aadharno=Long.parseLong(request.getParameter("aadharno"));
        int ifsc=Integer.parseInt(request.getParameter("ifsc"));
        String dot=request.getParameter("dot");
        con=ConnectBankDatabase.connectBankDB();
        String sql="INSERT INTO ACCOUNT(accountno, aadharid,ifsc, dot) values(?,?,?,?)";
        pst=con.prepareStatement(sql);
        pst.setLong(1, accountno);
        pst.setLong(2, aadharno);
        pst.setInt(3, ifsc);
        pst.setString(4, dot);
        int i=pst.executeUpdate();
        if(i>0)
        {
            out.println("<script>alert('Account Created!');</script>");
        }
        else
        {
            out.println("<script>alert('Account Not Created');</script>>");
        
        }
        con.close();
        %>
        
       
       
    </body>
</html>