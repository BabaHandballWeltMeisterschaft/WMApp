package com.wmApi.api.rest_api.Models;

public class GruppeTeam {

    public int platz;
    public String gruppe;
    public String land;
    public int punkte;

    public GruppeTeam(int platz, String grpName, String land, int punkte) {
        this.platz = platz;
        this.gruppe = grpName;
        this.land = land;
        this.punkte = punkte;
    }
    
}
