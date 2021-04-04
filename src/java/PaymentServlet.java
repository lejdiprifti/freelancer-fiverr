
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.UUID;
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
@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String payment_id = UUID.randomUUID().toString();
            String firstname = request.getParameter("first");
            String lastname = request.getParameter("last");
            String address = request.getParameter("address");
            String zip = request.getParameter("zip");
            String city = request.getParameter("city");
            String email = request.getParameter("email");
            String paymentType = request.getParameter("paymentType");
            String state = request.getParameter("state");

            DBConnect dbConnect = new DBConnect();
            String sql = "INSERT INTO payment (payment_id, firstname, lastname, email, address, zip, city, state, payment_type_id) VALUES('" + payment_id + "', '" + firstname + "', '" + lastname + "', '" + email + "', '" + address + "', '" + zip + "', '" + city + "', '" + state + "', " + paymentType + ");";
            dbConnect.updateDB(sql);
            response.setStatus(200);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"payment_type\":\"" + paymentType + "\",\"payment_id\":\" "+ payment_id + "\"}");

        } catch (SQLException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.sendError(403, ex.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
