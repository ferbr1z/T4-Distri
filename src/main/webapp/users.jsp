<%@page import="beans.User"%>
<%@page import="daos.UserDAO"%>
<%@page import="interfaces.IDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Usuarios</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
        }

        .user-item {
            background-color: #ffffff;
            border: 1px solid #ccc;
            margin: 10px 0;
            padding: 10px;
        }

        .user-item a {
            text-decoration: none;
            color: #333;
        }

        h1 {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Listado de Usuarios</h1>
        <%
        final UserDAO userService = new UserDAO();
                User[] users = userService.getAll();

                for (User user : users) {
        %>
        <div class="user-item" id="<%= user.getID() %>">
            <h2><%= user.getName() %></h2>
            <p>Nombre de usuario: <%= user.getUsername() %></p>
            <p>Correo electrónico: <%= user.getEmail() %></p>
        </div>
        <%
        }
        %>
    </div>
</body>
</html>
