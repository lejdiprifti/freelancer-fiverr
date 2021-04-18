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
        <title>Admin - Freelance Pro</title>
        <%@include file ="header.jsp"%>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
        <script type="text/javascript" src="js/admin.js"></script>
    </head>
    <body> 
        <div id="loginForm">
            <table class="table">
                <thead  class="thead-dark">
                    <tr><th scope="col">UserId</th>
                        <th scope="col">Firstname</th>
                        <th scope="col">Lastname</th>
                        <th scope="col">Username</th><!-- comment -->
                        <th scope="col">User type</th>
                     <th scope="col">Paid</th></tr>
                </thead>
                <tbody id="body">
                   
                </tbody>
            </table>
        </div>
    </body>
</html>