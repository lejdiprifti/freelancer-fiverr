<%-- 
    Document   : requestaction
    Created on : Mar 23, 2021, 11:17:15 AM
    Author     : oabouhas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <%@include file="header.jsp" %>
          <link href="style/video.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Thank you for your request</h1>
        <p> your request is    </p>
        <% 
    String subrequest = request.getParameter("subrequest");
    String comment = request.getParameter("comment");
    String email = request.getParameter("email");
    out.print("<h2>Welcome your request is  "+subrequest+" ! Your comment is "+comment+"</h2>");
    DBConnect dbConnect = new DBConnect();
     
    %>
    </body>
</html>
