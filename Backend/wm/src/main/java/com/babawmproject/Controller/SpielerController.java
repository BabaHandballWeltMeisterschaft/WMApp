package com.babawmproject.Controller;

import org.springframework.web.bind.annotation.*;

import com.babawmproject.DbConnection.DbConnector;
import com.babawmproject.Models.Spieler;

@RestController
@RequestMapping("/spieler")
public class SpielerController {
    
    DbConnector conn = new DbConnector();

    @GetMapping("/spieler/{id}")
    public Spieler getSpielerById(String id) {
        conn.executeGET("SELECT * FROM Spieler WHERE id = " + id);
        return null;
    }
}