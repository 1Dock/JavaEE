package kz.bitlab.task7;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Footboller> footbollers = new ArrayList<>();

    public static ArrayList<Footboller> getFootbollers() {
        return footbollers;
    }

    public static void addFootboller(Footboller footboller) {
        footbollers.add(footboller);
    }
}
