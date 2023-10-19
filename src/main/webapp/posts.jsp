<%@page import="beans.Post"%>
<%@page import="daos.PostDAO"%>
<%@page import="interfaces.IDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Publicaciones</title>
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

        .post-item {
            background-color: #ffffff;
            border: 1px solid #ccc;
            margin: 10px 0;
            padding: 10px;
        }

        h1 {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Listado de Publicaciones</h1>
        <%
        final PostDAO postService = new PostDAO();
                Post[] posts = postService.getAll();

                for (Post post : posts) {
        %>
        <div class="post-item" id="<%= post.getID() %>">
            <h2><%= post.getTitle() %></h2>
            <p><%= post.getBody() %></p>
            <p>Usuario: <%= post.getUserID() %></p>
        </div>
        <%
        }
        %>
    </div>
</body>
</html>
