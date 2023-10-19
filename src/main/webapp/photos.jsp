<%@page import="beans.Photo"%>
<%@page import="daos.PhotoDAO"%>
<%@page import="interfaces.IDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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

        h1 {
            color: #333;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Bienvenido</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="todos.jsp">Tareas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="albums.jsp">Álbumes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="photos.jsp">Fotos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="posts.jsp">Publicaciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="comments.jsp">Comentarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="users.jsp">Usuarios</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container">
        <h1>Listado de Fotos</h1>
        <%
<<<<<<< HEAD
        final PhotoService photoService = new PhotoService();
        Photo[] photos = photoService.getAll();
        int colCount = 0;

        for (Photo photo : photos) {
            if (colCount % 3 == 0) {
        %>
        <div class="row">
        <%
            }
        %>
            <div class="col-md-4">
                <div class="card" style="margin-bottom: 20px;">
                    <img src="<%= photo.getThumbnailUrl() %>" class="card-img-top" alt="<%= photo.getTitle() %>">
                    <div class="card-body">
                        <h5 class="card-title"><%= photo.getTitle() %></h5>
                        <p class="card-text">Álbum: <%= photo.getAlbumID() %></p>
                    </div>
                </div>
            </div>
        <%
            if (colCount % 3 == 2 || colCount == photos.length - 1) {
=======
        final PhotoDAO photoService = new PhotoDAO();
                Photo[] photos = photoService.getAll();

                for (Photo photo : photos) {
>>>>>>> main
        %>
        </div>
        <%
            }
            colCount++;
        }
        %>
    </div>
    
    <!-- Agregar la referencia a Bootstrap JS y jQuery al final del archivo -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
