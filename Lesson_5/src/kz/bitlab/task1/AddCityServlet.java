package kz.bitlab.task1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/addcity")

public class AddCityServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<City> cities = DBManager.getAllCities();
        req.setAttribute("cities", cities);
        req.getRequestDispatcher("/task1/addcity.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/addcity?error";

        String name = req.getParameter("name");
        String code = req.getParameter("code");

        City city = new City();

        city.setName(name);
        city.setCode(code);

        if (DBManager.addCity(city) == true) {
            redirect = "/addcity?success";
        }

        resp.sendRedirect(redirect);
    }
}
