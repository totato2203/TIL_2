package webprj.z01_vo;

public class Player {
	String teamname;
	String player;
	int score;
	
	public Player(String teamname, String player, int score) {
		super();
		this.teamname = teamname;
		this.player = player;
		this.score = score;
	}
	public Player() {}
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	public String getPlayer() {
		return player;
	}
	public void setPlayer(String player) {
		this.player = player;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
}
