<%-- 
    Document   : creditcard
    Created on : Mar 28, 2021, 11:14:36 PM
    Author     : core i5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Credit Card Payment - Freelance Pro</title>
        <%@include file ="header.jsp"%>
        <link href="style/creditcard.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="main" class="card">
            <div class="card-body">
                 <h4 class="card-title">Please enter the following details.</h4>
            <table>
                <tbody>
             <tr>
                            <td>Credit Card Number</td>
                            <td><input class="form-control" type="password" id="card" size="16" required/></td>
                        </tr>
                        <tr>
                            <td>Expiration Date (xx/xxxx)</td>
                            <td><input class="form-control" type="text" id="exp" size="7" required/></td>
                        </tr>
                        <tr>
                            <td>CVC</td>
                            <td><input class="form-control" type="text" id="cvc" size="3" required/></td>
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
