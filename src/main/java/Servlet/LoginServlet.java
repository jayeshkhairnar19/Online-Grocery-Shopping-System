package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.userDao;
import Entities.User;
import Project.FactoryProvider;

@WebServlet("/LoginServlet")
//@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String password = request.getParameter("pass");

        // Authenticating user
        userDao userdao = null;
        try {
            userdao = new userDao(FactoryProvider.getFactory());
        } catch (Exception e) {
            e.printStackTrace(); // Handle or log the exception as needed
        } catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        HttpSession httpsession = request.getSession();

        if (userdao != null) {
            User user = userdao.getUserByEmailAndPassword(email, password);

            if (user == null) {
                httpsession.setAttribute("message", "Invalid Credentials");
                response.sendRedirect("signin.jsp");
                return;
            } else {
                httpsession.setAttribute("message", "Welcome");
                httpsession.setAttribute("current-user", user);
                if (user.getUserType().equals("admin")) {
                    response.sendRedirect("admin.jsp");
                } else if (user.getUserType().equals("normal")) {
                    response.sendRedirect("fruits_veggies.jsp");
                } else {
                    out.println("We have not identified user type");
                }
            }
		} /*
			 * else { // Handle the case where userdao initialization failed
			 * httpsession.setAttribute("message", "Error initializing userDao");
			 * response.sendRedirect("error.jsp"); }
			 */
    }
}
