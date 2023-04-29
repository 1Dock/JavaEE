package kz.bitlab.task7;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(value = "/task7")

public class Task_7 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/task_7.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String club = req.getParameter("club");
        int salary = Integer.parseInt(req.getParameter("salary"));
        int price = Integer.parseInt(req.getParameter("price"));

        Footboller footboller = new Footboller(name, surname, club, salary, price);
        DBManager.addFootboller(footboller);

        ArrayList<Footboller> footbollers = DBManager.getFootbollers();

        for (Footboller f: footbollers) {
            out.print("<h1 style='color: green'>" + f.getName() + " " + f.getSurname() + "</h1>");
            out.print("<h3 style='color: blue'>" + "Club: " + f.getClub() + "</h3>");
            out.print("<h3 style='color: red'>" + "Salary: " + f.getSalary() + " EUR" + "</h3>");
            out.print("<h3 style='color: red'>" + "Transfer price: " + f.getPrice() + " EUR" + "</h3><br>");
        }
    }
}
