<%@page import="Unidad1.ParameterManager"%>
<%@page import="Unidad1.ResponseParameterManager"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="author" content="Programación Orientada a Objetos">
        <meta name="description" content="Ejemplo de Validacin Usando Objetos">
        <title>Ejemplo</title>
    </head>
    <body>
        <%
            ParameterManager pm = new ParameterManager();
        
        	/**
        	  * Probar Ingresando los siguientes parámetros al final del
        	  * link: ?hola="mundo"&a=0&blah="sup"
        	  */
        	
        	ResponseParameterManager rpm = new ResponseParameterManager();
            rpm = pm.analyze(request.getParameterMap());
            
            out.print(pm.convertResponseToHTML(rpm));
        %>
    </body>
</html>