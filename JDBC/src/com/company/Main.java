package com.company;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {

    public static void main(String[] args) throws SQLException {
        JDBC.prepareConnection();
        //JDBC.countCities();
        JDBC.citiesWhere();
    }
}
