<%@page import="beans.Photo"%>
<%@page import="services.PhotoService"%>
<%@page import="interfaces.IService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Fotos</title>
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

        .photo-item {
            background-color: #ffffff;
            border: 1px solid #ccc;
            margin: 10px 0;
            padding: 10px;
        }

        .photo-item a {
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
        <h1>Listado de Fotos</h1>
        <%
        final PhotoService photoService = new PhotoService();
        Photo[] photos = photoService.getAll();

        for (Photo photo : photos) {
        %>
        <div class="photo-item" id="<%= photo.getID() %>">
            <h2><%= photo.getTitle() %></h2>
            <p>Álbum: <%= photo.getAlbumID() %></p>
            <img src="<%= photo.getThumbnailUrl() %>" alt="<%= photo.getTitle() %>" />
        </div>
        <%
        }
        %>
    </div>
</body>
</html>
