package com.sample.login;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static final String URL = "jdbc:jtds:sqlserver://WIN-71I6HKSBR44:1433/samples;instance=SALEMSTONE;";
    private static final String USER = "sa";
    private static final String PASSWORD = "M@nager2022";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("net.sourceforge.jtds.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
