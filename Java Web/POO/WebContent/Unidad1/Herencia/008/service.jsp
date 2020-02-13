<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Unidad1.ParagraphTag"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="swd">
        <meta name="description" content="Demostración de Herencia en POO">
        <title>BackEnd: Demostración de Herencia en POO</title>
    </head>
    <body>
        <%
            String content = "Hola Mundo";
            ParagraphTag p = new ParagraphTag(content);
            p.setStyle("color:red");
            out.print(p.print());
        %>
    </body>
</html>