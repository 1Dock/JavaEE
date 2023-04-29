package kz.bitlab.task2;

import java.sql.*;
import java.util.ArrayList;

public class DBManager {
    private static Connection connection;

    static {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/bitlab_shop", "postgres", "Olzhasolzhas0!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static ArrayList<Items> getAllItems() {
        ArrayList<Items> items = new ArrayList<>();

        try {
            PreparedStatement stmt = connection.prepareStatement("select * from items order by id");
            ResultSet resultSet = stmt.executeQuery();

            while (resultSet.next()) {
                Items item = new Items();
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));
                items.add(item);
            }

            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return items;
    }

    public static boolean findUser(String email, String password) {
        try {
            PreparedStatement stmt = connection.prepareStatement("select * from users where email = ? and password = ?");
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet resultSet = stmt.executeQuery();

            if (resultSet.next()) {
                return true;
            }

            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
