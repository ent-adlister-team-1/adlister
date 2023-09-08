package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/ads/update")
public class UpdateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            String id = request.getParameter("id");
            System.out.println(id);
            Ad ad = DaoFactory.getAdsDao().searchForAdById(id);
            request.setAttribute("ad", ad);
            request.getRequestDispatcher("/WEB-INF/ads/update.jsp").forward(request, response);
            return;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        Ad ad = DaoFactory.getAdsDao().searchForAdById(id);
        System.out.println(id);
       request.setAttribute("ad", ad);
//        response.sendRedirect("/update");

    }
}
