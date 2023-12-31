package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        System.out.println(password);
        System.out.println(passwordConfirmation);
        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (!password.equals(passwordConfirmation));

        if(username.isEmpty()) {
            request.getSession().setAttribute("userNameEmpty", true);
        }
        else if (!username.isEmpty()){
            request.getSession().setAttribute("userNameEmpty", false);
        }

        if(email.isEmpty()) {
            request.getSession().setAttribute("userEmailEmpty", true);
        }
        else if (!email.isEmpty()) {
            request.getSession().setAttribute("userEmailEmpty", false);
        }

        if(password.isEmpty()) {
            request.getSession().setAttribute("userPasswordEmpty", true);
        }
        else if (!password.isEmpty()) {
            request.getSession().setAttribute("userPasswordEmpty", false);
        }

        if(!password.equals(passwordConfirmation)) {
            request.getSession().setAttribute("passwordsNotEqual", true);
        }
        else if (password.equals(passwordConfirmation)) {
            request.getSession().setAttribute("passwordsNotEqual", false);
        }

        if (inputHasErrors) {
            response.sendRedirect("/register");
            return;
        }

        // create and save a new user
        User user = new User(username, email, password);

        // hash the password

        String hash = Password.hash(user.getPassword());

        user.setPassword(hash);

        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}
