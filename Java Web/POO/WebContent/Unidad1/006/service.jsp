<%@page import="Unidad1.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="author" content="swd">
		<meta author="description" content="Validación de campos de texto">
		<title>Validación de campos de texto</title>
	</head>
	<body>
	
		<%
			//Si el usuario envia el formulario correctamente
			if( request.getParameter("fullName")!= null &&
				request.getParameter("fullName").toString().trim().matches("^([A-ZÁÉÍÓÚ][a-záéíóú]{2,})( [A-ZÁÉÍÓÚ][a-záéíóú]{2,}{1,4})$") &&
				request.getParameter("age") != null &&
				request.getParameter("age").toString().trim().matches("^((1[6-9])|([2-9]\\d))$")         ){
				//El formulario es válido

				String fullName = request.getParameter("fullName").toString().trim();
				int age = Integer.parseInt( request.getParameter("age").toString().trim() );

				User user = new User(fullName, age);

				out.print("<span style='color: green;'>Los parámetros son válidos.</span>");

			}
			else{
				out.print("<span style='color: red;'>Los parámetros ingresados no son válidos</span>");
			}
		%>
	
	</body>
</html>