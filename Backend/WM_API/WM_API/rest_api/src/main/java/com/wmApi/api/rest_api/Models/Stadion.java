package com.wmApi.api.rest_api.Models;

import java.sql.ResultSet;

public class Stadion {

	public int s_id;
	public String name;
	public String stadt;
	public String land;
	public int kapazitaet;

	public Stadion(ResultSet res) {
		try {
			this.s_id = res.getInt("STADION_ID");
			this.name = res.getString("NAME");
			this.stadt = res.getString("STADT");
			this.land = res.getString("LAND");
			this.kapazitaet = res.getInt("KAPAZITÄT");
		} catch (Exception e) {
			System.out.println(e + " " + e.getMessage());
		}
	}
}