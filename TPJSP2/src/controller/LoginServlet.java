package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Employee;
import model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**s
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/**
		 * Récuperer les données de la requette
		 */
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		if((userName == null || password == null) || userName.equals("") || password.equals("")) {
			request.setAttribute("msgError", "Required Fields");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}else {
			System.out.println("values ok");
			//Stock les données dans le modèle
			User u = new User();
			u.setUsername(userName);
			u.setPassword(password);
			
			//effectue le traitement
			Employee e = getEmployee(u);
			
			//stocker le résultat dans le modèle
			u.setEmp(e);
			
			//Stocker le modèle dans la session
			HttpSession session = request.getSession(true);
			session.setAttribute("user", u);
			
			//faire la redirection vers la vue jsp
			response.sendRedirect("welcome.jsp");
		}
	}

	private Employee getEmployee(User u) {
		Employee e = new Employee();
		e.setFirstname("Jean");
		e.setLastname("Dupont");
		return e;
	}
}
