package com.wmApi.api.rest_api.Controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.wmApi.api.rest_api.DbConnector;
import com.wmApi.api.rest_api.Models.Gruppe;
import com.wmApi.api.rest_api.Models.GruppeTeam;

@RestController
public class GruppenController {

    DbConnector conn = new DbConnector();

    @GetMapping("/gruppe/{id}")
    public ResponseEntity<List<GruppeTeam>> getGruppeById(@PathVariable("id") String id) {

        try {
            return new ResponseEntity<>(getGroupList(id.toUpperCase()), HttpStatus.OK);
        } catch (SQLException e) {
            e.printStackTrace();
            return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping("/gruppen")
    public ResponseEntity<List<Gruppe>> getAllGruppen() {
        List<Gruppe> resList = new ArrayList<>();
        String[] grps = new String[] { "A", "B", "C", "D", "E", "F", "G", "H" };

        for (String s : grps) {
            try {
                resList.add(new Gruppe(s, getGroupList(s)));
            } catch (SQLException e) {
                e.printStackTrace();
                return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
            }
        }

        return new ResponseEntity<>(resList, HttpStatus.OK);
    }

    private List<GruppeTeam> getGroupList(String id) throws SQLException {
        String viewName = "V_GRUPPE_" + id.toUpperCase();
        ResultSet res = conn.executeGET("SELECT * FROM " + viewName);

        List<GruppeTeam> resList = new ArrayList<>();
        int cnt = 1;

        while (res.next()) {
            resList.add(new GruppeTeam(
                    cnt++,
                    id.toUpperCase(),
                    res.getString("Land"),
                    res.getInt("Punkte")));
        }

        return resList;
    }
}