

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletConnect
 */
@WebServlet("/ServletConnect")
public class ServletConnect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletConnect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/Connexion.jsp").forward(request, response);
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        
        HttpSession session = request.getSession();

        session.setAttribute("login", login);
        session.setAttribute("password", password);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Welcome.jsp");
        dispatcher.forward(request, response);

    }

}
