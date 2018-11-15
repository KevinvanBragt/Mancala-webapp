package nl.sogyo.mancala.controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import nl.sogyo.domain.*;
import nl.sogyo.mancala.controller.dto.GameState;

public class Controller extends HttpServlet {

	private HttpSession httpSession;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestedAction = request.getParameter("action");
		
		requestHandler(request, response, requestedAction);

		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Mancala.jsp");
		rd.forward(request, response);
	
   }
	
	protected void requestHandler(HttpServletRequest request, HttpServletResponse response, String requestedAction) {
		if (requestedAction.equals("init")) {
			initMancala(request);
		} else if (requestedAction.equals("makeMove")) {
			makeMove(request);
		}
		
	}
	
	protected void initMancala(HttpServletRequest request) {	
		Mancala mancala = new Mancala();
		request.getSession().setAttribute("mancala", mancala);
		
		GameState gamestate = new GameState();
		gamestate.setGameState(mancala.getGameState());	
		request.getSession().setAttribute("gamestate", gamestate);
	}
	
	protected void makeMove(HttpServletRequest request) {
		Cup startingcup = (Cup) request.getSession().getAttribute("startingcup");
		int selectedCup = Integer.parseInt((String) request.getParameter("cup"));
		Mancala mancala = (Mancala) request.getSession().getAttribute("mancala");
		mancala.makeMoveFacade(selectedCup, startingcup);
		
		GameState gamestate = new GameState();
		gamestate.setGameState(mancala.getGameState());	
		request.getSession().setAttribute("gamestate", gamestate);
	}
		
	protected void saveGameState() {
		//
	}
	
}




