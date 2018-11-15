package nl.sogyo.mancala.controller.dto;
import java.io.Serializable;

public class GameState implements Serializable {

	private static final long serialVersionUID = 1L;
	public int[] gameState = new int[15];

	public int getGameState(int Cup){
		return this.gameState[Cup];
	}
	
	public void setGameState(int[] gamestate) {
		this.gameState = gamestate;
	}
	
		
	
}
