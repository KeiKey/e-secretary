package pedagog_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import student_login.ConnectionPro;

@WebServlet("/PasswordPedagog")
public class PasswordPedagog extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private User2 user;

	public PasswordPedagog() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pass1 = request.getParameter("old_pass");
		String pass2 = request.getParameter("new_pass1");
		String pass3 = request.getParameter("new_pass2");
		String email = request.getParameter("email_pass");
		String message = "Password u ndrrua me sukses";
		HttpSession PassSession = request.getSession();
		PassSession.setAttribute("JSP", message);

		UserDatabase2 db = new UserDatabase2(ConnectionPro.getConnection());
		UserDatabase2 db2 = new UserDatabase2(ConnectionPro.getConnection());

		if (!pass2.equals(pass3)) {
			message = "Vendos Password te rinj te njejte";
			PassSession.setAttribute("JSP", message);
			response.sendRedirect("profili_pedagog.jsp");
		} else {
			user = db.login2(email, pass1);
			if (user == null) {
				message = "Vendos Pass aktual te sakte";
				PassSession.setAttribute("JSP", message);
				response.sendRedirect("profili_pedagog.jsp");
			} else {
				db2.PassUpdatePedagog(pass2, user.getId2());
				response.sendRedirect("profili_pedagog.jsp");

			}
		}
	}
}