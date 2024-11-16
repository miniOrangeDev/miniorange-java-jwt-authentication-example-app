<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Invalidate the session to log out the user
    if (session != null) {
        session.invalidate();
    }

    // Define the miniOrange logout URL with redirect to the root page
    String logoutUrl = "http://localhost:8080/sso?action=logoutapp";

    // Redirect the user to the miniOrange logout URL
    response.sendRedirect(logoutUrl);
%>
