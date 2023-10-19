<%@page import="services.UserService"%>
<%@page import="dtos.UserDTO"%>
<%@page import="services.PostsService"%>
<%@page import="dtos.PostDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
            color: black;
            margin: 10px 0;
            padding: 10px;
        }

        .user-item h2 {
            color: #1376BF;
            font-size: 20px;
        }

        .user-item:hover {
            background-color: #429BDD;
            background-color: white;
            box-shadow: 0px 5px 15px -10px #888;
        }

        .user-item:hover h2 {
            color: #429BDD;
        }

        .user-item a {
            text-decoration: none;
            color: #333;
        }

        h1 {
            color: #333;
        }
        
        a {
			text-decoration: none;
		}
		
        h4 {
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
        <h1>Listado de Usuarios</h1>
        <%
        String id = request.getParameter("id");
        final UserService userService = new UserService();
        if (id != null && !id.isEmpty()) {
            UserDTO user = userService.getByID(id);
        %>
        <div class="user-item">
            <h2><%=user.getName()%></h2>
            <h4>Nombre de usuario: <%=user.getUserName()%></h4>
            <p>Correo electrónico: <%=user.getEmail()%></p>
            <p>Sitio web: <%=user.getWebsite()%></p>
            <p>Dirección: <%=user.getAddress()%></p>
            <div class="posts">
                <h4>Posts de <%=user.getName()%></h4>
                <%
                PostDTO[] posts = new PostsService().getByUserId(id);
                for (PostDTO post : posts) {
                %>
                <a href="/Tarea4-Distribuidos/posts?id=<%=post.getID()%>">
                    <div class="comment">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title"><%=post.getTitle()%></h5>
                                <p class="card-text"><%=post.getBody()%></p>
                            </div>
                        </div>
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
        <%
        UserDTO[] users = userService.getAll();
        for (UserDTO user : users) {
        %>
        <a href="?id=<%=user.getID()%>">
            <div class="user-item" id="<%=user.getID()%>">
                <h2><%=user.getName()%></h2>
                <h4>Nombre de usuario: <%=user.getUserName()%></h4>
                <p>Correo electrónico: <%=user.getEmail()%></p>
            </div>
        </a>
        <%
        }
        }
        %>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
