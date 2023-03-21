package com.wmApi.api.rest_api.Models;

import java.sql.ResultSet;

public class Team {

	public int t_id;
	public int vorGruppe;
	public int hauptRunde;
	public String name;
	public int vorrundePunkte;
	public int hauptrundePunkte;

	public Team(ResultSet res) {
		try {
			this.t_id = res.getInt("TEAM_ID");
			//this.vorGruppe = res.getInt("VOR_GRUPPE");
			//this.hauptRunde = res.getInt("HAUPT_RUNDE");
			this.name = res.getString("NAME");
			//this.vorrundePunkte = res.getInt("VORRUNDE_PUNKTE");
			//this.hauptrundePunkte = res.getInt("HAUPT_PUNKTE");

			this.vorGruppe = res.getInt("GRUPPE");
			this.vorrundePunkte = res.getInt("PUNKTE");
		} catch (Exception e) {
			System.out.println(e + " " + e.getMessage());
		}
	}
}