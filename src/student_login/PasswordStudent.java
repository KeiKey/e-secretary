package student_login;

import java.io.IOException;
import student_login.UserDatabase;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PasswordStudent")
public class PasswordStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private Object conn;
	private User user;
	public PasswordStudent() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pass1 = request.getParameter("old_pass");
		String pass2 = request.getParameter("new_pass1");
		String pass3 = request.getParameter("new_pass2");
		String email = request.getParameter("email_pass");
		String message = "Password u ndrrua me sukses" ;
		HttpSession PassSession = request.getSession();
		PassSession.setAttribute("JSP",message);
		
		UserDatabase db = new UserDatabase(ConnectionPro.getConnection());
		
		if (!pass2.equals(pass3)) {
			message="Vendos Password te rinj te njejte";
			PassSession.setAttribute("JSP",message);
			response.sendRedirect("profili_student.jsp");
		} else {
			user = db.login(email, pass1);
			if (user == null) {
				message="Vendos Pass aktual te sakte";
				PassSession.setAttribute("JSP",message);
				response.sendRedirect("profili_student.jsp");
			} else {
				db.PassUpdateStudent(pass2,user.getId());
				//String test = db2.PassUpdateStudent(pass2,user.getId());
				//HttpSession PassSession = request.getSession();
				//PassSession.setAttribute("JSP",test);
				
				response.sendRedirect("profili_student.jsp");

			}
		}
	}
}