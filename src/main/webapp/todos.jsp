<%@page import="beans.Todo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="services.TodoService"%>
<%@page import="interfaces.IService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TODO List</title>
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

        .todo-item {
            background-color: #ffffff;
            border: 1px solid #ccc;
            margin: 10px 0;
            padding: 10px;
        }

        .todo-item a {
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
    	<a href="users.jsp">Ver Usuarios</a>
        <%
        final TodoService todoService = new TodoService();
        String todoId = request.getParameter("id");

        // Comprueba si se está pidiendo un TODO en específico
        if (todoId != null && !todoId.isEmpty()) {
            Todo todo = todoService.getByID(todoId);
        %>
        <div class="todo-item">
            <p>ID del Todo: <%= todo.getID() %></p>
            <h1><%= todo.getTitle() %></h1>
            <h2>Autor: <%= todo.getUserID() %></h2>
            <p>Estado: <%=(todo.isCompleted() ? "Completado" : "Pendiente") %></p>
        </div>
        <%
        } else { // Sino, se listan todos los TODOs
            Todo[] todos = (Todo[]) todoService.getAll();
            for (Todo todo : todos) {
        %>
        <div class="todo-item" id="<%= todo.getID() %>">
            <a href="?id=<%= todo.getID()%>">
                <h2><%= todo.getTitle() %></h2>
            </a>
            <h6>Aquí debe ir el nombre del usuario con ID <%= todo.getUserID() %></h6>
            <p><%= todo.isCompleted() ? "Completado" : "Pendiente" %></p>
        </div>
        <%
            }
        }
        %>
    </div>
</body>
</html>
