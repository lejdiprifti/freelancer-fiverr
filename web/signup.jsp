<%-- 
    Document   : signup
    Created on : Mar 22, 2021, 7:49:42 PM
    Author     : nrusso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file ="header.jsp"%>
        <link href="style/formstyle.css" rel="stylesheet" type="text/css"/>
        <script src="js/signup.js" type="text/javascript"></script>
        <title>Freelance Pro</title>
    </head>
    <body>
        <div id="title">
            <h1>Welcome to <strong>Freelance Pro!</strong></h1> 
            <span class="badge bg-primary">The first of its kind, all in one collaborative learning platform.</span>
        </div>
        <br><br/>

        <h6> To Register as a New Customer, Please fill out the forms Below: </h6>
                <table border="0">
                    <tbody>
                        <tr>
                            <td>First Name</td>
                            <td><input type="text" class="form-control" name="first" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td><input type="text"  class="form-control" name="last" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Username</td>
                            <td><input type="text" class="form-control" name="user" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input id="pwd" type="password" class="form-control" name="pwd" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Confirm Password</td>
                            <td><input id="cpwd" type="password" class="form-control" name="cpwd" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>
                                    <label>Select a User Type:</label>
                                    <select class="form-select" id="userType" name="subject_id">
                                        <option>learner</option>
                                        <option>expert</option>
                                    </select>
                            <td>
                        </tr>
                    </tbody>   
                </table>
                <button type="button" class="btn btn-primary" onclick="submit()">Submit</button>
    </body>
</html>