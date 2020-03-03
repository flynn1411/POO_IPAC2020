<%@page import="Unidad2.Factorial"%>
<%@page import="Unidad2.FileManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	Factorial fact = new Factorial();
    	FileManager fm = new FileManager();
   
    	int n = 5;
    	
    	if(
    			request.getParameter("n") != null &&
    			request.getParameter("n").toString().trim().matches("((\\d)|([1-5]\\d)|(6[0-9]))")
    			){
    		n = Integer.parseInt(request.getParameter("n"));
    	}
    	
    	int factorialN = fact.calc(n);
    	
    	fm.write("factorial.txt", String.format("%s<br>%s", fm.read("factorial.txt"), factorialN));
    	
    	response.sendRedirect(String.format("service3.jsp?n=%s", n-1));
%>