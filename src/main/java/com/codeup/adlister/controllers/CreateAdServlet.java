package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            // add a return statement to exit out of the entire method.
            return;
        }

        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User loggedInUser = (User) request.getSession().getAttribute("user");
        String category = String.valueOf(DaoFactory.getCategoriesDao().getCategoryById(request.getParameter("category_id")));
        String title = request.getParameter("username");
        String description = request.getParameter("email");
        String contact = request.getParameter("password");
        String location = request.getParameter("location");
        double price = Double.parseDouble(request.getParameter("price"));
        Ad ad = new Ad(
            loggedInUser.getId(),
            request.getParameter("title"),
            request.getParameter("description"),
            request.getParameter("contact"),
            request.getParameter("location"),
            Double.parseDouble(request.getParameter("price")),
            category
        );
        boolean inputHasErrors = title.isEmpty()
                || description.isEmpty()
                || contact.isEmpty()
                || location.isEmpty();

        System.out.println(inputHasErrors);

        if(title.isEmpty()) {
            request.getSession().setAttribute("userTitleEmpty", true);
        }
        else if (!title.isEmpty()){
            request.getSession().setAttribute("userTitleEmpty", false);
        }

        if(description.isEmpty()) {
            request.getSession().setAttribute("userDescEmpty", true);
        }
        else if (!description.isEmpty()) {
            request.getSession().setAttribute("userDescEmpty", false);
        }

        if(contact.isEmpty()) {
            request.getSession().setAttribute("userContactEmpty", true);
        }
        else if (!contact.isEmpty()) {
            request.getSession().setAttribute("userContactEmpty", false);
        }

        if(location.isEmpty()) {
            request.getSession().setAttribute("userLocEmpty", true);
        }
        else if (!location.isEmpty()) {
            request.getSession().setAttribute("userLocEmpty", false);
        }

        if (inputHasErrors) {
            response.sendRedirect("ads/create");
            return;
        }

        System.out.println(inputHasErrors);
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
