package kz.bitlab.task1;

import java.util.ArrayList;

public class DBManager {
    private static Long id = 0L;
    private static ArrayList<Items> items = new ArrayList<>();

    public static ArrayList<Items> getItems() {
        return items;
    }

    public static void addItem(Items item) {
        id++;
        item.setId(id);
        items.add(item);
    }

    public static Items getItem(Long id) {
        for (int i = 0; i < items.size(); i++) {
            if (items.get(i).getId().equals(id)) {
                return items.get(i);
            }
        }
        return null;
    }
}
