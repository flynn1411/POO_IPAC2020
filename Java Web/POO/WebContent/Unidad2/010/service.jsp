<%@page import="Unidad2.NameProcessor"%>
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
    <%
     if (request.getParameter("name") != null &&
     	request.getParameter("name").toString().trim().matches("^([A-ZÁÉÍÓÚ][a-záéíóúñü]{2,})( [A-ZÁÉÍÓÚ][a-záéíóúñü]{2,}){1,3}$")
     ){
    	 
    	 response.sendRedirect(String.format("sucess.jsp?result=%s", NameProcessor.process(request.getParameter("name").toString())));
     }
     else{
    	 response.sendRedirect("error.jsp");
     }
    %>
</body>
</html>