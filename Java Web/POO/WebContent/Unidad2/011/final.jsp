<%@page import="Unidad2.Factorial"%>
<%@page import="Unidad2.FileManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	//Factorial fact = new Factorial();
    	FileManager fm = new FileManager();
   
    	out.print(fm.read("factorial.txt"));
%>