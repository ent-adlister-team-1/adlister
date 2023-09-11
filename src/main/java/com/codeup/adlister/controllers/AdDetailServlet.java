package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/ads/details")

public class AdDetailServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adId = request.getParameter("id");
        System.out.println(adId);
        Ad ad = DaoFactory.getAdsDao().searchForAdById(adId);

        request.setAttribute("ad", ad);

        request.getRequestDispatcher("/WEB-INF/ads/ad-details.jsp").forward(request, response);

    }

}
