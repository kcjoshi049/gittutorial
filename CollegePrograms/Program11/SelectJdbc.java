package JDBC_Programs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SelectJdbc {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/jdbc_db?useSSL=false";
        String username = "root";
        String password = "kamal@144049";

        Connection connection = null;
        Statement statement = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection(url, username, password);
            System.out.println("Connected to the database successfully.");

            statement = connection.createStatement();

            String createTableSQL = "CREATE TABLE IF NOT EXISTS employees ("
                    + "id INT PRIMARY KEY AUTO_INCREMENT, "
                    + "name VARCHAR(50), "
                    + "position VARCHAR(50), "
                    + "salary DECIMAL(10, 2))";
            statement.executeUpdate(createTableSQL);
            System.out.println("Table 'employees' created.");
            String insertSQL = "INSERT INTO employees (name, position, salary) "
                    + "VALUES ('kamal chandra joshi', 'full stack developer', 75000.00), "
                    + "('sumit', 'Manager', 85000.00)";
            int rowsInserted = statement.executeUpdate(insertSQL);
            System.out.println(rowsInserted + " rows inserted.");
            String updateSQL = "UPDATE employees SET salary = 78000.00 WHERE name = 'kamal chandra joshi'";
            int rowsUpdated = statement.executeUpdate(updateSQL);
            System.out.println(rowsUpdated + " rows updated.");
            String selectSQL = "SELECT * FROM employees";
            ResultSet resultSet = statement.executeQuery(selectSQL);
            System.out.println("Employees data:");
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String position = resultSet.getString("position");
                double salary = resultSet.getDouble("salary");
                System.out.printf("ID: %d, Name: %s, Position: %s, Salary: %.2f%n", id, name, position, salary);
            }
            String deleteSQL = "DELETE FROM employees WHERE name = 'sumit'";
            int rowsDeleted = statement.executeUpdate(deleteSQL);
            System.out.println(rowsDeleted + " rows deleted.");

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}
