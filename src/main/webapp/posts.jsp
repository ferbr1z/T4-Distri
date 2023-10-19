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
	margin-left: auto;
	margin-right: auto;
	width: 90%;
	border: 1px solid #ccc;
	border-radius: 10px;
}

h1 {
	color: #333;
}
</style>
</head>
<body>
	<div class="container">

		<%
		final PostsService postService = new PostsService();
		String postId = request.getParameter("id");

		if (postId != null && !postId.isEmpty()) {

			IPostWithCommentsDTO post = postService.getByID(postId);
		%>

		<div class="post-item">

			<h1><%=post.getTitle()%></h1>
			<h3>
				Autor:<%=post.getUserName()%></h3>
			<p><%=post.getBody()%>
			</p>
			<h3>Commentarios:</h3>
			<%
			ICommentDTO[] comments = post.getComments();
			for (ICommentDTO comment : comments) {
			%>

			<div class="comment">

				<p>
					<b><%=comment.getName()%></b>:
					<%=comment.getBody()%>
				</p>
			</div>


			<%
			}
		} else {
			IPostDTO[] posts = postService.getAll();
			for(IPostDTO post: posts){
		%>
			<div class="post-item" id="<%=post.getID() %>">
				<a href="?id=<%= post.getID() %>">
					<h2><%=post.getTitle() %></h2>
				</a>
				<h4>Usuario: <%=post.getUserName() %></h4>
				<p> <%= post.getBody() %> </p>
			</div>
		<%
			}
		}%>
		</div>
		</div>
</body>
</html>
