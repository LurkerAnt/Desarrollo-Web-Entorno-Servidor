<% String colour = request.getParameter ("color");
    String color2 ="";
    switch (colour){
        case "red":
        color2 +=colour;
        break;
        case "green":
        color2 +=colour;
        break;
        case "purple":
        color2 +=colour;
        break;
        case "yellow":
        color2 +=colour;
        break;
        case "blue":
        color2 +=colour;
        break;
        default:
        color2 += "black";
        break;
    }

%>

<!DOCTYPE html>
<html lang="es">
<head>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Color change</title>
    
</head>
<body>
    
    <% if (color2.compareTo("black")==0){%>
        <h1 style="color: <%=color2%>;" >Esto esta en negro porque eres un hacker.</h1>
    <%}else{%>
        <h1 style="color: <%=color2%>;" >Esto cambia de color según el parametro enviado.</h1>
    <%}%>
</body>
</html>