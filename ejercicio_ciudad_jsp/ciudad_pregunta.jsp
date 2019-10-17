<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <form action="ciudad_informacion.jsp" method="POST">
            ¿Cual es tu ciudad Favorita? <input type="text" name="city" value="Ciudad">
        <input type="submit" value="Responder" name="Submit" id="city" />
    </form>
 <!-- <input type="submit" name="button" id="Enviar" onclick="window.location.href="
        <%out.print("ciudad_informacion.jsp?city");%>"> -->
</body>

</html>