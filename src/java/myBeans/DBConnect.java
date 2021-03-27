/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myBeans;

import java.sql.*;

/**
 *
 * @author oabouhas
 */
public class DBConnect {

  // connection string
  private String driver = "com.mysql.jdbc.Driver";
  private String url = "jdbc:mysql://localhost:3306/freelancerpro1";
  private String user = "mahadev";
  private String pwd = "mahadev";

  //classes from sql package to invoke
  Connection conn;
  Statement stm;
  ResultSet rst;
  ResultSetMetaData rsmd;

  //method to connect to database
  private String openDB() {
    try {
      Class.forName(driver); // loads the driver into memory.
      conn = DriverManager.getConnection(url, user, pwd);
      stm = conn.createStatement();
      return "connected";
    } catch (Exception e) {
      return e.getMessage();
    }
  }

  // method to close the database
  private void closeDB() {
    try {
      stm.close();
      conn.close();
    } catch (Exception e) {

    }
  }

  // method to execute update
  public String updateDB(String sql) {
    String message = openDB();
    if (message.equals("connected")) {
      try {
        stm.executeUpdate(sql);
        closeDB();
        return "Update Successful";
      } catch (Exception e) {
        return e.getMessage();
      }
    } else {
      return message;
    }
  }

  // method for displaying query results as an HTML table.  Has HTML code for 
  // what goes between the <table> tags.
  public String createHTMLTable(String sql) {
    String html = "";
    String message = openDB();
    if (message.equals("connected")) {
      try {
        rst = stm.executeQuery(sql);
        rsmd = rst.getMetaData();
        int count = rsmd.getColumnCount();
        html += "<thead><tr>";
        for (int i = 1; i <= count; i++) {
          html += "<td>" + rsmd.getColumnName(i) + "</td>";
        }
        html += "</tr></thead>";

        html += "<tbody>";
        while (rst.next()) {
          html += "<tr>";
          for (int i = 1; i <= count; i++) {
            html += "<td>" + rst.getString(i) + "</td>";
          }
          html += "</tr>";
        }
        html += "</tbody>";
        closeDB();
        return html;
      } catch (Exception e) {
        return e.getMessage();
      }
    } else {
      return message;
    }

  }
  
  // validate password and return result set
  public ResultSet validatePwd(String sql) {
    String message = openDB();
    if (message.equals("connected")) {
      try {
        return stm.executeQuery(sql);
      }
      catch (Exception e) {
        return null;
      }
    }
    else
      return null;
  }
  
  // Method to create a drowdown list of the query.  Has HTML code to go between 
  // the <select> tag in HTML.  First column represents
  // the values and the the rest the list elements
  public String createHTMLDropdown(String sql) {
    String html = "";
    String message = openDB();
    if (message.equals("connected")) {
      try {
        rst = stm.executeQuery(sql);
        rsmd = rst.getMetaData();
        int count = rsmd.getColumnCount();
        while (rst.next()) {
          html += "<option value='"+rst.getString(1)+"'>";
          for (int i=2; i <= count; i++)
            html += rst.getString(i)+" ";
          html += "</option>";
        }
        return html;
      }
      catch (Exception e) {
        return e.getMessage();
      }
    }
    else
      return message;
  }
}
