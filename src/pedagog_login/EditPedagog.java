package pedagog_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import student_login.ConnectionPro;

@WebServlet("/EditPedagog")
public class EditPedagog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditPedagog() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("UpdId"));
		String name = request.getParameter("Emri").substring(0, 1).toUpperCase() + request.getParameter("Emri").substring(1);
		String surname = request.getParameter("Mbiemri").substring(0, 1).toUpperCase() + request.getParameter("Mbiemri").substring(1);
		String email = request.getParameter("Email");
		String password= request.getParameter("Fjalekalimi");
		User2 userModel = new User2 (id,name,surname,email,password);
		UserDatabase2 UpdatePedagog= new UserDatabase2(ConnectionPro.getConnection());
		
		if(UpdatePedagog.PedagogUpdate(userModel)) {
			response.sendRedirect("EditAll.jsp");
		}else {
			response.sendRedirect("welcome_admin.jsp");
		}
	}

}
