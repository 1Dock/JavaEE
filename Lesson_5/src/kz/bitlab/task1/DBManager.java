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

    public static boolean editStudent(Students student) {
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("update students set name = ?, surname = ?, birthdate = ?, city = ? where id = ?");
            stmt.setString(1, student.getName());
            stmt.setString(2, student.getSurname());
            stmt.setString(3, student.getBirthdate());
            stmt.setString(4, student.getCity());
            stmt.setLong(5, student.getId());

            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows > 0;
    }

    public static boolean deleteStudent(Long id) {
        int rows = 0;

        try {
            PreparedStatement stmt = connection.prepareStatement("delete from students where id = ?");
            stmt.setLong(1, id);

            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows > 0;
    }

    public static boolean addCity(City city) {
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into cities(name, code) values(?, ?)");
            stmt.setString(1, city.getName());
            stmt.setString(2, city.getCode());
            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows > 0;
    }

    public static ArrayList<City> getAllCities() {
        ArrayList<City> cities = new ArrayList<>();

        try {
            PreparedStatement stmt = connection.prepareStatement("select * from cities order by id");
            ResultSet resultSet = stmt.executeQuery();

            while (resultSet.next()) {
                City city = new City();
                city.setId(resultSet.getLong("id"));
                city.setName(resultSet.getString("name"));
                city.setCode(resultSet.getString("code"));
                cities.add(city);
            }

            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cities;
    }

    public static City getCity(Long id) {
        City city = new City();

        try {
            PreparedStatement stmt = connection.prepareStatement("select * from cities where id = ?");
            stmt.setLong(1, id);
            ResultSet resultSet = stmt.executeQuery();

            if (resultSet.next()) {
                city.setId(resultSet.getLong("id"));
                city.setName(resultSet.getString("name"));
                city.setCode(resultSet.getString("code"));
            }

            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return city;
    }

    public static boolean editCity(City city) {
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("update cities set name = ?, code = ? where id = ?");
            stmt.setString(1, city.getName());
            stmt.setString(2, city.getCode());
            stmt.setLong(3, city.getId());

            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows > 0;
    }

    public static boolean deleteCity(Long id) {
        int rows = 0;

        try {
            PreparedStatement stmt = connection.prepareStatement("delete from cities where id = ?");
            stmt.setLong(1, id);

            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows > 0;
    }
}