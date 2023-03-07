package com.babawmproject.DbConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class DbConnector {

	private java.sql.Connection conn = null;
	private final String connectionUrl = "jdbc:sqlite:C:\\Users\\koester\\OneDrive - busitec GmbH\\Berufsschule\\_STDM_Projekt\\WMApp\\db\\WM.db";

	public DbConnector() {
	}

	private void establishConnection() {
		System.out.println("Verbindung wird hergestellt...");
		try {
			Class.forName("org.sqlite.JDBC");
			this.conn = DriverManager.getConnection(connectionUrl);
			if (conn != null) {
				System.out.println("Verbindung hergestellt!");
			} else {
				System.out.println("Die Verbindung konnte nicht hergestellt werden...");
			}
		} catch (Exception e) {
			System.out.println("Beim Herstellen der Verbindung ist ein Fehler aufgetreten.");
			System.out.println("FEHLER: " + e.getMessage());
		}
	}

	// Execute queries
	public ResultSet executeGET(String query) {
		if (!query.toLowerCase().contains("select")) {
			System.out.println("Die SQL Abfrage muss eine SELECT-Abfrage sein!");
			return null;
		}

		return this.executeQuery(query);
	}

	public ResultSet executePOST(String query) {
		if (!query.toLowerCase().contains("insert into")) {
			System.out.println("Die SQL Abfrage muss eine INSERT INTO-Abfrage sein!");
			return null;
		}

		return executeQuery(query);
	}

	public ResultSet executePUT(String query) {
		if (!query.toLowerCase().contains("update")) {
			System.out.println("Die SQL Abfrage muss eine UPDATE-Abfrage sein!");
			return null;
		}

		return executeQuery(query);
	}

	public ResultSet executeDELETE(String query) {
		if (!query.toLowerCase().contains("delete from")) {
			System.out.println("Die SQL Abfrage muss eine DELETE-Abfrage sein!");
			return null;
		}

		return executeQuery(query);
	}

	private ResultSet executeQuery(String query) {
		ResultSet result = null;

		try {
			establishConnection();
			if (this.conn != null) {
				System.out.println("Execute query: " + query);
				PreparedStatement prepStat = conn.prepareStatement(query);
				result = prepStat.executeQuery();
				System.out.println("Abfrage ausgefuehrt.");
			}
		} catch (Exception e) {
			System.out.println("Beim Ausfuehren der Abfrage ist ein Fehler aufgetreten.");
			System.out.println("FEHLER: " + e.getMessage());
		}

		return result;
	}

	public Object getData(ResultSet res, String mode, String key) {
		Object data = null;

		try {

			switch (mode) {
				case "String":
					data = res.getString(key);
					break;
				case "Date":
					data = res.getDate(key);
					break;
				case "Long":
					data = res.getLong(key);
					break;
				default:
					data = res.getInt(key);
			}

		} catch (Exception e) {
			System.out.println("Beim Abrufen der Daten ist ein Fehler aufgetreten.");
			System.out.println("FEHLER: " + e.getMessage());
		}

		return data;

	}
}