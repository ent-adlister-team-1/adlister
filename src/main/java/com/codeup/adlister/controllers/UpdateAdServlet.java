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
            response.sendRedirect("/login");
            return;
        }
        String id = request.getParameter("id");
        Ad ad = DaoFactory.getAdsDao().searchForAdById(id);
        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/ads/update.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("inside do");
        String id = request.getParameter("id");
        System.out.println("id is: " + id);
        Ad ad = DaoFactory.getAdsDao().searchForAdById(id);
        ad.setTitle(request.getParameter("title"));
        ad.setPrice(Double.parseDouble(request.getParameter("price")));
        ad.setDescription(request.getParameter("description"));
        ad.setContact(request.getParameter("contact"));
        ad.setLocation(request.getParameter("location"));
        System.out.println("Ad sent to DAO:");
        System.out.println(ad);
//        request.setAttribute("ad", ad);
        DaoFactory.getAdsDao().updateAd(ad);
        response.sendRedirect("/ads");


    }
}
