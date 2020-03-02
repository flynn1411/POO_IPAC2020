<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><% 

    if (
        request.getParameter("option") != null
    ){
        if(
            request.getParameter("option").toString().trim().matches("fibonacci") &&
            request.getParameter("n") != null &&
            request.getParameter("n").toString().trim().matches("\\d+")
        ){

        }

        else if(
            request.getParameter("option").toString().trim().matches("factorial") &&
            request.getParameter("n") != null &&
            request.getParameter("n").toString().trim().matches("\\d+")
        ){

        }

        else{
            out.print(
                String.format(
    
                "{\error\": "true}"
                )
            );
    }
    else{
        out.print(
            String.format(

            "{\error\": "true",
             \"description\": \"No  se ha detectado la variable 'option'."\"}"
            )
        );
    }

%>