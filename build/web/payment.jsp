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
   <link href="style/formstyle.css" rel="stylesheet" type="text/css"/>
    <table border="0">
    </head>
    
</html>
<tr>
    <td>Thank you for registering as a <strong>Learner User</strong> To complete the process, please complete the payment form below.</td>
</tr>
<tbody>
<br>

                            <td>First Name</td>
                            <td><input type="text" name="first" size="40" required/></td>
                       
                        <tr>
                            <br/>
                            <br>
                            <td>Last Name</td>
                            <td><input type="text" name="last" size="40" required/></td>
                        </tr>
                        <tr>
                            <br/>
                            <br>
                            <td>Email</td>
                            <td><input type="text" name="email" size="40" required/></td>
                        </tr>
                        <tr>
                            <br/>
                            <br>
                            <td>Street Address</td>
                            <td><input type="text" name="street" size="40" required/></td>
                        </tr>
                        <tr>
                            <br/>
                            <br>
                            <td>City</td>
                            <td><input type="text" name="city" size="40" required/></td>
                        </tr>
                        <tr>
                        <br/>
                        <br>
                            <td>State</td>
                            <td><input type="text" name="state" size="40" required/></td>
                        </tr>
                        <tr>
                        <br/>
                        <br>
                            <td>Zip Code</td>
                            <td><input type="text" name="zip" size="10" required/></td>
                        </tr>
                        <tr>
                            <br/>
                            
                            <td>Credit Card Number</td>
                            <td><input type="password" name="card" size="16" required/></td>
                        </tr>
                        <tr>
                            
                            <td>Expiration Date (xx/xxxx) </td>
                            <td><input type="text" name="exp" size="7" required/></td>
                        </tr>
                        <tr>
                            
                            <td>CVC</td>
                            <td><input type="text" name="cvc" size="3" required/></td>
                        </tr>
                        <tr>
                        
   
    

            <td> <input type="button" value="Submit" onclick="validateForm()" /></td> &nbsp;&nbsp
            
        </tr>
        
<form name="Pay" action="payAction.jsp">
    <table border="0">
        <tbody>
            </td>
            </tr>
        </tbody>
    </table>
</body>
</html>