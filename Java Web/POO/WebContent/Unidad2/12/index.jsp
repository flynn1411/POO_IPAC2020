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
    
    <button onclick="anyName();">Click Me</button>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

            var action = "service.jsp";
            var parameters = {
                "name" : "Programación Orientada a Objetos"
            };

            var callback = function(anyVariableName){
                document.querySelector("body").innerHTML += anyVariableName;
                console.log(JSON.parse(anyVariableName));
            }

            $.get(
                action,
                parameters,
                callback
            )
        }

    </script>

</body>
</html>