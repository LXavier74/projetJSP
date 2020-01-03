package jsp01.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Home
 */
@WebServlet("/Menu")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/**
	 * le paramètre choix correspond aux paramètres dans les url
	 *    /Menu?choix=	
	 */
		String param = request.getParameter("choix");
		RequestDispatcher rd;
		if (param!=null)
		{
		switch(param)
		{
		case "1":
		 rd = request.getRequestDispatcher("web/test.jsp");
		 break;
		case "2":
			rd = request.getRequestDispatcher("WEB-INF/Exercices/Exercice1.jsp");
		 break;
		case "3":
			rd = request.getRequestDispatcher("WEB-INF/Exercices/Exercice2.jsp");
		 break;
		default:
		 rd = request.getRequestDispatcher("/index.jsp");
		break;
		}
		
		}
		else {
			rd=request.getRequestDispatcher("/index.jsp");
		}
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
