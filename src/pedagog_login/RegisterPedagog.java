package pedagog_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student_login.ConnectionPro;

@WebServlet("/RegisterPedagog")
public class RegisterPedagog extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterPedagog() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("NameP").substring(0, 1).toUpperCase() + request.getParameter("NameP").substring(1);
		String surname = request.getParameter("SurnameP").substring(0, 1).toUpperCase() + request.getParameter("SurnameP").substring(1);
		String email = request.getParameter("EmailP");
		String password = request.getParameter("PassP");
		User2 userModel = new User2 (0, name, surname, email, password);
		UserDatabase2 regPedagog = new UserDatabase2(ConnectionPro.getConnection());
		if(regPedagog.savePedagog(userModel)) {
			response.sendRedirect("welcome_admin.jsp");
		}else {
			response.sendRedirect("profili_admin.jsp");
		}
	}

}
