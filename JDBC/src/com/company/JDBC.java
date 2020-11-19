package com.company;

import java.sql.*;
import java.util.ArrayList;

public class JDBC implements AutoCloseable {
    private static final String db_url = "jdbc:mysql://localhost/world3";
    private static final String db_user = "root";
    private static final String db_password = "123456789!";

    private static Connection con;
    private static PreparedStatement ps_retrieveCities;
    private static PreparedStatement ps_retrieveCitiesWhere;

    private static ArrayList<City> cities = new ArrayList<>();


    @Override
    public void close() throws Exception
    {
        con.close();
    }


    static void countCities() {
        try(ResultSet rs = ps_retrieveCities.executeQuery())
        {
            while (rs.next())
            {
                String count = rs.getString(1);
                System.out.println(count);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    }

    static void citiesWhere() {
        try(ResultSet rs = ps_retrieveCitiesWhere.executeQuery())
        {
            while (rs.next())
            {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String countryCode = rs.getString(3);
                String district = rs.getString(4);
                int population = rs.getInt(5);
                City city = new City(id,name,countryCode,district,population);
                cities.add(city);
            }
            System.out.println(cities);

        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    }




    static void prepareConnection() throws SQLException {
        con = DriverManager.getConnection(db_url,db_user,db_password);
        ps_retrieveCities = con.prepareStatement("SELECT COUNT(*) FROM city;");
        ps_retrieveCitiesWhere = con.prepareStatement("SELECT * from city where population > 5000000;");

    }
}
