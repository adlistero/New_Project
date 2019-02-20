package com.codeup.adlister.controllers;
import javax.servlet.annotation.WebServlet;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("editAd",request.getParameter("id"));
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        Long id = Long.parseLong(request.getParameter("adid"));
        System.out.println();
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        Ad ad = new Ad(id, user.getId(), title, description);
        DaoFactory.getAdsDao().editAd(ad);
       response.sendRedirect("/profile");

    }
}


