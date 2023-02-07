package Models;

public class Team {

	public int t_id;
	public int gruppe;
	public String name;
	public int punkte;
	
	public Team(int tid, int grp, String nam) {
		this.t_id = tid;
		this.gruppe = grp;
		this.name = nam;
		this.punkte = 0;
	}
}