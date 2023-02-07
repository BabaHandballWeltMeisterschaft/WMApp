package Models;

public class Spiel {

	public int s_id;
	public int team1;
	public int team2;
	public int stadion;
	public int besucher;
	public int tore1;
	public int tore2;
	public int schiriId;
	
	public Spiel(int sid, int te1, int te2, int stad, int bes, int to1, int to2, int schId) {
		this.s_id = sid;
		this.team1 = te1;
		this.team2 = te2;
		this.stadion = stad;
		this.besucher = bes;
		this.tore1 = to1;
		this.tore2 = to2;
		this.schiriId = schId;
	}
}