package kz.bitlab.task1;

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
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/college", "postgres", "Olzhasolzhas0!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean addStudent(Students student) {
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into students(name,surname,birthdate,city) values(?,?,?,?)");
            stmt.setString(1, student.getName());
            stmt.setString(2, student.getSurname());
            stmt.setString(3, student.getBirthdate());
            stmt.setString(4, student.getCity());
            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows > 0;
    }

    public static ArrayList<Students> getAllStudents() {
        ArrayList<Students> students = new ArrayList<>();

        try {
            PreparedStatement stmt = connection.prepareStatement("select * from students order by id");
            ResultSet resultSet = stmt.executeQuery();

            while (resultSet.next()) {
                Students student = new Students();
                student.setId(resultSet.getLong("id"));
                student.setName(resultSet.getString("name"));
                student.setSurname(resultSet.getString("surname"));
                student.setBirthdate(resultSet.getString("birthdate"));
                student.setCity(resultSet.getString("city"));
                students.add(student);
            }

            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return students;
    }

    public static Students getStudent(Long id) {
        Students student = new Students();

        try {
            PreparedStatement stmt = connection.prepareStatement("select * from students where id = ?");
            stmt.setLong(1, id);
            ResultSet resultSet = stmt.executeQuery();

            if (resultSet.next()) {
                student.setId(resultSet.getLong("id"));
                student.setName(resultSet.getString("name"));
                student.setSurname(resultSet.getString("surname"));
                student.setBirthdate(resultSet.getString("birthdate"));
                student.setCity(resultSet.getString("city"));
            }

            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return student;
    }
}
