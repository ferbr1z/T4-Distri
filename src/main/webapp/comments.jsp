<%@page import="beans.Comment"%>
<%@page import="daos.CommentDAO"%>
<%@page import="interfaces.IDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
            font-size: 24px;
        }

        h2 {
            font-size: 20px;
        }

        p {
            font-size: 16px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="index">Bienvenido</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="todos">Tareas</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="albums">Álbumes</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="photos">Fotos</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="posts">Publicaciones</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="comments">Comentarios</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="users">Usuarios</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
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
        </div>
        <%
        }
        %>
    </div>
    <!-- Agregar la referencia a Bootstrap JS y jQuery al final del archivo -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>

