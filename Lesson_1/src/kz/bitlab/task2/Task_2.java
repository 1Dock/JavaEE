package kz.bitlab.task2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(value = "/task2")

public class Task_2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        ArrayList<User> users = DBManager.getUsers();

        out.print("<table>");
            out.print("<tr style='background: gray; color: #fff'>");
                out.print(
                    "<th>" + "NAME" + "</th>" +
                    "<th>" + "SURNAME" + "</th>" +
                    "<th>" + "DEPARTMENT" + "</th>" +
                    "<th>" + "SALARY" + "</th>"
                );
            out.print("</tr>");
            for (User u: users) {
                out.print("<tr>");
                    out.print(
                        "<td>" + u.getName() + "</td>" +
                        "<td>" + u.getSurname() + "</td>" +
                        "<td>" + u.getDepartment() + "</td>" +
                        "<td>" + u.getSalary() + "</td>"
                    );
                out.print("</tr>");
            }
        out.print("</table>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
