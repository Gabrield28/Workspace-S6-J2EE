

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class FacadeServlet
 */
@WebServlet("/FacadeServlet")
public class FacadeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       int visitCount=0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacadeServlet() {
        super();
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//récupération des données depuis les paramètres
		String userName=request.getParameter("username");

		String password=request.getParameter("password");
	    System.out.println(userName);
		
			HttpSession session = request.getSession(true);
			
			
				session.setAttribute("user", userName);
				session.setAttribute("nbCnx", 1);
				//request.getRequestDispatcher("/WelcomeServlet").include(request, response);
				response.sendRedirect("WelcomeServlet");
			
			
			
		//}
	}

}
