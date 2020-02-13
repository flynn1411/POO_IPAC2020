<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
 <%
 String user = "Programación Orientada a Objetos";
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="author" content="POO">
<meta name="description" content="Demostración de Herencia en POO">

<title>ForntEnd: Desmostración de Herencia en POO.</title>
</head>
	<body>
		<!--
			Haga un programa que reciba un parámetro "etiqueta HTML", de tal forma que el
			backend imprima/genere dicha etiqueta en conjunto con un segundo parámetro "contenido de la 
			etiqueta". Use POO y Hernencia en su programa.
		-->
		<form action="service.jsp" method="POST">
			<!-- Campos de entradas donde el usuario ingresará datos -->
			<!-- submit: Botón de envío de datos -->
			<!--
			<select name="Country">
				<option value="Valor que se observa en pantalla">Valor que se muestra en pantalla</option>
				<ption value="hn">Honduras</ption>					
				<ption value="US">US</ption>					
				<ption value="CO">Colombia</ption>				
			</select>
			-->
			<select name="htmlTAG">
				<option value="0">Span</option>
				<option value="1">Paragraph</option>
				<option value="2">Anchor</option>
				<option value="3">Division</option>
			</select>

			<textarea rows="3" cols=8>
				
			</textarea>
			
			<button type="submit">Enviar Formulario</button>

		</form>
	</body>
</html>