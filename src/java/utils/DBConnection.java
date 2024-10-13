package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private final String serverName = "THAIIHA";
    private final String dbName = "XTee";
    private final String portNumber = "1433";
    private final String instance = "";  // Cái này có thể để trống nếu không sử dụng instance
    private final String userID = "sa";
    private final String password = "thaiha1205";

    public Connection getConnection() throws Exception {
        String url;
        
        // Thiết lập URL kết nối
        if (instance == null || instance.trim().isEmpty()) {
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true;";
        } else {
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true;";
        }
        
        // Tải driver SQL Server
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        
        // Thiết lập kết nối
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

    public static void main(String[] args) {
        DBConnection dbConnection = new DBConnection();
        System.out.println(dbConnection.checkConnection());
    }
}
