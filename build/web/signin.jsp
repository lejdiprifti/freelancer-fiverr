<%-- 
    Document   : signin
    Created on : Mar 22, 2021, 7:54:16 PM
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in - Freelance Pro</title>
        <%@include file ="header.jsp"%>
        <link href="style/signin.css" rel="stylesheet" type="text/css"/>
    </head>
    <body> 
    <div id="loginForm">
        <table>
            <thead>
                <tr><td><h1>Welcome!</h1>
            <span class="badge bg-dark">Please login below</span>
                    </td></tr>
            </thead>
            <tbody>
                <tr>
                    <td><label for="username">Username</label></td>
                    <td><input class="form-control" type="text" name="username" size="40" required/></td>
                </tr>
                <tr>
                    <td><label for="password">Password</label></td>
                    <td><input class="form-control" type="password" name="password" size="40" required/></td>
                </tr>
                <tr>
                    <td>
                        <a href=""><span class="badge bg-primary">Forgot password?</span></a>
                    </td>
                    <td>
                        <button id="submitBtn" class="btn btn-success" name="submit">Submit</button>
                    </td>
                </tr>
            </tbody>
       </table>
    </div>
    </body>
</html>