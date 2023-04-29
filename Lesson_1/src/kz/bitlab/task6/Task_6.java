package kz.bitlab.task6;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/task6")

public class Task_6 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/task_6.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String fullname = req.getParameter("fullname");
        int points = Integer.parseInt(req.getParameter("points"));
        String score = "'F'";

        if (points >= 90) {
            score = "'A'";
        }
        else if (points >= 75 && points < 89) {
            score = "'B'";
        }
        else if (points >= 60 && points < 74) {
            score = "'C'";
        }
        else if (points >= 50 && points < 59) {
            score = "'D'";
        }

        out.print("<h1>" + fullname + " got " + score + " for exam!" + "</h1>");
    }
}
