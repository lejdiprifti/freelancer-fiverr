<%-- 
    Document   : loginaction
    Created on : Mar 23, 2021, 8:19:26 PM
    Author     : oabouhas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
          <%
      String username = request.getParameter("first");
      Boolean worked = false;
     // out.print("<h2>"+email+"</h2>");
      String sql = "select clients.fname, clients.lname, lawyers.Email, lawyers.fname, cases.caseid from clients, cases, lawyers "
              + "where Clients.email = '" + first + "' and Cases.clientID = Clients.clientID and Cases.lawyerID = Lawyers.lawyerID;";
      DBConnect dbConnect = new DBConnect();
      ResultSet rst = dbConnect.validatePwd(sql);
      try {
        while (rst.next()) {
          out.print("<h2>Welcome " + rst.getString(1) + " " + rst.getString(2) + "</h2>");
          out.print("<h3>Your user lawyer is "+ rst.getString(4) + "with an email of " + rst.getString(3) + " and your case number is "+ rst.getString(5) +"</h3>");
          worked = true;
        }
      } catch (Exception e) {
        out.print("<h2>Invalid email</h2>");
      }
      if (!worked){
        out.print("<h2>Invalid email</h2>");
      }
    %>
    </body>
</html>
