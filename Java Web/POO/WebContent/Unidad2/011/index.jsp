<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="author" content="POO">
	    <meta name="description" content="Validaciones con POO en FrontEnd">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Manejo de Datos Usando FrontEnd</title>
	</head>
	<body onload="load();">
		<script src="ParagraphTag.js"></script>
		<script src="ErrorManager.js"></script>
		
		<script type="text/javascript">
		
			function load(){
				
			var body = document.querySelector("body");
			var p = new ParagraphTag();
			var bodyContent = body.innerHTML;
			body.innerHTML = p.createTag("");
			body.innerHTML += bodyContent;
			
			var p = document.querySelector("p");
			var em = new ErrorManager();
			
			em.show(p);
			
			}
			
		</script>
	
	</body>
</html>