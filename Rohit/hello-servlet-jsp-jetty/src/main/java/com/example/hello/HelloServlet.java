package com.example.hello;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        if (name == null || name.isBlank()) {
            name = "World";
        }

        // Make values available to the JSP view
        request.setAttribute("name", name);
        request.setAttribute("serverTime", LocalDateTime.now().toString());
        request.setAttribute("javaVersion", System.getProperty("java.version"));

        request.getRequestDispatcher("/WEB-INF/views/hello.jsp").forward(request, response);
    }
}
