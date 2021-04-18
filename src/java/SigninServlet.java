
import java.io.IOException;
import java.sql.ResultSet;
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
@WebServlet("/signin")
public class SigninServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("user");
            String password = request.getParameter("pwd");
            DBConnect dbConnect = new DBConnect();
            String sql = "SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'";

            ResultSet rs = dbConnect.validatePwd(sql);
            if (rs.next()) {
                int userType = rs.getInt(6);
                if (userType == 3) {
                    response.getWriter().write("ADMIN");
                } else {
                    response.getWriter().write("USER");
                }
                response.setStatus(200);
            } else {
                throw new SQLException("Password is not correct.");
            }
        } catch (SQLException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.sendError(403, ex.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
