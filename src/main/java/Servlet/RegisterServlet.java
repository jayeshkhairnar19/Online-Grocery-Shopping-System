package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Entities.User;
import Project.FactoryProvider;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
	
public class RegisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		try (PrintWriter out = response.getWriter()) {

			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");
			String phone = request.getParameter("phone");
			String add = request.getParameter("address");

			// validation

			if (name.isEmpty()) {
				out.print("Name is blank");
				return;
			}

			User user = new User(name, email, pass,  phone,"default.png", add,"normal");
			

			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();

			int userId = (int) session.save(user);

			
			
			tx.commit();
			session.close();

//			/*
//			 * out.println("Successfully saved !!"); out.println("<br> User id " + userId);
//			 * System.out.println("Saved");
			
			
//			 */
			HttpSession httpsession = request.getSession();
			httpsession.setAttribute("message", "Registration Successful!"+ userId);
			response.sendRedirect("register.jsp");
			return;
		} catch (Exception e) {
			e.printStackTrace();
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}