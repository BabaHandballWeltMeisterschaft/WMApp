package com.babawmproject.Models;

public class Spieler {

	public int s_id;
	public int t_id;
	public String vorname;
	public String nachname;
	public int tore;
	public int gelbeKarten;
	public int roteKarten;
	
	public Spieler(int sid, int tid, String vname, String nname) {
		this.s_id = sid;
		this.t_id = tid;
		this.vorname = vname;
		this.nachname = nname;
		this.tore = 0;
		this.gelbeKarten = 0;
		this.roteKarten = 0;
	}
}