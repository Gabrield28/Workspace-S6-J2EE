

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
 * Servlet implementation class ServletDevinette
 */
@WebServlet("/ServletDevinette")
public class ServletDevinette extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletDevinette() {
    	super();
    	int random = (int)(Math.random()*100);
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = response.getWriter();
		RequestDispatcher dispatcher;
		
		HttpSession session = request.getSession();
		if(session==null) {
			pw.write("Saisissez un nombre :");
		}else {
			int nb = (int) session.getAttribute("nb");
			int random = (int) session.getAttribute("random");
			
			if(nb>random){
				pw.write("Trop grand !");
			}else if(nb<random){
				pw.write("Trop petit !");
			}
		}
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Devinette.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int nb = Integer.parseInt(request.getParameter("nb"));
		int random = (int)(Math.random()*100);
		
		HttpSession nbr = request.getSession();

        nbr.setAttribute("nb", nb);
        nbr.setAttribute("random", random);
        
		doGet(request, response);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/ServletDevinetteRes.jsp");
        dispatcher.forward(request, response);
	}

}
