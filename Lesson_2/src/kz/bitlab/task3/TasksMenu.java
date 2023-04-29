package kz.bitlab.task3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/tasks")

public class TasksMenu extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/task3/tasksmenu.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String comment = req.getParameter("comment");
        String date = req.getParameter("date");

        Task task = new Task();
        task.setName(name);
        task.setComment(comment);
        task.setDate(date);
        task.setSuccess("Нет");
        DBManager.addTask(task);

        resp.sendRedirect("/tasks");
    }
}
