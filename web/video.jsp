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
        <title>Video</title>
        <%@include file ="header.jsp"%>
        <link href="style/submitvideo.css" rel="stylesheet" type="text/css"/>
        <script src="videoform.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="main">
        <h3 id="title">Hello experts! Let's submit a video. </h3>
       
       <form id= "video" action="videoAction.jsp">
        <table>
            <tbody>
                <tr>
                    <td class="text"> Video Title </td>
                    <td><input class="form-control" id="titleInput" type="text" name="title" size="100" required/></td>
                </tr>
                <tr>
                    <td class="text"> Video Link </td>
                    <td><input class="form-control" id="vlink" type="text" name="vlink" required size="100"/></td>
                </tr>
                
                <tr>
            <td> <input id="submitBtn" class="btn btn-success" type="button" value="Submit" onclick="validate()" /></td>
          
            <td> <input id="resetBtn" class="btn btn-light" type="reset" value="Reset" /> </td>
        </tr>
    </tbody>
</table>
         </form>
</div>
</body>
</html>
