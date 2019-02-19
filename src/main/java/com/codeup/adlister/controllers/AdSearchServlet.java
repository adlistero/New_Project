package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdSearchServlet", urlPatterns = "/ads/search")
public class AdSearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userSearch =  request.getParameter("userSearch");
        request.setAttribute("ads", DaoFactory.getAdsDao().search(userSearch));
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}