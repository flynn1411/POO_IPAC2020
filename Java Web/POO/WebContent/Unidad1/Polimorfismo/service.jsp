<%@page import="Unidad1.Validator"%>
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
            String color;
            if(
                request.getParameter("point") != null &&
                //request.getParameter("point") .toString().trim(),matches("\\d+, \\d+") != null &&
                request.getParameter("h") != null &&
                request.getParameter("w") != null
            ){
                Validator validator = new Validator();

                Point p = new Point(
                                //request.getParameter("px").toString(),
                                request.getParameter("point").toString()
                );

                int h = validator.maxInt(
                    request.getParameter("h").toString(),
                    0,
                    100
                 );

                 int w = validator.maxInt(
                    request.getParameter("w").toString(),
                    0,
                    100
                 );

                 if( request.getParameter("color") != null ){
                     color = validator.color(request.getParameter("color").toString());

                 }else{
                     color = "white";
                 }

                 Rectangle rectangle = new Rectangle();

              /*  out.print(
                    rectangle.draw(p, h, w, color)
                );*/
            }
            else if(
                request.getParameter("pointA") != null &&
                request.getParameter("pointA").toString().trim().matches("\\d+, \\d+")&&
                request.getParameter("pointB") != null &&
                request.getParameter("pointB").toString().trim().matches("\\d+, \\d+")&&
                request.getParameter("color") != null
            ){
            	Validator validator= new Validator();
            	
                Point pointA = new Point(
                    request.getParameter("pointA") .toString()
                );

                Point pointB = new Point(
                    request.getParameter("pointB") .toString()
                );
                
                color = validator.color(request.getParameter("color").toString());

                Rectangle rectangle = new Rectangle();

               /* out.print(
                    //rectangle.draw(pointA, pointB, color)
                );*/

            }
            else{
                out.print("<span style='color:red;'>No se encuentrán los parámetros</span> ");
            }
            
        %>
	</body>
</html>