<%@page import="services.TodoService"%>
<%@page import="interfaces.dtos.ITodoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
		
		a {
			text-decoration: none;
		}
		
		.todo-item {
			background-color: #ffffff;
			border: 1px solid #ccc;
			color: black;
			margin: 10px 0;
			padding: 10px;
		}
		
		.todo-item>h2 {
			color: #1376BF;
		}
		
		.todo-item:hover {
			background-color: #429BDD;
			background-color: white;
			box-shadow: 0px 5px 15px -10px #888;
		}
		
		.todo-item:hover>h2 {
			color: #429BDD;
		}
		
		h1 {
			color: #333;
		}
		
		h2 {
			font-size: 20px;
		}
		
		h6 {
			font-size: 16px;
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
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="todos">Tareas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="albums">Álbumes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="photos">Fotos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="posts">Publicaciones</a>
                    </li>
                    <li class "nav-item">
                        <a class="nav-link" href="comments">Comentarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="users">Usuarios</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
	<div class="container">
		<h1>TODO List</h1>
		<%
		final TodoService todoService = new TodoService();
		String todoId = request.getParameter("id");

		// Comprueba si se está pidiendo un TODO en específico
		if (todoId != null && !todoId.isEmpty()) {
			ITodoDTO todo = todoService.getByID(todoId);
		%>
		<div class="todo-item">
			<p>
				ID del Todo:
				<%=todo.getID()%></p>
			<h2><%=todo.getTitle()%></h2>
			<h6>
				Usuario:
				<%=todo.getUserName()%></h6>
			<p>
				Estado:
				<%=(todo.isCompleted() ? "Completado" : "Pendiente")%></p>
		</div>
		<%
		} else { // Sino, se listan todos los TODOs
		ITodoDTO[] todos = todoService.getAll();
		for (ITodoDTO todo : todos) {
		%>
		<a href="?id=<%=todo.getID()%>">
			<div class="todo-item" id="<%=todo.getID()%>">
				<h2><%=todo.getTitle()%></h2>
				<h6>
					Usuario:
					<%=todo.getUserName()%></h6>
				<p><%=todo.isCompleted() ? "Completado" : "Pendiente"%></p>
			</div>
		</a>
		<%
		}
		}
		%>
	</div>
	<!-- Agregar la referencia a Bootstrap JS y jQuery al final del archivo -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>

