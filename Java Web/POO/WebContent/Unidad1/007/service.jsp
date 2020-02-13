<%@page import="Unidad1.Validator"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="author" content="POO">
		<meta name="description" content="Limpieza de parámetros usando POO">
		<title>Limpieza de parámetros usando POO</title>
	</head>
	
	<body>
		
		<%
			//Verificar que los parámetros existen
			if(
				request.getParameter("userName") != null &&
				request.getParameter("age") != null
					){
				
				Validator validator = new Validator();
				
				String userName = validator.cleanUserName(request.getParameter("userName").toString());
				int age = validator.cleanAge(request.getParameter("age").toString());
				
				out.print("<span style='color: green;'>Se han limpiado los parámetros requeridos.</span><br>");
				
				out.print(String.format( "<strong>UserName:</strong> %s" , userName) );
				out.print(String.format( "<strong>Age:</strong> %s" , age) );
			}
			else{
				out.print("<span style='color: red;'>No existen los parámetros requeridos.</span>");
			}
		%>
		
	</body>
</html>