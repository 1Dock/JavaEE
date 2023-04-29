package kz.bitlab.task1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/editcity")

public class EditCityServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        City city = DBManager.getCity(id);
        req.setAttribute("city", city);
        req.getRequestDispatcher("/task1/editcity.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        String name = req.getParameter("name");
        String code = req.getParameter("code");

        City city = new City();

        city.setId(id);
        city.setName(name);
        city.setCode(code);

        String redirect = "/detailscity?id=" + id;

        if (DBManager.editCity(city) == true) {
            redirect += "&success";
        }
        else {
            redirect += "&error";
        }

        resp.sendRedirect(redirect);
    }
}
