<%@page import="services.PostsService"%>
<%@page import="dtos.PostDTO"%>
<%@page import="dtos.UserDTO"%>
<%@page import="services.UserService"%>
<%@page import="beans.User"%>
<%@page import="daos.UserDAO"%>
<%@page import="interfaces.IDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.post-item {
	padding: 0.5rem;
	margin: 0.5rem;
	width: 90%;
	border: 1px solid #ccc;
	border-radius: 10px;
	background-color: #f8f9fa;
}

.post-item>h3 {
	color: #1376BF;
}

.post-item:hover {
	background-color: white;
	box-shadow: 0px 5px 15px -10px #888;
}

.post-item:hover>h3 {
	color: #429BDD;
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

		<%
		String id = request.getParameter("id");
		final UserService userService = new UserService();
		if (id != null && !id.isEmpty()) {
			UserDTO user = userService.getByID(id);
		%>

		<div class="user-item">
			<h2><%=user.getName()%></h2>
			<h3>
				Username:
				<%=user.getUserName()%></h3>
			<p>
				Email:
				<%=user.getEmail()%>
			</p>
			<p>
				Website:
				<%=user.getWebsite()%></p>
			<p>
				Address:
				<%=user.getAddress()%></p>

			<div class="posts">
				<h4>
					Posts de
					<%=user.getName()%></h4>

				<%
				PostDTO[] posts = new PostsService().getByUserId(id);
				for (PostDTO post : posts) {
				%>

				<a href="/Tarea4-Distribuidos/posts?id=<%=post.getID()%>">
					<div class="post-item">
						<h3><%=post.getTitle()%></h3>
						<p>
							<%=post.getBody()%>
						</p>
					</div>
				</a>

				<%
				}
				%>

			</div>

		</div>

		<%
		} else {
		%>

		<h1>Listado de Usuarios</h1>
		<%
		UserDTO[] users = userService.getAll();

		for (UserDTO user : users) {
		%>
		<a href="?id=<%=user.getID()%>">
			<div class="user-item" id="<%=user.getID()%>">
				<h2><%=user.getName()%></h2>
				<p>
					Nombre de usuario:
					<%=user.getUserName()%></p>
				<p>
					Correo electrónico:
					<%=user.getEmail()%></p>
			</div>
		</a>
		<%
		}
		}
		%>
	</div>
</body>
</html>
