<%-- 
    Document   : payment
    Created on : Mar 22, 2021, 7:53:02 PM
    Author     : nrusso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <%@include file ="header.jsp"%>
   <link href="style/payment.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <div id="main">
        <div id="title">
        <h5>Thank you for registering as a <strong>Learner User</strong></h5>
        <span class="badge bg-primary">To complete the process, please complete the payment form below.</span>
        </div>
        <table>
<tbody>
    <tr>
                            <td>First Name</td>
                            <td><input class="form-control" type="text" name="first" size="40" required/></td>
                        <tr>
                            <td>Last Name</td>
                            <td><input class="form-control" type="text" name="last" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input class="form-control" type="text" name="email" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Street Address</td>
                            <td><input class="form-control" type="text" name="street" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>City</td>
                            <td><input class="form-control" type="text" name="city" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>State</td>
                            <td><input class="form-control" type="text" name="state" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Zip Code</td>
                            <td><input class="form-control" type="text" name="zip" size="10" required/></td>
                        </tr>
                        <tr>
                            <td>Credit Card Number</td>
                            <td><input class="form-control" type="password" name="card" size="16" required/></td>
                        </tr>
                        <tr>
                            <td>Expiration Date (xx/xxxx) </td>
                            <td><input class="form-control" type="text" name="exp" size="7" required/></td>
                        </tr>
                        <tr>
                            <td>CVC</td>
                            <td><input class="form-control" type="text" name="cvc" size="3" required/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> <button type="button" class="btn btn-success" onclick="validateForm()">Submit</button></td>
        </tr>
   </tbody>
</table>
    </div>
<form name="Pay" action="payAction.jsp">
    <table border="0">
        <tbody>
            </td>
            </tr>
        </tbody>
    </table>
</body>
</html>