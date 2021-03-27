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
    <link href="style/formstyle.css" rel="stylesheet" type="text/css"/>
    <script src="request.js" type="text/javascript"></script>
    </head>
    <body>
      
         <h1> You can request any subject right here!! </h1>
         <form id="request" action="requestaction.jsp">
        <table border="2" cellspacing="5" cellpadding="5">
            <tbody>
                <tr>
                    <td> enter your new request  </td>
                    <td><input id="subrequest" type="text" name="subrequest" size="300" required/></td>
                </tr>
                <tr>
                    <td> comment </td>
                    <td><input id="comment" type="text" name="comment"  size="300"/></td>
                </tr>
                

            <td> <input type="button" value="Submit" onclick="validateForm()" /></td> &nbsp;&nbsp
            <td> <input type="reset" value="Reset" /> </td>
        </tr>
    </tbody>
</table>
         </form>
    </body>
</html>
