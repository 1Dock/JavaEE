package kz.bitlab.task2;

import java.io.PrintWriter;
import java.util.ArrayList;

public class DBManager {
    private static ArrayList<User> users = new ArrayList<>();

    static {
        users.add(new User("Ilyas", "Zhuanyshev", "IT", "550000"));
        users.add(new User("Ilya", "Zhuanyshe", "IT", "500000"));
        users.add(new User("Ily", "Zhuanysh", "IT", "850000"));
        users.add(new User("Il", "Zhuanys", "IT", "250000"));
        users.add(new User("I", "Zhuany", "IT", "650000"));
    }

    public static ArrayList<User> getUsers() {
        return users;
    }
}
