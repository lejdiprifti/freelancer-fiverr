
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
@WebServlet("/admin")
public class AdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            DBConnect dbConnect = new DBConnect();
            String sql = "SELECT user_id, u.firstname, u.lastname, username, ut.user_type_name, p.payment_id FROM users u "
                    + " JOIN user_type ut on u.user_type_id = ut.user_type_id LEFT JOIN payment p ON p.firstname = u.firstname AND p.lastname = u.lastname";

            ResultSet rs = dbConnect.validatePwd(sql);
            resp.getWriter().append("[");
            while(rs.next()) {
                resp.getWriter().append("{\"userId\":"+rs.getInt(1)+", \"firstname\": \"" + rs.getString(2)+"\", \"lastname\":\"" + rs.getString(3)+"\", \"username\":\"" + rs.getString(4)+"\", \"userType\":\"" + rs.getString(5)+"\", \"paymentId\":\"" + rs.getString(6) +"\"},");
            }
              resp.getWriter().append("]");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
}
