package com.wmApi.api.rest_api.Controller;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.wmApi.api.rest_api.DbConnector;
import com.wmApi.api.rest_api.Models.Spiel;

@RestController
public class SpielController {

    DbConnector conn = new DbConnector();

    @GetMapping("/spiel/{id}")
    public ResponseEntity<Spiel> getSpielById(@PathVariable("id") String id) {
        ResultSet res = conn.executeGET("SELECT * FROM SPIEL WHERE SPIEL_ID = " + id);
        return new ResponseEntity<>(new Spiel(res), HttpStatus.OK);
    }

    @GetMapping("/spiele")
    public ResponseEntity<List<Spiel>> getAllSpiele() {
        ResultSet res = conn.executeGET("SELECT * FROM Spiel");
        List<Spiel> resultList = new ArrayList<Spiel>();

        try {
            while (res.next()) {
                resultList.add(new Spiel(res));
                res.next();
            }

        } catch (Exception e) {
            System.out.println(e + " " + e.getMessage());
            return new ResponseEntity<>(resultList, HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(resultList, HttpStatus.OK);
    }
}