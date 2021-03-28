<%-- 
    Document   : bank
    Created on : Mar 29, 2021, 12:06:18 AM
    Author     : core i5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank - Freelance Pro</title>
        <%@include file ="header.jsp"%>
        <link href="style/creditcard.css" rel="stylesheet" type="text/css"/>
        <script src="js/bank.js" type="text/javascript"></script>
    </head>
    <body>
         <div id="main" class="card">
            <div class="card-body">
                 <h4 class="card-title">Please enter the following details.</h4>
            <table>
                <tbody>
             <tr>
                            <td>Routing Number</td>
                            <td><input class="form-control" type="text" id="routing" required/></td>
                        </tr>
                        <tr>
                            <td>Account Number</td>
                            <td><input class="form-control" type="password" id="account" required/></td>
                        </tr>
                        <tr>
                            <td>Confirm Account Number</td>
                            <td><input class="form-control" type="password" id="caccount" required/></td>
                        </tr>
                        <tr>
                            <td>Type of account</td>
                            <td>
                                <select class="form-select" id="accountType">
                                        <option value="savings">Savings Account</option>
                                        <option value="checking">Checking Account</option>
                                 </select>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> <button type="button" class="btn btn-success" onclick="submit()">Submit</button></td>
                        </tr>
                </tbody>
                         </table>
            </div>
        </div>
    </body>
</html>
