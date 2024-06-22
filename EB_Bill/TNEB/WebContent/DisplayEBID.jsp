<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String ebid = request.getParameter("ebid");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #333333;
        }
        p {
            font-size: 18px;
            color: #555555;
        }
        a {
            color: #0066cc;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .ebid {
            font-weight: bold;
            color: #ff6347;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Successful!</h1>
        <p>Your EBID is: <span class="ebid"><%= ebid %></span></p>
        <p>Back to <a href="index.jsp">Login</a> Page</p>
    </div>
</body>
</html>
