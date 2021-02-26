

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class ConnexionFilter
 */
@WebFilter(urlPatterns = { "/WelcomeServlet" })
public class NbConnexionFilter implements Filter {

    /**
     * Default constructor. 
     */
    public NbConnexionFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		HttpSession session=((HttpServletRequest) request).getSession(false);
		int nb=(int)session.getAttribute("nbCnx");
		
		if(nb>10)
		{
			session.invalidate();
			response.setContentType("text/html");
			PrintWriter out= response.getWriter();
			 out.append("<form><h2> <font color=\"red\" >limite de connexion est atteint</font></h2>");
			 out.append("<a href='index.jsp'> Deconnexion</a></form>");
		}
		else {
			System.out.println("nb : "+nb);	
		chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
