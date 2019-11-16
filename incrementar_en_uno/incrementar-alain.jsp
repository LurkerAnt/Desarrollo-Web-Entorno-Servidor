<%
  String parametroAcumulado = request.getParameter("acumulado");
  int acumulado;

  if (parametroAcumulado == null) { // Si NO hay formulario enviado (1ª vez).
    acumulado = 0;
  } else { // Sí hay formulario enviado (2ª ó siguientes veces).
    if (request.getParameter("resetear") != null) {
      acumulado = 0;
    } else { // Habrán enviado "sumar".
      acumulado = Integer.valueOf(parametroAcumulado) + 1; // Acumulado antiguo + 1 = acumulado nuevo
    }
  }
%>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>

<body>

<form method="get">
  <input type="text" name="acumulado" value="<%=acumulado%>">
  <input type="submit" name="sumar" value="Sumar">
  <input type="submit" name="resetear" value="Resetear más complicado">
</form>

<a href="ejercicio.jsp">Resetear más simple (preferible)</a>

</body>

</html>