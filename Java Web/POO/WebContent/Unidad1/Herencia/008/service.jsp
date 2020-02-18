<%@page import="Unidad1.AnchorTag"%>
<%@page import="Unidad1.Validator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Unidad1.ParagraphTag"%>
<%@page import="Unidad1.DivTag"%>
<%@page import="Unidad1.SpanTag"%>

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
        	Validator validator = new Validator();
        	if(
        		request.getParameter("htmlTag") != null &&
        		request.getParameter("htmlTag").toString().trim().matches("((0)|(1)|(2)|(3))") &&
        		request.getParameter("htmlContent") != null
        			){
        		int htmlTag = Integer.parseInt(request.getParameter("htmlTag").toString().trim());
        		
        		String htmlContent = validator.cleanHTMLContent(request.getParameter("htmlContent").toString());
        		
        		if(htmlTag == 0){
        			
        			SpanTag span = new SpanTag(htmlContent);
        			span.setStyle("color:green; ");
        			out.print(span.print());
        			
        		}else if(htmlTag == 1){
        		ParagraphTag p = new ParagraphTag(htmlContent);
        		p.setStyle("color: green;");
        		out.print(p.print());
        			
        		}else if(htmlTag == 2){
        			AnchorTag a = new AnchorTag("index.jsp" ,htmlContent);
        			a.setStyle("color: green;");
            		out.print(a.print());
        			
        		}else{
        			DivTag div = new DivTag(htmlContent);
        			div.setStyle("color: green;");
            		out.print(div.print());
        			
        		}
        		
        	}
        	else{
        		out.print("<span style='color: red;'>Existe uno o más parámetros invalidos</span>");
        	}
        
            String content = "Hola Mundo";
            ParagraphTag p = new ParagraphTag(content);
            p.setStyle("color:red");
            out.print(p.print());
        %>
    </body>
</html>