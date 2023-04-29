package kz.bitlab.task3;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Task> tasks = new ArrayList<>();
    private static Long id = 0L;

    public static ArrayList<Task> getTasks() {
        return tasks;
    }

    public static Task getTask(Long id) {
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId().equals(id)) {
                return tasks.get(i);
            }
        }
        return null;
    }

    public static void saveTask(Long id, String name, String comment, String date, String success) {
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId().equals(id)) {
                tasks.get(i).setName(name);
                tasks.get(i).setComment(comment);
                tasks.get(i).setDate(date);
                tasks.get(i).setSuccess(success);
            }
        }
    }

    public static void removeTask(Long id) {
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId().equals(id)) {
                tasks.remove(i);
            }
        }
    }

    public static void addTask(Task task) {
        id++;
        task.setId(id);
        tasks.add(task);
    }
}
