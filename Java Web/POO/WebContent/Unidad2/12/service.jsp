<%@page import="Unidad2.Fibonacci"%>
<%@page import="Unidad2.Factorial"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><% 
    if (
        request.getParameter("option") != null
    ){
        if(
            request.getParameter("option").toString().trim().matches("fibonacci") &&
            request.getParameter("n") != null &&
            request.getParameter("n").toString().trim().matches("\\d+")
        ){
        	Fibonacci fib = new Fibonacci();
        		
        		out.print(
        				String.format(
        						"{\"error\":false,\"operation\":Fibonacci,\"n\":%s,\"description\":%s}",
        						n,
        						fib.calc(n)
        						)
        				);
        }
        else if(
            request.getParameter("option").toString().trim().matches("factorial") &&
            request.getParameter("n") != null &&
            request.getParameter("n").toString().trim().matches("\\d+")
        ){
        	Factorial fact = new Factorial();
        	
        	int n = Integer(request.getParameter("n").toString().trim());
    		
    		out.print(
    				String.format(
    						"{\"error\":false,\"operation\":Factorial,\"n\":%s,\"description\":%s}",
    						n,
    						fact.calc(n)
    						)
    				);
        }
        else{
            out.print(
                String.format(
                		"{\"error\": true}" 
                )
            );
        }
    }
    else{
        out.print(
            String.format(
            "{\"error\": true,\"description\": \"No  se ha detectado la variable 'option'.\"}" 
            )
        );
    }
%>