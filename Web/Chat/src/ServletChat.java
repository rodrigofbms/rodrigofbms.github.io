

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletChat
 */
@WebServlet("/ServletChat")
public class ServletChat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletChat() {
        super();
        
    }
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String chat = request.getParameter("Chat");
		List <String> mensagens = (List) request.getServletContext().getAttribute("mensagens");
		mensagens.add(chat);
		response.sendRedirect("EnviarConversa.jsp");
	}

}
