<%-- 
    Document   : requestsubject
    Created on : Mar 19, 2021, 7:29:23 PM
    Author     : oabouhas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <%@include file ="header.jsp"%>
    <link href="style/requestsubject.css" rel="stylesheet" type="text/css"/>
    <script src="request.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="main">
         <h3 id="title">You can request any subject right here.</h3>
         <form id="request" action="requestaction.jsp">
            <table>
            <tbody>
                <tr>
                    <td class="text">Enter your new request  </td>
                    <td><input class="form-control" id="subrequest" type="text" name="subrequest" size="300" required/></td>
                </tr>
                <tr>
                    <td class="text"> Comment </td>
                    <td><input  class="form-control" id="comment" type="text" name="comment"  size="300"/></td>
                </tr>
                <tr>
                    <td> <input id="submitBtn" class="btn btn-success" type="button" value="Submit" onclick="validateForm()" /></td>
                    <td> <input id="resetBtn" class="btn btn-light" type="reset" value="Reset" /> </td>
                </tr>
            </tbody>
            </table>
         </form>
        </div>
    </body>
</html>
