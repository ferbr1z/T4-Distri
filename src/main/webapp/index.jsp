<%@page import="beans.Todo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="services.TodoService"%>
<%@page import="interfaces.IService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		final TodoService todoService = new TodoService();
	 	String todoId = request.getParameter("id");
		
	 	// Se comprueba si se esta pidiendo un TODO en especifico
	 	if(todoId != null && !todoId.isEmpty()){
			Todo todo = (Todo) todoService.getByID(todoId);
		 %>
		<%= todo %>
		<p>Id del Todo <%=todo.getID() %> </p>
		<h1><%=todo.getTitle() %></h1>
		<h2>Autor: <%=todo.getUserID()%></h2>
		<p> Estado: <%=(todo.isCompleted() ? "Completado" : "Pendiente" ) %> </p>
	
			<ul>
	<%
	} else { //sino, se listan todos los TODOs
			
			Todo[] todos = (Todo[]) todoService.getAll();
			
			for(int i=0; i<todos.length; i++){
				%>
				
				<p> <%=todos[i] %> </p>
				
				<%
			}
	
		}
		%>
</ul>
</body>
</html>