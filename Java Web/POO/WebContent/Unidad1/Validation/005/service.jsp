<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="Unidad1.ParameterManager"%>
<%@page import="Unidad1.ResponseParameterManager"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="author" content="POO">
		<meta name="description" content="Ejemplo de página de respuesta">
		<title>Ejemplo de Pagina de Respuesta</title>
	</head>
	
	<body>
		
		<%
			ParameterManager pm = new ParameterManager();
		
			/** Metodo 1*/
			ResponseParameterManager rpm = pm.analyze(request.getParameterMap());
			
			out.print(pm.convertResponseToHTML(rpm));
			
			/**
			* Metodo 2:
			* out.print(pm.convertResponseToHTML(pm.analyze(request.getParameterMap())));
			*/
		%>
		
	</body>
</html>