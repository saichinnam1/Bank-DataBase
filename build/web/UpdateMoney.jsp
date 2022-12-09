<%-- 
    Document   : UpdateMoney
    Created on : 31 Oct, 2022, 12:04:48 PM
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
        <title>Update Money</title>
    </head>
    <body>
        <%!
            Connection con = null;
            PreparedStatement pscredit = null;
            PreparedStatement psdebit = null;
        %>
        <%
            con = ConnectBankDatabase.connectBankDB();
            long raccountno = Long.parseLong(request.getParameter("bacountno"));
            double amount = Double.parseDouble(request.getParameter("amount"));
            long sendaccountno = Long.parseLong(request.getParameter("sendaccountno"));
            String sql1 = "update account set currentbal=currentbal+'"+amount+"' where accountno=?";
            String sql2 = "update account set currentbal=currentbal-'"+amount+"' where accountno=?";
            
                          
            pscredit = con.prepareStatement(sql1);
            psdebit = con.prepareStatement(sql2);
            pscredit.setLong(1,raccountno);
            psdebit.setLong(1, sendaccountno);
            int i=pscredit.executeUpdate();
            
            if(i>0)
            {
                out.println("Amount Transer to Account Number:"+raccountno);
           }
            else
             {
                 out.println("Wrong Account Number Enterd!");
            }
            int j=psdebit.executeUpdate();
            if(j>0)
            {
                 out.println("Amount Debited  Account Number:"+sendaccountno);
            }
            else
            {
                 out.println("Wrong Account Number Enterd!");
            }
    con.close();
%>
    </body>
</html>
