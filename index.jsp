<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="author" content="POO">
		<meta name="description" content="Demostración de Herencia en Java">
		<title>Demostración de Herencia en POO</title>
	</head>
	
	<body>

        <!-- 
            Haga un programa que reciba un parámetro "etiqueta HTML", de tal forma que el backend imprima/genere dicha etiqueta en conjunto con un segundo parámetro
            "contenido de la etiqueta". Use POO Herenecia en su programa.
        -->
		
		<!-- El método de envio por defecto es GET -->
		<form method="POST" action="service.jsp">
            
            <select name="htmlTAG">     
                <option value="0">Span</option>
                <option value="1">Paragraph</option>
                <option value="2">Anchor</option>
                <option value="3">Division</option>
            </select>

            <textarea rows="3" cols="8">

            </textarea>

            <button type="submit">Enviar Formulario</button>
            
		</form>
		
	</body>
</html>