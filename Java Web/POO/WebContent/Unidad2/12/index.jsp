<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="POO">
    <meta name="description" content="AJAX con JQuery">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>AJAX con JQuery</title>
</head>
<body>
	<input type="number" name="n" placeholder="Ingrese un número a calcular"><br>
	<select name="option">
		<option value="factorial">
		<option value="fibonacci">
	</select>
    
    <button onclick="anyName();">Calculate</button>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="ErrorManager.js"></script>
    <script type="text/javascript">

        /* AJAX: Javascript Asincrónico con JSON, XML, etc
        Métodos del objeto "$" (dólar) de JQUery para hacer AJAX
        $.post(action, parameters, callback);
        $.get(action, parameters, callback);
        Action: el sitio destino
        Parameters: Los parametros que se envian a traves de POST o GET
        Callback: es un método que se ejecuta con la respuesta recibida desde "action"
        */

        function anyName(){
        	
        	var n = document.querySelector("input#n");
        	var option = document.querySelector("select#option");
            var action = "service.jsp";
            var parameters = {
                "option" : option.value,
                "n": n.value
            };

            var callback = function(anyVariableName){
                document.querySelector("body").innerHTML += anyVariableName;
                var body = document.querySelector("body");
                var result = JSON.parse(anyVariableName);
                
                if(!result.error){
                	
                	var message = `Se ha realizado la operación de <strong>\${result.operation}</strong> con el número <strong>\${result.n}</strong> dando como resultado <strong>\${result.description}</strong>.`;
                	body.innerHTML += message;
                	
                }
                else{
                	
                	var em = ErrorManager();
                	var errorTag = em.insertTag(body);
                	em.show(errorTag, result.description);
                }
                
            };

            $.get(
                action,
                parameters,
                callback
            )
        }

    </script>

</body>
</html>