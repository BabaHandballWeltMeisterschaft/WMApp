package com.wmApi.api.rest_api.Controller;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.wmApi.api.rest_api.DbConnector;
import com.wmApi.api.rest_api.Models.Team;

@RestController
public class TeamController {

    DbConnector conn = new DbConnector();

    @GetMapping("/team/{id}")
    public ResponseEntity<Team> getTeamById(@PathVariable("id") String id) {
        ResultSet res = conn.executeGET("SELECT * FROM TEAM WHERE TEAM_ID = " + id);
        return new ResponseEntity<>(new Team(res), HttpStatus.OK);
    }

    @GetMapping("/teams")
    public ResponseEntity<List<Team>> getAllTeams() {
        ResultSet res = conn.executeGET("SELECT * FROM TEAM");
        List<Team> resultList = new ArrayList<Team>();
        try {
            while (res.next()) {
                resultList.add(new Team(res));
            }

        } catch (Exception e) {
            System.out.println(e + " " + e.getMessage());
            return new ResponseEntity<>(resultList, HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(resultList, HttpStatus.OK);
    }
}