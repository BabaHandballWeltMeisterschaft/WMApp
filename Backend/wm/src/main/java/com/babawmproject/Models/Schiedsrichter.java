package com.babawmproject.Models;

public class Schiedsrichter {

	public int s_id;
	public String vorname;
	public String nachname;
	public String nationalitaet;
	
	public Schiedsrichter(int sid, String vname, String nname, String nat) {
		this.s_id = sid;
		this.vorname = vname;
		this.nachname = nname;
		this.nationalitaet = nat;
	}
}