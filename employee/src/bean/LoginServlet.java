package bean;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;
	public HttpSession session;

    public void init() {
        loginDao = new LoginDao();
    }

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
              
                response.sendRedirect("loginsuccess.jsp");
            
            } else {
            	loginBean.setError("Invalid username or password");
            	request.setAttribute("loginBean", loginBean); 
            	
                  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
                  dispatcher.forward( request, response);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}