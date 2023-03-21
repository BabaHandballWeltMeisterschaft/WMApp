package com.wmApi.api.rest_api.Models;

import java.sql.ResultSet;

public class Spiel {

	public int s_id;
	public int team1;
	public int team2;
	public int stadion;
	public int besucher;
	public int tore1;
	public int tore2;
	public int schiriId;
	public int runde;

	public Spiel(ResultSet res) {
		try {
			this.s_id = res.getInt("SPIEL_ID");
			this.team1 = res.getInt("TEAM1_ID");
			this.team2 = res.getInt("TEAM2_ID");
			this.stadion = res.getInt("STADION_ID");
			this.tore1 = res.getInt("TOR_TEAM1");
			this.tore2 = res.getInt("TOR_TEAM2");
			this.schiriId = res.getInt("SCHIRI_ID");
			this.runde = res.getInt("RUNDE_ID");
		}
		catch(Exception e) {
			System.out.println(e + " " + e.getMessage());
		}

	}
}