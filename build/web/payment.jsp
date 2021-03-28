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
        <title>Payment - Freelance Pro</title>
   <%@include file ="header.jsp"%>
   <link href="style/payment.css" rel="stylesheet" type="text/css"/>
   <script src="js/payment.js" type="text/javascript"></script>
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
                            <td><input id="first" class="form-control" type="text" name="first" size="40" required/></td></tr>
                        <tr>
                            <td>Last Name</td>
                            <td><input id="last" class="form-control" type="text" name="last" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input id="email" class="form-control" type="email" name="email" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Street Address</td>
                            <td><input id="street" class="form-control" type="text" name="street" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>City</td>
                            <td><input id="city" class="form-control" type="text" name="city" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>State</td>
                            <td><input id="state" class="form-control" type="text" name="state" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Zip Code</td>
                            <td><input id="zip" class="form-control" type="text" name="zip" size="10" required/></td>
                        </tr>
                        <tr>
                            <td>Type of payment</td>
                            <td>
                                 <select class="form-select" id="paymentType">
                                        <option value="creditCard">Credit Card</option>
                                        <option value="bank">Bank Transaction</option>
                                 </select>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> <button type="button" class="btn btn-primary" onclick="submit()">Next</button></td>
        </tr>
   </tbody>
</table>
    </div>
</body>
</html>