package admin_package;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import student_login.ConnectionPro;

/**
 * Servlet implementation class PasswordAdmin
 */
@WebServlet("/PasswordAdmin")
public class PasswordAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private User3 user;

	public PasswordAdmin() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pass1 = request.getParameter("old_pass");
		String pass2 = request.getParameter("new_pass1");
		String pass3 = request.getParameter("new_pass2");
		String email = request.getParameter("email_pass");
		String message = "Sukses";
		HttpSession PassSession = request.getSession();
		PassSession.setAttribute("JSP", message);

		UserDatabase3 db = new UserDatabase3(ConnectionPro.getConnection());
		UserDatabase3 db2 = new UserDatabase3(ConnectionPro.getConnection());

		if (!pass2.equals(pass3)) {
			message = "Vendos Password te rinj te njejte";
			PassSession.setAttribute("JSP", message);
			response.sendRedirect("profili_admin.jsp");
		} else {
			user = db.login3(email, pass1);
			if (user == null) {
				message = "Vendos Pass aktual te sakte";
				PassSession.setAttribute("JSP", message);
				response.sendRedirect("profili_admin.jsp");
			} else {
				db2.PassUpdateAdmin(pass2, user.getId3());
				response.sendRedirect("profili_admin.jsp");

			}
		}
	}
}
