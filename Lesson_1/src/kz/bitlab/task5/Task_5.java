package kz.bitlab.task5;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/task5")

public class Task_5 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/task_5.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String fullname = req.getParameter("fullname");
        int age = Integer.parseInt(req.getParameter("age"));
        String gender = req.getParameter("gender");

        String ageName = "Dude";
        String genderName = "Miss";

        if (age >= 18) {
            ageName = "Dear";
        }

        System.out.println(gender);

        if (gender.equals("male")) {
            genderName = "Mister";
        }

        out.print("<h1>" + "Hello " + ageName + " " + genderName + " " + fullname + "</h1>");
    }
}
