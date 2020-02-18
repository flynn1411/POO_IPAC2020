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

                 Rectangle rectangle = new Rectangle();

                out.print(
                    rectangle.draw(p, h, w)
                );
            }
            else if(
                request.getParameter("pointA") != null &&
                request.getParameter("pointA") .toString().trim(),matches("\\d+, \\d+") != null &&
                request.getParameter("pointB") != null &&
                request.getParameter("pointB") .toString().trim(),matches("\\d+, \\d+") != null
            ){

                RectanglePoint pointA = new RectanglePoint(
                    request.getParameter("pointA") .toString()
                );

                RectanglePoint pointB = new RectanglePoint(
                    request.getParameter("pointB") .toString()
                );

                Rectangle rectangle = new Rectangle();

                out.print(
                    rectangle.draw(pointA, pointB)
                );

            }
            else{
                out.print("<span style='color:red;'>No se encuentrán los parámetros</span> ");
            }
            
        %>
	</body>
</html>