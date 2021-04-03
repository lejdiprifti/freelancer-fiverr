
import java.io.IOException;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import myBeans.DBConnect;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author core i5
 */
@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String firstName = request.getParameter("first");
            String lastName = request.getParameter("last");
            String username = request.getParameter("user");
            String password = request.getParameter("pwd");
            String userType = request.getParameter("userType");
            String securityQuestion = request.getParameter("securityQuestion");
            String securityAnswer = request.getParameter("securityAnswer");
            DBConnect dbConnect = new DBConnect();
            String sql = "INSERT INTO users (firstname, lastname, username, password, user_type_id, security_question_id, security_answer) VALUES('" + firstName + "', '" + lastName + "', '" + username + "', '" + password + "', " + userType + ", '" + securityQuestion + "', '" + securityAnswer + "');";
            
            dbConnect.updateDB(sql);
            response.setStatus(200);
        } catch (SQLException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.sendError(403, ex.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
