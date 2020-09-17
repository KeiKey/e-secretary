package pedagog_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import student_login.ConnectionPro;

@WebServlet("/DeletePedagog")
public class DeletePedagog extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeletePedagog() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int bid = Integer.parseInt(request.getParameter("id"));

		try {
			UserDatabase2 bkd = new UserDatabase2(ConnectionPro.getConnection());
			bkd.deletePedagog(bid);
			response.sendRedirect("EditAll.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
