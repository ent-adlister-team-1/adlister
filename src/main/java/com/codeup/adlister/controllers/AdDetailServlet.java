package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = "/ads/details")

public class AdDetailServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adId = request.getParameter("id");
        Ad ad = DaoFactory.getAdsDao().searchForAdById(adId);

        System.out.println("title" + ad.getTitle());
        System.out.println("price" + ad.getPrice());
        System.out.println("location" + ad.getLocation());

        request.setAttribute("ad", ad);

        request.getRequestDispatcher("/WEB-INF/ads/ad-details.jsp").forward(request, response);

    }

}
