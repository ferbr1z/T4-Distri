<%@page import="beans.Album"%>
<%@page import="services.AlbumService"%>
<%@page import="interfaces.IService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Álbumes</title>
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

        .album-item {
            background-color: #ffffff;
            border: 1px solid #ccc;
            margin: 10px 0;
            padding: 10px;
        }

        .album-item a {
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
        <h1>Listado de Álbumes</h1>
        <%
        final AlbumService albumService = new AlbumService();
        Album[] albums = albumService.getAll();

        for (Album album : albums) {
        %>
        <div class="album-item" id="<%= album.getID() %>">
            <h2><%= album.getTitle() %></h2>
            <p>Usuario: <%= album.getUserID() %></p>
        </div>
        <%
        }
        %>
        <p><a href="todos.jsp">Ver Tareas</a></p>
    </div>
</body>
</html>
