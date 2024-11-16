package com.demoapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/demoapplication")
public class MyServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        if (session != null) {
            Map<String, Object> valuesArray = (Map<String, Object>) session.getAttribute("attributes");
            response.setContentType("text/html");
            response.getWriter().println("<h1>User Attributes</h1>");
            Map<String, String> userAttributes = new HashMap<String,String>();
            if (valuesArray != null) {
                for (Map.Entry<String, Object> entry : valuesArray.entrySet()) {
                    String key = entry.getKey();
                    Object valueObject = entry.getValue();
                    if (valueObject instanceof String[]) {
                        String[] stringArray = (String[]) valueObject;
                        for (String value : stringArray) {
                            if (key.equals("username")) {
                                userAttributes.put(key,value);
                                session.setAttribute("attributes",userAttributes);
                            }
                            System.out.println("Key: " + key + ", Value: " + value);
                           // response.getWriter().println("<p> Key =  " + key + "</p>" + "<p> value = " + value + "</p>");
                        }
                    } else {

                    }
                }
            } else {
                System.out.println("No attributes found in the session.");
            }
        } else {
            System.out.println("No session found.");
        }
        request.getRequestDispatcher("home.jsp").forward(request, response);

    }

}
