package com.wmApi.api.rest_api.Models;

import java.sql.ResultSet;

public class Spieler {

	public int s_id;
	public int t_id;
	public String vorname;
	public String nachname;
	public int tore;
	public int gelbeKarten;
	public int roteKarten;

	public Spieler(ResultSet res) {
		try {
			this.s_id = res.getInt("SPIELER_ID");
			this.t_id = res.getInt("TEAM_ID");
			this.vorname = res.getString("VORNAME");
			this.nachname = res.getString("NAME");
			this.tore = res.getInt("TORE_GESAMT");
			this.gelbeKarten = res.getInt("GELBE_KARTEN");
			this.roteKarten = res.getInt("ROTE_KARTEN");
		}
		catch(Exception e) {
			System.out.println(e + " " + e.getMessage());
		}

	}
}