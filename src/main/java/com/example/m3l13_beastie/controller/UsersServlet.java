package com.example.m3l13_beastie.controller;

import com.example.m3l13_beastie.entity.User;
import com.example.m3l13_beastie.service.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "usersServlet", value = "/users-servlet")
public class UsersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserService userService = new UserService();
        userService.printAllUsersToConsole();

        List<User> allUsers = userService.getAllUsers();
        request.setAttribute("users", allUsers);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/users.jsp");
        requestDispatcher.forward(request, response);

    }

}
