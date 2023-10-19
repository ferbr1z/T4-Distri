<%@page import="beans.Comment"%>
<%@page import="daos.CommentDAO"%>
<%@page import="interfaces.IDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Comentarios</title>
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

        .comment-item {
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
        <h1>Listado de Comentarios</h1>
        <%
        final CommentDAO commentService = new CommentDAO();
                Comment[] comments = commentService.getAll();

                for (Comment comment : comments) {
        %>
        <div class="comment-item" id="<%= comment.getID() %>">
            <h2><%= comment.getName() %></h2>
            <p>Email: <%= comment.getEmail() %></p>
            <p><%= comment.getBody() %></p>
            <p>Publicación ID: <%= comment.getPostID() %></p>
        </div>
        <%
        }
        %>
    </div>
</body>
</html>
