package com.wmApi.api.rest_api.Models;

import java.util.List;


public class Gruppe {

	public String gruppe;
	public List<GruppeTeam> teams;

	public Gruppe(String name, List<GruppeTeam> teams) {
		this.gruppe = name;
		this.teams = teams;
	}
}