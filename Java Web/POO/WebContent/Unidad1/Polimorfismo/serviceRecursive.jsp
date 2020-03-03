<%@page import="Unidad1.Point"%>
<%@page import="Unidad1.Rectangle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="author" content="POO">
        <meta name="description" content="Polimorfismo y Recursividad">
        <title>Polimorfismo y Recursividad</title>
	</head>
	<body>
		<%

            /** 
                Resuelva el problema usando recursividad em la figura.
                ------------------------------------------------------

                Haga un programa en Java que pueda crear una figura rectangular usando la etiqueta
                div de HTML. Usando la propiedad polimórfica de la 00, la figura se puede crear mediante:
                1.)Punto de orígen, altura, anchura.
                    Se admiten máximo 3 parámetros:
                        point = 1,12 &
                        h= 123 &
                        w=123
                2.)Punto Origen, punto destino.
                    Se admiten máximo 3 parámetros.
                        PointA = 1,2 &
                        pointB = 2
            */
            
            Rectangle rectangle = new Rectangle();

            out.print(
                rectangle.draw(new Point("0,0"), 40, 40, "red" , 5, 5)
            );
            
            String[] colors = new String[]{"red", "blue", "green", "brown", "black"};
            
        %>
	</body>
</html>