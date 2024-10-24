package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private final String serverName = "HoaiLinhWFIL";
    private final String dbName = "XTee";
    private final String portNumber = "1433";
    private final String instance = "";  // Cái này có thể để trống nếu không sử dụng instance
    private final String userID = "sa";
    private final String password = "1312";

    public Connection getConnection() throws Exception {
        String url;
        
        if (instance == null || instance.trim().isEmpty()) {
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true;";
        } else {
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true;";
        }
        
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        
        Connection conn = DriverManager.getConnection(url, userID, password);
        System.out.println("Connection successful!");
        return conn;
    }

    public void closeConnection(Connection conn) throws SQLException {
        if (conn != null && !conn.isClosed()) {
            conn.close();
        }
    }

    public boolean checkConnection() {
        try {
            Connection conn = getConnection();
            closeConnection(conn);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
