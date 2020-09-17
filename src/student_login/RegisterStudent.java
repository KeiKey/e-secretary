package student_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/RegisterStudent")
public class RegisterStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterStudent() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name").substring(0, 1).toUpperCase() + request.getParameter("name").substring(1);
		String surname = request.getParameter("surname").substring(0, 1).toUpperCase() + request.getParameter("surname").substring(1);
		String dega = request.getParameter("dega");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User userModel = new User(0, name, surname, dega, gender, email, password);

		UserDatabase regUser = new UserDatabase(ConnectionPro.getConnection());
		
		if (regUser.saveUser(userModel)) {
			response.sendRedirect("welcome_admin.jsp");
		} else {
			String errorMessage = "GABIM";
			HttpSession regSession = request.getSession();
			regSession.setAttribute("RegError", errorMessage); 
			
			response.sendRedirect("profili_admin.jsp");
		}
	}

}
