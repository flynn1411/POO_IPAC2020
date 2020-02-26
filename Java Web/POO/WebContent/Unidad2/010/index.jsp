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
                this.name = (name) => {
                    if(`\${name}`.trim.match(/^([A-ZÁÉÍÓÚ][a-záéíóúñü]{2,})( [A-ZÁÉÍÓÚ][a-záéíóúñü]{2,}){1,3}$/)){
                        return true;
                    }
                    return false;
                };
            }

            var validator = new Validator();
            console.log( validator.name("Programación Orientada a Objetos") );

            /*
            Ejemplo del DOM en JS
            */
            function validate(){
                
                var name = document.querySelector("#name").value;
                return validator.name( name );
            }

        }
    </script>

</body>
</html>