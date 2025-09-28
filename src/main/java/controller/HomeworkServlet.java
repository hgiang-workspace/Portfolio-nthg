package controller;

import dao.HomeworkDAO;
import model.Homework;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/views/homework/*")
public class HomeworkServlet extends HttpServlet {

    private HomeworkDAO dao;

    @Override
    public void init() throws ServletException {
        super.init();
        dao = new HomeworkDAO();
    }

    @Override
    protected void doGet(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp)
            throws ServletException, IOException {
        List<Homework> list = dao.findAll();
        req.setAttribute("homeworks", list);
        req.getRequestDispatcher("/views/homework.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp)
            throws ServletException, IOException {
        String action = req.getParameter("action");

        if ("create".equals(action)) {
            // thêm bài tập
            String title = req.getParameter("title");
            String link = req.getParameter("link");
            Homework hw = new Homework(title, link);
            dao.create(hw);

        } else if ("delete".equals(action)) {
            // xóa bài tập
            Long id = Long.valueOf(req.getParameter("id"));
            dao.delete(id);
        }

        resp.sendRedirect(req.getContextPath() + "/views/homework");
    }
}
