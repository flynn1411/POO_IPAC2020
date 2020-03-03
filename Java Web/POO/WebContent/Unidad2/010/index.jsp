<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="POO">
    <meta name="description" content="Validaciones con POO en FrontEnd">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validaciones con POO en FrontEnd</title>
</head>
<body>
    
    <!--<form action="service.jsp" onsubmit="alert('Se está enviando el formulario');">-->
    <form action="service.jsp" onsubmit="return validate();">
    
        <input type="text" name="name" id="name" placeholder="Nombre del Estudiante">
        <button type="submit">Enviar</button>
        
        <div id="error"></div>
    </form>

    <script type="text/javascript">
        function example(){

            if(true){

                //Alcance let
                let b = 1;

                //Alcance var
                var a = "Hola Mundo";
            }

            /*
            Clases en JS
            */

            function Human( name, age){
                this.name = name;
                this.age = age;
            }

            var human = new Human("Programación Orientada a Objetos", 5);

            function Validator(){
                this.name = function(name) {
                    if(`\${name}`.trim.match(/^([A-ZÁÉÍÓÚ][a-záéíóúñü]{2,})( [A-ZÁÉÍÓÚ][a-záéíóúñü]{2,}){1,3}$/)){
                        return true;
                    }
                    return false;
                };
            }

            var validator = new Validator();
            console.log( validator.name("Programación Orientada a Objetos") );
            
            function ErrorManager(){
            	this.show = function(tag){
            		tag.style.border = "1px solid red";
                	tag.style.color = "red";
                	tag.innerHTML = "Error, nombre de usuario no cumple con el formato.";
            	};
            	this.hide = function(tag){
            		tag.style.border = "0px solid transparent";
            		tag.style.color = "transparent";
            		tag.innerHTML = "";
            	};
            }

            /*
            Ejemplo del DOM en JS
            */
            function validate(){
                
                var name = document.querySelector("#name").value;
                var result = validator.name( name );
                
                if(!result){
                	var error = document.querySelector("#error");
                	var errorManager = new ErrorManager();
                	
                	errorManager.show(error);
                	//setInterval(function, time);
                	
                	setTimeout((error) =>{
                		error.style.display = "hidden";
                	} ,5000);
                }
                
                return result;
            }

        }
    </script>

</body>
</html>