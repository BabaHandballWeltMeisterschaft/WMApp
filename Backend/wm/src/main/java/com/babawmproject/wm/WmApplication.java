package com.babawmproject.wm;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.babawmproject.DbConnection.DbConnector;
import com.babawmproject.Models.Spieler;
import com.babawmproject.DbConnection.DbConnector;

@SpringBootApplication
public class WmApplication {

	public static void main(String[] args) {
		SpringApplication.run(WmApplication.class, args);

		DbConnector conn = new DbConnector();

		ResultSet res = conn.executeGET("SELECT * FROM Spieler");

		try {
			while (res.next()) {
				Spieler spieler = new Spieler(
						res.getInt(1),
						res.getInt(2),
						res.getString(3),
						res.getString(4));
				System.out.println(spieler.nachname);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}