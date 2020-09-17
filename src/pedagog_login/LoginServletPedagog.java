package pedagog_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import student_login.ConnectionPro;


@WebServlet("/LoginServletPedagog")
public class LoginServletPedagog extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServletPedagog() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String logemail = request.getParameter("email");
        String logpass = request.getParameter("password");
        
        UserDatabase2 db =  new UserDatabase2(ConnectionPro.getConnection());
        User2 user = db.login2(logemail, logpass);
        
        if(user!=null){
            HttpSession session = request.getSession();
            session.setAttribute("logUser2", user);
            response.sendRedirect("welcome_pedagog.jsp");
        }else{
            
			response.sendRedirect("login_pedagog.jsp");
        }
	}
}
