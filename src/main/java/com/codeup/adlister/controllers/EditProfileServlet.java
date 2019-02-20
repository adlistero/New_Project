package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditProfileServlet", urlPatterns = "/editProfile")
public class EditProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User loggedInUser = (User)request.getSession().getAttribute("user");
        User user = DaoFactory.getUsersDao().findByUsername(loggedInUser.getUsername());
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/editProfile.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        User user = DaoFactory.getUsersDao().findById(id);
        String username = (request.getParameter("username"));
        String email = request.getParameter("email");
        user.setUsername(username);
        user.setEmail(email);
        DaoFactory.getUsersDao().editProfile(user);
        request.getSession().setAttribute("user", user);
        response.sendRedirect("/profile");

    }
}
