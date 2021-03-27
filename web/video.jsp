<%-- 
    Document   : video
    Created on : Mar 19, 2021, 7:07:09 PM
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
        <script src="videoform.js" type="text/javascript"></script>
    </head>
    <body>
        <h1> Hello experts!! let's submit a video </h1>
       
       <form id= "video" action="videoAction.jsp">
        <table border="2" cellspacing="5" cellpadding="5">
            <tbody>
                <tr>
                    <td> Video title </td>
                    <td><input id="title" type="text" name="title" size="100" required/></td>
                </tr>
                <tr>
                    <td> Video Link </td>
                    <td><input id="vlink" type="text" name="vlink" required size="100"/></td>
                </tr>
                

            <td> <input type="button" value="submit" onclick="validate()" /></td> &nbsp;&nbsp
          
            <td> <input type="reset" value="Reset" /> </td>
        </tr>
    </tbody>
</table>
         </form>
     

  
</div>
</body>
</html>
