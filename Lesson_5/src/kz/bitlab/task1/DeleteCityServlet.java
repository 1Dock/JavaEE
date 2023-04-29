package kz.bitlab.task1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/deletecity")

public class DeleteCityServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        String redirect = "/editcity?id=" + id + "&error";

        if (DBManager.deleteCity(id) == true) {
            redirect = "/addcity?success";
        }

        resp.sendRedirect(redirect);
    }
}
