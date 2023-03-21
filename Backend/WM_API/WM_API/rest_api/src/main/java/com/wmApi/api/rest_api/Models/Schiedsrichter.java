package com.wmApi.api.rest_api.Models;

import java.sql.ResultSet;

public class Schiedsrichter {

	public int s_id;
	public String vorname;
	public String nachname;
	public String nationalitaet;

	public Schiedsrichter(ResultSet res) {
		try {
			this.s_id = res.getInt("SCHIRI_ID");
			this.vorname = res.getString("VORNAME");
			this.nachname = res.getString("NAME");
			this.nationalitaet = res.getString("LAND");
		}
		catch(Exception e) {
			System.out.println(e + " " + e.getMessage());
		}
	}
}