<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="author" content="POO">
		<meta name="description" content="Ejemplo de formulario Web">
		<title>Formulario Web</title>
	</head>
	
	<body>
		
		<!-- El método de envio por defecto es GET -->
		<form method="POST" action="service.jsp">
			<!-- Campos de entrada de datos de parte del usuario -->
			<input type="text" name="userName" placeHolder="Nombre Completo"><br><br>
			<input type="number" name="age" placeholder="Edad"><br><br><br>
			<!-- Submit: envio de datos -->
			<input type="submit" value="Enviar Datos">
		</form>
		
	</body>
</html>