package com.codeup.adlister.controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LogoutServlet", urlPatterns = "/logout")
public class LogoutServlet extends HttpServlet {

//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        request.getSession().removeAttribute("user");
//        request.getSession().invalidate();
//        response.sendRedirect("/login");
//    }
//
////    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
////        request.getSession().removeAttribute("user");
////        request.getSession().invalidate();
////        response.sendRedirect("/login");
////    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        request.getSession().removeAttribute("user");
//        request.getSession().invalidate();
//        response.sendRedirect("/logout");
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getSession().removeAttribute("user");
        request.getSession().invalidate();

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/logout.jsp");
        dispatcher.forward(request, response);
    }




}
