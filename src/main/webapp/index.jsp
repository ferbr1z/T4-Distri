<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenido</title>
    <!-- Agregar la referencia a Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            padding: 20px;
        }

        .welcome-card {
            background-color: #fff;
            border: 1px solid #dcdcdc;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .lead {
            font-size: 1.25rem;
            margin-bottom: 30px;
        }

        .list-group-item {
            font-size: 1.5rem;
            padding: 15px;
            border: none;
            background-color: #fff;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .list-group-item:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    <!-- Agregar el menú de navegación (navbar) de Bootstrap -->
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

    <div class="container mt-4">
        <div class="welcome-card p-4">
            <h1 class="text-center">¡Bienvenido a la Aplicación Web!</h1>
            <p class="lead text-center my-4">Esta es una página de bienvenida. Puedes usar los siguientes enlaces para acceder a las diferentes secciones:</p>
        </div>
    </div>

    <!-- Agregar la referencia a Bootstrap JS y jQuery al final del archivo -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
