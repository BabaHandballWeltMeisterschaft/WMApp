package Logic;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class DbConnector {

	private java.sql.Connection conn = null;
	private String connectionUrl = "";

	public DbConnector(String connectionUrl) {
		this.connectionUrl = connectionUrl;
	}

	public void setConnectionUrl(String connectionUrl) {
		this.connectionUrl = connectionUrl;
	}

	private void establishConnection() {
		System.out.println("Verbindung wird hergestellt...");
		try {
			conn = DriverManager.getConnection(connectionUrl);

			if (conn != null) {
				System.out.println("Verbindung hergestellt!");
			} else {
				System.out.println("Die Verbindung zu " + connectionUrl + " konnte nicht hergestellt werden.");
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

		return executeQuery(query);
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
			System.out.println("Die SQL Abfrage muss eine INSERT INTO-Abfrage sein!");
			return null;
		}

		return executeQuery(query);
	}

	public ResultSet executeDELETE(String query) {
		if (!query.toLowerCase().contains("delete from")) {
			System.out.println("Die SQL Abfrage muss eine INSERT INTO-Abfrage sein!");
			return null;
		}

		return executeQuery(query);
	}

	private ResultSet executeQuery(String query) {
		ResultSet result = null;

		try {
			establishConnection();
			if (conn != null) {
				PreparedStatement prepStat = conn.prepareStatement(query);
				result = prepStat.executeQuery();
				System.out.println("Abfrage ausgeführt.");
			}
		} catch (Exception e) {
			System.out.println("Beim Ausführen der Abfrage ist ein Fehler aufgetreten.");
			System.out.println("FEHLER: " + e.getMessage());
		}

		return result;
	}

	public void test(ResultSet res) {
		try {

			ResultSetMetaData resMD = res.getMetaData();
			int cnt = resMD.getColumnCount();
			for (int i = 0; i < cnt; i++) {
				String colName = resMD.getColumnName(i);
				String mode = resMD.getColumnClassName(i);
				Object data = getData(res, mode, colName);
				System.out.println("Key: " + colName + " - Value: " + data);
			}
		} catch (Exception e) {

		}
	}

	private Object getData(ResultSet res, String mode, String key) {
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