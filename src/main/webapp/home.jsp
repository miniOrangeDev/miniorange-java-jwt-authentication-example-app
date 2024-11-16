<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home - User Logged In</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
        }

        .container {
            text-align: center;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

        h1 {
            color: #333333;
            font-size: 24px;
            margin-bottom: 16px;
        }

        p {
            font-size: 18px;
            color: #666666;
        }

        .welcome {
            font-weight: bold;
            font-size: 20px;
            color: #0078d7;
            margin-top: 20px;
        }

        .logout-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            color: #ffffff;
            background-color: #0078d7;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .logout-button:hover {
            background-color: #005a9e;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Logged In Successfully!</h1>

        <%
            // Retrieve user attributes from the session
            Map<String, String> userAttributes = (Map<String, String>) session.getAttribute("attributes");
            if (userAttributes != null) {
                String username = userAttributes.get("username");
        %>
                <p class="welcome">Welcome, <%= username %>!</p>
        <%
            } else {
        %>
                <p>No user information found. Please log in again.</p>
        <%
            }
        %>

        <a href="logout.jsp" class="logout-button">Log Out</a>
    </div>
</body>
</html>
