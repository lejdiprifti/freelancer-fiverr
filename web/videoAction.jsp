<%-- 
    Document   : videoAction
    Created on : Mar 23, 2021, 11:28:32 AM
    Author     : oabouhas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="header.jsp" %>
        <link href="style/video.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1><strong>Thank you for submitting this video the librarian will review it and get back to you </strong></h1>
    <% 
    String title = request.getParameter("title");
    String vlink = request.getParameter("vlink");
    
    out.print("<h2>Welcome your video is    "+title+" ! and the link to the video is "+vlink+"</h2>");
    %>

    </body>
</html>
