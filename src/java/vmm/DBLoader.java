package vmm;

import java.sql.*;
public class DBLoader
{
    public static ResultSet executeQuery(String query)
    {
        System.out.println("     "+query);
        ResultSet rs = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully!!");
            //create connection to the mysql databases
            Connection conn = DriverManager.getConnection("jdbc:mysql://68.178.163.4:3306/bookmyshow","vmmdba", "Suhaan100@");
            System.out.println("Connection build");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            System.out.println("Statement created");
            rs = stmt.executeQuery(query);
            System.out.println("ResultSet created");
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        return rs;
    }
  
}

