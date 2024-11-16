<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login with miniOrange</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
        }
        .login-container {
            text-align: center;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h2 {
            margin-bottom: 20px;
            color: #333333;
        }
        .login-button {
            display: inline-block;
            padding: 12px 24px;
            color: #ffffff;
            background-color: #0078d7;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .login-button:hover {
            background-color: #005a9e;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <a href="http://localhost:8080/sso?action=login" class="login-button">Login with miniOrange</a>
    </div>
</body>
</html>
