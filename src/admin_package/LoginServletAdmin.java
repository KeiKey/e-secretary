package admin_package;
import admin_package.User3;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import student_login.ConnectionPro;

/**
 * Servlet implementation class LoginServletAdmin
 */
@WebServlet("/LoginServletAdmin")
public class LoginServletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServletAdmin() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String logemail = request.getParameter("email");
        String logpass = request.getParameter("password");
        
        UserDatabase3 db =  new UserDatabase3(ConnectionPro.getConnection());
        User3 user = db.login3(logemail, logpass);
        
        if(user!=null){
            HttpSession session = request.getSession();
            session.setAttribute("logUser3", user);
            response.sendRedirect("welcome_admin.jsp");
        }else{
            
			response.sendRedirect("login_admin.jsp");
        }
	}
}
 