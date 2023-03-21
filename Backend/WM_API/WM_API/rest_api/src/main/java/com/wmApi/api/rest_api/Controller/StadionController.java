package com.wmApi.api.rest_api.Controller;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.wmApi.api.rest_api.DbConnector;
import com.wmApi.api.rest_api.Models.Stadion;

@RestController
public class StadionController {

    DbConnector conn = new DbConnector();

    @GetMapping("/stadion/{id}")
    public ResponseEntity<Stadion>  getStadionById(@PathVariable("id") String id) {
        ResultSet res = conn.executeGET("SELECT * FROM STADION WHERE STADION_ID = " + id);
        return new ResponseEntity<>(new Stadion(res), HttpStatus.OK);
    }

    @GetMapping("/stadien")
    public ResponseEntity<List<Stadion>> getAllStadion() {
        ResultSet res = conn.executeGET("SELECT * FROM STADION");
        List<Stadion> resultList = new ArrayList<Stadion>();
        try {
            while(res.next()) {
                resultList.add(new Stadion(res));
            }
        } catch (Exception e) {
            System.out.println(e + " " + e.getMessage());
            return new ResponseEntity<>(resultList, HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(resultList, HttpStatus.OK);
    }
}