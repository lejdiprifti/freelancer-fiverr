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
        <title>Sign up - Freelance Pro</title>
    </head>
    <body>
        <div id="title">
            <h1>Welcome to <strong>Freelance Pro!</strong></h1> 
            <span class="badge bg-success">The first of its kind, all in one collaborative learning platform.</span>
        </div>
        <br><br/>
<div id="signup">
        <h6> To register as a new customer, please fill out the form below: </h6>
                <table border="0">
                    <tbody>
                        <tr>
                            <td>First Name</td>
                            <td><input id="first" type="text" class="form-control" name="first" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td><input id="last" type="text"  class="form-control" name="last" size="40" required/></td>
                        </tr>
                        <tr>
                            <td>Username</td>
                            <td><input id="username" type="text" class="form-control" name="user" size="40" required/></td>
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
                                 Select a User Type:
                            </td>
                            <td>
                                    <select class="form-select" id="userType">
                                        <option>learner</option>
                                        <option>expert</option>
                                    </select>
                            </td>
                        </tr>
                        <tr id="securityRow">
                            <td>Select a security question:</td>
                            <td><select class="form-select" id="securityQuestion">
                                        <option>What's your pet's name?</option>
                                        <option>Where did your parents meet?</option>
                                </select>
                                <input id="securityAnswer" type="text" name="securityAnswer" size="40" class="form-control"/>
                            </td>
                        </tr>
                    </tbody>   
                </table>
                <button type="button" class="btn btn-success" onclick="submit()">Submit</button>
</div>
    </body>
</html>