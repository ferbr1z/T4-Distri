<%@page import="interfaces.dtos.ICommentDTO"%>
<%@page import="interfaces.dtos.IPostWithCommentsDTO"%>
<%@page import="services.PostsService"%>
<%@page import="interfaces.dtos.IPostDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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

        .comment {
            padding: 0.5rem;
            margin: 0.5rem;
            width: 90%;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f8f9fa;
        }

        h1 {
            color: #333;
            font-size: 24px;
        }

        h2 {
            font-size: 20px;
        }

        h4 {
            font-size: 16px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">Bienvenido</a>
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
        <%
        final PostsService postService = new PostsService();
        String postId = request.getParameter("id");

        if (postId != null && !postId.isEmpty()) {
            IPostWithCommentsDTO post = postService.getByID(postId);
        %>
        <div class="post-item">
            <h2><%=post.getTitle()%></h2>
            <h4>Autor: <%=post.getUserName()%></h4>
            <p><%=post.getBody()%></p>
            <h4><b>Comentarios:</b></h4>
            <%
            ICommentDTO[] comments = post.getComments();
            for (ICommentDTO comment : comments) {
            %>
            <div class="comment">
			    <div class="card">
			        <div class="card-body">
			            <h5 class="card-title"><b><%=comment.getName()%></b></h5>
			            <p class="card-text"><%=comment.getBody()%></p>
			        </div>
			    </div>
			</div>
            <%
            }
            %>
        </div>
        <%
        } else {
            IPostDTO[] posts = postService.getAll();%>
            <h1>Listado de Publicaciones</h1>
            <% 
            for (IPostDTO post : posts) {
        %>
        
        <div class="post-item" id="<%=post.getID()%>">
            <a href="?id=<%=post.getID()%>">
                <h2><%=post.getTitle()%></h2>
            </a>
            <h4>Autor: <%=post.getUserName()%></h4>
            <p><%=post.getBody()%></p>
        </div>
        <%
            }
        }
        %>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
