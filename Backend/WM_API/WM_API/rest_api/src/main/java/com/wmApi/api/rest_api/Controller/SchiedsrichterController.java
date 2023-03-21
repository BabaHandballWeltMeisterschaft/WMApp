package com.wmApi.api.rest_api.Controller;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.wmApi.api.rest_api.DbConnector;
import com.wmApi.api.rest_api.Models.Schiedsrichter;

@RestController
public class SchiedsrichterController {

    DbConnector conn = new DbConnector();

    @GetMapping("/schiedsrichter/{id}")
    public ResponseEntity<Schiedsrichter> getSchiedsrichterById(@PathVariable("id") String id) {
        ResultSet res = conn.executeGET("SELECT * FROM SCHIRI WHERE SCHIRI_ID = " + id);
        return new ResponseEntity<>(new Schiedsrichter(res), HttpStatus.OK);
    }

    @GetMapping("/schiedsrichter")
    public ResponseEntity<List<Schiedsrichter>> getAllSchiedsrichter() {
        ResultSet res = conn.executeGET("SELECT * FROM SCHIRI");
        List<Schiedsrichter> resultList = new ArrayList<Schiedsrichter>();

        try {
            while (res.next()) {
                resultList.add(new Schiedsrichter(res));
            }

        } catch (Exception e) {
            System.out.println(e + " " + e.getMessage());
            return new ResponseEntity<>(resultList, HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(resultList, HttpStatus.OK);
    }
}