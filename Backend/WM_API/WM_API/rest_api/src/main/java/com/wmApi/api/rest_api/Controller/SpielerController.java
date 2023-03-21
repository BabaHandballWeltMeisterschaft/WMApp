package com.wmApi.api.rest_api.Controller;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.wmApi.api.rest_api.DbConnector;
import com.wmApi.api.rest_api.Models.Spieler;

@RestController
public class SpielerController {

    DbConnector conn = new DbConnector();

    @GetMapping("/spieler/{id}")
    public ResponseEntity<Spieler> getSpielerById(@PathVariable("id") String id) {
        ResultSet res = conn.executeGET("SELECT * FROM SPIELER WHERE SPIELER_ID = " + id);
        return new ResponseEntity<>(new Spieler(res), HttpStatus.OK);
    }

    @GetMapping("/spieler")
    public ResponseEntity<List<Spieler>> getAllSpieler() {
        ResultSet res = conn.executeGET("SELECT * FROM Spieler");
        List<Spieler> resultList = new ArrayList<Spieler>();
        
        try {
            while (res.next()) {
                resultList.add(new Spieler(res));
            }
        } catch (Exception e) {
            System.out.println(e + " " + e.getMessage());
            return new ResponseEntity<>(resultList, HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(resultList, HttpStatus.OK);
    }
}