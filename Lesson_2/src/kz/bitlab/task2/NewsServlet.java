package kz.bitlab.task2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/news")

public class NewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category = req.getParameter("category");
        ArrayList<News> news = DBManager.getNews();

        if (category != null) {
            ArrayList<News> _news = new ArrayList<>();

            for (News n: news) {
                if (n.getCategory().equals(category)) {
                    _news.add(n);
                }
            }

            news = _news;
        }

        req.setAttribute("news", news);

        req.getRequestDispatcher("/task2/news.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
