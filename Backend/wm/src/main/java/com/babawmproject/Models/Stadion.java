package com.babawmproject.Models;

public class Stadion {

	public int s_id;
	public String name;
	public String stadt;
	public int kapazitaet;
	
	public Stadion(int sid, String nam, String stdt, int kap) {
		this.s_id = sid;
		this.name = nam;
		this.stadt = stdt;
		this.kapazitaet = kap;
	}
}