package student_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditStudent")
public class EditStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditStudent() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("UpdId"));
		String name = request.getParameter("UpdName").substring(0, 1).toUpperCase() + request.getParameter("UpdName").substring(1);
		String surname = request.getParameter("UpdSurname").substring(0, 1).toUpperCase() + request.getParameter("UpdSurname").substring(1);
		String dega = request.getParameter("UpdDega");
		String gjinia = request.getParameter("UpdGender");
		String email = request.getParameter("UpdEmail");
		String password= request.getParameter("UpdPass");
		User userModel = new User (id,name,surname,dega,gjinia,email,password);
		UserDatabase UpdateStudent= new UserDatabase(ConnectionPro.getConnection());
		
		if(UpdateStudent.StudentUpdate(userModel)) {
			response.sendRedirect("EditAll.jsp");
		}else {
			response.sendRedirect("welcome_admin.jsp");
		}
		
	}

}
